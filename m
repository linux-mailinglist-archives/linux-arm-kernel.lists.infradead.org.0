Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F726136910
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 09:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpQDgdTT0MyPb9qr1DDDhHxo+ke4HP6WLK0jBNPII84=; b=D56MP9FQD/hbIU
	lVn58RSbjbdXYpcvj14oIjb0IPZyx1XfXdqhKLSyadNFq7PXkMIl7c+76oK9BUSiwDbv+4SAAMRJk
	MhIqtgwHzr39io/Frbtgdawc+5dSVSNrR3pWjBONRlFSmLkT3/AKfY5dDZKDTzekGguEY8GyeW4sz
	dKzKuEFAInflsyPSxpdE+X05wAkkG2VoL70tcG/u6w38Hy4WlVYCecy6Rswx0dADIS0VcudpR5YSW
	AF04L4hw9ItShx16Q5wAmrBaHFJ3thSc/fNheDz/nl6QDIHVNg1oLcxTwxTxxF0egR0mHv2RVQRb1
	SsWfiOZUqsM5vnpGREGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ippnT-0008Dx-9S; Fri, 10 Jan 2020 08:37:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ippnL-0008DC-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 08:37:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578645445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SEGdNnuJMmxq2nRffYFL3avciJRwxghn7a6DuxkSNjc=;
 b=FZrH5RV3kdFEPPaxNfZbbkTcd4VmO2hLVUXR2mvRBFicMq/Nlp4VgRiMB2WYUiVtRYbuh/
 hf9dys2XoyUVtPbPrHUbOo7FICqIeik+TrljKWWdToO2/ruK3kiwQQQhUNV5jd9OMpxAtP
 8Jk6kIVcJGFzzqLvwT163dHwIO9M+PM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-1Hhibq09NKSGSuiB0AkAYg-1; Fri, 10 Jan 2020 03:37:23 -0500
X-MC-Unique: 1Hhibq09NKSGSuiB0AkAYg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89BF01800D6B;
 Fri, 10 Jan 2020 08:37:21 +0000 (UTC)
Received: from [10.36.117.108] (ovpn-117-108.ams2.redhat.com [10.36.117.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AA64560FA2;
 Fri, 10 Jan 2020 08:37:19 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic-its: Check hopefully the last
 DISCARD command error
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org
References: <20191225133014.1825-1-yuzenghui@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <f9997198-c990-d638-24d0-41d6280a9d8a@redhat.com>
Date: Fri, 10 Jan 2020 09:37:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191225133014.1825-1-yuzenghui@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_003728_067213_25FD0502 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andre.przywara@arm.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 12/25/19 2:30 PM, Zenghui Yu wrote:
> DISCARD command error occurs if any of the following apply:
> 
>  - [ ... (those which we have already handled) ]
nit: I would remove the above and simply say the discard is supposed to
fail if the collection is not mapped to any target redistributor. If an
ITE exists then the ite->collection is non NULL. What needs to be
checked is its_is_collection_mapped().

By the way update_affinity_collection() also tests ite->collection. I
think this is useless or do I miss something?

Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

>  - The EventID for the device is mapped to a collection that
>    has not been mapped to an RDbase using MAPC.
> 
> Let's take the unmapped collection case into account and report
> a DISCARD command error if it really happens.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  virt/kvm/arm/vgic/vgic-its.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index 17920d1b350a..d53d34a33e35 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -839,9 +839,8 @@ static int vgic_its_cmd_handle_discard(struct kvm *kvm, struct vgic_its *its,
>  	u32 event_id = its_cmd_get_id(its_cmd);
>  	struct its_ite *ite;
>  
> -
>  	ite = find_ite(its, device_id, event_id);
> -	if (ite && ite->collection) {
> +	if (ite && its_is_collection_mapped(ite->collection)) {
>  		/*
>  		 * Though the spec talks about removing the pending state, we
>  		 * don't bother here since we clear the ITTE anyway and the
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
