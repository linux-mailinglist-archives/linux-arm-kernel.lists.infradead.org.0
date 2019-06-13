Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF8E44BAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 21:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=QKdnrauHbYxjEGl6x8l3PRYP8Vjrr37wtQu0uU0BZF0=; b=uXA
	0e8F077UTpS51FlwZYk2oBz4XlH60jZ6lByS6V6YOYL/vJxWkoQA5t44Qafzbwl0hjuMIV2XUtTOZ
	RgFk3UTsyBXyA833Wg79hG/07H7biuCf1IkZ2Rsa1rL2ffQCmt+aTJZWyaWvtYjxzhIbIiKgoUb8v
	75b0aE20fP1NIKFaldYzaHD6ULoxFZpkSwUZTqC/KRN4icxi/vS7eZNYTFEMO9R6/wI2XULQuDoj5
	KMZlWk/qPHiBYbPPYQRkYOcQoiZ4mNGfuXgByTOKCJLApGwovucwszB2LGmXBP01PJyZGWwGoCOvR
	J4IQNbS77HOZ/LIldixsHrrb6WzSofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbV3T-0007DB-VQ; Thu, 13 Jun 2019 19:06:36 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbV3H-00078m-PY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 19:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Q3TVYpdt0eiuf1PGrAaOp5u7RwxgOBcLcLQtSas8cK4=; b=ALffCc5hw4iK
 rTocfcAo4ob0JrHgzj/rhFo9/EkU/zJsw2DsJ6HV3+vHYCOHkTJ7g/z5DOpnhTEH86wcL4VZ8ilNv
 3QGNvNakWhRd7F8LiyzT8C+PfMXrr1PwkQTrhcQYnbAVSnrDQaWeptDXXOPcJ1DhxO6WRzbsbllFl
 SNvLY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hbV3E-0005TQ-Bu; Thu, 13 Jun 2019 19:06:20 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id DF3C2440046; Thu, 13 Jun 2019 20:06:19 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Applied "spi/acpi: enumerate all SPI slaves in the namespace" to the
 spi tree
In-Reply-To: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
X-Patchwork-Hint: ignore
Message-Id: <20190613190619.DF3C2440046@finisterre.sirena.org.uk>
Date: Thu, 13 Jun 2019 20:06:19 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_120623_990118_E95B4224 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lukas Wunner <lukas@wunner.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 andy.shevchenko@gmail.com, Mark Brown <broonie@kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, masahisa.kojima@linaro.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi/acpi: enumerate all SPI slaves in the namespace

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 4c3c59544f33e97cf8557f27e05a9904ead16363 Mon Sep 17 00:00:00 2001
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 30 May 2019 13:16:34 +0200
Subject: [PATCH] spi/acpi: enumerate all SPI slaves in the namespace

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
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi.c | 103 ++++++++++++++++++++++++++++++++--------------
 1 file changed, 72 insertions(+), 31 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index bced6876de79..498f9b7419a4 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1852,9 +1852,18 @@ static void of_register_spi_devices(struct spi_controller *ctlr) { }
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
@@ -1862,35 +1871,46 @@ static void acpi_spi_parse_apple_properties(struct spi_device *spi)
 
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
@@ -1903,25 +1923,25 @@ static int acpi_spi_add_resource(struct acpi_resource *ares, void *data)
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
@@ -1931,7 +1951,9 @@ static int acpi_spi_add_resource(struct acpi_resource *ares, void *data)
 static acpi_status acpi_register_spi_device(struct spi_controller *ctlr,
 					    struct acpi_device *adev)
 {
+	acpi_handle parent_handle = NULL;
 	struct list_head resource_list;
+	struct acpi_spi_lookup lookup;
 	struct spi_device *spi;
 	int ret;
 
@@ -1939,28 +1961,44 @@ static acpi_status acpi_register_spi_device(struct spi_controller *ctlr,
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
 
@@ -1992,6 +2030,8 @@ static acpi_status acpi_spi_add_device(acpi_handle handle, u32 level,
 	return acpi_register_spi_device(ctlr, adev);
 }
 
+#define SPI_ACPI_ENUMERATE_MAX_DEPTH		32
+
 static void acpi_register_spi_devices(struct spi_controller *ctlr)
 {
 	acpi_status status;
@@ -2001,7 +2041,8 @@ static void acpi_register_spi_devices(struct spi_controller *ctlr)
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
