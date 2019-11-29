Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C820510D6AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlbkpFlZw/W6wZmVcrVEBmj0VjoKpnB3MzJIWp4+KKM=; b=l39+yAd5DwUqbu
	vO01SRvlkOwoSu8txJRGm7M68m25Gos8owQ4PtHIOltz7eXUwelZ1KFOC8o28aiBlixL9Vcsz14QQ
	UoN8aaUS+wUEEd1D8IX1tmKEZl19hs80XM4rrRu5aBFgZroA1uXwl8x6p5taKlzJKKvrBnTD1DfP0
	z2A+zQb8dFRjAlTQs7npV0W/W/TxK9WH7Ob/UYOmyzYHr8SVjnnslQcnJYiPBSytOL6cvDiWePDEt
	ltuw5V9PdYyLYO/2QITf21qxb/7SCSNA6iCJC1bpHH53dpI2ZxQ7/tGDaW0rUXdYBKe/ShVCs9pzj
	pMpkUZbraNKg7ClQ2BGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagz1-0006L3-QC; Fri, 29 Nov 2019 14:10:55 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iagyr-0006KQ-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:10:47 +0000
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
IronPort-SDR: NWCnZC+Owtemj8H6ubG8JTxTE7Dgb0Z/21xH6r8BSQ8/8ag8hmM5MuRML3Mnp9a7TTyEv/Mtwc
 VVba8NrlLOdZXXk2OH8fhyPch1+euvsfAV2jPpxlQVcYk1ndf/MvWDYyYOABZ2Hw0Qscql6SOl
 ZxGiMCwXMGAUEFfNO9rE9/5/S8qzw8poFVeG/qfkll6Wd3xCFFHpsA3si95v2w19BFvmSHOAhB
 eI4teC8F3tYuWWEtEzyNJv2ANX6JNZfUIeN7X4L4FWvT+nsK6bbKM7HBvaNme+M+xDLObR8L28
 tBE=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="60122557"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 07:10:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 07:10:44 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 29 Nov 2019 07:10:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNysA1hklrzR5Ad8eKA/T1fdBRoVo+5Pkk1nR1dRFvxOoH98xb9WyDbSEkiISKH9a/HgpOCRai75Z6SP/jqqZJgVWKMK9Us/2WQdjsthWJVVX2bsoh5sUbMfW4Jnl+rrnBj00MSo9xAE1h3vcTXsfp4uPfVclkLDmz7NhEi3p3FHR5mpWG289J4ih0I+HLe/49H1v6c+Zjnx+auw+VMHU/46bJnUTHwqCGmv//6Eu5FOc7mdwWW3u7oOtOUv8Ro2lK+Nf3MID7vhK3fENco6NVtjJwzrmlPehLIMKtGtLghMJ0VrTrjp2lsnCBvAesDscVV0swQtOXGdmpzTLGFh6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1KkVc6lk62KYhFeV+I3v24MIyQcFyg00iSxltRWJgAo=;
 b=C8IhIkr3Nx5iuKZ8HEgC/eHWL5eZxmF2M6AIPGxow28Wl8JhsXU+3XH1NI+uh6Cip8/eGBEM305NjHO4yBMMhzBKlAPBxqABZf5sKW1S8yr/mv8M0coVOgjMhnVHemLtZluLyR4yr+0wYLgZoP8N9ADdd1f+XRMG9aOLNhjrS7UiO13hGRRx7IWT/PL94XACTJaMc0xnZVZbOv2bZKR0LFSwdnGlN0AcaFEpimroAhk7LHrT6sV7p9hJH3a/ErZ6J62YUVKO6YKcYVcjv97J+f4suAzB3EPWGRNylSINxDEt9RlP1CxaU0ZHWer3UWdb8CSa+NAqqGWsK7RfIQSoRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1KkVc6lk62KYhFeV+I3v24MIyQcFyg00iSxltRWJgAo=;
 b=t/fDwZOPXU+/U9a4hhXrPk476mj6qSDjyn/gTjyq/VYVY3ISrnwL8vIx90pplHpfuDVBO9MJob/Wgt7TYAG9u7ekjz8KNhT1z71l0Z8XWI74cbhmOyYhUYOkQIsJ6KFeVlaxi3Oyqblvm+sZhpfLXS+J8a3QT4xamEABgXvCgrw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1916.namprd11.prod.outlook.com (10.175.87.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Fri, 29 Nov 2019 14:10:44 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Fri, 29 Nov
 2019 14:10:44 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] media: atmel: atmel-isi: initialize the try_crop for the
 pads in try_fmt
Thread-Topic: [PATCH 3/3] media: atmel: atmel-isi: initialize the try_crop for
 the pads in try_fmt
Thread-Index: AQHVpr7JUSMCSfNkJEikm4+56J385w==
Date: Fri, 29 Nov 2019 14:10:43 +0000
Message-ID: <1575036609-11381-3-git-send-email-eugen.hristev@microchip.com>
References: <1575036609-11381-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1575036609-11381-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR07CA0017.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::30) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a1aa854-65e3-4c5f-81e7-08d774d5ec2e
x-ms-traffictypediagnostic: DM5PR11MB1916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1916EBD3DF5002F13087B5C7E8460@DM5PR11MB1916.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(66446008)(102836004)(6506007)(36756003)(71190400001)(76176011)(386003)(316002)(99286004)(71200400001)(66946007)(6512007)(110136005)(66476007)(66556008)(64756008)(3846002)(5660300002)(6116002)(107886003)(14454004)(52116002)(186003)(256004)(26005)(66066001)(478600001)(50226002)(2201001)(6436002)(2906002)(11346002)(2501003)(8936002)(305945005)(2616005)(81156014)(81166006)(446003)(86362001)(6486002)(8676002)(4326008)(7736002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1916;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wvB0QvwsOWrnVLFzSNv0+HgiQhtlCbUM2nkYxBOe2SFPwMu15SKLOKvwbqKTV6kJTluChs9qs4SqMJpq30/51liVKw3OZyyKtBdoVS85BLt0fsBy4dhauxhtNIr1b/jNTfhnXIjXEzFGiKEb0U899P4O1uGiZ/4PqKSGyE7PfaOZXlEW3CSOrMFHy91td7iuhqLaySfEmUhWPRNtYvdyD6kTlTK1nUZ+Dh/HcjuYD1PeFUfTVayMCNayjuFdoueYFRK/+1NjKXW83wGqUh9YzGSDb3vpWtMn5mYAt43EWE8o9cEFHvvoPUrA+mzYfcz3tU8C4e4pACmPMYjXP85cW65sa7rj3HRADvtOlUBoyA6+Uz2yEv5GR2WBjheIQcvtrpcj70v5KVWcTHCmf3lp9Osye1eAbWIeSpfQWq/FfbdR6/Fe6aAxJSecYF6aGQz+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a1aa854-65e3-4c5f-81e7-08d774d5ec2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 14:10:43.8060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fUDriM36nwigRy3zOkXlJ8fIrzZPvaFPSMUPzMNQs5FS1r1uk64foOLxwvJX3f57X5KoH4NBmXqm/uE+bh6d4UFFlDuhrqPokhswfysP+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_061045_814155_1CCCD0AA 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

When requesting format from sensor, some sensors call the subdev_get_try_crop
which for ISI was not properly initialized, and this causes errors in
determining proper image resolutions.
To accommodate for this, when trying a format (in try_fmt), first attempt to
obtain the framesize for this format from sensor.
In case this fails, use the maximum ISI width/height as try_crop, otherwise
provide the first size height/width from the sensor.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isi.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/media/platform/atmel/atmel-isi.c b/drivers/media/platform/atmel/atmel-isi.c
index 59d4c9f..9b904f5 100644
--- a/drivers/media/platform/atmel/atmel-isi.c
+++ b/drivers/media/platform/atmel/atmel-isi.c
@@ -555,6 +555,30 @@ static const struct isi_format *find_format_by_fourcc(struct atmel_isi *isi,
 	return NULL;
 }
 
+static void isi_try_fse(struct atmel_isi *isi, const struct isi_format *isi_fmt,
+			struct v4l2_subdev_pad_config *pad_cfg)
+{
+	int ret;
+	struct v4l2_subdev_frame_size_enum fse = {
+		.code = isi_fmt->mbus_code,
+		.which = V4L2_SUBDEV_FORMAT_TRY,
+	};
+
+	ret = v4l2_subdev_call(isi->entity.subdev, pad, enum_frame_size,
+			       pad_cfg, &fse);
+	/*
+	 * Attempt to obtain format size from subdev. If not available,
+	 * just use the maximum ISI can receive.
+	 */
+	if (ret) {
+		pad_cfg->try_crop.width = MAX_SUPPORT_WIDTH;
+		pad_cfg->try_crop.height = MAX_SUPPORT_HEIGHT;
+	} else {
+		pad_cfg->try_crop.width = fse.max_width;
+		pad_cfg->try_crop.height = fse.max_height;
+	}
+}
+
 static int isi_try_fmt(struct atmel_isi *isi, struct v4l2_format *f,
 		       const struct isi_format **current_fmt)
 {
@@ -577,6 +601,9 @@ static int isi_try_fmt(struct atmel_isi *isi, struct v4l2_format *f,
 	pixfmt->height = clamp(pixfmt->height, 0U, MAX_SUPPORT_HEIGHT);
 
 	v4l2_fill_mbus_format(&format.format, pixfmt, isi_fmt->mbus_code);
+
+	isi_try_fse(isi, isi_fmt, &pad_cfg);
+
 	ret = v4l2_subdev_call(isi->entity.subdev, pad, set_fmt,
 			       &pad_cfg, &format);
 	if (ret < 0)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
