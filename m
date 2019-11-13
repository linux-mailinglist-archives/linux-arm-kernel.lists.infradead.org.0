Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A63FB607
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktTXhAK5d/cis9nvyXHX6YAUv6Qq8EopWh4Vt+mtYVc=; b=RsV3jmucd7xmHH
	Aj5Y7Bv41vov86gRZIMZ/LPENt6YKDDaN5KNM2qqJguINvhKspDFWYjR0b3cyfgaO/xoFRc5Opkwb
	p6g8MLF2kmIuWJ0ywGe7QPHuGLrKe69bUXBx3ZgH7gPFaT1MG1eq1l9dtRASiFmHk85cVXETJW5gU
	0gIIyoCzXmd9bJnPFaMZ4AkzYKHEanavjN3FrNI+K31T5DfA1+llp46YKbhMAszfu1uh90ayiZrHg
	XZdbBTOLNLrh0TlMh7r2hmBQA1rINTehqBrazc1OU4to9GVRwfPxO3Q6qAxvu8nFvhj8d0qc/9ltO
	KUno6ON9wgCUWn2Ydcjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwCz-0008Kr-6G; Wed, 13 Nov 2019 17:13:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwCr-0008K8-5h
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573665202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4jSlvNFHg6IbUCrmqPiwkPs953WRyG/IfAUfAH0jbow=;
 b=a6CGBWry4yuOFw1HOivHC9e97UoGmVtMUKbnDkKItzwn90OuKE2u02RHz+S0sIkhotagWF
 xhq1OHSHESrgUCsY+fTPP4pfCGjLitQfOwigvVFeZAKeDUVcf3XWP2+amz1s60S9kW8E1f
 yp+bxFlUClEMq1SlUoWWxSYuW0xUh3I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-Rhzwd5RWMB2ogwfEoeuiIw-1; Wed, 13 Nov 2019 12:13:20 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5130117125C;
 Wed, 13 Nov 2019 17:13:18 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B1FDE5F761;
 Wed, 13 Nov 2019 17:13:15 +0000 (UTC)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Populate VMID field for
 CMDQ_OP_TLBI_NH_VA
To: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>, will@kernel.org, 
 robin.murphy@arm.com
References: <20191113161138.22336-1-shameerali.kolothum.thodi@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <5bf7d4e1-5231-3ee5-b239-d05523c96e5e@redhat.com>
Date: Wed, 13 Nov 2019 18:13:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191113161138.22336-1-shameerali.kolothum.thodi@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: Rhzwd5RWMB2ogwfEoeuiIw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091325_284796_AEC3BBCC 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linuxarm@huawei.com, xuwei5@hisilicon.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 11/13/19 5:11 PM, Shameer Kolothum wrote:
> CMDQ_OP_TLBI_NH_VA requires VMID and this was missing since
> commit 1c27df1c0a82 ("iommu/arm-smmu: Use correct address mask
> for CMD_TLBI_S2_IPA"). Add it back.
> 
> Fixes: 1c27df1c0a82 ("iommu/arm-smmu: Use correct address mask for CMD_TLBI_S2_IPA")
> Signed-off-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks!

Eric

> ---
> This came to light while verifying the "SMMUv3 Nested Stage Setup"
> series by Eric. Please find the discusiion here,
> https://lore.kernel.org/patchwork/cover/1099617/
> ---
>  drivers/iommu/arm-smmu-v3.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 8da93e730d6f..9b5274346df0 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -856,6 +856,7 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>  		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
>  		break;
>  	case CMDQ_OP_TLBI_NH_VA:
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
>  		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
>  		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
>  		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
