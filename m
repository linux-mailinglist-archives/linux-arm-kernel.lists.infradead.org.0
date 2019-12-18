Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CBE124D81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRBXWkzBVlUnjb5CzCc4yiR+x/Ycj/OOnwF3cmZ/QdY=; b=qvVjWL5YRBFbvW
	e7ltCMfezqEnfWBYKqyh4lH07jJLSrSGGNFxcYrGBOd9os7OMB7w/k368b0eKADbmiClbLt6W1ha8
	fZ+0YTpZKeSqZ0K9sbo223mw5W0P61eOLWrZpNySD0ybKOj9+G5sGXdrajHwajBCwDUGh9nUOTBeS
	lY1pcDS+qqTuqRyMHzK86lv8OB6Pc1IW2M6tlrYYQzIxZCmfQl26pQ07O3mxzSLsiSPO2jC8GRgMy
	OqDgIrIedZNOMXN3DNargxksUvlSoHj0G64uAntXZIn8Md6EozyrUCvfbtH5SFTqNUlFajo4bFrlE
	IoSmMrfJk15d8MQ8TiAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcAw-0001qt-Sk; Wed, 18 Dec 2019 16:27:50 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7P-0006ig-Dk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:14 +0000
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
IronPort-SDR: 54t8XRM829Q2q/CWuqD/LrgHY2/4F1miElyj+WbnYMSQTkqDteWZLdC9VsgsmdD2lLDoS/bfq/
 wkUbM4GZeXTvdFW0YGmCnaRee/JgoBx7dhDJ8qjEBYHihfpi+XwMcp9nvpCpILn0T8RTf/wOfT
 ZgBFRhHOwBaGPi5MT0pGBo+kecAeIbrrGsLiwNQDKJ9MggGGSinoqDVOEifgOilWn682xgucjj
 HuXy6K6pTB+unqVg/QdGYUz7fbcf4uyS2N6VrPwUj+QW2moX0b78IdPI7V3h2YqXQp7WqdQPiF
 STM=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="59426831"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofKReA+c+mO8H6rxGzY9S5ANOykX+6h5qyZgQnatylGxsv/1lvOHtQuyGcOTJTQMwQfzsnymTlAGn5+6E+BZGWOcxjIHSKzRRkBSeTd5eSnuIXiUOWSQfVYR3LjM4WRao3WLNMxn+npxIzsnYzGa91jwkAfaAnh7FmLDb1SaUS7QBLWgNktpZj0XZeUDsPkK+ERpmQT4ZaMnaVbNsJ6i/5o3U0okAcwFL94EnqHsI+cUNcIA9b2R/JmJTyCjA7xYCCMtLqsaKgpcXh3Gj8kau0NanlCpwVTe27EJ7LAk+V1nBBymx/ImF6Z1ixza2xBKmd+aEid+hEFEtSC1qM0/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=McsuxWfwAiDTwpWDkwexX3EQK7P5A7czExPwE95bd/k=;
 b=hdozcbTDDTTaDss4rCRZVgVtblJnQiWSqdO026MOGQZr5PUHqTnRZgOU2WsDLKjauGYFkbg3h1RzGacTW8ciPnUaLySk7jwoV8N/VwSnRVT7zrFZJtJyPUKY5hr+Bsn8SD4vTTHDBqtGp/KfPMGGb+D9zXiYFCD9CG4N2JUdW1TAEqsdYTblMFSACaZxYGTvaGfvUIFVSitHA2HJfG9yRHbXM+Rnv1d5I1ZTL1jIB9fi8RmuIa/5W9qUrum/DHP17oIjM28rW5Bawp5H60vIhglu+zoeOWnjdJNi47uIjjh45oQCStrmhOSWkYij1H0OxT1y8PEiLnp95OCna29HEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=McsuxWfwAiDTwpWDkwexX3EQK7P5A7czExPwE95bd/k=;
 b=WfbfkTHosP+S2fneiaHS/bZtoa/uOtBS08IxzmLCrUoJy6efVg9b/7xCVFw05j78IBmZIOXcNI6cDeFmLtL87/Zh7CsFs8XaaT257Yeihl+nDJrYvZIbcd1fRBcXM+gqIW2jjAKzkBQjoAjvJ2FyGyopKXljLcI/h/elmMPDfZI=
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
Subject: [PATCH 07/10] iio: adc: at91-sama5d2_adc: fix differential channels
 in triggered mode
Thread-Topic: [PATCH 07/10] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Thread-Index: AQHVtb+PmhwCEX7J1UOzKiW28GxaNQ==
Date: Wed, 18 Dec 2019 16:24:02 +0000
Message-ID: <1576686157-11939-8-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52e8501c-9637-4c66-d7fd-08d783d6b289
x-ms-traffictypediagnostic: DM5PR11MB1769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1769DD52BB85ED7A7DC70C78E8530@DM5PR11MB1769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
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
x-microsoft-antispam-message-info: Udr616FaIBeDmaSkpQNCsm7NPPt9RRG+WunS1+bI5x6eTtAsAyBQMqBEXxEFz7Un6h55ouGvPRwxdl9MYyE3+/i3V3Dd7WnZSzLjkaxyfgJh5Aey68AOJV/N4f8delzWXm5FYahECd1+y4hV17fM/vp71D5w9+FSBWfjHWAJ117D/xEeMm+/juP0hevnZPbkVQDxYN8jiiHKaKF8UwxA7BhISrxmtZwfRgxNwasAj2ZCRu8K58A3n2tDfv2EhqtD9NKlPu4QdrKzlHm5y2MTKb/Sd/9YwewL7pt9iW+E4qND4nPWhgxVAOtyU8T3QYIFmH0F7OBD1k7cbeC0hT8Kwv8kTnlpJCcJDNyXyX1n09fUtlc3WDAiQfdPxQ36wsc3XHvopIudjw2Y+0JhuPL9Fenwz72oQaQWC5pbk9ZUyASp5Y1VUjeUl316fz3lY5zT
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 52e8501c-9637-4c66-d7fd-08d783d6b289
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:02.1770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VL92VuJQSbOkmkVR5Or1deDyjvDpthl4dMu0WUQS9Oj0hk5/px4q1mAORgPOxHQ6lBYPrBUDuMicr8wO6IwHsJ29vJ+jPlFiyugDCsJBqfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082411_532379_31DD2325 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The differential channels require writing the channel offset register (COR).
Otherwise they do not work in differential mode.
The configuration of COR is missing in triggered mode.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/iio/adc/at91-sama5d2_adc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index a6b4dff..ccffa48 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -900,6 +900,7 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
 
 	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
 		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
+		u32 cor;
 
 		if (!chan)
 			continue;
@@ -908,6 +909,17 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
 		    chan->type == IIO_PRESSURE)
 			continue;
 
+		cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
+
+		if (chan->differential)
+			cor |= (BIT(chan->channel) | BIT(chan->channel2)) <<
+			       AT91_SAMA5D2_COR_DIFF_OFFSET;
+		else
+			cor &= ~(BIT(chan->channel) <<
+			       AT91_SAMA5D2_COR_DIFF_OFFSET);
+
+		at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
+
 		at91_adc_writel(st, AT91_SAMA5D2_CHER, BIT(chan->channel));
 		if (use_irq) {
 			at91_adc_writel(st, AT91_SAMA5D2_IER,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
