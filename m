Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0919B13A159
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YIuhYoKiYC0LwlpQHuRbR8fa4mZ4YUs+5UbruYBmmt8=; b=oukEfjIQAB/kZNjwDyVpN2Z41
	WfNAfSydqIeZdCL93Ame0b5QmFsUjUT7FyKPHyN4mpdNplH7aZxtJvC5/q4FPvyURpOkvZlzJR+Ls
	QXiA5LXMiH46gJPltsSbCExl8SHCWX/BonoTDaMAo4PoFFcmE0HnSDbmDUu38qNhs7JlMcH+hfMhs
	2EpaG3SQfyfabGk/T3sDTn2tiuPQy/B856+jQYMctyqT2Fqvyv0oK7+Kv4aXQe8ruG23GH4MP1H6h
	ghNo2u17JiNM05iOfdTgrjC0ykj2K1k0HKwMF/GT01HTq719jRYSPjpfSrerv55DQ1aP8hH2eGVtl
	CTLW8tLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGLg-00021V-N5; Tue, 14 Jan 2020 07:10:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGLX-00020Z-D9
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:10:41 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F2952AAD54E551A6FA5C;
 Tue, 14 Jan 2020 15:10:25 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Tue, 14 Jan 2020
 15:10:19 +0800
Subject: Re: [PATCH] KVM: arm/arm64: vgic-its: Check hopefully the last
 DISCARD command error
To: Auger Eric <eric.auger@redhat.com>, <maz@kernel.org>
References: <20191225133014.1825-1-yuzenghui@huawei.com>
 <f9997198-c990-d638-24d0-41d6280a9d8a@redhat.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <41c88abb-433a-f87c-c858-7f2eb4c40926@huawei.com>
Date: Tue, 14 Jan 2020 15:10:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <f9997198-c990-d638-24d0-41d6280a9d8a@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231039_612323_C9672637 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: andre.przywara@arm.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020/1/10 16:37, Auger Eric wrote:
> Hi Zenghui,
> 
> On 12/25/19 2:30 PM, Zenghui Yu wrote:
>> DISCARD command error occurs if any of the following apply:
>>
>>   - [ ... (those which we have already handled) ]
> nit: I would remove the above and simply say the discard is supposed to
> fail if the collection is not mapped to any target redistributor. If an
> ITE exists then the ite->collection is non NULL.

I think this is not always true. Let's talk about the following scenario
(a bit insane, though):

1. First map a LPI to an unmapped Collection, then ite->collection is
    non NULL and its target_addr is COLLECTION_NOT_MAPPED.

2. Then issue MAPC and unMAPC(V=0) commands on this Collection, the
    ite->collection will be NULL, see vgic_its_free_collection().

Discard the LPI mapping after "1" or "2", we will both encounter the
unmapped collection command error.

> What needs to be checked is its_is_collection_mapped().
> 
> By the way update_affinity_collection() also tests ite->collection. I
> think this is useless or do I miss something?

Yeah, I agree. We managed to invoke update_affinity_collection(,, coll),
ensure that the 'coll' can _not_ be NULL.
So '!ite->collection' is already a subcase of 'coll != ite->collection'.
We can safely get rid of it.

> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> 

Thanks for that. I'll change the commit message with your suggestion and
add your R-b in v2.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
