Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F2D2FAC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rd/GIsOSIaSuclxjUIiHcLU2M9Su66VXNuIIuLIkm1M=; b=cdvuAP57LELpSk
	JHmO/zSOSlJ0x7gudWtP7jdh5HrALoe6xl0gYbHSqPYe9XyPSeyxXtuAjrP/WAVuvlyoMUrUsJvg9
	gL6bqt/PW6ei/pbeyx5blZSSu7xEIzGStOyTVMuNWxpmafwxI/8RJAgfBA4EHqUlde92ppctFnqQW
	YngN5wDWWFOnkQ7mkC4+uFosCF+OZ5XOG+TZz/UC1UaLXLVhC68T+R9xGkGg6DH/3gU0L7NJSJZTq
	T/xxg3K/wf+D1JiIOlq2Da1uW5F669LEWtnLOS8Tvu/B+bS0n4U2UvGZrMO9fY/NyedKLpE6L5cJ9
	yo36ydcECsrq39EfCPYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJ3S-0001vQ-DM; Thu, 30 May 2019 11:17:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJ3J-0001v1-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:16:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so3911132wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 04:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xPPg1SCyHb64Fhr55IHPd5M7ZeQxhQTiEBH6THyaghI=;
 b=rt3jAT9E+aS/pLbJBR6jccB06bJReZktWxsJpQQSpOAhpSMjOij7f9cPtX7U5PdSS4
 Fs01nRwRVtHURRERGSIGy03+G0bE0HfKZ8mxG1BexzByLA1yAvm1voDXMS6c8+H5aZaT
 jsgtrPfQ/dn3YLVyX3rGrnyuYo/t2gYuiGN7Jm+4g/HAoQUV2z7BE3d/siRYIXFmfWOS
 d0itsFkNI97ncjX+Se94RSszYsUoAW5ouB7dde9MM+K6NY896VOMoOdR1ZsOVv5v5p0q
 NmpT2Ot+x4Ows/7KhjP9N382udG4R5CWWkDbZXJIKfAfrjm8JZonkubSRdsEDzYMWpsv
 1Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xPPg1SCyHb64Fhr55IHPd5M7ZeQxhQTiEBH6THyaghI=;
 b=kJrLslELPPewO+sPP5VYq661WSC7equYMDE8aMQCAHFsm+afu5838vbijtxu9LyER5
 g64NdIsIrxZbDZaabOeR+shoC69iVMzSw9I6+6RApdaFjmshwKLXrkEq9NX/OCy61XUT
 3DV47tbYeVQh78KjtR69d6rO0QyYH3hk/N14lc+WcTDiBTMhaLo5gCXWTFLxKC9NK5eK
 YXvy9QMMSdW9BswWNeYcp8ur780aNqsY2qIep3VOxnVVtN4fBGCpPMXuZS6UXcx9Q3ZZ
 EIvRAH2yJSljSkT8O/O+c60cWScO+N4O3RWQ9vc+GpeCx6ry+uhxJc+AZ3iZPd2MYq2n
 QZYQ==
X-Gm-Message-State: APjAAAUaUEr0R/NaNSzDP6og7bRZ5FhmVZMDyLU94KEqY7bF76bSqgM7
 FZFCr02cG0jHOAY8DKSs/VTJ+6R2D2c=
X-Google-Smtp-Source: APXvYqzQ5FrwLvBN/xB7X3um4IF6sE3DRNG/dXSXbLiz80G0B6joe2WRcKvDCpGfhQ/R+0mfQGDsHA==
X-Received: by 2002:adf:c606:: with SMTP id n6mr2215648wrg.62.1559215014685;
 Thu, 30 May 2019 04:16:54 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c225:e9ff:fe2e:ea8])
 by smtp.gmail.com with ESMTPSA id z20sm2686421wmf.14.2019.05.30.04.16.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 04:16:53 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] spi/acpi: enumerate all SPI slaves in the namespace
Date: Thu, 30 May 2019 13:16:34 +0200
Message-Id: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_041657_344768_FEE92264 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-spi@vger.kernel.org,
 linux-acpi@vger.kernel.org, andy.shevchenko@gmail.com, broonie@kernel.org,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Lukas Wunner <lukas@wunner.de>,
 masahisa.kojima@linaro.org, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the ACPI enumeration that takes place when registering a
SPI master only considers immediate child devices in the ACPI namespace,
rather than checking the ResourceSource field in the SpiSerialBus()
resource descriptor.

This is incorrect: SPI slaves could reside anywhere in the ACPI
namespace, and so we should enumerate the entire namespace and look for
any device that refers to the newly registered SPI master in its
resource descriptor.

So refactor the existing code and use a lookup structure so that
allocating the SPI device structure is deferred until we have identified
the device as an actual child of the controller. This approach is
loosely based on the way the I2C subsystem handles ACPI enumeration.

Note that Apple x86 hardware does not rely on SpiSerialBus() resources
in _CRS but uses nested devices below the controller's device node in
the ACPI namespace, with a special set of device properties. This means
we have to take care to only parse those properties for device nodes
that are direct children of the controller node.

Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: linux-spi@vger.kernel.org
Cc: broonie@kernel.org
Cc: andy.shevchenko@gmail.com
Cc: masahisa.kojima@linaro.org
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Jarkko Nikula <jarkko.nikula@linux.intel.com>
Cc: linux-acpi@vger.kernel.org
Cc: Lukas Wunner <lukas@wunner.de>

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/spi/spi.c | 103 ++++++++++++++------
 1 file changed, 72 insertions(+), 31 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5e75944ad5d1..4661b219a7e7 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1799,9 +1799,18 @@ static void of_register_spi_devices(struct spi_controller *ctlr) { }
 #endif
 
 #ifdef CONFIG_ACPI
-static void acpi_spi_parse_apple_properties(struct spi_device *spi)
+struct acpi_spi_lookup {
+	struct spi_controller 	*ctlr;
+	u32			max_speed_hz;
+	u32			mode;
+	int			irq;
+	u8			bits_per_word;
+	u8			chip_select;
+};
+
+static void acpi_spi_parse_apple_properties(struct acpi_device *dev,
+					    struct acpi_spi_lookup *lookup)
 {
-	struct acpi_device *dev = ACPI_COMPANION(&spi->dev);
 	const union acpi_object *obj;
 
 	if (!x86_apple_machine)
@@ -1809,35 +1818,46 @@ static void acpi_spi_parse_apple_properties(struct spi_device *spi)
 
 	if (!acpi_dev_get_property(dev, "spiSclkPeriod", ACPI_TYPE_BUFFER, &obj)
 	    && obj->buffer.length >= 4)
-		spi->max_speed_hz  = NSEC_PER_SEC / *(u32 *)obj->buffer.pointer;
+		lookup->max_speed_hz  = NSEC_PER_SEC / *(u32 *)obj->buffer.pointer;
 
 	if (!acpi_dev_get_property(dev, "spiWordSize", ACPI_TYPE_BUFFER, &obj)
 	    && obj->buffer.length == 8)
-		spi->bits_per_word = *(u64 *)obj->buffer.pointer;
+		lookup->bits_per_word = *(u64 *)obj->buffer.pointer;
 
 	if (!acpi_dev_get_property(dev, "spiBitOrder", ACPI_TYPE_BUFFER, &obj)
 	    && obj->buffer.length == 8 && !*(u64 *)obj->buffer.pointer)
-		spi->mode |= SPI_LSB_FIRST;
+		lookup->mode |= SPI_LSB_FIRST;
 
 	if (!acpi_dev_get_property(dev, "spiSPO", ACPI_TYPE_BUFFER, &obj)
 	    && obj->buffer.length == 8 &&  *(u64 *)obj->buffer.pointer)
-		spi->mode |= SPI_CPOL;
+		lookup->mode |= SPI_CPOL;
 
 	if (!acpi_dev_get_property(dev, "spiSPH", ACPI_TYPE_BUFFER, &obj)
 	    && obj->buffer.length == 8 &&  *(u64 *)obj->buffer.pointer)
-		spi->mode |= SPI_CPHA;
+		lookup->mode |= SPI_CPHA;
 }
 
 static int acpi_spi_add_resource(struct acpi_resource *ares, void *data)
 {
-	struct spi_device *spi = data;
-	struct spi_controller *ctlr = spi->controller;
+	struct acpi_spi_lookup *lookup = data;
+	struct spi_controller *ctlr = lookup->ctlr;
 
 	if (ares->type == ACPI_RESOURCE_TYPE_SERIAL_BUS) {
 		struct acpi_resource_spi_serialbus *sb;
+		acpi_handle parent_handle;
+		acpi_status status;
 
 		sb = &ares->data.spi_serial_bus;
 		if (sb->type == ACPI_RESOURCE_SERIAL_TYPE_SPI) {
+
+			status = acpi_get_handle(NULL,
+						 sb->resource_source.string_ptr,
+						 &parent_handle);
+
+			if (!status ||
+			    ACPI_HANDLE(ctlr->dev.parent) != parent_handle)
+				return -ENODEV;
+
 			/*
 			 * ACPI DeviceSelection numbering is handled by the
 			 * host controller driver in Windows and can vary
@@ -1850,25 +1870,25 @@ static int acpi_spi_add_resource(struct acpi_resource *ares, void *data)
 						sb->device_selection);
 				if (cs < 0)
 					return cs;
-				spi->chip_select = cs;
+				lookup->chip_select = cs;
 			} else {
-				spi->chip_select = sb->device_selection;
+				lookup->chip_select = sb->device_selection;
 			}
 
-			spi->max_speed_hz = sb->connection_speed;
+			lookup->max_speed_hz = sb->connection_speed;
 
 			if (sb->clock_phase == ACPI_SPI_SECOND_PHASE)
-				spi->mode |= SPI_CPHA;
+				lookup->mode |= SPI_CPHA;
 			if (sb->clock_polarity == ACPI_SPI_START_HIGH)
-				spi->mode |= SPI_CPOL;
+				lookup->mode |= SPI_CPOL;
 			if (sb->device_polarity == ACPI_SPI_ACTIVE_HIGH)
-				spi->mode |= SPI_CS_HIGH;
+				lookup->mode |= SPI_CS_HIGH;
 		}
-	} else if (spi->irq < 0) {
+	} else if (lookup->irq < 0) {
 		struct resource r;
 
 		if (acpi_dev_resource_interrupt(ares, 0, &r))
-			spi->irq = r.start;
+			lookup->irq = r.start;
 	}
 
 	/* Always tell the ACPI core to skip this resource */
@@ -1878,7 +1898,9 @@ static int acpi_spi_add_resource(struct acpi_resource *ares, void *data)
 static acpi_status acpi_register_spi_device(struct spi_controller *ctlr,
 					    struct acpi_device *adev)
 {
+	acpi_handle parent_handle = NULL;
 	struct list_head resource_list;
+	struct acpi_spi_lookup lookup;
 	struct spi_device *spi;
 	int ret;
 
@@ -1886,28 +1908,44 @@ static acpi_status acpi_register_spi_device(struct spi_controller *ctlr,
 	    acpi_device_enumerated(adev))
 		return AE_OK;
 
-	spi = spi_alloc_device(ctlr);
-	if (!spi) {
-		dev_err(&ctlr->dev, "failed to allocate SPI device for %s\n",
-			dev_name(&adev->dev));
-		return AE_NO_MEMORY;
-	}
-
-	ACPI_COMPANION_SET(&spi->dev, adev);
-	spi->irq = -1;
+	lookup.ctlr		= ctlr;
+	lookup.mode		= 0;
+	lookup.bits_per_word	= 0;
+	lookup.irq		= -1;
 
 	INIT_LIST_HEAD(&resource_list);
 	ret = acpi_dev_get_resources(adev, &resource_list,
-				     acpi_spi_add_resource, spi);
+				     acpi_spi_add_resource, &lookup);
 	acpi_dev_free_resource_list(&resource_list);
 
-	acpi_spi_parse_apple_properties(spi);
+	if (ret < 0)
+		/* found SPI in _CRS but it points to another controller */
+		return AE_OK;
 
-	if (ret < 0 || !spi->max_speed_hz) {
-		spi_dev_put(spi);
+	if (!lookup.max_speed_hz &&
+	    !ACPI_FAILURE(acpi_get_parent(adev->handle, &parent_handle)) &&
+	    ACPI_HANDLE(ctlr->dev.parent) == parent_handle) {
+		/* Apple does not use _CRS but nested devices for SPI slaves */
+		acpi_spi_parse_apple_properties(adev, &lookup);
+	}
+
+	if (!lookup.max_speed_hz)
 		return AE_OK;
+
+	spi = spi_alloc_device(ctlr);
+	if (!spi) {
+		dev_err(&ctlr->dev, "failed to allocate SPI device for %s\n",
+			dev_name(&adev->dev));
+		return AE_NO_MEMORY;
 	}
 
+	ACPI_COMPANION_SET(&spi->dev, adev);
+	spi->max_speed_hz	= lookup.max_speed_hz;
+	spi->mode		= lookup.mode;
+	spi->irq		= lookup.irq;
+	spi->bits_per_word	= lookup.bits_per_word;
+	spi->chip_select	= lookup.chip_select;
+
 	acpi_set_modalias(adev, acpi_device_hid(adev), spi->modalias,
 			  sizeof(spi->modalias));
 
@@ -1939,6 +1977,8 @@ static acpi_status acpi_spi_add_device(acpi_handle handle, u32 level,
 	return acpi_register_spi_device(ctlr, adev);
 }
 
+#define SPI_ACPI_ENUMERATE_MAX_DEPTH		32
+
 static void acpi_register_spi_devices(struct spi_controller *ctlr)
 {
 	acpi_status status;
@@ -1948,7 +1988,8 @@ static void acpi_register_spi_devices(struct spi_controller *ctlr)
 	if (!handle)
 		return;
 
-	status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
+	status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
+				     SPI_ACPI_ENUMERATE_MAX_DEPTH,
 				     acpi_spi_add_device, NULL, ctlr, NULL);
 	if (ACPI_FAILURE(status))
 		dev_warn(&ctlr->dev, "failed to enumerate SPI slaves\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
