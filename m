Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2AA11AC90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gGuwB7mPKDWMFaB426jMQs4JLvzSA2sa3jN2R2n5BM=; b=RjSb0+vYWn7mMw
	bD1P7i1blacaWHgeagTFuAGi2//9Bne1KviIX1dTn9OowJwInzgyIpXiiAqxqc1bawimOE7XIcytx
	Cm87mAte0SKUVjzaz6R62ziMOINRmDDS3GUCR9QQFt+55T1DnZdx2vdB2mJm6TyjULRmVqvXXipr0
	TPg2V5LAeoeH3mK5rt1QPZGof77O5HI23uYmu69HmU+xZcyhhBk0RDFGpsELz6g2wu3DaZSvUcH+b
	uVkpEw4hWEmvnimTUJ7E36UaQ+wWU9TImKOPxpDFS/QhAuJabkUP+t16KQjDgg4UsBSxDNm2ZoDzd
	B2HclXc2Grc8ahfuwfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2Tw-0005C4-6T; Wed, 11 Dec 2019 13:56:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Tc-00053J-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:56:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC557214D8;
 Wed, 11 Dec 2019 13:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576072588;
 bh=dWkqILqfAhjEvyhCKPXISYgfOfSC3OtngOei9pUlZ5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=enaEjm3qhz+GbI1C7GZdbjUVp+Li+O9XxQqiaGueU8xTWyFJi3xOAs08wqOcxr99A
 TjmdjHoIohXmbLhvAqKCb708/vwcxCf5WQ+UYx2BMRwMzocjhZQpyBHCi1+hTg2dJV
 4lSTU4jvrB9a4wmcTqpHvJGg5DZ7YKEwkIIzpHRU=
Date: Wed, 11 Dec 2019 14:56:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Message-ID: <20191211135619.GA538980@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206163656.GC86904@kroah.com>
 <87sglroqix.fsf@nanos.tec.linutronix.de>
 <4737004.4U1sY2OxSp@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4737004.4U1sY2OxSp@skinner.arch.suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055628_913119_8BFE121D 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:42:35AM +0100, Thomas Renninger wrote:
> If Greg (and others) are ok, I would add "page size exceeding" handling.
> Hm, quick searching for an example I realize that debugfs can exceed page 
> size. Is it that hard to expose a sysfs file larger than page size?

No, there is a simple way to do it, but I'm not going to show you how as
it is NOT how to use sysfs at all :)

Why are you wanting to dump this whole mess into one file and then parse
it, it's no different from having 100+ different sysfs files and then
doing a readdir(3) on the thing, right?

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
