Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFDA75439
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJ9T9xG9Yi9/kXbgQ4ZK1fXfOkp8nC67XAJv5meaTaM=; b=gPz5IImkHfkHy9
	T+2aV3Seit4SyQMvIC0ceUzCAX8XINtVdWr32rshVxsPcHmXZyFL9OBBgcthSezJ//TXl6721gdHo
	oqyFsnPEcaNRO2Du8E2pORTfXrbVVTu1n+nNJx+7nyh3JUoHO0hzTouf58+dR56XpbquDS4Z7jSi3
	ykWDKW37zQvUIL0PIlrqTfFOeM5Hu+G1N3VIzsksgIajHQkKxR9G/Zg4cvD5vtfWQ6fgf7XG6fjoE
	V6daPCNcDO1C+7sNOWPrgJyXXanM8zOR10NSFih7nwCE4T0c7tmLD2HS3uQ7nUxMYCUevZBVd+0MH
	G5HgZ5Yre/ZD7T43TGDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqglt-00010v-HN; Thu, 25 Jul 2019 16:39:13 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgl2-0000nm-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:38:22 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 343C930860C7;
 Thu, 25 Jul 2019 16:38:20 +0000 (UTC)
Received: from [10.36.116.102] (ovpn-116-102.ams2.redhat.com [10.36.116.102])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4148819C7F;
 Thu, 25 Jul 2019 16:38:17 +0000 (UTC)
Subject: Re: [PATCH v3 05/10] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on disabling LPIs
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190725153543.24386-1-maz@kernel.org>
 <20190725153543.24386-6-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <976a00ae-8aa7-dde2-1ae6-3940f1370632@redhat.com>
Date: Thu, 25 Jul 2019 18:38:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190725153543.24386-6-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 25 Jul 2019 16:38:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_093821_203168_6341FC6F 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/25/19 5:35 PM, Marc Zyngier wrote:
> From: Marc Zyngier <marc.zyngier@arm.com>
> 
> If a vcpu disables LPIs at its redistributor level, we need to make sure
> we won't pend more interrupts. For this, we need to invalidate the LPI
> translation cache.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

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
