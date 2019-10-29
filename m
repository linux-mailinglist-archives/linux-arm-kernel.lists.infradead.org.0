Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA1FE87E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7ywo6QT+HZ4cZW6/Xo0QJzLQg+03wXLWX4us3uDjP8=; b=SbNSspkAxDizyq
	erxgrGwCsVFu0F7QAdcvuuiayWXQJi8lgxcu8dYg1GSiF6dxw6CdMVdAc85ekesUQFzqQNDy89LNl
	qv5uNSE6BkQovQp9Ayx7Cc6d74lq0DU3Wc/zOPz0BG16tQwUVivWILLdHuMh/U2roPSjydd0YvOu0
	II6uONTUS6/+7an6M/hJ/LV3/pV5bp93AMB6RiAQwhSrfhs74ok7qHX73/5vihRZDmQX2QmN9VFYf
	9MmeRyGW6lRi4zKWe5F3vZgvTmP5JE6WEvHSqayjkqnPp5xivl8ndFBTEcN7ULQdLg1g9jexr/PLF
	jcMKeQGhxDNP1prayeRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQRK-0007NA-Py; Tue, 29 Oct 2019 12:17:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQRA-0007Ln-27
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572351439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c5TVCYf2MyQ5m7UVpCqBCLIUTH2CBfxMSLxMHSp3UXw=;
 b=gCso8YSQKB2mbv431nmp+frf4w9LlzMZOobkUSCWl3MDrh8dZ8jzJxlCx38AK+/WbY4K0I
 edSxoWzpf/Ej+aGgACN58tAQ116KAEnbpXiQ0oGIZvXtOB3H2ibQTFppiyOS/mOAKek5mm
 IAv7a/tgOu48TGpjonSmZeoABPGyF8I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-1I3Ni04hMhG__5_pXeNLHQ-1; Tue, 29 Oct 2019 08:17:15 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29E9C107AD28;
 Tue, 29 Oct 2019 12:17:14 +0000 (UTC)
Received: from [10.36.118.15] (unknown [10.36.118.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 728CC600C4;
 Tue, 29 Oct 2019 12:17:10 +0000 (UTC)
Subject: Re: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-4-yuzenghui@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <5e4d1a2f-7107-efe3-9dde-626662e31ac5@redhat.com>
Date: Tue, 29 Oct 2019 13:17:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191029071919.177-4-yuzenghui@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 1I3Ni04hMhG__5_pXeNLHQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_051724_176993_1191259F 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui, Marc,

On 10/29/19 8:19 AM, Zenghui Yu wrote:
> It's possible that two LPIs locate in the same "byte_offset" but target
> two different vcpus, where their pending status are indicated by two
> different pending tables.  In such a scenario, using last_byte_offset
> optimization will lead KVM relying on the wrong pending table entry.
> Let us use last_ptr instead, which can be treated as a byte index into
> a pending table and also, can be vcpu specific.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> 
> If this patch has done the right thing, we can even add the:
> 
> Fixes: 280771252c1b ("KVM: arm64: vgic-v3: KVM_DEV_ARM_VGIC_SAVE_PENDING_TABLES")
> 
> But to be honest, I'm not clear about what has this patch actually fixed.
> Pending tables should contain all zeros before we flush vgic_irq's pending
> status into guest's RAM (thinking that guest should never write anything
> into it). So the pending table entry we've read from the guest memory
> seems always be zero. And we will always do the right thing even if we
> rely on the wrong pending table entry.
> 
> I think I must have some misunderstanding here... Please fix me.
> 
>  virt/kvm/arm/vgic/vgic-v3.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
> index 5ef93e5041e1..7cd2e2f81513 100644
> --- a/virt/kvm/arm/vgic/vgic-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-v3.c
> @@ -363,8 +363,8 @@ int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
>  int vgic_v3_save_pending_tables(struct kvm *kvm)
>  {
>  	struct vgic_dist *dist = &kvm->arch.vgic;
> -	int last_byte_offset = -1;
>  	struct vgic_irq *irq;
> +	gpa_t last_ptr = -1;
>  	int ret;
>  	u8 val;
>  
> @@ -384,11 +384,11 @@ int vgic_v3_save_pending_tables(struct kvm *kvm)
>  		bit_nr = irq->intid % BITS_PER_BYTE;
>  		ptr = pendbase + byte_offset;
>  
> -		if (byte_offset != last_byte_offset) {
> +		if (ptr != last_ptr) {
>  			ret = kvm_read_guest_lock(kvm, ptr, &val, 1);
>  			if (ret)
>  				return ret;
> -			last_byte_offset = byte_offset;
> +			last_ptr = ptr;
>  		}
>  
>  		stored = val & (1U << bit_nr);
> 
Acked-by: Eric Auger <eric.auger@redhat.com>

Thanks for fixing this.

Eric



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
