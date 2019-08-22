Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E69A0F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q058FyggGmC9FcH1Abvek297nblGKgav2luEAvAdom4=; b=ivuQ4o+gYwy9PE
	0mwPhsEyFN/i/9qdfQI+FeUzCiTA6RBML45eaGqoUxc11Srnlzw+vWARjPe3hf5j73RGP8cq4G26y
	o8okyFkMxfhMVfFGJRTONXalVLjpe36eJuydnVBjdNJRqx6/MNqZnqiFP9NJp8ww1fjxBW2toF4aE
	0+fz6/5FC4kFtkb0dI+WapyXvHSdpogEje5PZ3mTeSBYmm7l6WJgRhAsHQt324j5ISilz/jyZFEyD
	cvy8VK6TQrMjldgfXIN5fM6Mx7pOk3Pfi0v9Gs9xfppFVrTTT8+PuxfM4w+E6YTShYFRlh/RqzEdF
	ebcmANA2uUccFVyebUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tVZ-00086k-Lr; Thu, 22 Aug 2019 20:16:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tVQ-00085w-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:16:25 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DA897307D915;
 Thu, 22 Aug 2019 20:16:23 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 89EE05DC1E;
 Thu, 22 Aug 2019 20:16:22 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:16:20 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 13/18] arm64: sleep: Prevent stack frame warnings from
 objtool
Message-ID: <20190822201620.z7eto2cfjo4uaozb@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-14-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-14-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 22 Aug 2019 20:16:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_131624_264490_F6F0DA1D 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:23:58PM +0100, Raphael Gault wrote:
> This code doesn't respect the Arm PCS but it is intended this
> way. Adapting it to respect the PCS would result in altering the
> behaviour.
> 
> In order to suppress objtool's warnings, we setup a stack frame
> for __cpu_suspend_enter and annotate cpu_resume and _cpu_resume
> as having non-standard stack frames.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/kernel/sleep.S | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> index f5b04dd8a710..55c7c099d32c 100644
> --- a/arch/arm64/kernel/sleep.S
> +++ b/arch/arm64/kernel/sleep.S
> @@ -1,5 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  #include <linux/errno.h>
> +#include <linux/frame.h>
>  #include <linux/linkage.h>
>  #include <asm/asm-offsets.h>
>  #include <asm/assembler.h>
> @@ -90,6 +91,7 @@ ENTRY(__cpu_suspend_enter)
>  	str	x0, [x1]
>  	add	x0, x0, #SLEEP_STACK_DATA_SYSTEM_REGS
>  	stp	x29, lr, [sp, #-16]!
> +	mov	x29, sp
>  	bl	cpu_do_suspend
>  	ldp	x29, lr, [sp], #16
>  	mov	x0, #1
> @@ -146,3 +148,6 @@ ENTRY(_cpu_resume)
>  	mov	x0, #0
>  	ret
>  ENDPROC(_cpu_resume)
> +
> +	asm_stack_frame_non_standard cpu_resume
> +	asm_stack_frame_non_standard _cpu_resume

We usually put these annotations immediately after the functions they're
annotating.  And they should resemble the C macros like

  STACK_FRAME_NON_STANDARD(cpu_resume)

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
