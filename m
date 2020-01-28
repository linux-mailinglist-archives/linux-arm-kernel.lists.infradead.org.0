Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EB914B492
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 13:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbG1IukZCM4/7dWOkG1ZsnHP0Ci5PC49RTgoSoanPhI=; b=koIhkFJDyulWAX
	d/85dpL21rVm+j560EYMFwN9uoeyWmjgGcfkA0Sjx8Y256FHGQkRQ/4QWlrukTNzg2k5xeEYXZXWr
	RFhhcNPcvI6QoNWaAxFAA/080Gsq7tACA3EyobV8TpijiCgy6cCgQbWuabN4Oi2rN1b9mDLW0E582
	l2pbqvgXbdHmuglLoH9sbtGLxZeN1iJPYKuKvG/vZj8AFPEOKUkgj+xiIVh5A+070X7i01sgyMR8g
	Yh0D7gzDhxFAU86ULb+v4zVeBpbtmvjktKPPW+Ky+EtPL1ejWH9ncf+bT599YxmBDxoegQKf8aNnp
	y2PyxS2+1H+1u+05W5jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQS0-0001yX-Vo; Tue, 28 Jan 2020 12:58:41 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQR9-0001R8-JJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 12:57:50 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yJeJrQQS2wudXFx8egHKFuwSZL+ITCBGtpOo4Nq9ASWpiXMTpIq9pEE2OE+p5fyX3+lDb8cTd2
 uIoaiUESSvb4mn32a2tTjWwKgsCI+IEACmc1TpzoYKLqaSmjpGHI60i15H/3kOybegF4mUyYpG
 8Qcu2Qe6PewDjyU0DdfA1/P5mraWFMbLX1p35kdP/Gb7gXlQzGrQV6Mfvq+BgEzad69UdGL2J9
 X3viKgx7p4rHPvqrE3esb+umk1HSf77VqSMF8rExEPhnK2wLSbPR9qLZ5zJsIxxN0OwM4+XPZZ
 z80=
X-IronPort-AV: E=Sophos;i="5.70,373,1574146800"; d="scan'208";a="63960361"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jan 2020 05:57:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jan 2020 05:57:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 28 Jan 2020 05:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPh7QefmcHMjkrDW1F1lYr0angopmLAI6gZLKibx9oZGy+eSJGW8Mx+up8Ki5rOt996PoH82wFeV40O2Fw3QQK0H/c5j6ptmLg/t4ligzclpdpkkLGcntrxzE378qU5G2ab4XzUDZ8KLP9yI+Mqql6eaesHjgKQ6w7/Ug4FMkTUz/jnZLfJFKuOqVWz3cY5tB9iGbowEx2+BeAxvB254dItvtFvUHlsShGT4VtrK80qtzTe31YsRDTJPmP7rzcmDDzuS0A6Z3ZRW7QVRyiYnHoE7mfXtOWGU3xl4apjOMsyZ+TwJdM2v3Pu2XefB116ByIPjNOwts1AdceH8oIHz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsDOGwusY3ugm44gVoe1kiU0ohp+RZiDxrWXx7vkb5w=;
 b=J0seDG3/Qx4htsWP9jiDsb5MdgLEzuSSh/hVgPe82UC8KyblsnV7HymLUESNq3ORGiqJQwUtKMvyTSb+57tFo9vAHrCE55Nfdb3ufbWbv1qKQU9okiL92C6EzEJvvwECca4DUk+1qSkpyDUytT+AklMCQDLH715PDYsO0Esjp7ukr5/toU9s7oY6xuZURO1mfCYQ+IhLEkk+jaOqnbIX+oyty4ew1nUP6IbEXpluF12YC/IGnocfEO6wrgi+Qd2R26czUevsfh0222WhxcdbjUzr5/viI/AR/+Y3hIUTO4a0sk02Jm7EPthLysEq4BpVJa/WJ4v1Xvp+ySOTISVlag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsDOGwusY3ugm44gVoe1kiU0ohp+RZiDxrWXx7vkb5w=;
 b=LuucnVkoGS1vC1/RLYDQmxEw2ZBu0HpQ6w0i9veAQGhiV1OY1YKnneGVggi3HyjWDFjAEMgIhbR9AkSyEl3Mu2k+c9kcIszxNzx7zjjAgH49TXEcULj9Pbijllo5WM5YZ2/uf5PiG7Goz/jRyjOdt/tQDhowFIZswMMCx4Wm/Mw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1852.namprd11.prod.outlook.com (10.175.90.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 12:57:40 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 12:57:40 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Topic: [PATCH v3 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Index: AQHV1dqFbCPx79TfoEqT0jQK5BBdgw==
Date: Tue, 28 Jan 2020 12:57:40 +0000
Message-ID: <1580216189-27418-3-git-send-email-eugen.hristev@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3784100a-ce25-4ba6-29ce-08d7a3f1a8b4
x-ms-traffictypediagnostic: DM5PR11MB1852:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB18524BA9BEFD873AB77E35E1E80A0@DM5PR11MB1852.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(136003)(396003)(346002)(199004)(189003)(6512007)(2616005)(107886003)(76116006)(54906003)(91956017)(110136005)(66446008)(64756008)(66556008)(66476007)(66946007)(316002)(8936002)(6486002)(186003)(5660300002)(71200400001)(81156014)(4326008)(2906002)(81166006)(478600001)(36756003)(86362001)(6506007)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1852;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oWJjfWvDvCCQadEilKoPLCiwPNRK0XhxlfeUVX+A1xz0+vLDXypl9r4R/0DSvJ60GoT0DMaCZR/oW59KbqduexTw/0MtU6gqqsSt81dZttDB6Av2XE5YI/uifALJQSOwZadBr6iYkGEjBG+kBe3nHxRZ3xfEZbQYcVejteNWesUC9/khJN3rUA3VM4VScS1EFaAHQukBEtcA56EAIIsWbR31WQmEuXg8KEDwRD6s9lsDdRCOsJvSqmVbPsVCUDpG4j0ZZEE41SuBcKWNR6aXQaeyDjPiSRXdVRIbPexzgGhWzaqkVM7Cjl8ALjWCZsukSr61uepsWIU1XlLiiDzvzeUeOEstHBpMoBoo69w4zrodVgmytm30afrnsyRVOqCWds77NmZyRLtCHk342xYlXScVGG97dtDiuWfliSFamqotiGFO8fJ9FDn6BHpeuzqG
x-ms-exchange-antispam-messagedata: wbZnnKHKulGMvYMxNKN51pEdnTyZGIloeSOoEnbgCuE2jQruFrxQSNsut1QhcxyVOjc8GX89PQ2x3gvHRI4Y2ubtC0A1lauSoqGd/WSnNFIK2WGQ31g7DLjwmYg1Fco8+2C0EoratAOSrVrKpZiRDg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3784100a-ce25-4ba6-29ce-08d7a3f1a8b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 12:57:40.4711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Awa0eQYIg6q3o9KvpMUkoZkj0wFXFLPHJqHvqCUwg0crhCCBidfP+dJ11ZAT0Q30KK4wde/nxqesmkvk5iuUvPQl5TSJ9HkKNGVAn9p9Meg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_045747_697039_57DF1A77 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, alexandru.ardelean@analog.com
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
Changes in v3:
- rewrite some code as suggested by Jonathan (w.r.t. state and dma enabled in
configure_trigger
- move back enable_irq in reenable_trigger : looks like it was a leftover,
thanks Jonathan

Changes in v2:
- move start of conversion to threaded irq, removed specific at91 pollfunc
- add timeout to channel mask readiness check in trigger handler
- use DRDY irq instead of EOC irqs.
- move enable irq after DRDY has been acked in reenable_trigger

 drivers/iio/adc/at91-sama5d2_adc.c | 62 +++++++++++++++++++++++++++++---------
 1 file changed, 48 insertions(+), 14 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index 2a6950a..49c2b9d 100644
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
@@ -746,25 +764,23 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
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
 
+	/* Nothing to do if using DMA */
+	if (st->dma_st.dma_chan)
+		return 0;
+
+	if (state)
+		at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
+	else
+		at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
+
 	return 0;
 }
 
@@ -781,6 +797,7 @@ static int at91_adc_reenable_trigger(struct iio_trigger *trig)
 
 	/* Needed to ACK the DRDY interruption */
 	at91_adc_readl(st, AT91_SAMA5D2_LCDR);
+
 	return 0;
 }
 
@@ -1015,6 +1032,22 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
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
@@ -1281,7 +1314,8 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
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
