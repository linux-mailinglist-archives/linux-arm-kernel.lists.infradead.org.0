Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E7C5DD89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 06:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BX061XYuL+caJeBQ5w1DM6TIJy8CZpdwoqSaxTX74Yk=; b=VKRJA4Apk92gXa
	7pVQDDlluXmgMEbvu3Aa0OdDNcZ2xBjex9V/gjXuaIEjgQa6G7CvuX9SnRydbnwr9lH0ijTws6jhK
	3B64Z8QhGL+J1eizJyBA2GNcvnaF+6zSdocVw8dfE+OoLJ8jbo7Zhbrt+wwKzJOpSULBJiDScGtfd
	osnOP2Cphtx9fGYWTCJ93XClrJ+ZIUOHNhC461PuT2an/DJhTLECgd/wq2v/2hkH/B0PCXCpCaNlv
	2lryAGFWdtWmrzBCRtw3+oQDmHQIdhruTquozlBlSpkXb5k253nq4A+nJcI1j2Awl0TaXPVFOePeH
	i1h2OVDTLnmzTzdnXWmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiX4u-0000PO-UK; Wed, 03 Jul 2019 04:41:08 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiX4T-0000Ax-3J; Wed, 03 Jul 2019 04:40:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x634eVON110690;
 Tue, 2 Jul 2019 23:40:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562128831;
 bh=9bNKxvF0VLaczyeBCMEhxw7ZpdNmUS6nr2XWDzekiGQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gffr7v2fV2c7P/IFTTqSI0mrnnt+97yxTUNcfFBLTBTW9Owv8vr7t+80x3hsNM9T1
 3oEjbwoqE9Jnm+PS2QB38Zt7QbcEqQugnvizHQljQD+W892+j3ntlwH+yLPl6QDvJX
 vdw2DhQuhDEUQ7SoRDfgM9OqyZoudOeQcIk3fhgs=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x634eV6x112951
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 2 Jul 2019 23:40:31 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 2 Jul
 2019 23:40:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 2 Jul 2019 23:40:30 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x634eMAK021478;
 Tue, 2 Jul 2019 23:40:24 -0500
Subject: Re: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-4-vigneshr@ti.com>
 <31657fd1-c1c9-7672-14c1-e6f67eee6ac1@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <5009c418-a051-a42a-f78a-360f7230dd2b@ti.com>
Date: Wed, 3 Jul 2019 10:11:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <31657fd1-c1c9-7672-14c1-e6f67eee6ac1@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_214041_295814_450436A4 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tokunori Ikegami <ikegami.t@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/07/19 11:23 PM, Sergei Shtylyov wrote:
> Hello!
> 
> On 06/25/2019 10:57 AM, Vignesh Raghavendra wrote:
> 
>> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
>> Bus interface between a host system master and one or more slave
>> interfaces. HyperBus is used to connect microprocessor, microcontroller,
>> or ASIC devices with random access NOR flash memory (called HyperFlash)
>> or self refresh DRAM (called HyperRAM).
>>
>> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
>> signal and either Single-ended clock(3.0V parts) or Differential clock
>> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
>> At bus level, it follows a separate protocol described in HyperBus
>> specification[1].
>>
>> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
>> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
>> its equivalent to x16 parallel NOR flash with respect to bits per clock
>> cycle. But HyperBus operates at >166MHz frequencies.
>> HyperRAM provides direct random read/write access to flash memory
>> array.
>>
>> But, HyperBus memory controllers seem to abstract implementation details
>> and expose a simple MMIO interface to access connected flash.
>>
>> Add support for registering HyperFlash devices with MTD framework. MTD
>> maps framework along with CFI chip support framework are used to support
>> communicating with flash.
>>
>> Framework is modelled along the lines of spi-nor framework. HyperBus
>> memory controller (HBMC) drivers calls hyperbus_register_device() to
>> register a single HyperFlash device. HyperFlash core parses MMIO access
>> information from DT, sets up the map_info struct, probes CFI flash and
>> registers it with MTD framework.
>>
>> Some HBMC masters need calibration/training sequence[3] to be carried
>> out, in order for DLL inside the controller to lock, by reading a known
>> string/pattern. This is done by repeatedly reading CFI Query
>> Identification String. Calibration needs to be done before trying to detect
>> flash as part of CFI flash probe.
>>
>> HyperRAM is not supported at the moment.
>>
>> HyperBus specification can be found at[1]
>> HyperFlash datasheet can be found at[2]
>>
>> [1] https://www.cypress.com/file/213356/download
>> [2] https://www.cypress.com/file/213346/download
>> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>>     Table 12-5741. HyperFlash Access Sequence
>>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> [...]
> 
>    I have at least created my HyperBus driver and unfortunately I'm having serious
> issues with the design of the support core (see below)...
> 
> [...]
>> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
>> new file mode 100644
>> index 000000000000..63a9e64895bc
>> --- /dev/null
>> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
>> @@ -0,0 +1,154 @@
> [...]
>> +int hyperbus_register_device(struct hyperbus_device *hbdev)
>> +{
>> +	const struct hyperbus_ops *ops;
>> +	struct hyperbus_ctlr *ctlr;
>> +	struct device_node *np;
>> +	struct map_info *map;
>> +	struct resource res;
>> +	struct device *dev;
>> +	int ret;
>> +
>> +	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
>> +		pr_err("hyperbus: please fill all the necessary fields!\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	np = hbdev->np;
>> +	ctlr = hbdev->ctlr;
>> +	if (!of_device_is_compatible(np, "cypress,hyperflash"))
>> +		return -ENODEV;
>> +
>> +	hbdev->memtype = HYPERFLASH;
>> +
>> +	ret = of_address_to_resource(np, 0, &res);
> 
>    Hm, I doubt that the HB devices are wholly mapped into memory space, that seems
> like a property of the HB controller. In my case, the flash device in the DT has
> only single-cell "reg" prop (equal to the chip select #). Then this function returns 
> -EINVAL and the registration fails. Also, in my case such mapping is R/O, not R/W.
> 

You could declare R/O MMIO region in controla and set up a translation using ranges
from slave's reg CS based reg mapping like:

+	hbmc: hyperbus@47034000 {
+		compatible = "ti,am654-hbmc";
+		reg = <0x0 0x47034000 0x0 0x100>,
+			<0x5 0x00000000 0x1 0x0000000>;
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
+			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
+
+		/* Slave flash node */
+		flash@0,0 {
+			compatible = "cypress,hyperflash", "cfi-flash";
+			reg = <0x0 0x0 0x4000000>;
+		};
+	};

If you use just CS# how would you handle CS to MMIO region mapping? 
Does both CS use the same MMIO base for reads?


>> +	if (ret)
>> +		return ret;
>> +
>> +	dev = ctlr->dev;
>> +	map = &hbdev->map;
>> +	map->size = resource_size(&res);
>> +	map->virt = devm_ioremap_resource(dev, &res);
>> +	if (IS_ERR(map->virt))
>> +		return PTR_ERR(map->virt);
> 
>    Again, I doubt that this should be done here, and not in the HB controller driver...

If multiple CS use same MMIO base, then I can make this part of code non fatal
when reg entry is a single cell and introduce notion of CS like SPI

> 
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
