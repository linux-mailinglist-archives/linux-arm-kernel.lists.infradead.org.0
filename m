Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD6A1BF6CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q6LvSM44VwKgfocx2BQTi7kVceGaulhTCcYyjXllc14=; b=ZgRT79MWcBGqroVWqmMjiG0gN
	TPmoFrdjKvbcr5lLsBjoslviPgcHpdKhyWSq8VdeApGAfu4z+p24Vfqy7UajUNGfSaz/cE2kZY7Ti
	s2ESl7bL6aiGIstRslaKyIcKPvNShCPGX96atG7qCglFHsVh5PlLAjONg7q60Aykse7xWJLgZVVZO
	9zjyc0nuvGk+ykZPOA/lWh45BXSbpR8hZG0coK3J8GrfR1i3pfS9BRvB2nYk1WsMcAOY8uLGU4laX
	+H59WDssi3uSwZz3cg+coqQTmkvPkeAkSTPijhPbo3WHjY0WM38PiY3QQsPKaq6/pDClIJi39mlZB
	d+M2d3XBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7Jr-0008J2-5z; Thu, 30 Apr 2020 11:25:31 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7Jh-0007WH-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:25:23 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B6CDFD5C09F13723E425;
 Thu, 30 Apr 2020 19:25:03 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Thu, 30 Apr 2020
 19:24:55 +0800
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Initialize GICv4.1 even in the
 absence of a virtual ITS
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvm@vger.kernel.org>, <kvmarm@lists.cs.columbia.edu>
References: <20200425094426.162962-1-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5b23b938-f71f-5523-6d7e-027bcca98dd4@huawei.com>
Date: Thu, 30 Apr 2020 19:24:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200425094426.162962-1-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_042522_095104_5B03C075 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/4/25 17:44, Marc Zyngier wrote:
> KVM now expects to be able to use HW-accelerated delivery of vSGIs
> as soon as the guest has enabled thm. Unfortunately, we only
them
> initialize the GICv4 context if we have a virtual ITS exposed to
> the guest.
> 
> Fix it by always initializing the GICv4.1 context if it is
> available on the host.
> 
> Fixes: 2291ff2f2a56 ("KVM: arm64: GICv4.1: Plumb SGI implementation selection in the distributor")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   virt/kvm/arm/vgic/vgic-init.c    | 9 ++++++++-
>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 3 ++-
>   2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> index a963b9d766b73..8e6f350c3bcd1 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -294,8 +294,15 @@ int vgic_init(struct kvm *kvm)
>   		}
>   	}
>   
> -	if (vgic_has_its(kvm)) {
> +	if (vgic_has_its(kvm))
>   		vgic_lpi_translation_cache_init(kvm);
> +
> +	/*
> +	 * If we have GICv4.1 enabled, unconditionnaly request enable the
> +	 * v4 support so that we get HW-accelerated vSGIs. Otherwise, only
> +	 * enable it if we present a virtual ITS to the guest.
> +	 */
> +	if (vgic_supports_direct_msis(kvm)) {
>   		ret = vgic_v4_init(kvm);
>   		if (ret)
>   			goto out;
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index e72dcc4542475..26b11dcd45524 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -50,7 +50,8 @@ bool vgic_has_its(struct kvm *kvm)
>   
>   bool vgic_supports_direct_msis(struct kvm *kvm)
>   {
> -	return kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm);
> +	return (kvm_vgic_global_state.has_gicv4_1 ||
> +		(kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm)));
>   }

Not related to this patch, but I think that the function name can be
improved a bit after this change. It now indicates whether the vGIC
supports direct MSIs injection *or* direct SGIs injection, not just
MSIs. And if vgic_has_its() is false, we don't even support MSIs.

The fix itself looks correct to me,

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
