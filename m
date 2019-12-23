Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04E12969D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 14:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ly/xnzV18hy7P5Jj20wczVWe895DbuVwH/EKJ8GjFXg=; b=G+mSkOAQje5G5Xb0P3fOHJkid
	YIO7NvM1Xu0HequMxC3Unoth2oiBbEZtNtA7/odbdwm9PlogcMm26IYPznEKbt/UTYJ2QuGOdxhv9
	h45hglkLS65YcS1DxZIInKWY0LRwgU9N4KfNLfSU5RVk3CWie60UbM9+6TwHBN3drNrZ+w3l/Qenp
	lJjgjc+/UHRWB5co7XXnrr9udNC3VsBKox8FrOmDS3nD5pgMZ3ItYSZFgY39/v0ZQwVqvW6VErkdl
	h/vH3dShcnJsuMo1jZGuTm8M7UEJpbTruzFDB7yXY2v7DUBVZZn5FBquOabOCL/vGOIUGih7Kggin
	e1/gzUlsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijO0M-0005nM-Jo; Mon, 23 Dec 2019 13:44:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijO0D-0005mL-1V
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 13:44:06 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1E959C499F930DB2F9D9;
 Mon, 23 Dec 2019 21:43:54 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Mon, 23 Dec 2019
 21:43:44 +0800
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: <maz@kernel.org>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
Date: Mon, 23 Dec 2019 21:43:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191220111833.1422-1-yuzenghui@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_054405_252663_008885CC 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: andre.przywara@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/12/20 19:18, Zenghui Yu wrote:
> Although guest will hardly read and use the PTZ (Pending Table Zero)
> bit in GICR_PENDBASER, let us emulate the architecture strictly.
> As per IHI 0069E 9.11.30, PTZ field is WO, and reads as 0.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> 
> Noticed when checking all fields of GICR_PENDBASER register.
> But _not_ sure whether it's worth a fix, as Linux never sets
> the PTZ bit before enabling LPI (set GICR_CTLR_ENABLE_LPIS).
> 
> And I wonder under which scenarios can this bit be written as 1.
> It seems difficult for software to determine whether the pending
> table contains all zeros when writing this bit.
> 
>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index 7dfd15dbb308..ebc218840fc2 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -414,8 +414,11 @@ static unsigned long vgic_mmio_read_pendbase(struct kvm_vcpu *vcpu,
>   					     gpa_t addr, unsigned int len)
>   {
>   	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
> +	u64 value = vgic_cpu->pendbaser;
>   
> -	return extract_bytes(vgic_cpu->pendbaser, addr & 7, len);
> +	value &= ~GICR_PENDBASER_PTZ;
> +
> +	return extract_bytes(value, addr & 7, len);
>   }
>   
>   static void vgic_mmio_write_pendbase(struct kvm_vcpu *vcpu,
> 

I noticed there is no userspace access callbacks for GICR_PENDBASER,
so this patch will make the PTZ field also 'Read As Zero' by userspace.
Should we consider adding a uaccess_read callback for GICR_PENDBASER
which just returns the unchanged vgic_cpu->pendbaser to userspace?
(Though this is really not a big deal. We now always emulate the PTZ
field to guest as RAZ. And 'vgic_cpu->pendbaser & GICR_PENDBASER_PTZ'
only indicates whether KVM will optimize the LPI enabling process,
where Read As Zero indicates never optimize..)


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
