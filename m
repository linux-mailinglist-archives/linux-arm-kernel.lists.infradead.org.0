Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B3C1390C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5ynfmjH8LtAdiotfRmLigzcsKv1hNFGSWUIfuyD3vs=; b=lGg9/FNmBTA1LL
	O15iQBC5q3f6op9+AICGlLibSZYY2IspL2nmmnYnylzTYcuzxHFeRaRVJ/unOHdomScOa2qWWBaBV
	7q0xaxAPVr6BkqfN7Q+v0IG+09JaWF/mJQ2E24tBncfzdQ0eo1adRAgsBQ87sZiDDtjcFJ3KILd8e
	tNdFZ45VYoehAz/4DNmF/I44NLOjGDdBfZnjX/wke/Os9MQWK7LrcRByr49IMoc/ydLAh0rpPmWjy
	R6tfa13YRjqw9n8vaN7hshO/X5+meFhBw8h6NS5JUR/Oe48zaw40iTLvt16xoNy/9IPo3bGseQt2V
	IUpQH6b8kuK81QNud3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyVh-0003Ku-Ic; Mon, 13 Jan 2020 12:07:57 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyV5-0002uW-VG
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:07:21 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: fVJd0b1CloIcHjHJPApKxKNMuM9bVv8Z3YH9zpjpFEfVegyPCR63ApH/ZdyQPIO62O6OsnQc4X
 +6Y744YPClMM2BrpFCNZXrJvLdc4MsX0/aeGzIPuUhrVkKvlaFkzK0g76nVp1XFwEgzju9Kvbj
 DM0bbGveehVNLBP1zSnNbiTG25lMzCghRMXK4UjarYugx3I572C247jYP1aUEvkJ4szIeAU447
 7p6NiNB5Cd+85X/4gPlpqY/h7KnkgqME3dEa8yEG6GnTHI6VpyyO/0BSm1kJhh/TJ+BLufKiUf
 XCY=
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="60892615"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jan 2020 05:07:18 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 05:07:10 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Jan 2020 05:07:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uk0nH+n5Cbv9ZeVC7nwOKsso/GxNl61QKiEfjspbTToqL3JQ6cz39zYYWEJJBGN7g3nMVmqaS7vqbAP54qBE2Pt/LQj3Nk+C7cPQubRqwn4sYLGAbCmrC7jM882SvJ+BGV+mhp2XTTPB2UsKi5MUDXfK7YQ2EV+8xdd1p3NabkA9ifvaQpNCPqq3TAX3t/pODJowBzbuWtst83fwVB/zXIBet+06857SiL+NN/6feqVQLVoqX61Gn0WADDRmpF3eqSuCdkJxa8ynNPXFgrtC2RFdDdAAoiZjLYbeTCQxyxa6bznQEoKhq0DEDLIZbbPkLLpJ/1nKx15QxDIhz68isA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhs6f7oQUwU0gOwRfNxmUhiZW5v8xRmmgy/AsreIpWU=;
 b=GNZPXt3rM1qDSSkpHPOno1kf669k7IRbhjqxGtQ4bgRAcwVR78t9LXZlMJ29u5BKptAIh+wN6XYIdi40sKZpSf41+KQPcnp+mO3r+YHGeAsgdiqvwS27fMul9hJMrETQ1QUs4qqml47qFW4DJWjEFTn7r+w5u4MeDops27QF+GzcijbYlDN29PMRvOHO2xSDuVUD55cyfI37C5piQ6BrjmQ5WNtUPoY9/TccQHJdWTZkkOOjQe/quu8GbO0q5oZcLZANGrQEqAw4ArrnaR4mxCwIx6EMgWNZGtLXqRvNwZuMgNquhMy8bjpwmwwZdLGZCgaM20tZP2jaVlxne4zg7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhs6f7oQUwU0gOwRfNxmUhiZW5v8xRmmgy/AsreIpWU=;
 b=UpulOZ/DK8bL2AEp7eg9x2pTpJLy/mWMpX78G2/wOli5qXUnVqJlyrIB9PHQj6O6dhVKfOgqgqXb8ueb1CzScDeCk5GQGMexTRErSfPsDdglUoXBxybEc7aot4OQ1PJG3FVswumSUIFd+XfYqdK9VSiGQ+gUl8GlCtW8LouhHu8=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0011.namprd11.prod.outlook.com (10.164.155.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.16; Mon, 13 Jan 2020 12:07:09 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 12:07:09 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/3] iio: adc: at91-sama5d2_adc: fix differential channels
 in triggered mode
Thread-Topic: [PATCH v2 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Thread-Index: AQHVygn64v98utrynU+d9NR0RxZ56Q==
Date: Mon, 13 Jan 2020 12:07:09 +0000
Message-ID: <1578917098-9674-2-git-send-email-eugen.hristev@microchip.com>
References: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0b41806-c7a0-45e4-58f0-08d798211dad
x-ms-traffictypediagnostic: DM5PR11MB0011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0011676305A150B7318D481EE8350@DM5PR11MB0011.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: LgDJQNNd3KiwO5xLeb6rASKkkBrmeCHhUco0jh2YVk4xM5130wJn0gZ66M1F4MiB1Pc+4ls+ZBbK8qsPhMDFSKlg5zzyC/gKmNrxUk56cYZ7aL93YehLWaIiDR7T4WaZEjZTFc6X+WzdN7IRExCOHjCU571lcr7SZJIW46W4h3GjcrpeaZwn3nMaqbXgDUPHdZw5ETVVvxo0fTuJojjWWmwIgkOymnhULG8qgQLTvD7BLKsLNz70g1KO+E7FbyX/Ot7wFxuG3886VoWjRV2E8OObSXQK/Yqo1yDGLdADWgfxKRqrDCFH8EvltgjClYfE9BjsfhPWiYoKJU/0qUVDGQ9vyWGPon+D4sTX5wEcU0dx27Cqm0d/P6k6mLE0WodXb+9VMiC6JZ9wfcqil/cvWAqBuUx7SxXU2NJADpn65fEwDIh0fS/2qNsIJJf75MwQ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b41806-c7a0-45e4-58f0-08d798211dad
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 12:07:09.0479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3L22SPLk5w/983hIWbDBlRcImC1ULPpf9U0qjWHBsOqpY7OCLTbR7ll50MhrQeWsIzozDkV64KpfbQze5VJmIAS7fHNg0djSLu3PXJl7aaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_040720_041838_3A09566E 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

The differential channels require writing the channel offset register (COR).
Otherwise they do not work in differential mode.
The configuration of COR is missing in triggered mode.

Fixes: 5e1a1da0f8c9 ("iio: adc: at91-sama5d2_adc: add hw trigger and buffer support")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v2:
- moved to the start of the list

 drivers/iio/adc/at91-sama5d2_adc.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index e1850f3..2a6950a 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -723,6 +723,7 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 
 	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
 		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
+		u32 cor;
 
 		if (!chan)
 			continue;
@@ -732,6 +733,20 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 			continue;
 
 		if (state) {
+			cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
+
+			if (chan->differential)
+				cor |= (BIT(chan->channel) |
+					BIT(chan->channel2)) <<
+					AT91_SAMA5D2_COR_DIFF_OFFSET;
+			else
+				cor &= ~(BIT(chan->channel) <<
+				       AT91_SAMA5D2_COR_DIFF_OFFSET);
+
+			at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
+		}
+
+		if (state) {
 			at91_adc_writel(st, AT91_SAMA5D2_CHER,
 					BIT(chan->channel));
 			/* enable irq only if not using DMA */
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
