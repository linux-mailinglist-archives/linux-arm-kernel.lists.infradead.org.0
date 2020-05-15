Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965A1D5450
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMLRyyAJILaC9kQ64rDSIytBaZjfAmgoQz0slhWd9D0=; b=ptg44aLv6lnGYC
	FrvhvvHkY2cQklFmW3OjwKPQ41HdzZ76S98kcSeaAmFT5y8F+U8L1u0GKCtAVdYgjG+w5fdoeP3Cb
	RYh+3Ib5XMd4QTXb7Z6mqbqvszExw4m4cthrb5vGOSUkCAJwzuAs88AThh7qeWDX4VP8Y+n1XSb1O
	JY9qFmUmT9RyiWq1gNDUCkLqhDhtjyTq6/flEt/ImMAD6D/9L9mosb9XhlZDAM0X/6pH1xgHY595y
	5joR+Uy6UvlnP+sBPeZtAYjT/N0ETsoxW7syBkaJz+aS3T4wIY4KZFBTR8gWuuPGdynuNNynpVJvF
	2X2hQSuHVmcTgUm6SRJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcBE-0002mk-50; Fri, 15 May 2020 15:23:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcAx-0002lu-UQ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:23:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8155D2F;
 Fri, 15 May 2020 08:23:03 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.24.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 99F4F3F71E;
 Fri, 15 May 2020 08:23:02 -0700 (PDT)
Date: Fri, 15 May 2020 16:23:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Daniel Kiss <Daniel.Kiss@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Message-ID: <20200515152300.GH67718@C02TD0UTHF1T.local>
References: <30E488CA-46FF-4927-A07F-8CE11263B92E@arm.com>
 <CF896434-E995-438C-88F8-86CCFE24C5A2@arm.com>
 <DDD18BB4-B773-4471-B5E0-9DDD839B7D46@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DDD18BB4-B773-4471-B5E0-9DDD839B7D46@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_082304_024020_5BC77AEC 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Fri, May 08, 2020 at 09:52:14AM +0000, Daniel Kiss wrote:
> [PATCH] arm64: vdso: Fix CFI info in sigreturn.
> 
> When the signal handler is called the registers set up as the return address
> points to the __kernel_rt_sigreturn. The NOP here is the placeholder of the
> branch and link instruction that "calls" the signal handler. In case of a
> return address the unwinder identifies the location of the caller because
> in some cases the return address might not exist. Since the .cfi_startproc
> is after the NOP, it won't be associated with any location and the
> unwinder will stop walking.
> This change corrects the generated EHFrames only.
> Signed-off-by: Daniel Kiss <daniel.kiss@arm.com(opens in new tab)>
> Signed-off-by: Tamas Zsoldos <tamas.zsoldos@arm.com(opens in new tab)>

Something appears to have gone wrong here; was this copy-pasted from
somewhere?

> ---
> arch/arm64/kernel/vdso/sigreturn.S | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> index 12324863d5c2..5d50ee92faa4 100644
> --- a/arch/arm64/kernel/vdso/sigreturn.S
> +++ b/arch/arm64/kernel/vdso/sigreturn.S
> @@ -13,13 +13,13 @@
> .text
> - nop
> -SYM_FUNC_START(__kernel_rt_sigreturn)
> .cfi_startproc
> .cfi_signal_frame
> .cfi_def_cfa x29, 0
> .cfi_offset x29, 0 * 8
> .cfi_offset x30, 1 * 8
> + nop /* placeholder for bl signalhandler */
> +SYM_FUNC_START(__kernel_rt_sigreturn)
> mov x8, #__NR_rt_sigreturn
> svc #0
> .cfi_endproc

This appears to have been whitespace damaged (leading tabs have gone).

Can you please resend this via git-send-email?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
