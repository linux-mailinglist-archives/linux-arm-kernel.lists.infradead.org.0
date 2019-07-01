Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAED5BBA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4wdLfcVDDiDWrmUBV94TYGqSDbKkYY5euQyPoJ8Mo8=; b=hzMXYpQK967vcB
	QGX4x48DT4rTcSk+o4eoowYku1HuNrZiqrSapKV0fWUQrfkJLUX83zn+5UJTMWANuRlaT6w/ZDXLr
	LsCryi/OEa7+NX7wiqEZ+XvJgpReIKH5m8Q1ZLZadxK4b2cKDpdK0W0HpfKoDauLlP4D9SmSfaCPT
	q/JrWYlDOXoxBerMyIIbIQ6gMDw9qnOz12eshHy9ZlJGzLlSkJNffypDzs5I9UDeHpVQ3URUq1il0
	d9CLM1Qk0x4vwDO2SPtcnTRSqysS46s5ZnKvo09jTVh8urXWhP+M1VzFbokikp/2X3C2gqHkBdwV0
	N7mLu1paa3/Dt877hNmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvZv-0000dS-4R; Mon, 01 Jul 2019 12:38:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvZn-0000d8-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:38:32 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC77836887;
 Mon,  1 Jul 2019 12:38:25 +0000 (UTC)
Received: from [10.36.116.89] (ovpn-116-89.ams2.redhat.com [10.36.116.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 372891B4B0;
 Mon,  1 Jul 2019 12:38:17 +0000 (UTC)
Subject: Re: [PATCH v2 4/9] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on specific commands
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-5-marc.zyngier@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <9ff329a3-44f2-1de3-b6cc-58ed38a63665@redhat.com>
Date: Mon, 1 Jul 2019 14:38:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611170336.121706-5-marc.zyngier@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 01 Jul 2019 12:38:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_053831_728626_3DC9D087 
X-CRM114-Status: GOOD (  22.17  )
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
> The LPI translation cache needs to be discarded when an ITS command
> may affect the translation of an LPI (DISCARD and MAPD with V=0) or
> the routing of an LPI to a redistributor with disabled LPIs (MOVI,
> MOVALL).
> 
> We decide to perform a full invalidation of the cache, irrespective
> of the LPI that is affected. Commands are supposed to be rare enough
> that it doesn't matter.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  virt/kvm/arm/vgic/vgic-its.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index 9b6b66204b97..5254bb762e1b 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -733,6 +733,8 @@ static int vgic_its_cmd_handle_discard(struct kvm *kvm, struct vgic_its *its,
>  		 * don't bother here since we clear the ITTE anyway and the
>  		 * pending state is a property of the ITTE struct.
>  		 */
> +		vgic_its_invalidate_cache(kvm);
> +
>  		its_free_ite(kvm, ite);
>  		return 0;
>  	}
> @@ -768,6 +770,8 @@ static int vgic_its_cmd_handle_movi(struct kvm *kvm, struct vgic_its *its,
>  	ite->collection = collection;
>  	vcpu = kvm_get_vcpu(kvm, collection->target_addr);
>  
> +	vgic_its_invalidate_cache(kvm);
> +
>  	return update_affinity(ite->irq, vcpu);
>  }
>  
> @@ -996,6 +1000,8 @@ static void vgic_its_free_device(struct kvm *kvm, struct its_device *device)
>  	list_for_each_entry_safe(ite, temp, &device->itt_head, ite_list)
>  		its_free_ite(kvm, ite);
>  
> +	vgic_its_invalidate_cache(kvm);
> +
>  	list_del(&device->dev_list);
>  	kfree(device);
>  }
> @@ -1249,6 +1255,8 @@ static int vgic_its_cmd_handle_movall(struct kvm *kvm, struct vgic_its *its,
>  		vgic_put_irq(kvm, irq);
>  	}
>  
> +	vgic_its_invalidate_cache(kvm);
All the commands are executed with the its_lock held. Now we don't take
it anymore on the fast cache injection path. Don't we have a window
where the move has been applied at table level and the cache is not yet
invalidated? Same question for vgic_its_free_device().

Thanks

Eric


> +
>  	kfree(intids);
>  	return 0;
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
