Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B581514B490
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 13:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5ynfmjH8LtAdiotfRmLigzcsKv1hNFGSWUIfuyD3vs=; b=g6WCokFx4GUCkj
	fJljsU8WfoqAzz/gNpA8/cRVyUv5TsBdIb2D1wSWG8C9dUPrrchcglDAoUJ9fOheljviiQf6C0lpx
	vcf0g0XnVgitcgVcC4+aSFegwOeC4m1px/jdx0F8H/OuoTqp0IAKhYFslFVMU2XAjpV8flo1DpCUA
	4v6Vy+kmhyiq4BlDpve/+tzZdI/fWuWuUTvf8j1QVoS5f8asjeBo68wiwCSkiXVpR8TxHUnGv4NPH
	67nICD8+y9mLq6tdByezcNWeeljqodRbQH6kRblqjW23W7iYZm6ortSd7QDEVBsT/SBTAz3M04OGN
	g4V++1jjhA/CzOvNoCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQRJ-0001So-53; Tue, 28 Jan 2020 12:57:57 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQR6-0001R8-VC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 12:57:47 +0000
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
IronPort-SDR: mJeT8Udi9U9MmAA0D2IVps1hnznChJtOfxQ28M54HjbwFwAieV5HOG92xD5qF/jqXFeNtHPDF0
 MCZmcNKbpmKuvUyLQ2Fo9UWImsn29aKcMo6FWoJwjEA+f5BLsl5HYAf+mEfSfo/PEcsFOt0kZs
 ks45iuVEJhNwEnXz2oZC7w/rjzo1DGsvQO6vVv9XwV1twKAhG4AmNukx/TdIKT0ybsMae/P9Iw
 FFtISsvv06a8EPXHOma4Bu3a7/73gSjRHUrOcjMdWYpIOt47/jbKoJJnik0bKvcv9MCMyRDK9E
 rZA=
X-IronPort-AV: E=Sophos;i="5.70,373,1574146800"; d="scan'208";a="63960358"
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
 Transport; Tue, 28 Jan 2020 05:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKLHdfz2ymNCXXIM/2rmv40eHWe85guqhByvmeLOIKnnbSJ8oF+0uRT93VPls/4ZWMmcwVnXDDcY1TbF3gzcYHQqcPyQzStBWo9SO+qIda9a8XoXqdzbfDBxtTvktQXYAw3wICONp1NOZJpnMbCnSk3e/WNB0XLEYG2nagBfqWftzKeS2ezoR12euBWfEp9NCKUi/JNGKXR9CAsejvFmyKLP1ufKRptQs4sR1WRHnkcAdiXVgqWa36Xtpf4i3R0w1LOErZqFBiMQufSF9Im/lYx4kWZH0eZEVswIFfIl+QlF3uxsP/a3ECNnICH7GlKagZ7t/ISTDUGBTTmoVSoBQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhs6f7oQUwU0gOwRfNxmUhiZW5v8xRmmgy/AsreIpWU=;
 b=ctQDbKL5058coOWiLITdIg+VTUOHWtNK8chWD6LC9acWiUM/hy5N1RYDgNs18cMrDTxxMHIa2wmCMowJAl5b9ZXAFRIanHmDpUcSRdMRNeCLg53R2g3Xe/YfboZePBT3OwT13j4a8lT5oKtEcLXPbt+ze+Wou60bG7wm8lOz/ul1RZmq9ce+GpxYtNg/iaG3FTiLJ2o5upzlUTMD1VhhcA612lJ4Z/18NfTm/21TbR2UsnHSptFPi/kTCEv+2bUx0O+UjvbwwBqr5NpQv4G+zJSAN3bX00iPPdAYEyiq0W7P6xthDjlWHMcp+nQCEkN542qlbKUHhP0BziU95lAs8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhs6f7oQUwU0gOwRfNxmUhiZW5v8xRmmgy/AsreIpWU=;
 b=U2/Uk32QKkqTxDr6LVKNWNgjKaaWupUGCXzai3+WqXLVoONa7T7LlgBVyziDIonmkmOseQWxPPDAzFxjMHJS4q0lRrwEK4B3gKoe/nxzLaMwRbGPReIj1YRhnFKpGDi8a9zBaR7e+aySENdXix9yRt6+reCYzfKr5VAxEbxFGkI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1852.namprd11.prod.outlook.com (10.175.90.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 12:57:39 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 12:57:39 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential channels
 in triggered mode
Thread-Topic: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Thread-Index: AQHV1dqFsAVAQA8Fs0errk5mUZMqBQ==
Date: Tue, 28 Jan 2020 12:57:39 +0000
Message-ID: <1580216189-27418-2-git-send-email-eugen.hristev@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a63857a-64e2-4f02-7487-08d7a3f1a828
x-ms-traffictypediagnostic: DM5PR11MB1852:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB185236701DA1D1101CFA5CB9E80A0@DM5PR11MB1852.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: D9v1GP1jHW7pkckk6TpB0x9xvNnqzZ0hqKcsjetnp6GSU0W7etIxqlDVzF78fwdMGYB+SuCfWqazvr1DlElqBW5E8+C9iAqeVVhlf2gF3YcudjLyv+FlSB+ruDDJHv6QgTAa4cmHeDV0+iYhL3PBFiNOHKgFYjhesyDYSwwhZ3rNR3JH3gWU49hkBHTlRkxFyxJart7LR/gjbb+gi+2mD0M6l535vbqCyNrAltvv0SusccfS3CwlI/P1MHUdwE9XzPMDwzIkolyQCJn2DRiNEZN28j6jJjHBTaKm5zihqMKKj+q6YObJX9cxjjJKTmxp+GbwXvxTT2yD2igI8Gp5/sbaH2zCaq8f93jgUCv7LJhlMYizb4gcu2ZZ/MdQTSdfqRJED9R1K22G3mqGw5gABew/P/iRNS/Ct1szTgSJI7XTHIIct0RlJzKmlqLCsQsr
x-ms-exchange-antispam-messagedata: 9AY+Bx5MYs+vHQ0q6HeILb6dkKCPdQ465C1VgesBGb6xtoo79RNZIF8dze1AMYa+KX5vNse7ARAdns+eYqvoJ8SttqWHv84w8OSMl6Y4Nkp0Was6ltLMt6lUD7wzjghaHBaXpORnIjye073QcKLRCA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a63857a-64e2-4f02-7487-08d7a3f1a828
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 12:57:39.5985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qk4/eNQTMfkWPQhlRuZ7uFm73d6K6Ra9C280mI7lnLxw8uyUEjNNwycKRdXJ52cIrNYmtcvXLuxr1NCVA7dTKZBkvLULZwhBKY50zxaFWnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_045745_037347_0D7BD052 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
