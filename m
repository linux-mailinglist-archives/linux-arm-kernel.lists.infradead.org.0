Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E05108A1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 09:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQIwZ786q33QKg+NOX1TKASBfVBP3B5zc+7Ldb8iEow=; b=QcqJjuWrPyRTtv
	aQ2DrFb74iRBg95NN4JNJLzIOI9GJ33prFN00t1ETl3apf59+GJ6TyZFCvRdNFnBE+yl9mfc1kCZ4
	LRFvME4Y9+VSO0KKbHltlY2bsKgybwhMsJ04IQPCE7EFStcvAryXnzYGZudAeN1fn7Opg7ZCBacIC
	hHH6oObR2v7vaNLTmuEEkSgzbHHevqKbHIqKgZko+WoKrWdgjVghvCKvpQjQRbwMt1FKJG4qklzjP
	QaOd74V0/LJ/3evVbwtoaJ27mlLraStisiz5nmg/QwhueN/RWFiYdI7NNN5GmjChp04iKyNS6LE4H
	PdhLEoGB6AYgZK9UIV8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9nt-00065e-8Q; Mon, 25 Nov 2019 08:33:05 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9nj-00063H-3H
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 08:32:57 +0000
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
IronPort-SDR: THRsbqcjNjd1fCJNvm9umBgjQvQcM4dAIEoLBLGfBbTRsREODJ1/x0wVx8UPf9zOqvkp/7jPSQ
 BNc88NqO5vzq8A2QMGtD8Ee7ARcAdwDaL4a2T+0qedgXz7t7Abd/koYlWOL7MGjL7KPOyeV2Qd
 e0heOJ0oupKNcNVHBuO2OmdDpZULP0p0yQN4M6RR/ICMQtehfbkBIvSSGB6GwfSr9Cqaq9b7hJ
 68wC+doMXuvLHkDrM4NHDI0GC3VRh/QBMQxxdpvWQV5dfCluYD+VhBeBkjt6r/NwIZTWmVpz6A
 mvw=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57802239"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 01:32:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 01:32:52 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 Nov 2019 01:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aojSQSCkXSte1isc2O88eVvKR9JkWqqJCPuD/9cDFotmNZND1Hh21XEINPgdeHZfaobKPKJsin52kPOjI8zN6UyTEuYUMoWe16gPlf/l1syaOkddtKJZ9oQN1cRs5iZM+3jZAuZekBXfLUUBcsV98/UKHELqgCA3oo1fLNvbp/kL/Msu/lM/UUdS50v7pYE/EK0c/JdXVunXXdXepOr7resyV/z9jyO4tzb2wBAKUZNKVFLHv/2El5eOYCP/8O6kYSbTFVYgM9zZMUXPY6ulm9rUN1o3oClvLaJbsmBieT63GD5A9mp2XMT7NH+iCCWoUQl6z7Tt3KLFS1iBJLnm2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ORKYZoIUnkIZNK3Aa73DW+qkgq7VRNVbbkkt29Xf2w=;
 b=iI/4JE9hp57DKsWjZpTcV2ScJgj3+dIA4bPcV1Mi0ao1FOssILO7XwojxDSKxws3zbogIsoQtXqW6dLbMjHe6zQCdnJ5lxpRYSTKScIEN3eauvmjYeoI8e+ijbpafg29A+4albX54NP/QzBTzxF1W1lJhiHKQtpt6Nvx8TIb3ZdsPFdqd8jGET5nFzBnFNY4jmXOd+QYUzDXV8ds/0jCigTX5PBK0GI8M56tRRb+K5eMmi+RkysnfLlnfIQzrEHofZbENV+EIbxEljHEDBg2rySKkSDJW9Gi2R6XT8KKnreZN45LAqH1tecBZ6fAV6hm4CZxYON40ZKUofHaFbHEYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ORKYZoIUnkIZNK3Aa73DW+qkgq7VRNVbbkkt29Xf2w=;
 b=FQ/yvW657CXsMfpbjWTWm0VP5q+Rw0J9zvAd6erWyr48IlGJheYgTlm+cQIJlU3Y56ZkCittu6EcjyTB01PzFn/aPEhD8FLqUloJSpXzawVHY5IONhmiBInGlB9vrQiuhKjAFeo2GcXvvF463D2gAYhuPHyLxDu15aaQMlLtF+g=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1418.namprd11.prod.outlook.com (10.168.102.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 08:32:51 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 08:32:51 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <hverkuil@xs4all.nl>
Subject: [PATCH 3/5] media: atmel: atmel-isc-base: properly initialize pad_cfg
Thread-Topic: [PATCH 3/5] media: atmel: atmel-isc-base: properly initialize
 pad_cfg
Thread-Index: AQHVo2rtEjFpADgo3ki6VWTokYTW7Q==
Date: Mon, 25 Nov 2019 08:32:51 +0000
Message-ID: <1574670712-31992-4-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: d5c05a23-75ed-42cd-b686-08d771820f57
x-ms-traffictypediagnostic: DM5PR11MB1418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14187832236BB0CE4611138BE84A0@DM5PR11MB1418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(189003)(199004)(305945005)(2201001)(66476007)(66556008)(76176011)(64756008)(66446008)(26005)(81156014)(81166006)(4326008)(3846002)(50226002)(5660300002)(25786009)(86362001)(8676002)(6116002)(2501003)(52116002)(66946007)(6436002)(66066001)(256004)(6486002)(446003)(14454004)(2906002)(386003)(71200400001)(102836004)(14444005)(6512007)(2616005)(11346002)(6506007)(478600001)(71190400001)(36756003)(110136005)(107886003)(99286004)(186003)(7736002)(4744005)(8936002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1418;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GOfdHOZTFneVKRGiRFWLQQWpY2uaMF2ckqBQ4aezQ4iNbMeSUSpSVbZ55VaMQyBoUIUiO4e/HOx4487GzspdHbmOeeG+eb8c2J21PUfNF/gnMFPFOWgh1nhMlLYbluPP282lx++mjX4W7wTDVShmpv22rWZYhyOGbzCEhkGKIC5DoreO99JwqGi1zax3sh3LC3jxwnWZqc2FD/3YYnedy+12WYmgSRXk86MoZUk580EJXYpwdKZ3sW1rBjAPKHvtVX5MCVImnpGEOMkxVlmvf4ElpBI4NdIcJ756YL4HKunQSN5eAy5akymgYN5XmLPXPP4PFaeprVSN4LrSUQSXqWdpWBxjMkg3pqaosmbu18j+bDQrJK8pbgUt66B/+kJfNn4JleuYJvEo2T7tnrLmdFB/9riJmceLTaWYw9bbCmz/GOZVN9erxA07gOoxUFDO
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d5c05a23-75ed-42cd-b686-08d771820f57
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 08:32:51.6196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VGDdFHNTaJRoFTeYIyR1vHDkS38w8VDV2ivR1nVPx7XpO4PAvkxjZ3JtmuvSKFOjzq5Iql467hPOtuYFUVQo9RhLmVfE+DI90jX6ulaTOgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_003255_167266_6D0FF529 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

In try_fmt, properly initialize the pad_cfg variable to zeros.
This can be used by various calls from the subdev, so it's better
to have it initialized.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isc-base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index a948294..7c73bcd 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -1239,7 +1239,7 @@ static int isc_try_fmt(struct isc_device *isc, struct v4l2_format *f,
 	int i;
 	struct isc_format *sd_fmt = NULL, *direct_fmt = NULL;
 	struct v4l2_pix_format *pixfmt = &f->fmt.pix;
-	struct v4l2_subdev_pad_config pad_cfg;
+	struct v4l2_subdev_pad_config pad_cfg = {0};
 	struct v4l2_subdev_format format = {
 		.which = V4L2_SUBDEV_FORMAT_TRY,
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
