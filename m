Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6BC3CA91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1D7Ovo9yFwiD8fxv98mCq4fyiLE1LotyWbKmNsMzmw=; b=PS/OoihSNmb4nV
	1HmgnSCzxZfs8VhP7FbDMN9ByYXnPYRoWw4XpZqrGGEPSNQX5fe72C1beX0wpK/8If2hsNqvXa+nI
	WAb3r0PaPxZiUQEK+688EKAcznfk+kBrdhWzQ6rXFCThiiIYBkRYDshPtooSKaTWx+GR7Uq4DqkyQ
	GvSmyzSIqQLjw0lT6EYzUsnOdPN1aocwGduDwNmzY25jQk2yQabsR1PO5LOD3B2hKsjQwaa/hxE9k
	LK2TvDsFW24hzHg7QZ64pS+QTBDo/UDrDh0FfF+pX6Dsu+cG9x2VJIobrSEjgZU8snhn28aPrqCz4
	NLKdgHd0CJjBp4etNESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafPp-00055D-AU; Tue, 11 Jun 2019 11:58:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafOm-0004fY-Gy; Tue, 11 Jun 2019 11:57:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BBuhEc126815;
 Tue, 11 Jun 2019 06:56:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560254203;
 bh=pMoVVapOIW2ESz+4jX391PkjziL8+0IUeCu70eJHeHk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Uy8vh+ffYjEzKlnXvhhiWl3bj6a50/A/pOhsK7C8eELDCVJqP1/wRMfAnscEl3z3A
 tsUWoaq8X6AqazLycDMqrjqhWp1bioJ7poDLJO+N+/InYUTVIjPT3jt6b+ZZS4hZ/J
 J8a+6BBPg2V2WG5gbwIhfXvoxMi2NaoiXoqCX/CI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BBuhXD014880
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 06:56:43 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 06:56:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 06:56:42 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BBubJx076305;
 Tue, 11 Jun 2019 06:56:38 -0500
Subject: Re: [PATCH v5 3/5] mtd: Add support for HyperBus memory devices
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Boris
 Brezillon <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-4-vigneshr@ti.com>
 <58e9608d-35ff-0436-6075-b2e4ed4b8594@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <f47d4d57-afb2-3b39-fae9-3ed740a2b8a6@ti.com>
Date: Tue, 11 Jun 2019 17:27:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <58e9608d-35ff-0436-6075-b2e4ed4b8594@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_045708_644665_739E472D 
X-CRM114-Status: GOOD (  28.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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



On 10/06/19 11:27 PM, Sergei Shtylyov wrote:
> On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:
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
>> its equivalent to x16 parallel NOR flash wrt bits per clock cycle. But
>> HyperBus operates at >166MHz frequencies.
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
>> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
>> new file mode 100644
>> index 000000000000..df1f75e10b1a
>> --- /dev/null
>> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
>> @@ -0,0 +1,191 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +//
>> +// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
>> +// Author: Vignesh Raghavendra <vigneshr@ti.com>
>> +
>> +#include <linux/err.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/mtd/hyperbus.h>
>> +#include <linux/mtd/map.h>
>> +#include <linux/mtd/mtd.h>
>> +#include <linux/mtd/cfi.h>
>> +#include <linux/of.h>
>> +#include <linux/of_address.h>
>> +#include <linux/types.h>
>> +
>> +#define HYPERBUS_CALIB_COUNT 25
> 
>    Mhm, I think I've already protested about this being #define'd here...
> 

I thought you had agreed that default optional calibration routine can
be part of core code and thus this #define.

Anyways, what is your preference here? Drop the constant and use a local
variable in hyperbus_calibrate()?
Or are you suggesting to move hyperbus_calibrate() TI's specific driver?


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
>> +	if (of_address_to_resource(np, 0, &res))
>> +		return -EINVAL;
> 
>    Why not just propagate the error upstream (yeah, I've noticed that
> it only can be -EINVAL)?
> 

Ok.

> [...]
>> diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
>> new file mode 100644
>> index 000000000000..ee2eefd822c9
>> --- /dev/null
>> +++ b/include/linux/mtd/hyperbus.h
>> @@ -0,0 +1,91 @@
>> +/* SPDX-License-Identifier: GPL-2.0
>> + *
>> + * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
>> + */
>> +
>> +#ifndef __LINUX_MTD_HYPERBUS_H__
>> +#define __LINUX_MTD_HYPERBUS_H__
>> +
>> +#include <linux/mtd/map.h>
>> +
>> +enum hyperbus_memtype {
>> +	HYPERFLASH,
>> +	HYPERRAM,
>> +};
>> +
>> +/**
>> + * struct hyperbus_device - struct representing HyperBus slave device
>> + * @map: map_info struct for accessing MMIO HyperBus flash memory
>> + * @np:	pointer to HyperBus slave device node
>           ^
>    Space needed here, not tab.
> 

Ok

>> + * @mtd: pointer to MTD struct
>> + * @ctlr: pointer to HyperBus controller struct
>> + * @memtype: type of memory device: HyperFlash or HyperRAM
>> + * @registered: flag to indicate whether device is registered with MTD core
>> + */
>> +
>> +struct hyperbus_device {
>> +	struct map_info map;
>> +	struct device_node *np;
>> +	struct mtd_info *mtd;
>> +	struct hyperbus_ctlr *ctlr;
>> +	enum hyperbus_memtype memtype;
>> +	bool registered;
>> +};
>> +
>> +/**
>> + * struct hyperbus_ops - struct representing custom HyperBus operations
>> + * @read16: read 16 bit of data, usually from register/ID-CFI space
>> + * @write16: write 16 bit of data, usually to register/ID-CFI space
> 
>    Usually? How to differ the register/memory transfers if both are possible?
> 

CFI + map framework does not provide a way to differentiate b/w reg
access vs memory access. read16()/write16() is used to either access
registers or for sending various cmds like lock/unlock etc or for
programming a single word.
For regular read/writes copy_from() and copy_to() are used.

Looking at HyperBus protocol, controllers would not need to
differentiate b/w registers vs memory transfers for HyperFlash devices.
So, I think I can drop read16/write16 and redirect these calls to
copy_from()/copy_to()


I mainly added these functions keeping HyperRAM in mind. Idea was
drivers would look at hyperbus_device->memtype and set to register
access mode for HyperRAM in case of write16()/read16(). Looks like the
interface is not intuitive enough
So, will drop these and add it back when adding HyperRAM support.

Does that work for your HW as well?

>> + * @copy_from: copy data from flash memory
>> + * @copy_to: copy data to flash memory
>> + * @calibrate: calibrate HyperBus controller
>> + */
>> +
>> +struct hyperbus_ops {
>> +	u16 (*read16)(struct hyperbus_device *hbdev, unsigned long addr);
>> +	void (*write16)(struct hyperbus_device *hbdev,
>> +			unsigned long addr, u16 val);
>> +	void (*copy_from)(struct hyperbus_device *hbdev, void *to,
>> +			  unsigned long from, ssize_t len);
>> +	void (*copy_to)(struct hyperbus_device *dev, unsigned long to,
>> +			const void *from, ssize_t len);
>> +	int (*calibrate)(struct hyperbus_device *dev);
>> +};
>> +
>> +/**
>> + * struct hyperbus_ctlr - struct representing HyperBus controller
>> + * @calibrated: flag to indicate ctlr calibration sequence is complete
>> + * @ops: HyperBus controller ops
> 
>    What about @dev?
> 

Will add.

>> + */
>> +struct hyperbus_ctlr {
>> +	struct device *dev;
>> +	bool calibrated;
>> +
>> +	const struct hyperbus_ops *ops;
>> +};
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
