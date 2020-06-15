Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64E41F923F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wB7jugyc0Z7cw4BdM2Dv7dKsRsGpzyXvhV9P34VYUkY=; b=CpzTqqjlfSD4xF
	4EwwR3JMJkB445c8NqcOiTNQE6kQ6S62Yv20A+6UEQ2KBT9dYqZJKyCaXYc+X3GmNTKRPXk1ehyDy
	zH5MVXbUp1dDXH6mT+KkY06dFBWDGTNeFjQctfe1hpXlmk7afqJKfyipqkd1vKDFx0KXDOP/TMdJs
	vp6e4VnqQE4j5dk2XApxDn7SB5oTQ7BfJC1FT17PyuavCCkPa58esI8RC60qaZLbsitb9FmUT8YCO
	/PvIawWcZtCvsTyq0mK/3FdovEMrYgQ0Qj8zdU2Lx4YGtTFusxvDknGXx0eNniVZQ4lY8HDTzYV87
	+JEU5T92R4IBtWmkq6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkpy-0005xk-E8; Mon, 15 Jun 2020 08:51:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkknj-0001s7-1A
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:49:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id q11so16210325wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xnddRkOdnpKmvgw1VTZ4tNEZP6mx+SwnzvEeJGa4n2I=;
 b=IdUUOc4QN2EUtr5PjBCK2Zqf0CL6mqEqyLIucODDtyyBluNXy7IPgKlGEsAn4RWzGs
 nW+xad357QPkJ4LjoK5MQHOBV/MxHoOxh4h+EMlehW3h749KHSVV+PHzbCMuh8DGiokx
 E5Sli76y1wzpiiggmJR1PCDk6ELgjg7ThLmIVxvuUDK+ZU76cOKgH/gJfp5F96Z/yLEd
 gKBPXOCkEIRjruMkus8iaygwDb7aOzrKjxqOZIIg+zYdgi/F90nRXjaaD2JBvYExE15i
 QLnl0/KSxESnJO5XZelyiSuMnO4PAbEWms4jfB7clTSzFR8IwXtO699TeR/xrKsD1TGv
 W+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xnddRkOdnpKmvgw1VTZ4tNEZP6mx+SwnzvEeJGa4n2I=;
 b=Y9dyaYAD07PVT7OtFLXsJhhatxsDwsnekjEQa8XCkIrwwZo8UMcqiw/6H3JKTMn8J8
 V+oI6FTK8H/Ja1h/QRxz1U5sUhfRmwIeCSWlc3ZuFUWbOaza+Dn/G+XDjDyRC1FJyv/U
 5wD5z8yM6Zu6T53V/KDhQPpmZQgfe9Eurg7h7Myg7CzKbsa8uas/EI3o0QMxIyfRtwR6
 CeQdeV6zSNfUTVcixUb3EISQt371VpxM4L8JR5BDkPzIgzExzwlmNncRtgsUr2TsDQ84
 pnZ3fmmd0BXs64m/2VFLIzF3ZNgvViEpUkj30mGwGU1DIqXHXlQOBO24CiMDP6tjulUq
 Ptlw==
X-Gm-Message-State: AOAM531Uw0OlYRNKa9jw+vcD/K07PNinLuqN/JV3tZvOvFlWV0I7k+Bo
 NWmtG6SoEklwnowBylz20XuNbQ==
X-Google-Smtp-Source: ABdhPJy6wOoCwROS2ko/uRFMhnKwrDbOnQ2R/qDxpfmtGlLbagTzm9WybMrfNKEgpZoPG5/t5RdqWQ==
X-Received: by 2002:adf:f847:: with SMTP id d7mr26976924wrq.261.1592210942617; 
 Mon, 15 Jun 2020 01:49:02 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id c5sm10250109wmb.24.2020.06.15.01.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:49:02 -0700 (PDT)
Date: Mon, 15 Jun 2020 09:48:57 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/4] KVM: arm64: Enable Pointer Authentication at EL2 if
 available
Message-ID: <20200615084857.GD177680@google.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-2-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014907_144952_A0C69DBE 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 09:19:51AM +0100, Marc Zyngier wrote:
> While initializing EL2, switch Pointer Authentication if detected

                                ^ nit: on?

> from EL1. We use the EL1-provided keys though.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/hyp-init.S | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
> index 6e6ed5581eed..81732177507d 100644
> --- a/arch/arm64/kvm/hyp-init.S
> +++ b/arch/arm64/kvm/hyp-init.S
> @@ -104,6 +104,17 @@ alternative_else_nop_endif
>  	 */
>  	mov_q	x4, (SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
>  CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
> +alternative_if ARM64_HAS_ADDRESS_AUTH_ARCH
> +	b	1f
> +alternative_else_nop_endif
> +alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
> +	b	2f
> +alternative_else_nop_endif
> +1:
> +	orr	x4, x4, #(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB)
> +	orr	x4, x4, #SCTLR_ELx_ENDA
> +	orr	x4, x4, #SCTLR_ELx_ENDB

mm/proc.S builds the mask with ldr and ors it in one go, would be nice
to use the same pattern.

> +2:
>  	msr	sctlr_el2, x4
>  	isb

Acked-by: Andrew Scull <ascull@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
