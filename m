Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BB7CFE84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybpdaoVXIL09c3ocy9ww1OHlYxE516malwEuo+e97k8=; b=LLx2SBEBsw3EN7
	XxYZc/9diqC899UtORX+f1oNEBC4X3YwcA4PJz2QLXIuUT5mxzuGEn4Egnnc0/aQOJxnTyRsgjFwS
	YJggq+tyhiuI90HlsqOP74qGZvL5dNSRzqrAOMM/8sDiMV638GA1BonFu7/bJu8xw0TeUjlZvcwH1
	4uYGayA37aKG4vEEkYIKFoXQiakKqw46N0srnqWo0X8zkQgpshyQ+cH3E8I3s3Kiyfm00TrTVuRKA
	0cEwcTuycnUQGldDS1weSKdG9iVpFmwMXyA1q+ByyGjh/RnRPkZVoBucmGhP6gJme4PIf6cgS1pcM
	YpyITNOwSqyyonTJAHGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHs0f-0007sX-F2; Tue, 08 Oct 2019 16:06:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHs0X-0007rr-Dm
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:06:42 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55C4B2070B;
 Tue,  8 Oct 2019 16:06:40 +0000 (UTC)
Date: Tue, 8 Oct 2019 12:06:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] arm: only build return_address() if needed
Message-ID: <20191008120638.7366b8af@gandalf.local.home>
In-Reply-To: <20191008155349.28105-1-ben.dooks@codethink.co.uk>
References: <20191008155349.28105-1-ben.dooks@codethink.co.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_090641_483706_0B3A6D77 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Mark Charlebois <charlebm@gmail.com>,
 rmk@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  8 Oct 2019 16:53:49 +0100
Ben Dooks <ben.dooks@codethink.co.uk> wrote:

> The system currently warns if the config conditions for
> building return_address in arch/arm/kernel/return_address.c
> are not met, leaving just an EXPORT_SYMBOL_GPL(return_address)
> of a function defined to be 'static linline'.
> This is a result of aeea3592a13b ("ARM: 8158/1: LLVMLinux: use static inline in ARM ftrace.h").
> 
> Since we're not going to build anything other than an exported
> symbol for something that is already being defined to be an
> inline-able return of NULL, just avoid building the code to
> remove the following warning:

Makes sense.

> 
> Fixes: aeea3592a13b ("ARM: 8158/1: LLVMLinux: use static inline in ARM ftrace.h")
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
