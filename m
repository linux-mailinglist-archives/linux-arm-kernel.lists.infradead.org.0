Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8098108A1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 09:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2QgURCi1nnqRmpqoQdJAQqzTKHvYbLL42Uh97Kt2FQ=; b=kxzxeJ1D9qsYDd
	reGDfxQo5mnjFhK/HJsO8XJYuUaGSZjj9WzXU4zogIJhWU83Pz0hGonUP7Q0mfTymDnwGbx2Vf3rq
	3gIQeMTkRgwvEacKS/zyunE9prAFLFy0ZnDf9Iv8DZff3yl26iyZRt6gsiUCENbX+3ADumMFF7tmH
	bpOxAXw7l6gNhsR4Vit8ARPR+N7LTj+XRCahkqL3GSsKfnkXAQJaJvCSjWE56NQ5gJ+xmHa1BpBwn
	3jA5XRlkvf+OyF7XugHkZkm/1+M4LkN/O9T+BlXBSYDPIf4fBFJcHto1rqpTG7YZAwFurBL2QKMdi
	co1BmrrUYRfR9enUykIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9oP-0006Sa-45; Mon, 25 Nov 2019 08:33:37 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9nh-000635-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 08:32:57 +0000
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
IronPort-SDR: S/lzWI3NEb4Z8nz4vEkTKQjMS2PLcidkmVQiP1507dhMBAJlZbYGzgQ4RlCVql/4BULMO/eEVM
 lmveY/DQkptzOAASmCkQ1OSiusIuunXgmcumRwOeglnelUOjb4GnlQoM6rxfxer4MF/EcNyorp
 yL1wJ0mKnnPQDmoq1S87UnH9TGtI5lJe0ZLbdkl9vOAJcsnz9HZCJmbsTgW39x/OuFZfZ//540
 QRW13hLU56dDOtkzoj6YCCmHLqg9DW26kvj2AfHOjZ0/2EtzhqZTFOnOYvjDIWDR02NwUeIDjL
 A/w=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="56746965"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 01:32:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 01:32:51 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 25 Nov 2019 01:32:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfkrssDbe6+syLRpH+Uy8YapZy9sxBj+LRU6CtBTcKS3A8iCylH7phdG/S8BWbRQ4SQbSdYH86Uu/ngs+beUc8e4WuqEmqSNapOIKcjPvcf0rjR6jvagiISY0z5yJZCQfSXa4xa3eq8TJyUUZd6ZkFsCIogO/wN0p1IsW2ApiCvCCXkZoIPKsJ4KZd9oe9/QLzV9cB2FtRVkMrX2uQPVCFAdQM7nHYApEN5WfivdT7f7j8eZ15rNLp98vaXIDc2+4RmboiiBaKGE8DNXZnz3r8MkCM9iOncaG1+JpT1wty+tE4nl65ZErFYnpffaj6fJXjgdurW0N/akBKEB4c1kcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZleAsWziOMXRJHWRHE5G4URkfXQ8+kd83xIimRGanB8=;
 b=goisjdc1y050fGm9ZZsx/drkdA5HIdDASsKQymTWfmRKhhM8Kjg+XxA4lqC1Au3iJ7dE8Z9v1ByJHQjqAKV4F+asF3RsIo3h3sZvEq/RvdMfpNH0W1A/cmr0P+d9mDO8nOPsoOvyH2W6G0D2WazHsnv9u4Tz5rfe1rl/4pCn0BPmhAWQ07AlqxNeZcbxhbVoSI+oqww/YfdCcsGR7j0PUQYGQ6bQlTf5za+RQ8uVAo002y/di6a+ysFx04TNZATGxV+M7JEfSj4hZZMcEN+F/fk3DH1Olr/vDtujiJsU2ygtRks7ogH5azzRO3Sn+2b6B+3qJCtnFZZATsqLCmiRcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZleAsWziOMXRJHWRHE5G4URkfXQ8+kd83xIimRGanB8=;
 b=uqw1WD25GAC1vwEyxuEifriLculNElX+ohIFuW6jiKWEC0VSfWFjH9yJ+5/iZ5PL+fsYcjr7YNRZv3rHtvO5oVGVqDa81p5wNx0Zr5z8yDlFBEJED9ydxiu+SgpLg86ln3UJr7rbhhnGpEvR1GyTLXXT+WRb6TqX8UYAJNtHhh8=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1418.namprd11.prod.outlook.com (10.168.102.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 08:32:50 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 08:32:50 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <hverkuil@xs4all.nl>
Subject: [PATCH 2/5] media: atmel: atmel-isc-base: add support for Y10 format
Thread-Topic: [PATCH 2/5] media: atmel: atmel-isc-base: add support for Y10
 format
Thread-Index: AQHVo2rrq/UUfdSxpEGLC81Cyy1KqQ==
Date: Mon, 25 Nov 2019 08:32:49 +0000
Message-ID: <1574670712-31992-3-git-send-email-eugen.hristev@microchip.com>
References: <1574670712-31992-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1574670712-31992-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR07CA0029.eurprd07.prod.outlook.com
 (2603:10a6:205:1::42) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc01cbf9-f5fd-444b-8809-08d771820e5a
x-ms-traffictypediagnostic: DM5PR11MB1418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB141808FB31B022C776833C80E84A0@DM5PR11MB1418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(189003)(199004)(305945005)(2201001)(66476007)(66556008)(76176011)(64756008)(66446008)(26005)(81156014)(81166006)(4326008)(3846002)(50226002)(5660300002)(25786009)(86362001)(8676002)(6116002)(2501003)(52116002)(66946007)(6436002)(66066001)(256004)(6486002)(446003)(14454004)(2906002)(386003)(71200400001)(102836004)(14444005)(6512007)(2616005)(11346002)(6506007)(478600001)(71190400001)(36756003)(110136005)(107886003)(99286004)(186003)(7736002)(8936002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1418;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d2F3ShzBZNUOvrv1oYi0emvCGj3z1/IdcFTxFK0pSe4TZFJ9Zc1/mtWDMSFPMLtbKBA2RfR8U8sDCJyksxEKyNKBjZsCtQoL0A/3ZmIj0aAJD5XfU7j9KAOcxhGcw8M1C7ei1ppfnRGHJsYCb2bEWG7v7ywjoytMIcrIxptpCLhkyfcZVfi/UTCiLbjSbHc4y4gNH1b215vYVbLkg73gLNq0nvM4ye3/sMWtGnCJGKsDoeq5qORRZ4NMQYYN75AHDeVk+G5WVx2XPo/tsfYJhjyDa/9BzzbvzGI3JOswdnDVCim2+FGOC2msrCT08ime6lIW9DGXcQ9R6MflLAS5gRsp7UiqLOfz9r+H2qrluBJkcIJo2YCMr5qZWgZWRWhcb+j9KsuiAajcwETVkhZzYigO95F8gwOB/WIf3GRkCyni4IXbTl54m6zQq2D3TQj4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc01cbf9-f5fd-444b-8809-08d771820e5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 08:32:49.8744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ER6RfxXZftU7VCI0QSO3RP7UoiXwplfBSMObY+5tvYuODEZSr+jCZzyvjaHAE08TvI5sVTkRIB2J07SMqYWPm3ucQuzGka5CkKymxZg/9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_003253_511569_341BF25F 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The ISC can receive input from sensors using Y10 format directly
(10 bits greyscale). In this case, the ISC must dump the data directly,
either as GREY (8bit) or Y10 (10bit).
Y16 is not supported because we cannot align the MSB 10 bits to the MSB inside
the 16bit container.
For this format, the ISC internal pipeline cannot work (only works with BAYER),
so we must dump the data directly as 8bit/10bit.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isc-base.c | 35 ++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index 0cfb524..a948294 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -73,6 +73,9 @@ const struct isc_format controller_formats[] = {
 	{
 		.fourcc		= V4L2_PIX_FMT_GREY,
 	},
+	{
+		.fourcc		= V4L2_PIX_FMT_Y10,
+	},
 };
 
 /* This is a list of formats that the ISC can receive as *input* */
@@ -164,6 +167,12 @@ struct isc_format formats_list[] = {
 		.mbus_code	= MEDIA_BUS_FMT_RGB565_2X8_LE,
 		.pfe_cfg0_bps	= ISC_PFE_CFG0_BPS_EIGHT,
 	},
+	{
+		.fourcc		= V4L2_PIX_FMT_Y10,
+		.mbus_code	= MEDIA_BUS_FMT_Y10_1X10,
+		.pfe_cfg0_bps	= ISC_PFG_CFG0_BPS_TEN,
+	},
+
 };
 
 /* Gamma table with gamma 1/2.2 */
@@ -211,6 +220,10 @@ const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES] = {
 #define ISC_IS_FORMAT_RAW(mbus_code) \
 	(((mbus_code) & 0xf000) == 0x3000)
 
+#define ISC_IS_FORMAT_GREY(mbus_code) \
+	(((mbus_code) == MEDIA_BUS_FMT_Y10_1X10) | \
+	(((mbus_code) == MEDIA_BUS_FMT_Y8_1X8)))
+
 #define ISC_CTRL_ISC_TO_V4L2(x) ((x) == ISC_WB_O_ZERO_VAL ? 0 : (x))
 #define ISC_CTRL_V4L2_TO_ISC(x) ((x) ? (x) : ISC_WB_O_ZERO_VAL)
 
@@ -1026,6 +1039,7 @@ static int isc_try_validate_formats(struct isc_device *isc)
 		rgb = true;
 		break;
 	case V4L2_PIX_FMT_GREY:
+	case V4L2_PIX_FMT_Y10:
 		ret = 0;
 		grey = true;
 		break;
@@ -1033,16 +1047,19 @@ static int isc_try_validate_formats(struct isc_device *isc)
 	/* any other different formats are not supported */
 		ret = -EINVAL;
 	}
-
-	/* we cannot output RAW/Grey if we do not receive RAW */
-	if ((bayer || grey) &&
-	    !ISC_IS_FORMAT_RAW(isc->try_config.sd_format->mbus_code))
-		return -EINVAL;
-
 	v4l2_dbg(1, debug, &isc->v4l2_dev,
 		 "Format validation, requested rgb=%u, yuv=%u, grey=%u, bayer=%u\n",
 		 rgb, yuv, grey, bayer);
 
+	/* we cannot output RAW if we do not receive RAW */
+	if ((bayer) && !ISC_IS_FORMAT_RAW(isc->try_config.sd_format->mbus_code))
+		return -EINVAL;
+
+	/* we cannot output GREY if we do not receive RAW/GREY */
+	if (grey && !ISC_IS_FORMAT_RAW(isc->try_config.sd_format->mbus_code) &&
+	    !ISC_IS_FORMAT_GREY(isc->try_config.sd_format->mbus_code))
+		return -EINVAL;
+
 	return ret;
 }
 
@@ -1130,6 +1147,12 @@ static int isc_try_configure_rlp_dma(struct isc_device *isc, bool direct_dump)
 		isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
 		isc->try_config.bpp = 8;
 		break;
+	case V4L2_PIX_FMT_Y10:
+		isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DATY10;
+		isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
+		isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
+		isc->try_config.bpp = 16;
+		break;
 	default:
 		return -EINVAL;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
