Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652E425765
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W4loz1gLYBuxh6dnvxLpZLlFjY7KBTAKvCJnKeUvGco=; b=r/tLsfY8N7oy8gxnUzC9c26qB
	hNpQVywqRDiN1kYSM56I/RXIZM/kKOK/8Kuf8H8UYMr7SI3F72+UaM9kOx05Cz/keIu4J8/dDonKF
	KgfV95b5D/LlS62tJ4fqoM1r8MMCkJpvBwwHlX9aNe0iFI3kKimxhckisXBkt5tc60JWZ4iZiiORR
	bOVQZKO4o/dpr0KeifOhdmK6x2JZblt2EPSrC/Y34bEkUIdMBsrFmqI2q4aZ03MdNPqN6q6j+diIu
	FgOOD6OPlzivhi3khP0ts9736jvpC1bdqucAahKuwqlDl1XmExNzRcrsoRTtzGI895TLWlu3/y2sm
	zko4q9+CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9Kq-000606-U5; Tue, 21 May 2019 18:18:00 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9Kk-0005zm-6J
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:17:55 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce440d20000>; Tue, 21 May 2019 11:17:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 21 May 2019 11:17:53 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 21 May 2019 11:17:53 -0700
Received: from [10.25.72.115] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 18:17:48 +0000
Subject: Re: [PATCH V7 12/15] arm64: tegra: Enable PCIe slots in P2972-0000
 board
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-13-vidyas@nvidia.com> <20190521105455.GK29166@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <6a2c0a9a-1c37-3e32-535a-aaf0db2f101d@nvidia.com>
Date: Tue, 21 May 2019 23:47:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521105455.GK29166@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558462674; bh=a8LODZvSpNaDmQpk25Mop1kwqk2JYgsbirOqlH6wW/0=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=sOAeepoIn+0kLL5zHwpwlNYmx7dO8zJTj95zfvWEzRH4O30O3BUwQM0p1brYyE10F
 J4MLekCR8ZAThIesLjoTJS7Omhtg5xR4kefXUe4tI2pIBdQoJzy6R2i6PSgFuc8Bj6
 lsMACXqN+87u3mfAwHXRGeVhhMs7lJdk2jhfmV6dbWCQGPY5+zLEB5T0ZDjKa/9Cyz
 TJ+8HcFSPxNNdMydPQ1yLFWA+j0A9xTQ7aLMUpoHBuAmTBYZFG4o0U/fzjMoWWgdYj
 yvHdIvlBGzM/UEm4a+k0+Efh/ZZ4Dhgyty11166IcKbciasl99ntwQwjpBB8S8h+El
 YN2zcS6UXk2sA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_111754_248695_48EBCB23 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 5/21/2019 4:24 PM, Thierry Reding wrote:
> On Fri, May 17, 2019 at 06:08:43PM +0530, Vidya Sagar wrote:
>> Enable PCIe controller nodes to enable respective PCIe slots on
>> P2972-0000 board. Following is the ownership of slots by different
>> PCIe controllers.
>> Controller-0 : M.2 Key-M slot
>> Controller-1 : On-board Marvell eSATA controller
>> Controller-3 : M.2 Key-E slot
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v6]:
>> * None
>>
>> Changes since [v5]:
>> * Arranged PCIe nodes in the order of their addresses
>>
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
>> index 73801b48d1d8..a22704e76a84 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
>> @@ -167,4 +167,45 @@
>>   			};
>>   		};
>>   	};
>> +
>> +	pcie@14100000 {
>> +		status = "okay";
>> +
>> +		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +
>> +		phys = <&p2u_hsio_0>;
>> +		phy-names = "p2u-0";
>> +	};
>> +
>> +	pcie@14140000 {
>> +		status = "okay";
>> +
>> +		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +
>> +		phys = <&p2u_hsio_7>;
>> +		phy-names = "p2u-0";
>> +	};
>> +
>> +	pcie@14180000 {
>> +		status = "okay";
>> +
>> +		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +
>> +		phys = <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
>> +		       <&p2u_hsio_5>;
>> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
>> +	};
>> +
>> +	pcie@141a0000 {
>> +		status = "disabled";
>> +
>> +		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +
>> +		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
>> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
>> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
>> +
>> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
>> +			    "p2u-5", "p2u-6", "p2u-7";
>> +	};
> 
> This last controller is disabled by default. Why do we need to include
> all of this if it's not going to be used anyway?
I want to keep this entry ready by populating all the required fields. When pinctrl
driver is ready, I'll send out patches to enable this node as well.

> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
