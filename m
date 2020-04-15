Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D181AA3A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8oQKs5d71NqRzskprlqUucmADNcNw/nbvVAa1YK6eOY=; b=P0undqNBSQPc1/20cqCPErLeq
	HBrF9LXU/gMXnKbGPvhS2YUj03hKZJOVk+rUS/n3vPAY7lM8+w/eAkJWq2l8Ls5IiuNZmExOtInUY
	P+bvSjdGLCp2jOB0g+4Oqrnyc+E4YnEpW8SPdOmp9+3W5RnH5hiaI1ZA0IS3akxd8YNkvZPjbVrA+
	rC8R1JD1TscPcYoFFq5TQ/ajWDF8W0xGYxjYULeJdsI+hnLyQRipOqOkbXcQT1hJp6rQk7yvlM3TX
	zqv0DbDJU0d1ML0bUptORHHlj57nUCmk5xymevS4+yvs3hRe2GmhS+rolMp4RgOzmu8JDFqjWqCZr
	AgTilbtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhtl-0006ZI-1A; Wed, 15 Apr 2020 13:16:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhtZ-0006Yb-HW
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:16:04 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BB3737813D41CBFCD8A4;
 Wed, 15 Apr 2020 21:15:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Wed, 15 Apr 2020
 21:15:43 +0800
Subject: Re: [PATCH 1/3] KVM: arm: vgic: Synchronize the whole guest on
 GIC{D,R}_I{S,C}ACTIVER read
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
References: <20200414103517.2824071-1-maz@kernel.org>
 <20200414103517.2824071-2-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <190b57e6-0ac5-63bb-57d8-5bab2aea0b2c@huawei.com>
Date: Wed, 15 Apr 2020 21:15:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200414103517.2824071-2-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061601_754971_09D6C008 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/4/14 18:35, Marc Zyngier wrote:
> When a guest tries to read the active state of its interrupts,
> we currently just return whatever state we have in memory. This
> means that if such an interrupt lives in a List Register on another
> CPU, we fail to obsertve the latest active state for this interrupt.
> 
> In order to remedy this, stop all the other vcpus so that they exit
> and we can observe the most recent value for the state.
> 
> Reported-by: Julien Grall <julien@xen.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   virt/kvm/arm/vgic/vgic-mmio-v2.c |   4 +-
>   virt/kvm/arm/vgic/vgic-mmio-v3.c |   4 +-
>   virt/kvm/arm/vgic/vgic-mmio.c    | 100 ++++++++++++++++++++-----------
>   virt/kvm/arm/vgic/vgic-mmio.h    |   3 +
>   4 files changed, 71 insertions(+), 40 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> index 5945f062d749..d63881f60e1a 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> @@ -422,11 +422,11 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
>   		VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_SET,
>   		vgic_mmio_read_active, vgic_mmio_write_sactive,
> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>   		VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_CLEAR,
>   		vgic_mmio_read_active, vgic_mmio_write_cactive,
> -		NULL, vgic_mmio_uaccess_write_cactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 1,
>   		VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PRI,
>   		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index e72dcc454247..77c8ba1a2535 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -553,11 +553,11 @@ static const struct vgic_register_region vgic_v3_dist_registers[] = {
>   		VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISACTIVER,
>   		vgic_mmio_read_active, vgic_mmio_write_sactive,
> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>   		VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICACTIVER,
>   		vgic_mmio_read_active, vgic_mmio_write_cactive,
> -		NULL, vgic_mmio_uaccess_write_cactive,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive,
>   		1, VGIC_ACCESS_32bit),
>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_IPRIORITYR,
>   		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,

Shouldn't we also set this uaccess_read cb for GICR_I{S,C}ACTIVER0?


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
