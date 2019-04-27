Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3502EB280
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 05:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4sYxAbxcsrtfAfp6fodVlknWGWXaj6vpbDEpp0+Trc=; b=N1xdYy4J7nYYHk
	qx48PTBsb++AHl6AcBebEkW4MXGABgdY3xPFobWDtoxMmN/FP+Bxv9ATcJ7U7xkVDrsFusWiriD3F
	eervY5gIJShz0o2VTuTIVrT1so6VtYOWz2toAiiIWVbg/aUtQgUeDKiHyBTrY/3cVSfS5GTq9nf1v
	81jReeAMHDlHU3nZNeMCRrvN7r2dIb/Fob+7wdgQslU5nFUn5gBgprF77u0WK+UJHcDDR1JyrXTws
	OZ+zNA830LNI1+QiHGdrM2H7IXTvnL/LCMQwJujGYKfVrDVkNV9nH8SwTXWVGC47Z7wyN1rolVjmZ
	9nekarVtPCC4I2F7a4xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKDaj-0007UU-0S; Sat, 27 Apr 2019 03:01:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKDaV-0007U4-SD; Sat, 27 Apr 2019 03:01:18 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3R30noV097744;
 Fri, 26 Apr 2019 22:00:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556334049;
 bh=LZCR6iKbbXEPqBepbMx2w7d7Lo5FnctqMVgc8kv1M8c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kOXVefpVWhb+zgn7q7TtEgyIS434p2jRwv5o/p3xTQ2d4S3EfLhpPH3GewqtMEz2G
 3eA1ksje+vUy96srr55lUzSys5AjfUPwWrobn7PfqpSlK/oCL2p/hLI5SlQpPOrk6/
 RREYqGTo9KZEtsBkOBymtE+IytLXw4Txz03X7iFI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3R30nG1036899
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 26 Apr 2019 22:00:49 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 26
 Apr 2019 22:00:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 26 Apr 2019 22:00:48 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3R30hwL099822;
 Fri, 26 Apr 2019 22:00:44 -0500
Subject: Re: [PATCH v4 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To: Rob Herring <robh@kernel.org>
References: <20190423104814.5762-1-vigneshr@ti.com>
 <20190423104814.5762-5-vigneshr@ti.com> <20190426202025.GA24486@bogus>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <0972151d-5911-5a6e-da36-8fa8e1761e30@ti.com>
Date: Sat, 27 Apr 2019 08:31:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426202025.GA24486@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_200116_042671_C69A6BDC 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mason Yang <masonccyang@mxic.com.tw>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/04/19 1:50 AM, Rob Herring wrote:
> On Tue, Apr 23, 2019 at 04:18:13PM +0530, Vignesh Raghavendra wrote:
>> Add binding documentation for TI's HyperBus memory controller present on
>> AM654 SoC.
>>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> ---
>>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 32 +++++++++++++++++++
>>  MAINTAINERS                                   |  1 +
>>  2 files changed, 33 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>> new file mode 100644
>> index 000000000000..fc87c7918389
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>> @@ -0,0 +1,32 @@
>> +Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
>> +
>> +Required properties:
>> +- compatible : "ti,am654-hbmc" for AM654 SoC
>> +- reg : Two entries:
>> +	First entry pointed to the register space of HBMC controller
>> +	Second entry pointing to the memory map region dedicated for
>> +	MMIO access to attached flash devices
>> +- ranges : Address range allocated for each chipselect in the MMIO space
>> +
>> +Optional properties:
>> +- mux-controls : phandle to the multiplexer that controls selection of
>> +		 HBMC vs OSPI. Mux state of 1 indicates HBMC is selected.
> 
> So 1 is also the default because your example doesn't have the property?
> 

No default is 0. Will fix the example.

>> +
>> +Example:
>> +
>> +	hbmc: hbmc@47034000 {
>> +		compatible = "ti,am654-hbmc";
>> +		reg = <0x0 0x47034000 0x0 0x100>,
>> +			<0x5 0x00000000 0x1 0x0000000>;
>> +		power-domains = <&k3_pds 55>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		ranges = <0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
>> +			 <0x1 0x5 0x04000000 0x4000000>; /* CS1 - 64MB
> 
> This is wrong. You need 2 cells for the child address. The first cell is 
> the CS and the 2nd cell is the offset (typically 0). Otherwise you have 
> overlapping addresses with child addresses 0 and 1.
> 

Oops, didn't think of that. Will fix in the next version.

>> +
>> +		/* Slave flash node */
>> +		flash@0 {
> 
> And then the unit-address here would be '0,0'.
> 
>> +			compatible = "cypress,hyperflash";
> 
> Doesn't match what you defined for this binding.

Will update. Thanks for the review!

> 
>> +			reg = <0x0 0x4000000>;
>> +		};
>> +	};
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index a5f22f85c848..1ade81f9a32a 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -7258,6 +7258,7 @@ S:	Supported
>>  F:	drivers/mtd/hyperbus/
>>  F:	include/linux/mtd/hyperbus.h
>>  F:	Documentation/devicetree/bindings/mtd/cypress,hyperflash.txt
>> +F:	Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>>  
>>  HYPERVISOR VIRTUAL CONSOLE DRIVER
>>  L:	linuxppc-dev@lists.ozlabs.org
>> -- 
>> 2.21.0
>>

-- 
Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
