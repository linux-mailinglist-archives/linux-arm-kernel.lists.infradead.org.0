Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D247962
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 06:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h86c8c115hL6CIXhVjiSeKb1aWTnYzrASXITVerRPvw=; b=JWhDVZUTIFCiIX
	jpvVrmtvbBPoF+7sjCqURQvaZXMMxazE7iFBlh9kZHgK8Bk2FxQgiNmKe3Mi6Nie+0FCvTTSQmisP
	7nsgc4CPLUJR7ZwioGul2dpGPbqrc+/OElXmKyZhUwgDcNy7cSrG8Mw8GxmdvjZQbb/1dHln9v/CI
	ru8ncNU4T39ZbR/Sopgjup4y7GMEKqVVno9JkXRlETn0rGzAXwLoCTlRz/vXaNQXIE1lwWS+dmGhk
	EM19XC2nSjaCTPLmA6ib3s4nPkE9U37w3ogtYuFMRwCfbKQtvcWBNLFWmZ/B27/l+Qb51VGXeoxCq
	71pfVVdOEuEj5RHkLeyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcjIE-0001lU-9p; Mon, 17 Jun 2019 04:30:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcjHl-0001bm-7Z; Mon, 17 Jun 2019 04:30:26 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5H4U4rh055473;
 Sun, 16 Jun 2019 23:30:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560745804;
 bh=ESKXVh9Sq512lPIqthTXEUClTEi6OelQzFKQgNFQ7wM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=O+3RFtA3fdfmaj1j/OEZXoOysP1/tfUlSMyvZiC8PYnbYhSaaPvf++0OJeSmhd+uA
 FkMWyld0BDwQiHM1SjnHuwUiSV+LHs5tgvIbPZgqMbLIyHSavD+G8oXUxetR+Gj8dY
 GFqQuKTY1NyJxqD4amy7labW3TVRrE+zNWnedBio=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5H4U4E4103253
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 16 Jun 2019 23:30:04 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 16
 Jun 2019 23:30:03 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 16 Jun 2019 23:30:03 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5H4TvCq010286;
 Sun, 16 Jun 2019 23:29:58 -0500
Subject: Re: [PATCH v5 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Boris
 Brezillon <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-5-vigneshr@ti.com>
 <a808ffca-02a8-14b0-3422-c0905ab212a6@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <7c7828b9-bcfd-6156-3ddb-cbdde5956675@ti.com>
Date: Mon, 17 Jun 2019 10:00:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a808ffca-02a8-14b0-3422-c0905ab212a6@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_213025_377460_81AE9BC9 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/06/19 9:55 PM, Sergei Shtylyov wrote:
> Hello!
> 
> On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:
> 
>> Add binding documentation for TI's HyperBus memory controller present on
>> AM654 SoC.
>>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> ---
>> v5:
>> Update binding example to show MMIO mux
>> Fix reg property for flash slave.
>>
>>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 +++++++++++++++++++
>>  MAINTAINERS                                   |  1 +
>>  2 files changed, 52 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>> new file mode 100644
>> index 000000000000..c2a2c2b42a92
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>> @@ -0,0 +1,51 @@
>> +Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
>> +
>> +Required properties:
>> +- compatible : "ti,am654-hbmc" for AM654 SoC
>> +- reg : Two entries:
>> +	First entry pointed to the register space of HBMC controller
>> +	Second entry pointing to the memory map region dedicated for
>> +	MMIO access to attached flash devices
>> +- ranges : Address translation from offset within CS to allocated MMIO
>> +	   space in SoC
>> +
>> +Optional properties:
>> +- mux-controls : phandle to the multiplexer that controls selection of
>> +		 HBMC vs OSPI inside Flash SubSystem. Default is OSPI,
>> +		 if property is absent.
>> +		 See Documentation/devicetree/bindings/mux/reg-mux.txt
>> +		 for mmio-mux binding details
>> +
>> +Example:
>> +
>> +	fss: fss@47000000 {
> 
>    What's FSS?

Flash SubSystem (FSS). Will highlight that in mux control definition above

>    Regardless of the answer, the node names should be generic, like "memory-controller@".
> 
>> +		compatible = "syscon", "simple-mfd";
> 
>    If it's "sycon", the nme should probably be "system-controller".

FSS is like a subchip that has all Flash controllers like Octal SPI
controllers and HyperBus controller within it. Some of their controls
are in the below address range. So I think its more closer to
"system-controller"

> 
>> +		reg = <0x0 0x47000000 0x0 0x100>;
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		hbmc_mux: hbmc-mux {
> 
>    So, just "multiplexor"?

Ok

> 
>> +			compatible = "mmio-mux";
>> +			#mux-control-cells = <1>;
>> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
>> +		};
>> +
>> +		hbmc: hbmc@47034000 {
> 
>    Should be named "memory-controller@47034000", according to the DT spec.

IMO, since HyperBus is a bus protocol and has a specification, I think
its should have a separate generic name like SPI etc.

I will change this to "hyperbus@47034000" to common name of spec.

> 
>> +			compatible = "ti,am654-hbmc";
>> +			reg = <0x0 0x47034000 0x0 0x100>,
>> +				<0x5 0x00000000 0x1 0x0000000>;
>> +			power-domains = <&k3_pds 55>;
>> +			#address-cells = <2>;
>> +			#size-cells = <1>;
>> +			ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
>> +				 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
>> +			mux-controls = <&hbmc_mux 0>;
>> +
>> +			/* Slave flash node */
>> +			flash@0,0 {
>> +				compatible = "cypress,hyperflash", "cfi-flash";
>> +				reg = <0x0 0x0 0x4000000>;
>> +			};
>> +		};
>> +	};
> [...]
> 
> MBR, Sergei
> 

-- 
Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
