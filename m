Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716D571833
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/js2v2S0aN2oMTf2/xdtYhfWW/OS2FAc5FXGa5x5cYQ=; b=JmQqFj0cA6C3Ar
	keiDTd6xEKLuoXmBBrfgw6Q2ajm7AhXDxOw0kmmlbtrwls4oAmpDKHGsF7q2CuNAljJXntba/GXCZ
	C9CKvBO0jlZU165rYc081HfhOV2qQLenKLrzAAF+CRv3785z+8WdEOwYAqrN1vKgqgRUudsNMp//x
	bP84tWAgzoO+FtlHhanBzmXqYKatORS4ShvF5Hnx3eBtOnSabZilFWMPVe/BVCksOulXcA4vsgRhW
	QGzoafqRD+bR+HVDDfINYizh/tN1Ty1FFO2ZcB4XEaFUcVo6K845n9qbaLMU2wjr/EGMP4XmBZveQ
	bNcd53HMjjxjnqlWncVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptrz-0006HL-Cq; Tue, 23 Jul 2019 12:26:15 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptrb-0006Gg-Lz
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:25:54 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7035F300CB0E;
 Tue, 23 Jul 2019 12:25:50 +0000 (UTC)
Received: from [10.36.117.239] (ovpn-117-239.ams2.redhat.com [10.36.117.239])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D4BB21001DE1;
 Tue, 23 Jul 2019 12:25:45 +0000 (UTC)
Subject: Re: [PATCH v2 4/9] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on specific commands
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-5-marc.zyngier@arm.com>
 <9ff329a3-44f2-1de3-b6cc-58ed38a63665@redhat.com>
 <1a78d52c-7a31-8981-230b-abe85d11b8ec@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <8b5e029c-a08f-b86b-7021-5d68ec05d3bd@redhat.com>
Date: Tue, 23 Jul 2019 14:25:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1a78d52c-7a31-8981-230b-abe85d11b8ec@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 23 Jul 2019 12:25:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052551_758877_15E1964B 
X-CRM114-Status: GOOD (  22.02  )
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

On 7/22/19 12:54 PM, Marc Zyngier wrote:
> Hi Eric,
> 
> On 01/07/2019 13:38, Auger Eric wrote:
>> Hi Marc,
>>
>> On 6/11/19 7:03 PM, Marc Zyngier wrote:
>>> The LPI translation cache needs to be discarded when an ITS command
>>> may affect the translation of an LPI (DISCARD and MAPD with V=0) or
>>> the routing of an LPI to a redistributor with disabled LPIs (MOVI,
>>> MOVALL).
>>>
>>> We decide to perform a full invalidation of the cache, irrespective
>>> of the LPI that is affected. Commands are supposed to be rare enough
>>> that it doesn't matter.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  virt/kvm/arm/vgic/vgic-its.c | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>> index 9b6b66204b97..5254bb762e1b 100644
>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>> @@ -733,6 +733,8 @@ static int vgic_its_cmd_handle_discard(struct kvm *kvm, struct vgic_its *its,
>>>  		 * don't bother here since we clear the ITTE anyway and the
>>>  		 * pending state is a property of the ITTE struct.
>>>  		 */
>>> +		vgic_its_invalidate_cache(kvm);
>>> +
>>>  		its_free_ite(kvm, ite);
>>>  		return 0;
>>>  	}
>>> @@ -768,6 +770,8 @@ static int vgic_its_cmd_handle_movi(struct kvm *kvm, struct vgic_its *its,
>>>  	ite->collection = collection;
>>>  	vcpu = kvm_get_vcpu(kvm, collection->target_addr);
>>>  
>>> +	vgic_its_invalidate_cache(kvm);
>>> +
>>>  	return update_affinity(ite->irq, vcpu);
>>>  }
>>>  
>>> @@ -996,6 +1000,8 @@ static void vgic_its_free_device(struct kvm *kvm, struct its_device *device)
>>>  	list_for_each_entry_safe(ite, temp, &device->itt_head, ite_list)
>>>  		its_free_ite(kvm, ite);
>>>  
>>> +	vgic_its_invalidate_cache(kvm);
>>> +
>>>  	list_del(&device->dev_list);
>>>  	kfree(device);
>>>  }
>>> @@ -1249,6 +1255,8 @@ static int vgic_its_cmd_handle_movall(struct kvm *kvm, struct vgic_its *its,
>>>  		vgic_put_irq(kvm, irq);
>>>  	}
>>>  
>>> +	vgic_its_invalidate_cache(kvm);
>> All the commands are executed with the its_lock held. Now we don't take
>> it anymore on the fast cache injection path. Don't we have a window
>> where the move has been applied at table level and the cache is not yet
>> invalidated? Same question for vgic_its_free_device().
> 
> There is definitely a race, but that race is invisible from the guest's
> perspective. The guest can only assume that the command has taken effect
> once a SYNC command has been executed, and it cannot observe that the
> SYNC command has been executed before we have invalidated the cache.
> 
> Does this answer your question?

OK make sense. Thank you for the clarification

Another question, don't we need to invalidate the cache on  MAPC V=0 as
well? Removing the mapping of the collection results in interrupts
belonging to that collection being ignored. If we don't flush the
pending bit will be set?

Thanks

Eric
> 
> Thanks,
> 
> 	M.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
