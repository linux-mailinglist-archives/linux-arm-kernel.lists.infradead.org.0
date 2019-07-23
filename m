Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA3371B19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqWZGD83DBsVhXHDlwkgUczlUTxCOTob/AW6Fa4nP0A=; b=ezuXo9bfxtcLq8
	A0dY+1GbqPxQnAcCW1Fx00sGdDlTWwQbNT88hQHb7BMKnQeMJdj2460QZh8GKm3OF6WABJch9d8s7
	z3jGhq7ajkbyr0YKj6OedYQi9cuL6elwG6RXKjrpsDpN5oJaIA6oGrOW0qpMCRgX9vQhqmSK8loxc
	JUk9QoYP/uImpecVDfm9i4zLB06rNhSREZxShoa6fsw3FXVl5t0kJ85o5fHU8MJrK6tetyULL8Yb8
	tKbCaQyOHNQDWUsZCq2NV9aF2DYlPYPrcumtelgUn8i1/6zwe5X4+BXkUVuCmQOaJaRBqTAWJrRdq
	UGnHmYBB6+nFBdockxEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwQg-00069w-NJ; Tue, 23 Jul 2019 15:10:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwQP-00069D-Vf
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:09:59 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F3D35307D985;
 Tue, 23 Jul 2019 15:09:56 +0000 (UTC)
Received: from [10.36.116.111] (ovpn-116-111.ams2.redhat.com [10.36.116.111])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 32B411001938;
 Tue, 23 Jul 2019 15:09:53 +0000 (UTC)
From: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v2 5/9] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on disabling LPIs
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-6-marc.zyngier@arm.com>
Message-ID: <14f5b62f-79d6-65dd-bb84-8dd6d70560f1@redhat.com>
Date: Tue, 23 Jul 2019 17:09:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611170336.121706-6-marc.zyngier@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 23 Jul 2019 15:09:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_080958_034764_3BC6E575 
X-CRM114-Status: GOOD (  19.03  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, "Saidi, Ali" <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 6/11/19 7:03 PM, Marc Zyngier wrote:
> If a vcpu disables LPIs at its redistributor level, we need to make sure
> we won't pend more interrupts. For this, we need to invalidate the LPI
> translation cache.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  virt/kvm/arm/vgic/vgic-mmio-v3.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index 936962abc38d..cb60da48810d 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -192,8 +192,10 @@ static void vgic_mmio_write_v3r_ctlr(struct kvm_vcpu *vcpu,
>  
>  	vgic_cpu->lpis_enabled = val & GICR_CTLR_ENABLE_LPIS;
>  
> -	if (was_enabled && !vgic_cpu->lpis_enabled)
> +	if (was_enabled && !vgic_cpu->lpis_enabled) {
>  		vgic_flush_pending_lpis(vcpu);
> +		vgic_its_invalidate_cache(vcpu->kvm);
> +	}
>  
>  	if (!was_enabled && vgic_cpu->lpis_enabled)
>  		vgic_enable_lpis(vcpu);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
