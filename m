Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7AF108A22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 09:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+RlIygp9O+gYuwU4WFhov5gCRh+SzW3oaIE9TE9pRo=; b=W0WXm9uHgI9aQ+
	wcxg8ajMGQ5P0pe7oCpwt2etsLhMnMGKlBDAkVaJnCgns/oSUD52XqukWkfA3omGFcIvhN1KJVwjh
	UVspkUHY8vXg6MfQbS9MpacnpSGMpWi2NAEQ+aSR6se4Y2YzswnYT5k3nmFeCI7A1kbclLa9sqR0Z
	Jyp6BRx7ODU76UNAZP83RDbzW136zroNIeuuV/EnzADdfIs5D6dnKJExPl2Qo0Ac0orvkRnoIFJJR
	YPdFU5aEZvBG0CVcjRhgR6No0Y1VKvEOPdtGOqDNqHuoWurc9b19ri8E6o+OoxiIfhfltmT9swVAF
	x5qE7yl6U3hZWke0gXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9ox-00078X-NY; Mon, 25 Nov 2019 08:34:11 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9nl-00063g-AQ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 08:32:58 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oo5guDN1lTG39BcF3GpeZgKz+iVVifCj5LMim4k+78AGB8dcF65r9o2ugvrv8fypvj46VoRuwD
 ogVPmzV4Yw6I1EMVwsxp2cEs00ImIwynOvYs9wl2L1r7fTcTYkWstmnNMavResQJlNv9JsrAJD
 I87fJHeRpEVA32dl9LV/26KKW2aGQrlnavyW/mSQFv0ueplCiCrto6ZtQaMFGlCPlLN21rkYjt
 vQ3UAFepM0WLrsFFvn+azNvWrylWdQydFZ4oPzD9aWiTUc8kMXt4yp9GqrB2n9e8WtUkuGilhe
 iRY=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="59582558"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 01:32:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 01:32:55 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 Nov 2019 01:32:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzOc9138n3H/feOjzEngAENTzz+Ov6NoGuxiK9P4s8ylhKcpQdGcBGbgtMB8VzflaYsJGH22BNxBpG/lT3KCaEm+rr652dWDIiRsV2vq+Ww2th5rkJWEUhyKNJ0/MeXD7GmEL6Hk6CZIXkr/Him0QWhKhQkePQRebeu6GDfyUZ4x1EHiz/YygBbBHlNSlhZbVrOAoHb7IGtNPv+O0wb7Xvqc93Hg4h3kcB6MxCIEVRwAEH5u9C7U1PFBxnrtG3rUV5eM1E21S8NKbd/fB9gDcR5NEVyX6/3YyZKYlPKgyAq+cvHV18CwMUdAZHNj7BvPnqqbeztWrs4Y+YRIzjKF7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyswuBMeaaZBwxuehW9hnY9QSH6XzNPXkUY02doMxNA=;
 b=B278OxQKb4h0s1NnzoS/4OMAyjpkXtEGJNbXeZkvYTloJdzCtHx8H1n+VujF/PcCSatZCPq5NHD6oMPNOTt3pm4SG3McMZjVdcISJnHQ+Oa949dOgibmsrnRcRolMom249j/FrruXnrPFHQPDgPlFTYViky03rgx/mhPk6se3ss2y5tY9Kl5cNo86cV/JAjDcPoCFqHj44/qNQl/GwVrBvw6AEdW3k9lpyRap2XLB6Gk+mJaKed/8NQ9b571sRG8Guap3Q5vf2tJbZEpwk652Rz+TVnWGec2UnkbMOnU07FykdqMcuWfBPj6AjIOPmCJg5H1ATbZXFlPxbf14ZXLfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyswuBMeaaZBwxuehW9hnY9QSH6XzNPXkUY02doMxNA=;
 b=eHmEPg9ykh/LWaRrrWPxKXo0rgnUjdsaSlqdpfga68qjtHGjchWiKQiI11mj/68ApdNxlNPbUP51JHLjLOWlRZf+SVAIEjW3M8ksXOoPcFNf4MifkBEp2YShAC3TQ06Yl2OaOhsZInsZHepEEJs6Sf6R0RueyA68n69UBTPZVAA=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1418.namprd11.prod.outlook.com (10.168.102.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 08:32:54 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 08:32:55 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <hverkuil@xs4all.nl>
Subject: [PATCH 5/5] media: atmel: atmel-isc-base: initialize the try_crop for
 the pads in try_fmt
Thread-Topic: [PATCH 5/5] media: atmel: atmel-isc-base: initialize the
 try_crop for the pads in try_fmt
Thread-Index: AQHVo2ru8tcTV/dUgUG1OTeEMRIkuQ==
Date: Mon, 25 Nov 2019 08:32:54 +0000
Message-ID: <1574670712-31992-6-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 37699cef-dd7d-4e66-aaf5-08d77182115d
x-ms-traffictypediagnostic: DM5PR11MB1418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1418C3E6DC31AEB0584BA2B9E84A0@DM5PR11MB1418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(189003)(199004)(305945005)(2201001)(66476007)(66556008)(76176011)(64756008)(66446008)(26005)(81156014)(81166006)(4326008)(3846002)(50226002)(5660300002)(25786009)(86362001)(8676002)(6116002)(2501003)(52116002)(66946007)(6436002)(66066001)(256004)(6486002)(446003)(14454004)(2906002)(386003)(71200400001)(102836004)(6512007)(2616005)(11346002)(6506007)(478600001)(71190400001)(36756003)(110136005)(107886003)(99286004)(186003)(7736002)(8936002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1418;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wRCHEu5f2Ql2TdoNuGfCgyS7cxMEYSiAyamgY6h4klHEw8+/sCrzYs15bv3avW0GMB5HJYhwqaBUIo+Uuv+JMB7GW144tbYrfIcMjv3jaZcTs0t+czhr+jI1Qn7POJgcJ5Yz/QKA/c2dnom/tZbzy0KbMaAgn4qTP85elE1DsWb9DtUoQABSSkrVJ07Zh+t/b2VJDP93/gu1W9vbGU88emsWFBKu0YUwuR3eTAAy4nUPcaRITgRC0gpO4Y5hMBkE6PqqBr6VF8oFMyf01iNVd5TzfRyBuBNGw3B4aeaI51VDZ8rUMF/FcEGB60qXRtbhHvOcg/FDWkj3HFDVWW+WVpCQYgN9/btzM/D70+xai50ElHbXwDeDLPJm9gfhPoTERXhlRiL5rxwJx6twfO3cSbS7i+qKKPfSLszdN7D7ZIueZt0+sMDNrSTCvMMdhkaz
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 37699cef-dd7d-4e66-aaf5-08d77182115d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 08:32:54.8912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CKdC/67AKhQgOz7HFAgQIqfDDylK73EvUi3+YLvL7DIylPO+O4ksV00rBF27qE7zo2UlMyEO0xX1kMO3WTMxRw0pEEK2cFaQJkamvyt4sNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_003257_384328_875D2E1E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

When requesting format from sensor, some sensors call the subdev_get_try_crop
which for ISC was not properly initialized, and this causes errors in
determining proper image resolutions.
To accommodate for this, when trying a format (in try_fmt), first attempt to
obtain the framesize for this format from sensor.
In case this fails, use the maximum ISC width/height as try_crop, otherwise
provide the first size height/width from the sensor.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isc-base.c | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index 1bb1dd5..511f0c5 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -1233,6 +1233,36 @@ static int isc_try_configure_pipeline(struct isc_device *isc)
 	return 0;
 }
 
+static void isc_try_fse(struct isc_device *isc,
+			struct v4l2_subdev_pad_config *pad_cfg)
+{
+	int ret;
+	struct v4l2_subdev_frame_size_enum fse = {0};
+	/*
+	 * If we do not know yet which format the subdev is using, we cannot
+	 * do anything.
+	 */
+	if (!isc->try_config.sd_format)
+		return;
+
+	fse.code = isc->try_config.sd_format->mbus_code;
+	fse.which = V4L2_SUBDEV_FORMAT_TRY;
+
+	ret = v4l2_subdev_call(isc->current_subdev->sd, pad, enum_frame_size,
+			       pad_cfg, &fse);
+	/*
+	 * Attempt to obtain format size from subdev. If not available,
+	 * just use the maximum ISC can receive.
+	 */
+	if (ret) {
+		pad_cfg->try_crop.width = ISC_MAX_SUPPORT_WIDTH;
+		pad_cfg->try_crop.height = ISC_MAX_SUPPORT_HEIGHT;
+	} else {
+		pad_cfg->try_crop.width = fse.max_width;
+		pad_cfg->try_crop.height = fse.max_height;
+	}
+}
+
 static int isc_try_fmt(struct isc_device *isc, struct v4l2_format *f,
 			u32 *code)
 {
@@ -1336,6 +1366,9 @@ static int isc_try_fmt(struct isc_device *isc, struct v4l2_format *f,
 	if (ret)
 		goto isc_try_fmt_err;
 
+	/* Obtain frame sizes if possible to have crop requirements ready */
+	isc_try_fse(isc, &pad_cfg);
+
 	v4l2_fill_mbus_format(&format.format, pixfmt, mbus_code);
 	ret = v4l2_subdev_call(isc->current_subdev->sd, pad, set_fmt,
 			       &pad_cfg, &format);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
