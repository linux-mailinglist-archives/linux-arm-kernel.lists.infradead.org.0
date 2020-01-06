Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A4313169B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZAd/S1R03ySYh/aCuJVe61FInvJqfVe2W682ggo0hA=; b=S9IAC7R/p8/0hH
	LDxl/pJl2WbJBUZwpRWVIhcMQedOIoPzId0loFk07QA+v55Dvzfj+rTmdzup2eQNwT4dLfMFfJUAy
	89hua1MK0Z85wEwnq9Q8RKa9SuecoYDXgxbMlfNs4bCR7pxLQ9ZacmXZ19VgLiIAI7kB/WqQQmkib
	BmZhrJLKx8thI8Radz3khJIOLypf1KsatvkGz8u+z/msRxKqIV8obzUwz8PKiISnaOqNWQZbcBLDl
	0Vkgqd2jp4qyZpiJhbAq/63V9T7ashS8w0vphUsEOqMhttPtdXVRfPMwtjOc7filGelEPiqsEjBtJ
	ZKK9udbHkU+SRq8IR/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioW24-0007uI-Tv; Mon, 06 Jan 2020 17:19:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioW1u-0007sb-8T
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:19:03 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 728B420715;
 Mon,  6 Jan 2020 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578331140;
 bh=N4PyN/ioMxd3f4CHCcX1fBkgPLk3L3vfRcqZXGCf8RY=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=cXduWxmAnxmAWU+Be8dJklvJXJp2oMHir6bdtrEv4Fwteh29LQqkUPXJrQdp7MmFI
 LyNyn5AajDUcvvQ71zsBXr7megMtaKNtQLY7lxFbOY2kX68djp+bMVoHInuvY5ZRJV
 EXL6FiABUErJtEpNG7I2bz6x8X+1KhyrhtM5fy+g=
Date: Mon, 6 Jan 2020 09:18:54 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v5 1/6] arm/arm64/xen: hypercall.h add includes guards
In-Reply-To: <20200102211357.8042-2-pasha.tatashin@soleen.com>
Message-ID: <alpine.DEB.2.21.2001060918470.732@sstabellini-ThinkPad-T480s>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
 <20200102211357.8042-2-pasha.tatashin@soleen.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_091902_364777_9CB54468 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, stefan@agner.ch,
 linux@armlinux.org.uk, yamada.masahiro@socionext.com, will@kernel.org,
 boris.ostrovsky@oracle.com, sashal@kernel.org, sstabellini@kernel.org,
 maz@kernel.org, jmorris@namei.org, linux-arm-kernel@lists.infradead.org,
 xen-devel@lists.xenproject.org, vladimir.murzin@arm.com, julien@xen.org,
 alexios.zavras@intel.com, tglx@linutronix.de, allison@lohutok.net,
 jgross@suse.com, steve.capper@arm.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, andrew.cooper3@citrix.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020, Pavel Tatashin wrote:
> The arm and arm64 versions of hypercall.h are missing the include
> guards. This is needed because C inlines for privcmd_call are going to
> be added to the files.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> Reviewed-by: Julien Grall <julien@xen.org>

Acked-by: Stefano Stabellini <sstabellini@kernel.org>

> ---
>  arch/arm/include/asm/xen/hypercall.h   | 4 ++++
>  arch/arm64/include/asm/xen/hypercall.h | 4 ++++
>  include/xen/arm/hypercall.h            | 6 +++---
>  3 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/xen/hypercall.h b/arch/arm/include/asm/xen/hypercall.h
> index 3522cbaed316..c6882bba5284 100644
> --- a/arch/arm/include/asm/xen/hypercall.h
> +++ b/arch/arm/include/asm/xen/hypercall.h
> @@ -1 +1,5 @@
> +#ifndef _ASM_ARM_XEN_HYPERCALL_H
> +#define _ASM_ARM_XEN_HYPERCALL_H
>  #include <xen/arm/hypercall.h>
> +
> +#endif /* _ASM_ARM_XEN_HYPERCALL_H */
> diff --git a/arch/arm64/include/asm/xen/hypercall.h b/arch/arm64/include/asm/xen/hypercall.h
> index 3522cbaed316..c3198f9ccd2e 100644
> --- a/arch/arm64/include/asm/xen/hypercall.h
> +++ b/arch/arm64/include/asm/xen/hypercall.h
> @@ -1 +1,5 @@
> +#ifndef _ASM_ARM64_XEN_HYPERCALL_H
> +#define _ASM_ARM64_XEN_HYPERCALL_H
>  #include <xen/arm/hypercall.h>
> +
> +#endif /* _ASM_ARM64_XEN_HYPERCALL_H */
> diff --git a/include/xen/arm/hypercall.h b/include/xen/arm/hypercall.h
> index b40485e54d80..babcc08af965 100644
> --- a/include/xen/arm/hypercall.h
> +++ b/include/xen/arm/hypercall.h
> @@ -30,8 +30,8 @@
>   * IN THE SOFTWARE.
>   */
>  
> -#ifndef _ASM_ARM_XEN_HYPERCALL_H
> -#define _ASM_ARM_XEN_HYPERCALL_H
> +#ifndef _ARM_XEN_HYPERCALL_H
> +#define _ARM_XEN_HYPERCALL_H
>  
>  #include <linux/bug.h>
>  
> @@ -88,4 +88,4 @@ MULTI_mmu_update(struct multicall_entry *mcl, struct mmu_update *req,
>  	BUG();
>  }
>  
> -#endif /* _ASM_ARM_XEN_HYPERCALL_H */
> +#endif /* _ARM_XEN_HYPERCALL_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
