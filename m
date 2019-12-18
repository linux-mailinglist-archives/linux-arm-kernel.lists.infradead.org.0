Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D36124D47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ3y2TvhYlBGZUAGuwwDpsKyHKYIs7vc6zaHLqbN2GU=; b=UbHhs7rJPXqWCM
	pPebXSsVQXcIaam7MQhf8zZIInVr4vp0fHuK4y3DcuZVKKMNkHyUZpDcvTnnQWrAxJFv3Uyt5osvx
	pM3WiKkppdn+Yv+e+dkBg3ueGc0yfIoDWK4Wv5wcYDadJpbsEriNT/kCHdPZ4sVn4qeCEUAQYRj3B
	WqUegXJLUVf7FRa8qVrajMXY889TpYxDVzqLB5aqmjIh/yJwyDQYT7BzQd7v/J1hvOLAUinD1Dmw4
	MIgK0xnXuGMLC9rNaz7Wt0fR1J6Fa3xA3VVh2YJJYXi0oZO1bOypfOHBf52A9evpQGe55XLKIsRYD
	Nkx2+H1/R/QYTPeyAAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihc9V-0000sG-UZ; Wed, 18 Dec 2019 16:26:21 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7M-0006iM-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:10 +0000
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
IronPort-SDR: PcQEKEfSyTfD+XhAm0uOOD5LGVV+SiqiT71XH9TdgR2Wrbugw2KE4w/ElpY92XDKLUIrcdF92F
 pjJdO31HdRg7qYhH3DYyl0d89WKtElFybZDjJpVODXqdKn07moBj31wPEqmJxFT1HRbtU/gGbj
 5r7So9UyBeGE4t+Vt7QSPiDn0WfYrko2R8jWowINaH5ufIhndHAVV2vx2ZPvhHpOHM6gP8ly26
 wAOcoWA3Zb8lJ9a6rsDfiz/RbPigIi6HBBKE4FSp9nqu6+gMujL9pHpqgatGNMRg3XfQF2Sp4E
 W6A=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="60223176"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOeP6BA/qVSPQqBZv6UjNPM5Fehxc4fhb247rnTjDVC+BDuas9ex33HMKfPE9AkRMsUlmqKXgvrcnlfhbaxz1bCNOhZ9Ab/CY7ErlBOKkeQePtvG6a5WC1azSQDmbt7qcaXaOHM4EowA322BwsR69nEBs48n3f3Ua4m0FNqcoDBoOQPOiKnYhtqi/52Qv1YlgNrLjWdWrv7aC404z7x+3NIiekMmUNzzRpBO+z/0IJbBuoU28oiAJ/sURPIXk0edeJg2+q5xm/qwJetQ1iIIpNxBrp3WU8Ve0oRINJnis1hW0JcOERI3icugk6KyUOvemdLIUEfpR52UEutyW+K5jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJqTrSHZ7TbZm2JF06kDVV71UCjwadk6kmq23nwf1Xo=;
 b=ZAiUHH4SuBp6Grw+HcBWX8IO+D6BRwEKKM9bGSKseKcR3ZI91yZdCbLjnaFnFzK6k/xu5AaXgbMKmO0UWUyhHiJ3G2dUqr3jjsY94RnN1MFK8Qj/n07h+333d7H/5fF1ggXjxUlXj9ESqmM5MuxXYXHQms/OXFtJ/iFQjzHBjevwq2R9WBH/0ax5wQ1lZ/+VfxcQnaBxuyWSJfio+lcizSQm5R1BLlw6xeBqjF/LzwlOchBqQIaPY8gb73R5k0O1V0Y4KbWM/S/zDFCr0lnbznFGt/LocMveUIahAJ3dboJx/5qzZnuNyMSORoKrNYC6FqbkXVLcHlj57/YT8x0MsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJqTrSHZ7TbZm2JF06kDVV71UCjwadk6kmq23nwf1Xo=;
 b=T8Qio/2xqykdAtJHWqn4JfGEPXTWG1WEIgswCK83wnYw+3Jb2ytX+/p/mAz1VS0i7KvTmY/ANlIvOQ8tgr0KHeiEabjILa3dZysrXryuTr7o2U0VXLAQIiHDVSgSu4AhY0GMdE47K31oq84VndO9HCMMpJUScxw5/jT5olHI6Bg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1769.namprd11.prod.outlook.com (10.175.87.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Wed, 18 Dec 2019 16:24:04 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:24:04 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 08/10] iio: adc: at91-sama5d2_adc: implement RTC triggering
Thread-Topic: [PATCH 08/10] iio: adc: at91-sama5d2_adc: implement RTC
 triggering
Thread-Index: AQHVtb+PY+2GOhnEgUmPI9B1JjcPqQ==
Date: Wed, 18 Dec 2019 16:24:02 +0000
Message-ID: <1576686157-11939-9-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de9518a9-816d-4edd-7cd3-08d783d6b2f0
x-ms-traffictypediagnostic: DM5PR11MB1769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB176945A1A774BFD9FD46B209E8530@DM5PR11MB1769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
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
x-microsoft-antispam-message-info: auXWNrOB7IiMQ6Qv3HJfkGHrvtg5CcOwKG8HCoUvXhr9C12luOXCnO7eI8j1+mdwSYrtAnPn1mQVIcE/v7xXLucIO9exLfhqJxliJMUMNhSR1qTnzAskSTFyZy3/n/ZuagUEVK3akN2iTOy6XSk/2WEaQnjcZzUMhXz/Yo/6Q+VzzOSHwietMXNvvHqQLvp8nTS10qac4u3d4q3wzegOfVSNvfNGD1fHs8TjxiATD2akOiKM1d6KDtVKMXTJo0cObipjUyJ3YsUtnmqmuvjmdQxapWelXUssF4IPIvJ/LKg6r4z3TTdHH7d2oem71AoJZCcGEcuoFm73aztMIQmDxm7RPBa1TxRl8VnzUEPp/o6GpfOkICqgnh0HnJ9REUmUwpJqeasi4xJXYTi8Kq3/cn/53Fhs0LraKYD/7m/6h0ToQJ7wfuj9OMPi8jWLABmm
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: de9518a9-816d-4edd-7cd3-08d783d6b2f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:02.8277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A0M66B1eUg1QrnZYRG2LpBybtxzJc7NO2O2LkE5DN0XBta2ZvbT4BLM2sN8WlJQJ1eA7DG/Iot0Z6One3E3gTVVUUCTvd1WWXvRjbSbyQJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082408_616307_FB264026 
X-CRM114-Status: GOOD (  15.72  )
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

Implement the property atmel,rtc-trigger which provides a phandle
to a RTC trigger.
To make it work, one has to check at buffer_postenable if the trigger
the device is using is the one we provide using the phandle link.
The trigger mode must be selected accordingly in the trigger mode selection
register.
The RTC trigger will use our IRQ. Dedicated hardware line inside the SoC
will actually trigger the ADC to make the conversion, and EOC irqs are fired
when conversion is done.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/iio/adc/at91-sama5d2_adc.c | 109 +++++++++++++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index ccffa48..ac97f4a 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -58,6 +58,8 @@
 #define	AT91_SAMA5D2_MR_TRGSEL_TRIG6	6
 /* RTCOUT0 */
 #define	AT91_SAMA5D2_MR_TRGSEL_TRIG7	7
+/* TRGSEL mask */
+#define AT91_SAMA5D2_MR_TRGSEL_MASK	GENMASK(3, 1)
 /* Sleep Mode */
 #define	AT91_SAMA5D2_MR_SLEEP		BIT(5)
 /* Fast Wake Up */
@@ -195,6 +197,8 @@
 #define AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_FALL 2
 /* Trigger Mode external trigger any edge */
 #define AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_ANY 3
+/* Trigger Mode RTC - must be any of the above 3 values */
+#define AT91_SAMA5D2_TRGR_TRGMOD_RTC AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_RISE
 /* Trigger Mode internal periodic */
 #define AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC 5
 /* Trigger Mode - trigger period mask */
@@ -407,6 +411,8 @@ struct at91_adc_state {
 	struct mutex			lock;
 	struct work_struct		workq;
 	s64				timestamp;
+	struct device			*rtc_trig_dev;
+	bool				rtc_triggered;
 };
 
 static const struct at91_adc_trigger at91_adc_trigger_list[] = {
@@ -737,6 +743,42 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 	/* set/unset hw trigger */
 	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
 
+	status = at91_adc_readl(st, AT91_SAMA5D2_MR);
+
+	status &= ~AT91_SAMA5D2_MR_TRGSEL_MASK;
+
+	/* set/unset TRGSEL to ADTRG */
+	if (state)
+		status |= AT91_SAMA5D2_MR_TRGSEL(AT91_SAMA5D2_MR_TRGSEL_TRIG0);
+
+	at91_adc_writel(st, AT91_SAMA5D2_MR, status);
+
+	return 0;
+}
+
+static int at91_adc_rtc_configure_trigger(struct at91_adc_state *st, bool state)
+{
+	u32 status = at91_adc_readl(st, AT91_SAMA5D2_TRGR);
+
+	/* clear TRGMOD */
+	status &= ~AT91_SAMA5D2_TRGR_TRGMOD_MASK;
+
+	if (state)
+		status |= AT91_SAMA5D2_TRGR_TRGMOD_RTC;
+
+	/* set/unset hw trigger */
+	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
+
+	status = at91_adc_readl(st, AT91_SAMA5D2_MR);
+
+	status &= ~AT91_SAMA5D2_MR_TRGSEL_MASK;
+
+	/* set/unset TRGSEL to RTCOUT0 */
+	if (state)
+		status |= AT91_SAMA5D2_MR_TRGSEL(AT91_SAMA5D2_MR_TRGSEL_TRIG7);
+
+	at91_adc_writel(st, AT91_SAMA5D2_MR, status);
+
 	return 0;
 }
 
@@ -866,7 +908,8 @@ static int at91_adc_dma_start(struct iio_dev *indio_dev)
 	if (st->dma_st.dma_chan) \
 		use_irq = false; \
 	/* if the trigger is not ours, then it has its own IRQ */ \
-	if (iio_trigger_validate_own_device(indio->trig, indio)) \
+	if (iio_trigger_validate_own_device(indio->trig, indio) && \
+		!st->rtc_triggered) \
 		use_irq = false; \
 	}
 
@@ -884,6 +927,18 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
 		/* touchscreen enabling */
 		return at91_adc_configure_touch(st, true);
 	}
+
+	/*
+	 * If our rtc trigger link is identical to the current trigger,
+	 * then we are rtc-triggered.
+	 * Configure accordingly.
+	 */
+	if (!IS_ERR_OR_NULL(st->rtc_trig_dev) &&
+	    st->rtc_trig_dev == indio->trig->dev.parent) {
+		at91_adc_rtc_configure_trigger(st, true);
+		st->rtc_triggered = true;
+	}
+
 	/* if we are not in triggered mode, we cannot enable the buffer. */
 	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
 		return -EINVAL;
@@ -947,6 +1002,17 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio)
 	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
 		return -EINVAL;
 
+	/*
+	 * If our rtc trigger link is identical to the current trigger,
+	 * then we are rtc-triggered.
+	 * Unconfigure accordingly.
+	 */
+	if (!IS_ERR_OR_NULL(st->rtc_trig_dev) &&
+	    st->rtc_trig_dev == indio->trig->dev.parent) {
+		at91_adc_rtc_configure_trigger(st, false);
+		st->rtc_triggered = false;
+	}
+
 	AT91_ADC_BUFFER_CHECK_USE_IRQ(use_irq);
 	/*
 	 * For each enable channel we must disable it in hardware.
@@ -1153,8 +1219,15 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
 	else
 		ret = at91_adc_trigger_handler_nodma(indio_dev, pf);
 
-	if (!ret)
+	if (!ret) {
 		iio_trigger_notify_done(indio_dev->trig);
+		/*
+		 * RTC trigger does not know how to reenable our IRQ.
+		 * So, we must do it.
+		 */
+		if (st->rtc_triggered)
+			enable_irq(st->irq);
+	}
 
 	return IRQ_HANDLED;
 }
@@ -1166,10 +1239,13 @@ irqreturn_t at91_adc_pollfunc(int irq, void *p)
 	struct at91_adc_state *st = iio_priv(indio_dev);
 
 	/*
-	 * If it's not our trigger, start a conversion now, as we are
-	 * actually polling the trigger now.
+	 * We need to start a software trigger if we are not using a trigger
+	 * that uses our own IRQ.
+	 * External trigger and RTC trigger do not not need software start
+	 * However the other triggers do.
 	 */
-	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev))
+	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev) &&
+	    !st->rtc_triggered)
 		at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);
 
 	return iio_pollfunc_store_time(irq, p);
@@ -1307,6 +1383,12 @@ static void at91_adc_workq_handler(struct work_struct *workq)
 
 		at91_adc_read_and_push_channels(indio_dev, st->timestamp);
 		iio_trigger_notify_done(indio_dev->trig);
+		/*
+		 * RTC trigger does not know how to reenable our IRQ.
+		 * So, we must do it.
+		 */
+		if (st->rtc_triggered)
+			enable_irq(st->irq);
 	} else {
 		iio_push_to_buffers(indio_dev, st->buffer);
 	}
@@ -1712,6 +1794,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 	struct iio_dev *indio_dev;
 	struct at91_adc_state *st;
 	struct resource	*res;
+	struct device_node *rtc_trig_np;
 	int ret, i;
 	u32 edge_type = IRQ_TYPE_NONE;
 
@@ -1737,6 +1820,8 @@ static int at91_adc_probe(struct platform_device *pdev)
 
 	st->oversampling_ratio = AT91_OSR_1SAMPLES;
 
+	st->rtc_trig_dev = ERR_PTR(-EINVAL);
+
 	ret = of_property_read_u32(pdev->dev.of_node,
 				   "atmel,min-sample-rate-hz",
 				   &st->soc_info.min_sample_rate);
@@ -1784,6 +1869,20 @@ static int at91_adc_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	rtc_trig_np = of_parse_phandle(pdev->dev.of_node, "atmel,rtc-trigger",
+				       0);
+	if (rtc_trig_np) {
+		struct platform_device *rtc_trig_plat_dev;
+
+		rtc_trig_plat_dev = of_find_device_by_node(rtc_trig_np);
+		if (rtc_trig_plat_dev) {
+			st->rtc_trig_dev = &rtc_trig_plat_dev->dev;
+			dev_info(&pdev->dev,
+				 "RTC trigger link set-up with %s\n",
+				 dev_name(st->rtc_trig_dev));
+		}
+	}
+
 	init_waitqueue_head(&st->wq_data_available);
 	mutex_init(&st->lock);
 	INIT_WORK(&st->workq, at91_adc_workq_handler);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
