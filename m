Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84853BB79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lB9H16iY61VWoanENSJLc0EegiGlvgusu+edDryxNw=; b=nZsNQq5hjnXJFO
	2Xkm2pT4R0Vopi/+BmVvlNTVLN98AEgWrd02N5nmMHdd0tUIziPuU1vgNFPg3jprSXV42RxUQ/ZZH
	Sh6puXjuoAsS8fyAzQjnSDuaCKPXA6nUqRG9jgLuKosGiQZ2vki+/Gxho2Yc4JAUaePvpkXBh75vN
	mGEmfPjVerAed6rJynGL5XgQacmG7JMnxxzSp9BZrZ5KsJA61jbsxYfUJwgVRDtk3ucOW95k0CqNM
	CB1HF1RqN3lyLnfoue+S1dnpl1trZcW2O706vPps7mos23iS2vxTyUJ4SP/4kOxRPo1GN1p4gyUNT
	3kmAcF522DCo8sjC4XFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOYU-0000bZ-Ky; Mon, 10 Jun 2019 17:58:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOXs-0000Qd-0e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:57:26 +0000
Received: by mail-lf1-x142.google.com with SMTP id y13so7257452lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 10:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w7LNYq90LegYhl8JEKETZX2CInF9InU6p6H+XwzSLUQ=;
 b=RUH4yRcThZVn7Zyjif6ZYAxUy6j0clDjIXRWK0jKAO5EuHE8j66eMBFGw8dl9zh804
 dk9HKmyGmlj9ucRM+1ifzEfbhD/QvO6eUL3HJlCXqedRmFXz9Ak3VvVtA1UiSpI9bfqP
 raIRFrtBOIvWpgn3l0dhUeK+JQvBaok7qegy8RA2qDKH41TrfyIlUJ/4neVB3x1boS72
 nxmfY75bdJh3l8Mxn+I9xoORqYGSUEzQuVYxwAPnzecByBmFCAEWjZpdF8Ea/NR/4tx3
 C2X0/+Ku3DJ1eDh77TQLXGW4zANil+AuXmI3qz3pCc2/3/l7TKhRVYvKRgtpi4dp+X8e
 jJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=w7LNYq90LegYhl8JEKETZX2CInF9InU6p6H+XwzSLUQ=;
 b=ath+I5+DrKgQgQsnFPu4YfpuZudIKFk+V843YCQ4Xcc0kPSnhxCXUZEq44EczkiglY
 dpf1DdtaIMIQ1exrDGcswlpKN7l0kslY/T/MtIEH5G9iPub7/chzUFpqGT+S9e2Gm1up
 26qfCTYBYV5Eb9nJ0J692K+cVU6Yi/FFSKeQg5tvMf0m3MqJd3HqKom64xwf/d0hBe1i
 cXbz27HwWdiuf0+msMSzyuZZCdC8UkNL9JIJx/pWkTIuZTRMyw+RRz085mW87ayKGHH3
 MQsPBjJzaEjOwC0d9dgqoaXnnz9kQyDAnwho6hyYsPBRAEs/NVc4IHyO2KRp1lqBcPLu
 tyCg==
X-Gm-Message-State: APjAAAXhb0C4RvJwu4aXYI9glV1G27nipOjbGQN7F1BZ3oRKaWJHnGO/
 NLWTOgVxrBcE5DpfzpmHY8TNFQ==
X-Google-Smtp-Source: APXvYqxgkqrqz+o4/aFAG4qef4L+/pAS2eHlqHU22llnCUuR5c3nRAfgYkKwP2HJYew5iQHb0XW4ZA==
X-Received: by 2002:ac2:47fa:: with SMTP id b26mr1037662lfp.82.1560189441079; 
 Mon, 10 Jun 2019 10:57:21 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.86.166])
 by smtp.gmail.com with ESMTPSA id h18sm2114160lfc.40.2019.06.10.10.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 10:57:20 -0700 (PDT)
Subject: Re: [PATCH v5 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-4-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <58e9608d-35ff-0436-6075-b2e4ed4b8594@cogentembedded.com>
Date: Mon, 10 Jun 2019 20:57:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190609103227.24875-4-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_105724_167237_674A0BFD 
X-CRM114-Status: GOOD (  32.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:

> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
> Bus interface between a host system master and one or more slave
> interfaces. HyperBus is used to connect microprocessor, microcontroller,
> or ASIC devices with random access NOR flash memory (called HyperFlash)
> or self refresh DRAM (called HyperRAM).
> 
> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
> signal and either Single-ended clock(3.0V parts) or Differential clock
> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
> At bus level, it follows a separate protocol described in HyperBus
> specification[1].
> 
> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
> its equivalent to x16 parallel NOR flash wrt bits per clock cycle. But
> HyperBus operates at >166MHz frequencies.
> HyperRAM provides direct random read/write access to flash memory
> array.
> 
> But, HyperBus memory controllers seem to abstract implementation details
> and expose a simple MMIO interface to access connected flash.
> 
> Add support for registering HyperFlash devices with MTD framework. MTD
> maps framework along with CFI chip support framework are used to support
> communicating with flash.
> 
> Framework is modelled along the lines of spi-nor framework. HyperBus
> memory controller (HBMC) drivers calls hyperbus_register_device() to
> register a single HyperFlash device. HyperFlash core parses MMIO access
> information from DT, sets up the map_info struct, probes CFI flash and
> registers it with MTD framework.
> 
> Some HBMC masters need calibration/training sequence[3] to be carried
> out, in order for DLL inside the controller to lock, by reading a known
> string/pattern. This is done by repeatedly reading CFI Query
> Identification String. Calibration needs to be done before trying to detect
> flash as part of CFI flash probe.
> 
> HyperRAM is not supported at the moment.
> 
> HyperBus specification can be found at[1]
> HyperFlash datasheet can be found at[2]
> 
> [1] https://www.cypress.com/file/213356/download
> [2] https://www.cypress.com/file/213346/download
> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>     Table 12-5741. HyperFlash Access Sequence
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
[...]
> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
> new file mode 100644
> index 000000000000..df1f75e10b1a
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
> @@ -0,0 +1,191 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> +// Author: Vignesh Raghavendra <vigneshr@ti.com>
> +
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mtd/hyperbus.h>
> +#include <linux/mtd/map.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mtd/cfi.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/types.h>
> +
> +#define HYPERBUS_CALIB_COUNT 25

   Mhm, I think I've already protested about this being #define'd here...

[...]
> +int hyperbus_register_device(struct hyperbus_device *hbdev)
> +{
> +	const struct hyperbus_ops *ops;
> +	struct hyperbus_ctlr *ctlr;
> +	struct device_node *np;
> +	struct map_info *map;
> +	struct resource res;
> +	struct device *dev;
> +	int ret;
> +
> +	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
> +		pr_err("hyperbus: please fill all the necessary fields!\n");
> +		return -EINVAL;
> +	}
> +
> +	np = hbdev->np;
> +	ctlr = hbdev->ctlr;
> +	if (!of_device_is_compatible(np, "cypress,hyperflash"))
> +		return -ENODEV;
> +
> +	hbdev->memtype = HYPERFLASH;
> +
> +	if (of_address_to_resource(np, 0, &res))
> +		return -EINVAL;

   Why not just propagate the error upstream (yeah, I've noticed that
it only can be -EINVAL)?

[...]
> diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
> new file mode 100644
> index 000000000000..ee2eefd822c9
> --- /dev/null
> +++ b/include/linux/mtd/hyperbus.h
> @@ -0,0 +1,91 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + *
> + * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +#ifndef __LINUX_MTD_HYPERBUS_H__
> +#define __LINUX_MTD_HYPERBUS_H__
> +
> +#include <linux/mtd/map.h>
> +
> +enum hyperbus_memtype {
> +	HYPERFLASH,
> +	HYPERRAM,
> +};
> +
> +/**
> + * struct hyperbus_device - struct representing HyperBus slave device
> + * @map: map_info struct for accessing MMIO HyperBus flash memory
> + * @np:	pointer to HyperBus slave device node
          ^
   Space needed here, not tab.

> + * @mtd: pointer to MTD struct
> + * @ctlr: pointer to HyperBus controller struct
> + * @memtype: type of memory device: HyperFlash or HyperRAM
> + * @registered: flag to indicate whether device is registered with MTD core
> + */
> +
> +struct hyperbus_device {
> +	struct map_info map;
> +	struct device_node *np;
> +	struct mtd_info *mtd;
> +	struct hyperbus_ctlr *ctlr;
> +	enum hyperbus_memtype memtype;
> +	bool registered;
> +};
> +
> +/**
> + * struct hyperbus_ops - struct representing custom HyperBus operations
> + * @read16: read 16 bit of data, usually from register/ID-CFI space
> + * @write16: write 16 bit of data, usually to register/ID-CFI space

   Usually? How to differ the register/memory transfers if both are possible?

> + * @copy_from: copy data from flash memory
> + * @copy_to: copy data to flash memory
> + * @calibrate: calibrate HyperBus controller
> + */
> +
> +struct hyperbus_ops {
> +	u16 (*read16)(struct hyperbus_device *hbdev, unsigned long addr);
> +	void (*write16)(struct hyperbus_device *hbdev,
> +			unsigned long addr, u16 val);
> +	void (*copy_from)(struct hyperbus_device *hbdev, void *to,
> +			  unsigned long from, ssize_t len);
> +	void (*copy_to)(struct hyperbus_device *dev, unsigned long to,
> +			const void *from, ssize_t len);
> +	int (*calibrate)(struct hyperbus_device *dev);
> +};
> +
> +/**
> + * struct hyperbus_ctlr - struct representing HyperBus controller
> + * @calibrated: flag to indicate ctlr calibration sequence is complete
> + * @ops: HyperBus controller ops

   What about @dev?

> + */
> +struct hyperbus_ctlr {
> +	struct device *dev;
> +	bool calibrated;
> +
> +	const struct hyperbus_ops *ops;
> +};
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
