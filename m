Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E10B1ABFC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6U9ajhM70sLUgreCebSivdA7nOCSGiWCgfVq5B6XJr4=; b=qNuZS4a0DRDkhw
	4hcGw1IysT/9xvW/tR+gYbLVhMbrPEADVZXqwRuN41Chdp0ZqEYN1aWMk0z76oUYbQK6NtIdds1k8
	6FwBURFhAwsf/BtsWhua5m2CAjzm6L7MB97xRSsEqVmH6ZFtofazqt8bPSM4TD7TqvQIeyzbm3EXV
	73ZOYIlu/3ctP6eOIz76OiP/KA+qz3Wu64AYFeS4PHyZz5Tw8r/1ueoWCV6auVb9mJ7f06ufAZq6l
	Jerkra7+tvXFqTLdnJGyhx4urkA+xgdj6jo3oWZ9nDCkJJKIljBUcWhb9ytfw9CSeJpdQLYHokQHu
	CzD2P/4WS3cBPjdpIrQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2rk-0007Fw-Rl; Thu, 16 Apr 2020 11:39:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2rb-0007FB-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:39:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E284B21D95;
 Thu, 16 Apr 2020 11:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587037162;
 bh=qcp3Kk6bi7SjnZbnz8tvc9/xDE7T0f554GkHSi26Ygs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jDbwc/XvtbD/uCbHs5vOxwV7XSBoVeKqQIJ4ZJssPOZPrx9oHCKfGZEF46QFrq5le
 96XFHzVlVkoTcOPAZvrioHd1PM1rIrrmQPcruKPCh+H7qpHfQZ1/tPx21v54NZCKVT
 WNBY7WQ5ZwBGhIzYFdaDZ+64X/9o1TEPI0tco/No=
Date: Thu, 16 Apr 2020 13:39:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 5.6] arm64: Always force a branch protection mode when
 the compiler has one
Message-ID: <20200416113920.GB882109@kroah.com>
References: <20200416112430.1256-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416112430.1256-1-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_043923_506935_46AB8E61 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 12:24:30PM +0100, Mark Brown wrote:
> Compilers with branch protection support can be configured to enable it by
> default, it is likely that distributions will do this as part of deploying
> branch protection system wide. As well as the slight overhead from having
> some extra NOPs for unused branch protection features this can cause more
> serious problems when the kernel is providing pointer authentication to
> userspace but not built for pointer authentication itself. In that case our
> switching of keys for userspace can affect the kernel unexpectedly, causing
> pointer authentication instructions in the kernel to corrupt addresses.
> 
> To ensure that we get consistent and reliable behaviour always explicitly
> initialise the branch protection mode, ensuring that the kernel is built
> the same way regardless of the compiler defaults.
> 
> [This is a reworked version of b8fdef311a0bd9223f1075 ("arm64: Always
> force a branch protection mode when the compiler has one") for backport.
> Kernels prior to 74afda4016a7 ("arm64: compile the kernel with ptrauth
> return address signing") don't have any Makefile machinery for forcing
> on pointer auth but still have issues if the compiler defaults it on so
> need this reworked version. -- broonie]
> 
> Fixes: 7503197562567 (arm64: add basic pointer authentication support)
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Cc: stable@vger.kernel.org
> [catalin.marinas@arm.com: remove Kconfig option in favour of Makefile check]
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)

Now queued up, thanks!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
