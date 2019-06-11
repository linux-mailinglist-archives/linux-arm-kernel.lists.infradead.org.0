Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4A93CEE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H1N1aiJeRIbXkFHvhFqP7ZhU09jqG1ceWxNNkGVFRM=; b=bjBdQES9xr+d8X
	KAmFq6uc6Xxo6aEjqPgmUf7rSQutePqU6pa2r+If4/7ZtnB1KeYAVG2S7c2ah5skto7j7I2KNiJKg
	4dmLvw9vheT2pmk6249H/ZjjZagE7QZjTlna+GAkpQbsgwymh9k0irkh379MUQxRKZKYXKrn0DBL9
	70EcH1yPSj2Syv6NEWXJaTT85Zf9grEzU08+kSU6l5n91PodG7KW5aaqIa4sDS/yWER1QSuWlvrcD
	iXsHY03nnJUI8WyKKThRBwuRwz5dbDvBTD/ziQTSmITEDlsnVQ+MrX7vG7oz3ULnVs+kxWJq8TZlO
	r4Cz0ma1EsQJe/1O9I2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahtI-0002Hr-0a; Tue, 11 Jun 2019 14:36:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahsU-0001pW-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:35:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75460337;
 Tue, 11 Jun 2019 07:35:57 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5103D3F557;
 Tue, 11 Jun 2019 07:35:56 -0700 (PDT)
Subject: Re: [PATCH 4/8] iommu/arm-smmu-v3: Add support for Substream IDs
To: Jonathan Cameron <jonathan.cameron@huawei.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-5-jean-philippe.brucker@arm.com>
 <20190611111939.000030e9@huawei.com>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <75ceb6d5-9717-3945-364b-f2374a705697@arm.com>
Date: Tue, 11 Jun 2019 15:35:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611111939.000030e9@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073558_564680_68833ACF 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 11:19, Jonathan Cameron wrote:
>> +static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain,
>> +				    struct arm_smmu_master *master)
>> +{
>> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
>> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>>  
>> -	cfg->cdptr[0] = cpu_to_le64(val);
>> +	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
>> +	cfg->s1cdmax = master->ssid_bits;
>> +	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
>> +}
>>  
>> -	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
>> -	cfg->cdptr[1] = cpu_to_le64(val);
> 
> Hmm. Diff was having a field day in trying to make the patch as unreadable as possible..

Ugh, yes. This part is a bit more readable with --patience, but I'll
also try to split the patch as you suggest

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
