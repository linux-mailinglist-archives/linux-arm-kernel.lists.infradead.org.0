Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5043012F650
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrxpAlkNjlDTIBBEpDP5tJ8Yvq343JXINobUZTcDKb8=; b=jfwNXnrKVSKyOJ
	8sUsWNWLk8tI1duyCtukrOszpChmXdwufWZhk855qdc8o2D7BjO0DuzU+JKml6e/dAJoyGze+uV8M
	TG99Gnl2Q1pEdVDJHJ2ctkCmNYhM9UNMO7pR9nvlz5qdThTocKliICSRwvJa6lfigyCjbaIegBTAO
	syYPVuRVEC6GGSR/PBaOoA6vSWAEVsWE71GGW3pNDdbS+ZYsW0fBpTmiVbauMW5MC/7cWW/68mLqC
	v7vt45tDUXYw/5bvrbtKRs+U4SPXV2Bf1WJjlCHkgtSf7+yACMeCu+sN3xJRvvaSTWnz1M6PR4L6p
	M61KYaUdPmWMvo0ppQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJaN-00009k-Jt; Fri, 03 Jan 2020 09:49:39 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJZy-0008Q9-0y
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:49:15 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /X7ryBPnlJoKzdeuoZN5hdxhrmtpfRTLjBJpof4SC+EEz0cTu7+I1IQMtfkZF1OyjjST8EZxxF
 XZnkpxSUv3gfIj6reSG5bWCIMIa3icA+6v3oJUeZM73Gdvsk/vXfgc9J28cfTxWYGTHmwWYo21
 5k56nsyKSQgBxrEqeti5I/DrJNDn/13tZPAAD12M2r44x4c3fJKrEyz+f9wtJ0rbSukzufJoG9
 YFZgFN5FO0VX2JxyFUxNCNQq3U32ScWpHAXh6OK8SKhAsjBlVbBiTlHEndxXfY9A2vhd8iX+26
 mNw=
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="60069279"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Jan 2020 02:49:10 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Jan 2020 02:49:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Jan 2020 02:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gHLE/YGlWnBpERipTEej+os0T9TDls0B66MtA3HfC+hXNeH8kRPNWFVakcJeh7pFJQggi8rjYQzThlLlNkrMQGBir3ILrfAUy+Y6OAek5Cg7Jzb4SnDKU8WeVyqAAoXo00NtD2WhnSjQT+JHrba7xOjsLW6DNujSFCnJusP6Epebf96vGJyFFXATds0b5y1NEIVV1kbLNBjip0vcGcG0H1MqgbCFWp9Hn+FssRu03YVRmDaRvIjiXQmhmvXxBIjJ/bL+bI6nm3FwEfao2SCFwR4A+lRfpgw/JykTKH9RWp/A3lLz3W5jx+Ddsv4pBz5yZDCeSVpWugAGlQMhGVSYgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxCtcrCwWDKwNlQKPJIiIcCVxKPTfh1F28q3inb/ink=;
 b=TpTmG67zfBhbQlRK7LLT1uHlstokzQquvMAV15MlL5Zy0WlZswt7HkTO1SmIoirCRLhI567LxZKeCciU3BtX7qPkg2HCZoXUec2gZSvBx5BQHtdBHYCI2/icgQl2CRQJB97RkW605H0XhYP9IoIEHTUEB+isOAJCuFm9BH+Ktu7Iy2cM3fREwS8mKyxsbGlN0GQCm+WCbRORg3OLanc46oXZ+bxlcBdA8ttOFVuYFdYyI+5kHDQENYicdP+yISGtXBcxtJT+hGPGx1wb6SfLJiOUBmVcfDzIkoPHnmQQo1rcmTHeGN7YetsUdL5ImhN/kUiUNDxdq8QUrT0HTyypXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxCtcrCwWDKwNlQKPJIiIcCVxKPTfh1F28q3inb/ink=;
 b=RpWB7TwGYZgMr3u4n25evkYn3MxHfgjVnfJzIx95ugcLCluWGVJQxZ6TPgC/6G3CDMoMbj8/QRI+/cYP/6935Gx+ezwSzcUnx+6qoEjxhcNVHrH2JFmscBVSj9ZQeH94lhBmJd14ACKwF/G/ABS/ayOYiN0GznEj/Jv7Zcfld5w=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4322.namprd11.prod.outlook.com (10.255.89.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Fri, 3 Jan 2020 09:49:08 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 09:49:08 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/6] i2c: at91: implement i2c bus recovery
Thread-Topic: [PATCH v2 2/6] i2c: at91: implement i2c bus recovery
Thread-Index: AQHVwhsKxM62dO/65kaQpOISnuFHxQ==
Date: Fri, 3 Jan 2020 09:49:07 +0000
Message-ID: <20200103094821.13185-3-codrin.ciubotariu@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.143.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3fe6360-f8af-43ac-5245-08d790322daa
x-ms-traffictypediagnostic: BY5PR11MB4322:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB43220948F67106F2A9BDDD1BE7230@BY5PR11MB4322.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(39860400002)(396003)(346002)(189003)(199004)(36756003)(478600001)(4326008)(6512007)(6486002)(110136005)(54906003)(316002)(5660300002)(107886003)(186003)(66946007)(66446008)(64756008)(66476007)(66556008)(8676002)(86362001)(6506007)(1076003)(8936002)(76116006)(26005)(81166006)(2906002)(91956017)(71200400001)(81156014)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4322;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uMZ5FuNWzyhte8zKubUksQ4o3kOQvEF3SucBzi+eCaH6YPYRFR9mJkzFUQ7hVqZHpsz9FGGaWl50tZAg2KSP1Y+vQQpeYPZEDeG8QKcDmOUe7LT/3J+I1tTQV3ih2wxWwEGnOZuNdMz48iKn9FrRZoMcsns2/GvMgafOjM+ValWWlDoZoj29rMP1yplBbThcfsFDq0JKbe+I3VlLpfgvueiGjbNd/XELBgihxze/aQX9FJfnxB2I0ck8t5ftfmrGeR4W2WnUM235+VT0G8Ay8UjO8MresVichaOZ+yaq88Hsx9nARSyI0Wo1na7ajHyPWLtA8FCvSQW7xioTtd4g9K7HNA9ieFRLymXZ/+JnEv7dpu6MOwRG1GyZWytqD0Am5m4EkdmBi1Ov5fYN6wdpZusRVI0eTPmKb2+hWlbyoHky1/nRKTRV0+jf56hd7/8P
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b3fe6360-f8af-43ac-5245-08d790322daa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 09:49:07.3162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5jK8IfA3yIC/cGcbRwiC0iVn64PXmz59StYsnAzM2wBgJmZd/CCgvJpo0uZBwI8mTAQ22pQEbqnvAp3QxHm2CWvHzwgpRpMt66cVqG16RTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_014914_133780_EA69F652 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 wsa@the-dreams.de, Ludovic.Desroches@microchip.com,
 Codrin.Ciubotariu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kamel Bouhara <kamel.bouhara@bootlin.com>

Implement i2c bus recovery when slaves devices might hold SDA low.
In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
until the slave release SDA.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
[codrin.ciubotariu@microchip.com: release gpios on error; move i2c_recover_bus]
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---

Changes in v2:
 - called i2c_recover_bus() after an error occurs, if SDA is down;
 - release gpios if recovery information is incomplete;

 drivers/i2c/busses/i2c-at91-master.c | 79 ++++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-at91.h        |  8 +++
 2 files changed, 87 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index 7a862e00b475..c55e8ff35201 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -18,11 +18,13 @@
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
 #include <linux/err.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/platform_data/dma-atmel.h>
 #include <linux/pm_runtime.h>
@@ -478,6 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	unsigned long time_left;
 	bool has_unre_flag = dev->pdata->has_unre_flag;
 	bool has_alt_cmd = dev->pdata->has_alt_cmd;
+	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
 
 	/*
 	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
@@ -637,6 +640,13 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 		at91_twi_write(dev, AT91_TWI_CR,
 			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
 	}
+
+	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
+		dev_dbg(dev->dev,
+			"SDA is down; clear bus using gpio\n");
+		i2c_recover_bus(&dev->adapter);
+	}
+
 	return ret;
 }
 
@@ -806,6 +816,71 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
 	return ret;
 }
 
+static void at91_prepare_twi_recovery(struct i2c_adapter *adap)
+{
+	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
+
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
+}
+
+static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
+{
+	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
+
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
+}
+
+static int at91_init_twi_recovery_info(struct platform_device *pdev,
+				       struct at91_twi_dev *dev)
+{
+	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
+
+	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
+		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
+		return PTR_ERR(dev->pinctrl);
+	}
+
+	dev->pinctrl_pins_default = pinctrl_lookup_state(dev->pinctrl,
+							 PINCTRL_STATE_DEFAULT);
+	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
+						      "gpio");
+	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
+	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
+	rinfo->scl_gpiod = devm_gpiod_get(&pdev->dev, "scl",
+					  GPIOD_OUT_HIGH_OPEN_DRAIN);
+	if (PTR_ERR(rinfo->scl_gpiod) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
+	if (IS_ERR(rinfo->sda_gpiod) ||
+	    IS_ERR(rinfo->scl_gpiod) ||
+	    IS_ERR(dev->pinctrl_pins_default) ||
+	    IS_ERR(dev->pinctrl_pins_gpio)) {
+		dev_info(&pdev->dev, "recovery information incomplete\n");
+		if (!IS_ERR(rinfo->sda_gpiod)) {
+			gpiod_put(rinfo->sda_gpiod);
+			rinfo->sda_gpiod = NULL;
+		}
+		if (!IS_ERR(rinfo->scl_gpiod)) {
+			gpiod_put(rinfo->scl_gpiod);
+			rinfo->scl_gpiod = NULL;
+		}
+		return -EINVAL;
+	}
+
+	dev_info(&pdev->dev, "using scl%s for recovery\n",
+		 rinfo->sda_gpiod ? ",sda" : "");
+
+	rinfo->prepare_recovery = at91_prepare_twi_recovery;
+	rinfo->unprepare_recovery = at91_unprepare_twi_recovery;
+	rinfo->recover_bus = i2c_generic_scl_recovery;
+	dev->adapter.bus_recovery_info = rinfo;
+
+	return 0;
+}
+
 int at91_twi_probe_master(struct platform_device *pdev,
 			  u32 phy_addr, struct at91_twi_dev *dev)
 {
@@ -838,6 +913,10 @@ int at91_twi_probe_master(struct platform_device *pdev,
 						     "i2c-analog-filter");
 	at91_calc_twi_clock(dev);
 
+	rc = at91_init_twi_recovery_info(pdev, dev);
+	if (rc == -EPROBE_DEFER)
+		return rc;
+
 	dev->adapter.algo = &at91_twi_algorithm;
 	dev->adapter.quirks = &at91_twi_quirks;
 
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 977a67bc0f88..eb335b71e775 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -151,6 +151,10 @@ struct at91_twi_dev {
 	u32 fifo_size;
 	struct at91_twi_dma dma;
 	bool slave_detected;
+	struct i2c_bus_recovery_info rinfo;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_pins_default;
+	struct pinctrl_state *pinctrl_pins_gpio;
 #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
 	unsigned smr;
 	struct i2c_client *slave;
@@ -171,6 +175,10 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev);
 int at91_twi_probe_master(struct platform_device *pdev, u32 phy_addr,
 			  struct at91_twi_dev *dev);
 
+void at91_twi_prepare_recovery(struct i2c_adapter *adap);
+void at91_twi_unprepare_recovery(struct i2c_adapter *adap);
+void at91_twi_init_recovery_info(struct at91_twi_dev *dev);
+
 #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
 void at91_init_twi_bus_slave(struct at91_twi_dev *dev);
 int at91_twi_probe_slave(struct platform_device *pdev, u32 phy_addr,
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
