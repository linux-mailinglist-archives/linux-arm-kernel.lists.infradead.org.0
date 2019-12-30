Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0F612CB8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 02:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSPVvSEaBALWRKZtY47UKPgXxP+fLXDC3dZwh25CRyA=; b=UunEFZY20dBtX9XZYfhPV+Dw1
	KlMG6Ec8e3dr/E2gaPoThrGpivJMkpASRRJ/xn6KNy6/7jk5oNcnOgLaRVrrWG5Q45KtEhD15gagV
	CjKG0B6w7R6qINNsWuH9JQ4Z8OJQOdQ4GRz9Qjv+A3cptZ0OEMbD2667BwdTsa8IlkJy4wkcqWGDY
	LAjAojckpd5H3PWpen6TpeLpsGCNg/DNPUfye7/3C9gh9c6ICa2zOAIK7CaXrPS2npZeuyOMIfaxz
	12XQdasMSJZ5WCrvnmkXx2ZM7aHuA/Zl0SSv1vCKBSCNy+DyUunZDueObV4gh0aLZtjpP2cCRH3cU
	DiHbFwP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iljdt-00059i-Mw; Mon, 30 Dec 2019 01:14:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iljdk-00059I-Qg; Mon, 30 Dec 2019 01:14:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8F4331B;
 Sun, 29 Dec 2019 17:14:33 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDFEE3F534;
 Sun, 29 Dec 2019 17:14:32 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3328 GPU OPPs
To: Jonas Karlman <jonas@kwiboo.se>, "heiko@sntech.de" <heiko@sntech.de>
References: <48607c137d46452291510e88d5891e705dc7993c.1577650403.git.robin.murphy@arm.com>
 <HE1PR06MB4011483BC5EF6C87066983CCAC270@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3c95c29b-6c07-5945-ac22-d683997e1ca0@arm.com>
Date: Mon, 30 Dec 2019 01:14:30 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <HE1PR06MB4011483BC5EF6C87066983CCAC270@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_171436_907205_324629A8 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-30 12:09 am, Jonas Karlman wrote:
> On 2019-12-29 21:14, Robin Murphy wrote:
>> Add OPPs for the GPU, derived from the downstream Beelink A1 DTB.
> 
> My RK3328 devices (rock64, roc-cc and other android tv boxes) used to become
> unstable when I used similar OPPs as these and vdd_logic got changed to anything
> below 1.05v some time ago, network speeds slowed down and devices usually
> become unresponsive.
> 
> I do use vendor ddr init blobs to run ddr at 786 or 933 MHz, gpu runs at 500 Mhz
> and rock64/roc-cc LDO3 is set to use 1.0v instead of 1.1v used in A1 dts,
> in case that could be affecting the stability at lower vdd_logic voltages.
> 
> These observations was a few months back so I will redo some tests and see if I
> still get unstable systems using anything below default 1.1v for vdd_logic.

Indeed, as noted on the lima devfreq thread it turns out voltage scaling 
wasn't actually happening, so things weren't as thoroughly exercised as 
I might have thought. I do note that downstream appears to have DRAM 
DVFS also operating on the VDD_LOGIC domain (not to mention the video 
decoder), so it's quite possible that in lieu of that we might need to 
forcibly limit the minimum voltage as a compromise.

Thanks,
Robin.

> 
> Best regards,
> Jonas
> 
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index 91306ebed4da..e1b1b4551a8b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -605,6 +605,28 @@
>>   		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>>   		clock-names = "bus", "core";
>>   		resets = <&cru SRST_GPU_A>;
>> +		operating-points-v2 = <&gpu_opp_table>;
>> +	};
>> +
>> +	gpu_opp_table: opp_table1 {
>> +		compatible = "operating-points-v2";
>> +
>> +		opp-200000000 {
>> +			opp-hz = /bits/ 64 <200000000>;
>> +			opp-microvolt = <900000>;
>> +		};
>> +		opp-300000000 {
>> +			opp-hz = /bits/ 64 <300000000>;
>> +			opp-microvolt = <950000>;
>> +		};
>> +		opp-400000000 {
>> +			opp-hz = /bits/ 64 <400000000>;
>> +			opp-microvolt = <1025000>;
>> +		};
>> +		opp-500000000 {
>> +			opp-hz = /bits/ 64 <500000000>;
>> +			opp-microvolt = <1125000>;
>> +		};
>>   	};
>>   
>>   	h265e_mmu: iommu@ff330200 {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
