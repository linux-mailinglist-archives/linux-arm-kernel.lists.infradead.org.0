Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3606B187FD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/TsR1/j/mIW10ZEvc177o08F2HlFzjZzxRvdOCdsog=; b=nPGRIvj0d2LZmI
	x6lgUogrx0D+BxD7cUjPXVrRx4tasV1XONcwamZXGg1xPSsq6s3nV/2ns/d6uJ1jrM+YuDwQxBgrY
	lKMqzBoYDOoopsw6icIfYrLw6uduro+JA4hRgZKYcXVhogjpXSo1TZ54EpmS3ZT8VTXMGUk3m1OFx
	RWrOhbTV1TxmTu3K9ZjE93SVzVFRaasYdG+pxeB6n9UXLrWbCWq290/b/QyhD5lBppbKmpbCWqARU
	gIPlU5B0FO8mJjMG0TWW+sWK5XMVdFat05PHnsm32Oztruua78WLnZkxvBBZWma0NRC/idjRRCkXA
	Aug0y/vleEAt3hkSlKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA1f-0007EQ-EN; Tue, 17 Mar 2020 11:04:47 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA1W-0007DC-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584443075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EzG/M8Z6pKqu/VY432HtCP1l4TbOCW1/V3h7h2TGD8o=;
 b=KBE2cpGpU+ZpDRaRMQHXK8rVKeYOVRgJ8Yn+mQXupqv62CmdbUvhtP3AE7MdBCIGLWyPf0
 uo3o16GyHQRPSgr0baCVaj+M9FTFQhTtFRf81X3JDhTIeVvAdJuFJN5S7ZopiuzFbTx3SQ
 0/OChUC+3vha4K2qKT/2IDOvtNjeXgA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-6WXanJS8PgmMPO53GH65Hg-1; Tue, 17 Mar 2020 07:04:29 -0400
X-MC-Unique: 6WXanJS8PgmMPO53GH65Hg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3503B8018A2;
 Tue, 17 Mar 2020 11:04:27 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EA6CB8F37B;
 Tue, 17 Mar 2020 11:04:23 +0000 (UTC)
Subject: Re: [PATCH v5 17/23] KVM: arm64: GICv4.1: Let doorbells be
 auto-enabled
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-18-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <43848b89-29fe-eb34-b6d9-f9723f40a8f1@redhat.com>
Date: Tue, 17 Mar 2020 12:04:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-18-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040438_560408_DBED0678 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> As GICv4.1 understands the life cycle of doorbells (instead of
> just randomly firing them at the most inconvenient time), just
> enable them at irq_request time, and be done with it.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric

> ---
>  virt/kvm/arm/vgic/vgic-v4.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
> index 1eb0f8c76219..c2fcde104ea2 100644
> --- a/virt/kvm/arm/vgic/vgic-v4.c
> +++ b/virt/kvm/arm/vgic/vgic-v4.c
> @@ -141,6 +141,7 @@ int vgic_v4_init(struct kvm *kvm)
>  
>  	kvm_for_each_vcpu(i, vcpu, kvm) {
>  		int irq = dist->its_vm.vpes[i]->irq;
> +		unsigned long irq_flags = DB_IRQ_FLAGS;
>  
>  		/*
>  		 * Don't automatically enable the doorbell, as we're
> @@ -148,8 +149,14 @@ int vgic_v4_init(struct kvm *kvm)
>  		 * blocked. Also disable the lazy disabling, as the
>  		 * doorbell could kick us out of the guest too
>  		 * early...
> +		 *
> +		 * On GICv4.1, the doorbell is managed in HW and must
> +		 * be left enabled.
>  		 */
> -		irq_set_status_flags(irq, DB_IRQ_FLAGS);
> +		if (kvm_vgic_global_state.has_gicv4_1)
> +			irq_flags &= ~IRQ_NOAUTOEN;
> +		irq_set_status_flags(irq, irq_flags);
> +
>  		ret = request_irq(irq, vgic_v4_doorbell_handler,
>  				  0, "vcpu", vcpu);
>  		if (ret) {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
