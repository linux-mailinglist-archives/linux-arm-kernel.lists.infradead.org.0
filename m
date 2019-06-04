Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602C134897
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SjyBYdqJJlKqle1vHMY2Fq+Y8NmvkWROd6ZDKgj0JSs=; b=ssUA6GwJNLvazY5h8uiwvifLV
	AcHbhkJ0rXRWCFhrvkmiG6svclwHPxbdcgrXn8bU94i26ZYz34QVcb2q43dip/c/W53SX8NREv0bF
	Ez3/JhGMmaplI0zw6jmuD4fsxwANvwj7fiP01Uf4Q9L/cxca35jRVzxruAP/IPsL3y0efvjUSuuxJ
	Pz/4adEvo3mrySXRF2yJN+zMxqTI+avZg5/I6PdnNsrhBOJXVLpsxE0513hhcRrU4aMeK1zjai9/P
	Fr4cginElXh4y3dfeitBQ2po5O/gM3k6gyOO/lEJZzLjvFgXvjKT2Ene5ovMjYaQvihPg+X0hepff
	qx8Deg4JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9PG-0001hq-3n; Tue, 04 Jun 2019 13:23:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9P9-0001hV-4R
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:23:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DMl4n121195;
 Tue, 4 Jun 2019 08:22:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654567;
 bh=QmemnxW2n5NUE/qgZlfL+6iRsLZV0ClQaFreagH1yes=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nKHJ41EBikRMi5vGzmffvE6MVHK7JXEl3pe752f6MhtcWcEPDcRTNDI0xMNxBwhFm
 caZzlTiKGpzRD5Oc78ONCIuzF7d9CNifx67t1lVgAqNFrocnafBFJXpj7AxfQ7GXEg
 1Ek9HugNFf8C68L0OrDz/bbXX3VoXbE6KPlkhRLg=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DMls6058955
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:22:47 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:22:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:22:46 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DMisS123230;
 Tue, 4 Jun 2019 08:22:44 -0500
Subject: Re: [PATCH] arm64: arch_k3: Fix kconfig dependency warning
To: Yuehaibing <yuehaibing@huawei.com>, <catalin.marinas@arm.com>,
 <will.deacon@arm.com>, <marc.zyngier@arm.com>, <lokeshvutla@ti.com>,
 <tony@atomide.com>
References: <20190510035255.27568-1-yuehaibing@huawei.com>
 <a9ea9cf2-71d0-d8f8-3139-33f1945520c5@huawei.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <dd0e40b3-bf1d-12b4-3396-458c1aec9657@ti.com>
Date: Tue, 4 Jun 2019 16:22:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a9ea9cf2-71d0-d8f8-3139-33f1945520c5@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_062307_251309_61354664 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, this has sort of slipped through. I can pick this up and queue 
towards 5.2-rc fixes.

-Tero

On 04/06/2019 11:33, Yuehaibing wrote:
> Hi all,
> 
> Friendly ping:
> 
> Who can take this?
> 
> On 2019/5/10 11:52, YueHaibing wrote:
>> Fix Kbuild warning when SOC_TI is not set
>>
>> WARNING: unmet direct dependencies detected for TI_SCI_INTA_IRQCHIP
>>    Depends on [n]: TI_SCI_PROTOCOL [=y] && SOC_TI [=n]
>>    Selected by [y]:
>>    - ARCH_K3 [=y]
>>
>> Fixes: 009669e74813 ("arm64: arch_k3: Enable interrupt controller drivers")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>   arch/arm64/Kconfig.platforms | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 42eca65..9d1292f 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -88,6 +88,7 @@ config ARCH_K3
>>   	bool "Texas Instruments Inc. K3 multicore SoC architecture"
>>   	select PM_GENERIC_DOMAINS if PM
>>   	select MAILBOX
>> +	select SOC_TI
>>   	select TI_MESSAGE_MANAGER
>>   	select TI_SCI_PROTOCOL
>>   	select TI_SCI_INTR_IRQCHIP
>>
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
