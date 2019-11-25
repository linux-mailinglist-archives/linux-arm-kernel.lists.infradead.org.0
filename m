Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917B1108A1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 09:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wq//dpuYwGII8PD4Xbbtw90J+WXj83uXLPckfW6HS1I=; b=KtzxMBTFeqj61A
	5b2pb3mSHVWNcdnC842NcmawhXtD4c8Hige53ORGZc2eB2EmXf5p5KqhYYKwAX0o9Jdu68CgW0x/M
	IKm2FgOwNm+wLTg53rSRZfyLsaGHai7sEtSlVYRF4jbOOHztMlLoYT1Fdw0SavQoy7gzNE2LTHrn5
	n7BJvL6qY/+3O/yq+n8nAUG0ChWneUaunJZ5TZpyAtp1L8f5NDiZgrOhOcHBJ5gtDfyr3QVP3fyxW
	BS0MQX5dSeHuscOhWFhQ6Hc6yX0onGJlx3w5uDq8xDQW3dBv6JLfxhuB0zes3z3bJVtikwDYXtkUB
	VM96UHurWubKeifKGe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9oa-0006gE-1A; Mon, 25 Nov 2019 08:33:48 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9nk-000631-VN
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
IronPort-SDR: s4oU+IkKYO4FQHUwvx9XD6FNK1wi1TaBdXF0JaGKA6cTKOyvaSabVdTyccMjWn2UtO3L721yV8
 z+a3hAATJOfMvHAuQVCEaHngfRr3nlbcPxS908sDU8cyotGW8KZmfc7Warkwy8CDbzFvuNzHQV
 fRlB8JCL+ciCybdIQFN1h37/FY2aWTJOZlKStHkApcaXSKAaEm4MXYw7woHqOt4b/b4OWmDAt4
 O9WvXfZ//a/zp7/zOxTqCKN0kc9h0PLsW9bv2cmV5F7W1FJcagTu0umM5HP25q2PwuUYGiJwYe
 TJk=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="59582539"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 01:32:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 01:32:49 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 25 Nov 2019 01:32:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOZ1y+j/cUXJD7DdcCbreIozcBskZGSxu/uXgr00Kt7zTcSPm3H9FCDj75eHkusxxEW03nnZ+1zDSs2N1bW62XV/8fkmAJBrZmWIPcSboiCuXhDzNccjZbLI/JPX7z3mZW12jT7YiITp9owkgWy6mOaWKWb1aaqtHNOXJRFqumCUtUIK5Y+IsvqIyEVgySyphKayAMlwkdby+ENikjH6EB/BRZRtY73Vt3VQwKk6S2iR2SVRQj7TxoWECCZQwIgEvyxH63uA89SUuGLuAV6NgmLEe7z53TL7+6LgzMjxN3OnWutFoivYG6TYQb/qnewq2WuxcSo3K+1hfYiyxDbBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7B+ZcdEE3+Y4SzU9cWy9Q0wPrStgkSjb6p54gknFkIs=;
 b=XI+n72yxoGBww3QaIT+z8OSNW3FrcY3xG7lThbutCPf84RKaNO140ov/bQKYeQNpl9DaNKxVQ8z5qutQrDbIOyC1pcs4hk+ypxnWh6o6WFksvrVBCmmcwdm16WHF1aadFI+yfYM1jpwVjPWrHzzuozV/reUHRwIjOqR2kAUYh1mlmDpjmvq+qwSGa9CHUZLFPlo60XQ1NyOUayn1gSdJkTl0//wa1/7uVebvOGmKlnpN++m2hH0BpMjn820TGbmW0WVCam48M5kkUImfUQwjai8dy7d5bf2pOg7gBD+Lv8cJmXy7MoZPbKLFA4CnC95ItFeLXBoIYXh4jgLhuuRozg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7B+ZcdEE3+Y4SzU9cWy9Q0wPrStgkSjb6p54gknFkIs=;
 b=optlW6thQTu0rGjiSL12cb3N5nWOlVgIt7gAcLIrj2Iic/RZtR4qX3aUqcAoQpEf4lH1SlezTe0D4a2R8hGUdtHPxO3gkgU2TCvig/3x4HvZpB1vuu6M/X1atKMU2dmepVbV4+eXxagyPnQjzrtCZj8ScV2KwKSNVxGsBesEZJc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1418.namprd11.prod.outlook.com (10.168.102.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 08:32:46 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 08:32:46 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <hverkuil@xs4all.nl>
Subject: [PATCH 0/5] media: atmel: atmel-isc-base: fixes for GREY/mt9v022
 support
Thread-Topic: [PATCH 0/5] media: atmel: atmel-isc-base: fixes for GREY/mt9v022
 support
Thread-Index: AQHVo2rpbCQUSS0Z20KWiQUa7Jqj8A==
Date: Mon, 25 Nov 2019 08:32:46 +0000
Message-ID: <1574670712-31992-1-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 4330a04b-8e99-4d1d-c952-08d771820c2a
x-ms-traffictypediagnostic: DM5PR11MB1418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1418C06CF8E7856840A0D95DE84A0@DM5PR11MB1418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(189003)(199004)(305945005)(2201001)(66476007)(66556008)(64756008)(66446008)(26005)(81156014)(81166006)(4326008)(3846002)(50226002)(5660300002)(25786009)(86362001)(8676002)(6116002)(2501003)(52116002)(66946007)(6436002)(66066001)(256004)(6486002)(14454004)(2906002)(386003)(71200400001)(102836004)(6512007)(2616005)(6506007)(478600001)(71190400001)(36756003)(110136005)(107886003)(99286004)(186003)(7736002)(4744005)(8936002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1418;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 814jDGcrgSaAiZ4aQa25VTQiY0EzE3DzyByuRxiXj5ZIg/e0vsrg6uU1cp1c1azq6Kr+3CiAEz6iawq1K1OJL/onn0zgtqxA3oukaTbCmZibBQopCTlGD05lxTVdtwXgYENo1Ukg/NPZALJc4kMcINJ+/4AIdJ1Ad1UHfcubMnfo5o0qfJy1OKZA61Gb8088OJOgCaAPgxVwEbZBoEIZeUvy8juP/oN6sTqpgjwdsLhuk9k7IXkxCM6pTTeg2az7/fgHQ44scGRmfFnnJk5qZ510pbjp/GdzTWJinPzvXZ6msDC5Ni5b2RI+YXo85UPgsbahGXR2u4iIfYFYI0drYx9xvxIfvwqioWTubRSR/tQ4zs27vMMcKd3taUdgBpGS0ll9aAurQbj9b0faIkscMi+td3Bl9R4ok31SXw4DczRO5bqzOKew9MNhP1qfvsbA
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4330a04b-8e99-4d1d-c952-08d771820c2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 08:32:46.3920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IwanJHXEoesWlwkKB16k0pRLdFhIj+RaxkTNtD0KTX5KuYQ/W6r+axOZnhkcD0nwWOxxx1S0K14DD0i1hqrnY48E4wJPUsxnAZn+wzMkF4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_003257_013429_DDD965C3 
X-CRM114-Status: UNSURE (   4.50  )
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


Hello,

This series fixes various issues inside the atmel-isc driver and comes with
support for Y10 sensors like mt9v022 Micron mono sensor.

This series applies on top of my patch :
[PATCH v2] media: atmel: atmel-isc-base: expose white balance as v4l2 controls


Eugen Hristev (5):
  media: atmel: atmel-isc-base: allow 8 bit direct dump
  media: atmel: atmel-isc-base: add support for Y10 format
  media: atmel: atmel-isc-base: properly initialize pad_cfg
  media: atmel: atmel-isc-base: fix enum calls default format
  media: atmel: atmel-isc-base: initialize the try_crop for the pads in
    try_fmt

 drivers/media/platform/atmel/atmel-isc-base.c | 93 +++++++++++++++++++++------
 1 file changed, 74 insertions(+), 19 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
