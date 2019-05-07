Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97E161C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hSxJOc/33mBltgz6o0vCEGObDmBkEUMSfOllkbqHt70=; b=dnvTVDCe841oWu2HIRsgbrmc+
	QkfPnfHp/rtXJ2fmnKiUlulmSYi6D7fLHqJAoELRHLYZE/OtufqEtkdl6zmD7ULyx4gUASnydVHg1
	6MIur4yRiVH/C2gCx1LizbSpGrCtRmebfqd19ETmy8dv9h9Szp+FBIrLgarQ9yXl3Arkcw4wew9dW
	u1N45A6PzJ3dW/6f6O0ZpOq0/+X0nNOePHL7E7H3TsqccHwUU34CCPxiBhgn1gz3pN2P7x8eupZIT
	/kqEDV6kTOlyDOgeYjn4bj/x5d7yPp4it48MaD2YV+uvEfdpbCUyceBsu0ZyFAGKvzxCrGhmAeLjU
	6QnddUKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNx4z-0005hD-Nx; Tue, 07 May 2019 10:12:09 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNx4r-0005gP-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:12:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd159ed0000>; Tue, 07 May 2019 03:11:57 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 07 May 2019 03:12:01 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 07 May 2019 03:12:01 -0700
Received: from [10.25.73.250] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 10:11:54 +0000
Subject: Re: [PATCH V5 13/16] arm64: tegra: Enable PCIe slots in P2972-0000
 board
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-14-vidyas@nvidia.com> <20190503112751.GG32400@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <ed191c29-a10e-e420-2bc0-55cefdecf6ee@nvidia.com>
Date: Tue, 7 May 2019 15:41:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503112751.GG32400@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557223917; bh=vq50Jt+k6FTdyIXHkyAqZgXq1yOp1zXcB8xjDiE9XEU=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=gjV+r7YKL4OGCshwVRXkMzkPIrMJxasj/gy8YXmNPclvZ9VRpSBWAycpFPiNrUAGX
 zL4WVEsuRQnqAWk30Yphy56oZT1zr01UTeIWM+xguz7yj70LDTxWliL5xdt/058Hnh
 GWZa3YaMfzuSBX2iLSJRgD1nzdGoCnMUnRZHEfa1kpRKdBTLX16RCYAKDJDd1fJsB8
 nVeHRaUjtHpuArdRcc8qIeL8Xzd4mKK1ZxnDdUyW9gh4stdgIDT/NZqmGXBUNyh88H
 5MC9oHyIe4xXUrJ4rVhdoON+QbkhB4DNDfcgxcp/A74Bach3EZzZfK8uBf4Wx6L2Xi
 fk5yiIzFpTJrA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_031201_818512_6F6A603A 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/2019 4:57 PM, Thierry Reding wrote:
> On Wed, Apr 24, 2019 at 10:50:01AM +0530, Vidya Sagar wrote:
>> Enable PCIe controller nodes to enable respective PCIe slots on
>> P2972-0000 board. Following is the ownership of slots by different
>> PCIe controllers.
>> Controller-0 : M.2 Key-M slot
>> Controller-1 : On-board Marvell eSATA controller
>> Controller-3 : M.2 Key-E slot
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * None
>>
>> Changes since [v2]:
>> * Changed P2U label names to reflect new format that includes 'hsio'/'nvhs'
>>    strings to reflect UPHY brick they belong to
>>
>> Changes since [v1]:
>> * Dropped 'pcie-' from phy-names property strings
>>
>>   .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |  2 +-
>>   .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 41 +++++++++++++++++++
>>   2 files changed, 42 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
>> index 0fd5bd29fbf9..30a83d4c5b69 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
>> @@ -191,7 +191,7 @@
>>   						regulator-boot-on;
>>   					};
>>   
>> -					sd3 {
>> +					vdd_1v8ao: sd3 {
>>   						regulator-name = "VDD_1V8AO";
>>   						regulator-min-microvolt = <1800000>;
>>   						regulator-max-microvolt = <1800000>;
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> index b62e96945846..7411c64e24a6 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> @@ -169,4 +169,45 @@
>>   			};
>>   		};
>>   	};
>> +
>> +	pcie@14180000 {
> [...]
>> +	pcie@14100000 {
> [...]
> 
> Again, these should be sorted by unit-address.
Done.

> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
