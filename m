Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F201088E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ugj1r1xa5OIShAB6FsJ5rYzZcwWlCL40xkSXv85ngaI=; b=mv0LWtPMoSnI5xWxE9+K1af0r
	Ptp9m3l3/VuNIhrGcZpRs85LunpYDZJhe/OW7H4DnD4q/JKoHP2JDd73uTzAugtdg34b1XZCgDBkJ
	9UcxfKPVIqS5rIQALWmahjdCoxcI2txgxwzZK8e+ypRKIZkhgxNloUbEUHi9rpR6FFmPQqDxI3X2q
	SXw+OfbT191n+HIWQeRNtWICwIAMs8SMpEjAPlOuly8J9B6WfdvB/98UNTneffpRJTl/csbIuzwX5
	GwEZlzfRILJCwm08hcAop7WmU9LLHxaAbDh7+NkMbcVeYYWAw/Vf6wAKk/s98siumaTuSpSDfeSnS
	3e9JoIl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ8N1-0007jQ-Cz; Mon, 25 Nov 2019 07:01:15 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ8Mq-0007iX-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 07:01:07 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ddb7c270000>; Sun, 24 Nov 2019 23:00:55 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 24 Nov 2019 23:01:00 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 24 Nov 2019 23:01:00 -0800
Received: from [10.25.75.126] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 Nov
 2019 07:00:56 +0000
Subject: Re: [PATCH 6/6] arm64: tegra: Add support for PCIe endpoint mode in
 P2972-0000 platform
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-7-vidyas@nvidia.com> <20191122132533.GD1315704@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <e1e44c1c-c1ab-27dd-b3ac-a9ed878411a2@nvidia.com>
Date: Mon, 25 Nov 2019 12:30:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191122132533.GD1315704@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574665255; bh=PEZH+DI5aibjZBvzAc3XMH2bX4MsuckLJR1y410J5GE=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=JOQr2z31dBc4iSQlbBFoAnAGB3qfn+OzxbycCC3xeQdJc5XNRV6nSKxl5zeSobycP
 MKSKjLulc1M72WIqUm8dNygV6+MRh3rprksNW8j8UtSgB5UX+HDWUQocQjblaRR2SJ
 wTmHqLYno/z08BEt8Z/hY0UgkCd8AZLABz6jG1gn1Ho1glVBRE8D1Nd4GIiLIYeVrt
 ns8vDZSwuX1nJzo5LUJZS3kgO5FDr+Ye3HZc63fTqY3rTtM0MF9wsBeuFybb1RxMAI
 joAnBegjpjCpwVq6qvl+dLF6W3vQ1v+j8cx9Xa1eP5oA5aDU2OZ1doT7iKgcMDG21G
 0vswHjryguNVg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_230104_944870_01E2B5F9 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
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

On 11/22/2019 6:55 PM, Thierry Reding wrote:
> On Fri, Nov 22, 2019 at 04:15:05PM +0530, Vidya Sagar wrote:
>> Add endpoint mode support for PCIe C5 controller in P2972-0000 platform
>> with information about supplies, PHY, PERST GPIO and GPIO that controls
>> PCIe reference clock coming from the host system.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>>   .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 29 +++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> index 7eb64b816e08..58c3a9677bc8 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> @@ -43,6 +43,19 @@
>>   
>>   		gpio@c2f0000 {
>>   			status = "okay";
>> +			/*
>> +			 * Change the below node's status to 'okay' when
>> +			 * PCIe C5 controller is enabled to operate in endpoint
>> +			 * to allow REFCLK from the host system to flow into
>> +			 * the controller.
>> +			 */
>> +			pex-refclk-sel-high {
>> +				gpio-hog;
>> +				output-high;
>> +				gpios = <TEGRA194_AON_GPIO(AA, 5) 0>;
>> +				label = "pex_refclk_sel_high";
>> +				status = "disabled";
>> +			};
> 
> Why don't we put this into the PCIe controller's node as a reference to
> that GPIO? Seems like the controller would know exactly when this pin
> needs to go high or low, so why does it have to be a hog?
> 
> Thierry
Are you saying something like 'nvidia,enable-refclk-in'?
I was thinking, since this is like a board level configuration specific to Jetson-Xavier,
it would suffice to just hog it according to the mode of operation of PCIe controller.
But, I see one advantage of referencing it in the PCIe node (so that the driver can configure
it as and when needed) is that one has to be careful just to enable either PCIe RP or EP
node and not worry about other thing (like this).
Let me know if I got this right.

- Vidya Sagar

> 
>>   		};
>>   
>>   		pwm@c340000 {
>> @@ -144,6 +157,22 @@
>>   			    "p2u-5", "p2u-6", "p2u-7";
>>   	};
>>   
>> +	pcie_ep@141a0000 {
>> +		status = "disabled";
>> +
>> +		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +
>> +		nvidia,pex-rst-gpio = <&gpio TEGRA194_MAIN_GPIO(GG, 1)
>> +					GPIO_ACTIVE_LOW>;
>> +
>> +		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
>> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
>> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
>> +
>> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
>> +			    "p2u-5", "p2u-6", "p2u-7";
>> +	};
>> +
>>   	fan: fan {
>>   		compatible = "pwm-fan";
>>   		pwms = <&pwm4 0 45334>;
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
