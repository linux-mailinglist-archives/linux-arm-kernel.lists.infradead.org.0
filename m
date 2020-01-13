Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5BE1390C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHKy9wu64wOsdFPAsv4Lvy8CKtKRaNSK1npHfNy+j8o=; b=cQ1rDgfTrLV3h9
	BR+qgCBH4UQWZkkYiKgkAaeeSXbYK/3Y+32rfav9DCdGJ2KXPvQGAQdQM5D9KzQ1lV87kgxYEZiqF
	xud7gxSZ3na4tuG0YK8s/PX4+gDyhgO1L2iYEn3Q6Kd2J8MXzy2gutq0JPyQ4iOlHSEOP9fwHK+Z4
	LEART/8xWQmRDT03FrD7W/HQcUfINVCJLkvmhQc5YTfHHIa5uy1IEpBcMyrsj3MHhvvZlCrNh8rcI
	MH1J6Y0M93ou6PzAeK5HizVTDaVIJUppq/8piXxOY2rCKWOgP9pbwvFdAu8Ge/tO98uHeP8uYgPLS
	zVB9sLOEa9EPo4t6eLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyW0-0003fQ-Ex; Mon, 13 Jan 2020 12:08:16 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyV7-0002to-6J
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:07:23 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZCjRH3ot3t9XUY/GF/hsjOh8elWliTWwct4jXf3oaa5QEPnmStTmdAdubTZGfZ1EYQzH0baYoA
 tRToZ3T6uVmnjwW4+L5avcjCL2qO84KHWUbvmzO1ahDsF2K1LAF7bIKw7muAzuvLnrKZyw9NC/
 4/6mo3uZYLyXMNY9ysu90+96A2xIMUNfIjs+nDIV2WvGCcLZo64t2JG0RMxrdeebR3sZkA8Bra
 4oLLfFw6aeTo2eHa4XhLmxjZbMJLqoJZcZor0zm31wuvhNXAGBchhOzEe9tqhKqcTYfQcbJ3eY
 R/0=
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="61710735"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jan 2020 05:07:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 05:07:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Jan 2020 05:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwuNYomTCwD1Q3K4b624QFhGWEdCK4obyjgRmQkn3quRyQYopkNc6O9crubJBFXKuOn5yLWbMGnVSUZTFH9BL5fIm/QFv22Y2GkoYIpccAQ988HiMg0XD30V53X8UbZTevMfX56Nxcw7+9NRmgqMt5FfyjHb8MgVFpAYdMAQm+8iOGASUyaH5XYUpIfySVlLJN70FGv0ipHqEHz7QITiOatBjXK1GyXaXrC95imKfoqAHxEgXva1Lek6PhWbg0FbxugFGpl0/lxAM4qfuivbG3vErIQb9lCV60pR0Ft5mJnJlQ1Fc5JZx/+wqYVmsFfxQ6AcWQHb+6BhNXK0ZtlELw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WE/O7I+g4DONLHXyuItIsEvDX2S6uQeePfMwFmfRw9U=;
 b=UVxA5OiJkBryVViSc8z8CWG7bHPunJnJ3oVSMQAhYvE++TeUlp5WlEi2z4jm/XTj4vuxy8upLQiZgDfRqHfNGG1qExyJsZ21GgLHEkT1duUCJrzGoZuWpg7tCKrfCuMpWpaNR1sk5wzdj2qHR9cfw554jHNDBCDag8YIzgeydeYF/AMWONkAlT9tEOtwybXuWXWegJjyoc9tiOk5vwjYSoBz7aGCKgtJ1LMyLtZfLus231gpQ9jFSKbGov2bgDRhXvyqbEt13xHlI6Jgm6F98orkzEwnfDFM+jQZuUP9oRUb92IJbPxBpjqP6nwCrLPiRxxqgyz0WrURF89PAseAfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WE/O7I+g4DONLHXyuItIsEvDX2S6uQeePfMwFmfRw9U=;
 b=Yc8ecUFtZ/fmRVlHVHurki/q8ORGif4xfEmulm/lNPjx2POKi6GSLmldzu8f4lts9ejfQT0AExonupH2i/7NaoDHX2hzecXcVLu9/aG3pXjIXBk1fTznYYZf+8lRBUed+5Bk82N1quMWgchXJpMSdxeaR+K18+ca98RON0t4U8I=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0011.namprd11.prod.outlook.com (10.164.155.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.16; Mon, 13 Jan 2020 12:07:10 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 12:07:10 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Topic: [PATCH v2 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Index: AQHVygn79EXDODWs2EKzXEoIhEzLMw==
Date: Mon, 13 Jan 2020 12:07:09 +0000
Message-ID: <1578917098-9674-3-git-send-email-eugen.hristev@microchip.com>
References: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f6589ab-d19d-47d0-3378-08d798211df3
x-ms-traffictypediagnostic: DM5PR11MB0011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB001121DB0D7AE39CB6625CD9E8350@DM5PR11MB0011.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(39860400002)(346002)(189003)(199004)(8936002)(4326008)(71200400001)(8676002)(81166006)(81156014)(5660300002)(91956017)(478600001)(86362001)(76116006)(66946007)(6506007)(54906003)(110136005)(6486002)(186003)(316002)(36756003)(26005)(2906002)(107886003)(66446008)(6512007)(66476007)(66556008)(64756008)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0011;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QBukSAnNrmJ0Ru8jabAHXNyYjAHC7hkx+FM0/yqRE6B7fJQ6pbuzIxUY5vFlMlLxag1ZtW9sTplq/XU2+j3iyH3PLhhh5SahzwZuzVwND/SHx6UykIaoKZdcRHDGmq76bmFhjNfKhck8OM/DKqfPj5d7t81GNz8lIXeh6vAmVGHhcinVV42X4j+s43okvr6R47bzQtSWZ5wiW3TowST3qF/SbWQhKxhsysLqtqtkbsi200x9f/2T6cVs9IGEZiQULgpeRQqpVh/+sgrnR7xIOzbDNFx5e3q2sBV5kgff5Zouq67O5AVH0Ph2x9Ygih1ja7CFeredHj84QHF28AaRO80qT6T7HK1iNQvyiXcSS4A3fH9r8j2ju5RLNcN5hCaoe0RcJmpGtq6P0xQjhX2DsCpRTRLsic01WTxjyJ2MQhHsheVF790uTXyVG8Oekuk+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6589ab-d19d-47d0-3378-08d798211df3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 12:07:09.5177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PgEujsXIHVf5J1ui2zt8xUgYRCnKLboTbeGI4q2WM6vP8Gv78+605ZbrvA4n2FqH6PcJHf5D9FgxGmVxZcA2L2c1pMKskwXcFOHQZTzE2co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_040721_277679_3C221F6B 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

It can happen that on IRQ trigger, not all conversions are done if
we are enabling multiple channels.
The IRQ is triggered on first EOC (end of channel), but it can happen
that not all channels are done. This leads into erroneous reports to
userspace (zero values or previous values).
To solve this, in trigger handler, check if the mask of done channels
is the same as the mask of active scan channels.
If it's the same, proceed and push to buffers. Otherwise, use usleep
to sleep until the conversion is done or we timeout.
Normally, it should happen that in a short time fashion, all channels are
ready, since the first IRQ triggered.
If a hardware fault happens (for example the clock suddently dissappears),
the handler will not be completed, in which case we do not report anything to
userspace anymore.
Also, change from using the EOC interrupts to DRDY interrupt.
This helps with the fact that not 'n' interrupt statuses are enabled,
each being able to trigger an interrupt, and instead only data ready
interrupt can wake up the CPU. Like this, when data is ready, check in
handler which and how many channels are done. While the DRDY is raised,
other IRQs cannot occur. Once the channel data is being read, we ack the
IRQ and finish the conversion.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v2:
- move start of conversion to threaded irq, removed specific at91 pollfunc
- add timeout to channel mask readiness check in trigger handler
- use DRDY irq instead of EOC irqs.
- move enable irq after DRDY has been acked in reenable_trigger

 drivers/iio/adc/at91-sama5d2_adc.c | 62 ++++++++++++++++++++++++++++----------
 1 file changed, 46 insertions(+), 16 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index 2a6950a..454a493 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -8,6 +8,7 @@
 
 #include <linux/bitops.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
 #include <linux/interrupt.h>
@@ -100,6 +101,8 @@
 #define AT91_SAMA5D2_IER_YRDY   BIT(21)
 /* Interrupt Enable Register - TS pressure measurement ready */
 #define AT91_SAMA5D2_IER_PRDY   BIT(22)
+/* Interrupt Enable Register - Data ready */
+#define AT91_SAMA5D2_IER_DRDY   BIT(24)
 /* Interrupt Enable Register - general overrun error */
 #define AT91_SAMA5D2_IER_GOVRE BIT(25)
 /* Interrupt Enable Register - Pen detect */
@@ -486,6 +489,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
 	return at91_adc_chan_xlate(indio_dev, iiospec->args[0]);
 }
 
+static unsigned int at91_adc_active_scan_mask_to_reg(struct iio_dev *indio_dev)
+{
+	u32 mask = 0;
+	u8 bit;
+
+	for_each_set_bit(bit, indio_dev->active_scan_mask,
+			 indio_dev->num_channels) {
+		struct iio_chan_spec const *chan =
+			 at91_adc_chan_get(indio_dev, bit);
+		mask |= BIT(chan->channel);
+	}
+
+	return mask & GENMASK(11, 0);
+}
+
 static void at91_adc_config_emr(struct at91_adc_state *st)
 {
 	/* configure the extended mode register */
@@ -746,24 +764,19 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 			at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
 		}
 
-		if (state) {
+		if (state)
 			at91_adc_writel(st, AT91_SAMA5D2_CHER,
 					BIT(chan->channel));
-			/* enable irq only if not using DMA */
-			if (!st->dma_st.dma_chan) {
-				at91_adc_writel(st, AT91_SAMA5D2_IER,
-						BIT(chan->channel));
-			}
-		} else {
-			/* disable irq only if not using DMA */
-			if (!st->dma_st.dma_chan) {
-				at91_adc_writel(st, AT91_SAMA5D2_IDR,
-						BIT(chan->channel));
-			}
+		else
 			at91_adc_writel(st, AT91_SAMA5D2_CHDR,
 					BIT(chan->channel));
-		}
 	}
+	/* enable irq only if not using DMA */
+	if (state && !st->dma_st.dma_chan)
+		at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
+	/* disable irq only if not using DMA */
+	if (!state && !st->dma_st.dma_chan)
+		at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
 
 	return 0;
 }
@@ -777,10 +790,10 @@ static int at91_adc_reenable_trigger(struct iio_trigger *trig)
 	if (st->dma_st.dma_chan)
 		return 0;
 
-	enable_irq(st->irq);
-
 	/* Needed to ACK the DRDY interruption */
 	at91_adc_readl(st, AT91_SAMA5D2_LCDR);
+
+	enable_irq(st->irq);
 	return 0;
 }
 
@@ -1015,6 +1028,22 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
 	int i = 0;
 	int val;
 	u8 bit;
+	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
+	unsigned int timeout = 50;
+
+	/*
+	 * Check if the conversion is ready. If not, wait a little bit, and
+	 * in case of timeout exit with an error.
+	 */
+	while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask &&
+	       timeout) {
+		usleep_range(50, 100);
+		timeout--;
+	}
+
+	/* Cannot read data, not ready. Continue without reporting data */
+	if (!timeout)
+		return;
 
 	for_each_set_bit(bit, indio_dev->active_scan_mask,
 			 indio_dev->num_channels) {
@@ -1281,7 +1310,8 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
 		status = at91_adc_readl(st, AT91_SAMA5D2_XPOSR);
 		status = at91_adc_readl(st, AT91_SAMA5D2_YPOSR);
 		status = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
-	} else if (iio_buffer_enabled(indio) && !st->dma_st.dma_chan) {
+	} else if (iio_buffer_enabled(indio) &&
+		   (status & AT91_SAMA5D2_IER_DRDY)) {
 		/* triggered buffer without DMA */
 		disable_irq_nosync(irq);
 		iio_trigger_poll(indio->trig);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
