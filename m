Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C7F1D78A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utasvJJSV0z9xV5o1KsjRUdueW6yfttati3trG3zquc=; b=JTkmw1Tpr6qHAg
	9UGFf+mAp8ABMcaVQAZ7bT4dyzKg2KHjb49hoBXE12w+TZQusntpCWwkFJFlp6mRY2DDztP5lc1tX
	PFotqNr0mPB9poclGfNXnZmQCBOisqgnDRvGVGKkS+LzvHV8rNxcuD7HUqmV9l/4847nbDpw/xz2O
	G9FpEb5gA0Xfa9C7oDlzGR7MHznXT5o2qUez11OhioQqFevd4x2SSVxXGJFMZWfekWb88Zs6xcW+z
	4C4rfYUTmzL+HjEhjN6EMPjsGlYR5vR6jf+DVUPI/ubDywyLxPKKs1Id3Ws8uTI/ZPBwwbdX9OUjN
	dgv5W27sYGNpQ+oxs89w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeuV-0005Tt-4z; Mon, 18 May 2020 12:30:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeu0-0005T3-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:29:53 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3DD1DE0E47021E1364E8;
 Mon, 18 May 2020 20:29:49 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Mon, 18 May 2020
 20:29:41 +0800
Subject: Re: [RFC PATCH v3 1/2] arm64: tlb: Detect the ARMv8.4 TLBI RANGE
 feature
To: Anshuman Khandual <anshuman.khandual@arm.com>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-2-yezhenyu2@huawei.com>
 <20200505101405.GB82424@C02TD0UTHF1T.local>
 <cb9d32b6-a9d8-3737-e69d-df4191b7afa9@huawei.com>
 <4d8cb48c-4f47-d966-f29b-3343bd966c5f@arm.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <9189159f-0df8-ef9a-5216-adc030856439@huawei.com>
Date: Mon, 18 May 2020 20:29:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <4d8cb48c-4f47-d966-f29b-3343bd966c5f@arm.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_052952_642759_65AD0A3C 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, maz@kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 steven.price@arm.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On 2020/5/18 12:22, Anshuman Khandual wrote:
>>>>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>>>>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
>>>> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLBI_RANGE_SHIFT, 4, 0),
> 
> Hello Zhenyu,
> 
> This is already being added through another patch [1] in a series [2] which primarily
> has cpufeature changes. I will soon update the series making this feature FTR_HIDDEN.
> 
> [1] https://patchwork.kernel.org/patch/11523881/
> [2] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=281211
> 
> I am planning to respin the series (V4) based on arm64 tree (for-next/cpufeature). So
> could you please rebase this patch (probably dropping cpufeature related changes) on
> upcoming V4, so that all the changes will be based on arm64 tree (for-next/cpufeature).
> 
> - Anshuman
> 

OK, I will rebase my patch based on your V4.

Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
