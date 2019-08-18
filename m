Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C35891872
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 19:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPgM/vcQKE0U/2wWfHNHxmrOt881yr6eWfCMksd70bQ=; b=DOAlC9ExuxGuXz
	OCMftEvMjxNrBx8gm46hsDdY3vrwX9T4KQZqm9wL8HeqTBiJJF3FJxbl8J6X7fEk1XAl97WGVTy2I
	csheNO+BIN58JtMI/GC2NahRQ6BbrEgQgJWMop2jqtbfJUTPzbnSUGt+0W/vw8vYDLOZY8uAPHGWs
	De71T+qSckJYl4av9ZCQhNrTNsYq1Siie5peolDXIx+lhX93kTSexRdIUUmt16V/CdRqpmo7tiSUG
	jp17B2FaUtvO4rZhQkKZUk8R+muXsOYgmxEphXXZNd90zmBnJW0f4xL0B9XjCD6OqdwWrfZkEeaxK
	D/eyvNejicrKdEJ+xJYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzPEX-0002za-0O; Sun, 18 Aug 2019 17:44:49 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzPEF-0002z0-VQ
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 17:44:33 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1hzPED-0007S9-Tg; Sun, 18 Aug 2019 19:44:30 +0200
Date: Sun, 18 Aug 2019 18:44:27 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Make function comments match
 function declarations
Message-ID: <20190818184427.0fc263ad@why>
In-Reply-To: <1565862982-9787-1-git-send-email-alexandru.elisei@arm.com>
References: <1565862982-9787-1-git-send-email-alexandru.elisei@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, julien.grall@arm.com, andre.przywara@arm.com,
 eric.auger@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_104432_154794_36354354 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, andre.przywara@arm.com,
 eric.auger@redhat.com, julien.grall@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 10:56:22 +0100
Alexandru Elisei <alexandru.elisei@arm.com> wrote:

> Since commit 503a62862e8f ("KVM: arm/arm64: vgic: Rely on the GIC driver to
> parse the firmware tables"), the vgic_v{2,3}_probe functions stopped using
> a DT node. Commit 909777324588 ("KVM: arm/arm64: vgic-new: vgic_init:
> implement kvm_vgic_hyp_init") changed the functions again, and now they
> require exactly one argument, a struct gic_kvm_info populated by the GIC
> driver. Unfortunately the comments regressed and state that a DT node is
> used instead. Change the function comments to reflect the current
> prototypes.
> 
> Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
> ---
>  virt/kvm/arm/vgic/vgic-v2.c | 7 ++++---
>  virt/kvm/arm/vgic/vgic-v3.c | 7 ++++---
>  2 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/virt/kvm/arm/vgic/vgic-v2.c
> index 96aab77d0471..27b1ddf71aa0 100644
> --- a/virt/kvm/arm/vgic/vgic-v2.c
> +++ b/virt/kvm/arm/vgic/vgic-v2.c
> @@ -354,10 +354,11 @@ int vgic_v2_map_resources(struct kvm *kvm)
>  DEFINE_STATIC_KEY_FALSE(vgic_v2_cpuif_trap);
>  
>  /**
> - * vgic_v2_probe - probe for a GICv2 compatible interrupt controller in DT
> - * @node:	pointer to the DT node
> + * vgic_v2_probe - probe for a VGICv2 compatible interrupt controller
> + * @info:	pointer to the GIC description
>   *
> - * Returns 0 if a GICv2 has been found, returns an error code otherwise
> + * Returns 0 if the VGICv2 has been probed successfully, returns an error code
> + * otherwise
>   */
>  int vgic_v2_probe(const struct gic_kvm_info *info)
>  {
> diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
> index 0c653a1e5215..4874f3266bea 100644
> --- a/virt/kvm/arm/vgic/vgic-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-v3.c
> @@ -570,10 +570,11 @@ static int __init early_gicv4_enable(char *buf)
>  early_param("kvm-arm.vgic_v4_enable", early_gicv4_enable);
>  
>  /**
> - * vgic_v3_probe - probe for a GICv3 compatible interrupt controller in DT
> - * @node:	pointer to the DT node
> + * vgic_v3_probe - probe for a VGICv3 compatible interrupt controller
> + * @info:	pointer to the GIC description
>   *
> - * Returns 0 if a GICv3 has been found, returns an error code otherwise
> + * Returns 0 if the VGICv3 has been probed successfully, returns an error code
> + * otherwise
>   */
>  int vgic_v3_probe(const struct gic_kvm_info *info)
>  {


Queued, thanks.

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
