Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3641B4882
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kZK8Thu5IHHrysy5R781t2vmH69BlfCC2ohNEYCeYM=; b=LIayTj+GIvs9UT
	rtte3fyUHs46c9kPtWqvtfU6Uh62QkkmUYY6glzbsDmzI5bPll5E29mX/HTsFZ3wpg92YbAtJV7AK
	k3phFRczYjixdVwhQjvG9AcQHiAjE/s/0aonYSVGfKXQQIISge72hkpSWxOVaVmOYt7VjER6KAptg
	k4VwxAO52dAWywq9Hf/B3EUmmValClXhweZrICL57N7JiVxW4L3VCjo0FyMelMbne9vAxsopRTTNz
	qXafVcC85IAOSFa96kNIzZmtDpy9Rr6Lhrn2NFXKB5OlEBIWdUq2MKvuBo8k/pJXqBIMUJS6TvaZx
	UK+ve/QdFqCx4p5x5xGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHDL-0002hy-5P; Wed, 22 Apr 2020 15:23:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHDC-0002h0-Hw
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:22:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D73C220774;
 Wed, 22 Apr 2020 15:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587568973;
 bh=8XuOqehhERZZcf92nOhLBVrA+6Dpuk+XPlrnJq30fOA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jm/0hbTpl0wzVkrvHzxvampYRVOqyuz82Ao8DR/Mvia3gHLGIFkGhMDA/qI0CixeC
 /cki7uv31jV6rOS+W7VhEqkFFnucNSzgQHTOYniE/4sMnsyfuXL4mmJRAKWrZE3dr8
 WbGSW2FGb+5BPRK4wC7UnH9zN+U7nBdaD7eTN/zo=
Date: Wed, 22 Apr 2020 16:22:49 +0100
From: Will Deacon <will@kernel.org>
To: maz@kernel.org
Subject: Re: [PATCH] arm64/kvm: Fix duplicate tracepoint definitions after
 KVM consolidation
Message-ID: <20200422152249.GE676@willie-the-truck>
References: <20200421091707.16743-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421091707.16743-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_082254_612023_C22B7F90 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tabba@google.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 10:17:07AM +0100, Will Deacon wrote:
> Both kvm/{arm,handle_exit}.c include trace.h and attempt to instantiate
> the same tracepoints, resulting in failures at link-time:
> 
>   | aarch64-linux-gnu-ld: arch/arm64/kvm/handle_exit.o:(__tracepoints+0x30):
>   |   multiple definition of `__tracepoint_kvm_wfx_arm64';
>   |   arch/arm64/kvm/arm.o:(__tracepoints+0x510): first defined here
>   | ...
> 
> Split trace.h into two files so that the tracepoints are only created
> in the C files that use them.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
> 
> Applies against kvm-arm64/welcome-home. Probably worth just folding in
> to the only commit on that branch.

I also just noticed that you forgot to update MAINTAINERS after the move,
so you can fold in the diff below as well.

Will

--->8

diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..7bff7e94a930 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9299,7 +9299,6 @@ F:	arch/arm64/include/asm/kvm*
 F:	arch/arm64/include/uapi/asm/kvm*
 F:	arch/arm64/kvm/
 F:	include/kvm/arm_*
-F:	virt/kvm/arm/
 
 KERNEL VIRTUAL MACHINE FOR MIPS (KVM/mips)
 L:	linux-mips@vger.kernel.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
