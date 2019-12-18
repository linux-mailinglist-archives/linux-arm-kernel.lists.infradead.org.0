Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8CA124D45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWET+orsori+XuSLQ10RU2/jRjkTV7Z/uOKbbOG2o6M=; b=ne2wnRA0+jBqDS
	7jsphAlpRc5wCeXi2PoNO83Y9naENH3ZwgyV84lRnWW85AKPjXj2N4jBSyRGX9NLyV8B48kjcFYVv
	FZ4rp6bXZ+o8IuE417wBGNZRehhMyy3V3wyh+N2fowBMhTuHPHnIPme0S9yp5PezznhyFrw7KPJOv
	KGBwFi9nLwF3oDVclVGywodWmgvx0DNQdThc9mK81f9R45Uy/bs8V5XA5B5C6/zD1wgkf+i466pPU
	FxTYl/71NF2r8vH+JG57LYhyfuIFiDMCDKBi3Z+4BcJBjydw5lPP/SFkiBb1e/fJkIqdHtorrioTP
	OsQlE78w/CPiBqGW32Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihc9E-0000ch-1b; Wed, 18 Dec 2019 16:26:04 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7L-0006j8-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:09 +0000
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
IronPort-SDR: +u6qDxuasyG/sLATr7gig3NVxLPi5Hf/BVBghNr4+0+SUl1GbAiPn/vkFlNFhUV5HhBWTulXpn
 PAmzGhKBOaHVP2UyYx7KmqFZ/szL5AVpZ5kJ9w7t9Kp3GFAwMqtaVgMWjLIL/R3+HPjJ+HCfxb
 TLnKoBT3PNCsGTn/RMAZCOZDHvKu7HCSOxYXhGuZ68jddUtqRVvP+uXwapxHKusI23cxemdVoi
 RQx0iS3gzYCNZexkXs8DXBW6wPOf67nSrt97fsBFciUlTaJxD9RZTJTwdxXcn7YZtD+kJi1wb1
 B5U=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="60223162"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:07 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkI4qiqttvtQssF35t0VHmSJhY7V2wEyaziUDoBV5o6fe9e+P/i0eZQTyNywbqR5DS7zmD5wAS0odc3q7slQXrjIUy3SWnJ5ftbPPmUaaDJYDIPZ7Whm45Zn7tJEADvblRlPVXs1uYE3mhHEiErNSLcOHUHQVP/jEnC0fMazyGunXoBrYSnsWzemrLgUjU4E/bt/nZHuK9RDuQpNU+81k1yWkGvReTEEsYFXtaSQy5JbQbSBtHv93ZqsfehtZfH/BylExneRBHSi1MBshS7WI/O0MrVWY+6645beT/bfQwdX47U/LzF1j3MeGlZ2f11Usp65v8/haCVA9s8l7o3DLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BEv13w7JRiLck9fEGIRPyRUHMQ43WA1ktVlgQhqN48=;
 b=FpBVWupKVskPUkFs8kIyGio3CQ+b1ajWjUnRBVSETpUjfifa8qUKsLvweU9HE4rghku9Alxw/fm1bUs2Eg1VkcisVFQ0XTSO8NadGc65nE8kOy7JAGgG/KdgdN93nWcwQQmSoLOgKHicZ9SXR8gpUptSU12bdZo+kjp9VGpDPUeN463KOwqNJ2vIde0o0+EzwmzValTAFjregZndhu8HzaLAmrumlVsCEJdJeVBvga+q+6WQaRrGllHu4JEf2Ypn6S3FzFGKs9MrNgBAdlNDaCAVG4tGFz6G8wYkAObsAk1O6JunOFERg9lQVeWWp27OgxQT7ueW12wrHO6d6MSruw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BEv13w7JRiLck9fEGIRPyRUHMQ43WA1ktVlgQhqN48=;
 b=m9/aRdV0CgmjZ69rCjOgPnd8U3u67yA1rwseMOiflmDtm+WJ2sP7qaziXZCbvKJDDQ25kbq7yb2M7QQq9QvGgjr/ODW21PXfbL70kd7An0rXo9dRmP1dHUc0Q6f9MyRzqCmQwbtnTX+g78Cxoag05OqbX3SX7NPDw8F2tzCpgH8=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1769.namprd11.prod.outlook.com (10.175.87.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Wed, 18 Dec 2019 16:24:03 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:24:03 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 06/10] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Topic: [PATCH 06/10] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Index: AQHVtb+OsZRnT6XyDEmDjlFvS26mBg==
Date: Wed, 18 Dec 2019 16:24:01 +0000
Message-ID: <1576686157-11939-7-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc5c8436-1abf-4358-d823-08d783d6b21f
x-ms-traffictypediagnostic: DM5PR11MB1769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1769D479B4F66DAE3CF52085E8530@DM5PR11MB1769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(346002)(376002)(199004)(189003)(66476007)(66946007)(66446008)(76116006)(91956017)(2616005)(64756008)(66556008)(86362001)(186003)(316002)(110136005)(8676002)(54906003)(8936002)(71200400001)(81166006)(478600001)(2906002)(6512007)(26005)(81156014)(36756003)(4326008)(6506007)(5660300002)(6486002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1769;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bCkJtutP0xy68E4acZfq30j4VmYN2Nq+46TvoZU20ewDRoXLjMQgT8LrMOluBNkOyN8L5EYI3QRMyzuGLBss6pYdvjK9JjAUvlkBCRpTs/viIX8FgbFHmpzDEty4ZtadG1sGI2ABtsjCIHstb0YrtI+oYwT+p15SZ5wsitlYXJ6dOCyv+O6V1CFWbWNEUA1GJoKDkl9boHmf9IgnNtOds6KxRn+FwFS/kR3nUCV5R1kEwPLJAe0VbnP7+t5SgO3RLPmbYuIukLn/OVdaAIEa7on/qqpb4DtD/9t3WSUhqAWoxYextHhtUbizjzWyy6K55k+wfHFwpuM6h6bEafPoROCFMtShVgvYXZGb2eG8gI9wH42LNOkhLoaxLkXdS3ZkE0v4wso5a/Acr4bdMaiFblXypcd9H9o7qcD9N16gJTVw+nFI8UcNTwnpzDZ3UhMU
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dc5c8436-1abf-4358-d823-08d783d6b21f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:01.5143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G660RjdCDbWxNRYwl49ps7IP40kT02FrxHff87XVFsM/VCHlTE3pYI9B3JGcmNuBnbaPfexSBvi7bmQ2CcgFsUqpoxdXSeAHHM1QvUAgSy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082407_471481_6CA0480F 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
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
If it's the same, proceed and push to buffers. Otherwise, to avoid sleeping
in trigger handler, start a workq that will wait until all channels are
ready.
Normally, it should happen that in a short time fashion, all channels are
ready, since the first IRQ triggered.
The workq can stall in a loop if a hardware fault happens (for example
the clock suddently dissappears), but if it's a hardware fault then
even exiting the workq won't fix the hardware.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/iio/adc/at91-sama5d2_adc.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index c575970..a6b4dff 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -8,6 +8,7 @@
 
 #include <linux/bitops.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
 #include <linux/interrupt.h>
@@ -487,6 +488,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
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
@@ -1044,12 +1060,13 @@ static int at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
 					  struct iio_poll_func *pf)
 {
 	struct at91_adc_state *st = iio_priv(indio_dev);
+	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
 
 	/*
 	 * Check if the conversion is ready. If not, schedule a work to
 	 * check again later.
 	 */
-	if (!(at91_adc_readl(st, AT91_SAMA5D2_ISR) & GENMASK(11, 0))) {
+	if ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask) {
 		schedule_work(&st->workq);
 		return -EINPROGRESS;
 	}
@@ -1269,9 +1286,13 @@ static void at91_adc_workq_handler(struct work_struct *workq)
 	struct at91_adc_state *st = container_of(workq,
 					struct at91_adc_state, workq);
 	struct iio_dev *indio_dev = iio_priv_to_dev(st);
+	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
 
 	if ((indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES) &&
 	    iio_trigger_validate_own_device(indio_dev->trig, indio_dev)) {
+		while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask)
+			udelay(1);
+
 		at91_adc_read_and_push_channels(indio_dev, st->timestamp);
 		iio_trigger_notify_done(indio_dev->trig);
 	} else {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
