Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D99685AFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJ2z9U0drJPkL5MHFrz/varcfI+IEiMN66HWMzxZ9eQ=; b=kZ91F1040vPiG9
	pRBqp7fESU+oEpiYzL4KqCYpwh3egm5drBwkZvun0qkSTu7UZHfK6xkPqgCxTkYdRJP5942cY7h/x
	yUt4t6Zom9IRJV1v4EoB1Hop7polRDfMpatftNLG6AYE/wJ2QVwHqxk69Vho7T0zOU04pfXdU5pmX
	e+ljsN6sTuJzPKuQTlREf75jiC6UGKGwWswDk5x8Z/7ekuo5iOlrKoqKHSPqrO7Nmj84fHQGP2RBy
	w2AiF9jIhdjO5u0JwJgRnCGE0a5w00IfSwRq0ghUWvq5Yy1r7/OcwyEU4Q/ljDcxgk7fyBUeUHUAx
	eJc8QzAWrcmB3XVHcEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvc8U-0007qg-4Q; Thu, 08 Aug 2019 06:42:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvc8E-0007pj-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:42:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF2DD20880;
 Thu,  8 Aug 2019 06:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565246557;
 bh=QkRNK9YOfVlVjw60w9/iF0cccnbeZTBNkhlnMmoHZSo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TEEQWuy6TSpOEZMwvSr5bheEo6c0goUwfwhY6u81BONopHxyVvbgi4ZhzicU1UCZU
 QXbtoqaRmyPdA18atxTjX/YtfT5T8mPLvFzvbzRdeu4qtSO+eZw4b0Gf4W97UvfZSm
 L8jVUt4qJ/cpM3lWvFw3sZyg80FMbtaTWDY/b8Qo=
Date: Thu, 8 Aug 2019 08:42:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tejun Heo <tj@kernel.org>
Subject: Re: [PATCH] kernfs: fix memleak in kernel_ops_readdir()
Message-ID: <20190808064235.GC26197@kroah.com>
References: <20190805173404.GF136335@devbig004.ftw2.facebook.com>
 <20190807132928.GD5443@atomide.com>
 <20190807184518.GP136335@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807184518.GP136335@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_234238_950254_A83EE394 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrea Arcangeli <aarcange@redhat.com>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 11:45:18AM -0700, Tejun Heo wrote:
> Hello,
> 
> On Wed, Aug 07, 2019 at 06:29:28AM -0700, Tony Lindgren wrote:
> > Hi,
> > 
> > * Tejun Heo <tj@kernel.org> [691231 23:00]:
> > > From: Andrea Arcangeli <aarcange@redhat.com>
> > > 
> > > If getdents64 is killed or hits on segfault, it'll leave cgroups
> > > directories in sysfs pinned leaking memory because the kernfs node
> > > won't be freed on rmdir and the parent neither.
> > 
> > Somehow this causes a regression in Linux next for me where I'm seeing
> > lots of sysfs entries now missing under /sys/bus/platform/devices.
> > 
> > For example, I now only see one .serial entry show up in sysfs.
> > Things work again if I revert commit cc798c83898e ("kernfs: fix memleak
> > inkernel_ops_readdir()"). Any ideas why that would be?
> > 
> > Below is a diff -u of ls /sys/bus/platform/devices for reference
> > showing the missing entries with cc798c83898e.
> 
> Ugh, you're right.  It can get double-put cuz ctx->pos is put by
> release too.  Greg, sorry about the noise but can you please revert
> the patch?  I'll look into why this looked like memory leak from
> slabinfo side.

Now reverted, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
