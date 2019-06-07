Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0A338D06
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeCWvhNnAXY7M+wmBn8TtII8qbRdnk5I++YdNeRu5Eg=; b=j/FD+DmYXyHQX9
	maOQIouJZgKXNtezqS0kdtGUY+dr4UL2kky+WBHHw73LwUr44CrAcZEedEdrantztopRt0O+YfGjO
	RyqEHmRimZGDKi7NmLqaq0/PD3DmhMggfrtQtcf+KULwQPV2PnRYQtCZTlTxW/Usia61Q24ySu9zM
	V+4Nua00CwAoFFD4zx6amuedXu/ZD/2jRidJCuba6qjLEX6xIQwT73qmiHrULz8iV0sFBYcvFNly/
	Kl+nW48r3moTO4zMSOOetWxrCdvJoKXYF4jiN+vqx/zrIBdOz/cFI02akoybLvHMLQZRQ3vPV9iWX
	FRMQ7gdNNfHc0ZgIZbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFsM-0007rV-B6; Fri, 07 Jun 2019 14:29:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFsC-0007qG-5f
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:29:41 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7446C30BC582;
 Fri,  7 Jun 2019 14:29:34 +0000 (UTC)
Received: from [10.36.116.67] (ovpn-116-67.ams2.redhat.com [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 072FC60634;
 Fri,  7 Jun 2019 14:29:30 +0000 (UTC)
Subject: Re: [PATCH 4/8] KVM: arm/arm64: vgic-its: Add kvm parameter to
 vgic_its_free_collection
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-5-marc.zyngier@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <42b2f7fe-60e1-90b2-bc8a-515dc17f9d9c@redhat.com>
Date: Fri, 7 Jun 2019 16:29:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190606165455.162478-5-marc.zyngier@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 07 Jun 2019 14:29:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_072940_234627_514EEDD9 
X-CRM114-Status: GOOD (  19.90  )
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
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
On 6/6/19 6:54 PM, Marc Zyngier wrote:
> As we are going to perform some VM-wide operations when freeing
> a collection, add the kvm pointer to vgic_its_free_collection.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Eventually do you use that commit in subsequent patches?

Thanks

Eric
> ---
>  virt/kvm/arm/vgic/vgic-its.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index bc370b6c5afa..f637edd77e1f 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -885,7 +885,8 @@ static int vgic_its_alloc_collection(struct vgic_its *its,
>  	return 0;
>  }
>  
> -static void vgic_its_free_collection(struct vgic_its *its, u32 coll_id)
> +static void vgic_its_free_collection(struct kvm *kvm,
> +				     struct vgic_its *its, u32 coll_id)
>  {
>  	struct its_collection *collection;
>  	struct its_device *device;
> @@ -974,7 +975,7 @@ static int vgic_its_cmd_handle_mapi(struct kvm *kvm, struct vgic_its *its,
>  	ite = vgic_its_alloc_ite(device, collection, event_id);
>  	if (IS_ERR(ite)) {
>  		if (new_coll)
> -			vgic_its_free_collection(its, coll_id);
> +			vgic_its_free_collection(kvm, its, coll_id);
>  		return PTR_ERR(ite);
>  	}
>  
> @@ -984,7 +985,7 @@ static int vgic_its_cmd_handle_mapi(struct kvm *kvm, struct vgic_its *its,
>  	irq = vgic_add_lpi(kvm, lpi_nr, vcpu);
>  	if (IS_ERR(irq)) {
>  		if (new_coll)
> -			vgic_its_free_collection(its, coll_id);
> +			vgic_its_free_collection(kvm, its, coll_id);
>  		its_free_ite(kvm, ite);
>  		return PTR_ERR(irq);
>  	}
> @@ -1025,7 +1026,7 @@ static void vgic_its_free_collection_list(struct kvm *kvm, struct vgic_its *its)
>  	struct its_collection *cur, *temp;
>  
>  	list_for_each_entry_safe(cur, temp, &its->collection_list, coll_list)
> -		vgic_its_free_collection(its, cur->collection_id);
> +		vgic_its_free_collection(kvm, its, cur->collection_id);
>  }
>  
>  /* Must be called with its_lock mutex held */
> @@ -1110,7 +1111,7 @@ static int vgic_its_cmd_handle_mapc(struct kvm *kvm, struct vgic_its *its,
>  		return E_ITS_MAPC_PROCNUM_OOR;
>  
>  	if (!valid) {
> -		vgic_its_free_collection(its, coll_id);
> +		vgic_its_free_collection(kvm, its, coll_id);
>  	} else {
>  		collection = find_collection(its, coll_id);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
