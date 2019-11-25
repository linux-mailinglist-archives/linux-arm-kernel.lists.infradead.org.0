Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A851088CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 07:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QQk64PnPvMGuBmpVhlHKm1WD/xy7qUGST0MO37ADZQU=; b=F7qI8YiiOTpA8yPePLEg1td4h
	t19JkIsYoa7q0zye1/WDBNVC0sLl03oa/nABbhb+SKglsHSr8Uc8Pp/Jb2f9g/w/W6LK9/wYT/Q9e
	9GWkkwb9uaXHubC3yrdy7dCzzvVBjloz7qFC8WAqnZJEiD//yuTDgV+E4CAYznXpHYVJkkEnxPcp3
	Bj5jQF7xmWRUaMtMm4SDhV8eHXN/jVZylSUIFG9/SlO3QWXQDxQEOAP6ZM97Nw4o8gbtuYG+B7BLC
	4wfEpEeTnNR94G3E1MUYIocoQMtiC0V9gBFpwGfyTv1/GaZrJZDJzghtTJj8bUUeyyyfbDsOT8wxE
	GfyyonHOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ8HR-0005r1-FX; Mon, 25 Nov 2019 06:55:29 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ8HK-0005q0-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 06:55:23 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ddb7ad90000>; Sun, 24 Nov 2019 22:55:22 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 24 Nov 2019 22:55:18 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 24 Nov 2019 22:55:18 -0800
Received: from [10.25.75.126] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 Nov
 2019 06:55:14 +0000
Subject: Re: [PATCH 5/6] arm64: tegra: Enable GPIO controllers nodes for
 P2972-0000 platform
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-6-vidyas@nvidia.com> <20191122132007.GC1315704@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <4a09729b-9a77-65a1-645a-a31e6e62ad1e@nvidia.com>
Date: Mon, 25 Nov 2019 12:25:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191122132007.GC1315704@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574664922; bh=dZm59GUkaOsNMNa4wcA2Fs2VFYZ5cQM3eTAH8Kq6GxM=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=p9Gy1z3oS4qCpf5Tt+L15YV34yFk8wEmfoXyb+rFiEH4jEhMeHhmJvGHEHbDBAsQw
 3NA5vl4A/ygey/Upu97VRWgQ8ZiBIgf3OyivONITooLQNn9a4Rj/hQC+MP58jB7006
 5nGE2GqsGojSNTHYaMKIEOLE9+unATmsTPiImhFy72dipKgv9MXbi05ZuIOJEfZeXL
 O8L0TnveJLRxVYO+idQs3lJCrQyJqvREKgVdI2CEwWvmWBQUNvZQrHec2LzXEGzMBh
 bBBbgykMn4OequUElLaktRwlQkI04NglDMbjjImyKkDf9S5dbGAYLBDl49ADKFL+Tq
 VZz/aCcO12GDQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_225522_341076_4160C36F 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/22/2019 6:50 PM, Thierry Reding wrote:
> On Fri, Nov 22, 2019 at 04:15:04PM +0530, Vidya Sagar wrote:
>> Enable GPIO controllers nodes for P2972-0000 platform which are required
>> by other controllers in the SoC for example when PCIe C5 controller
>> operates in endpoint mode.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>>   arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts | 8 ++++++++
>>   1 file changed, 8 insertions(+)
> 
> The GPIO controllers are enabled by default, so there's no need to
> explicitly enable them.
Yup. I'll remove this patch.
Since I didn't see 'status' entry in GPIO nodes in tegra194.dtsi file, I thought
it means 'disabled'. But, contrary to my understanding, absence of 'status' entry
seems to mean 'okay'.

- Vidya Sagar
> 
> Thierry
> 
>>
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> index 353a6a22196d..7eb64b816e08 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> @@ -37,6 +37,14 @@
>>   			status = "okay";
>>   		};
>>   
>> +		gpio@2200000 {
>> +			status = "okay";
>> +		};
>> +
>> +		gpio@c2f0000 {
>> +			status = "okay";
>> +		};
>> +
>>   		pwm@c340000 {
>>   			status = "okay";
>>   		};
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
