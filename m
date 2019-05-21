Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2219324C5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQH2xyTMAOJS5KDNGFGytZUOem8oHmY3od0/kDzT+us=; b=qDjJOqU+aytXr5
	YJnuDMk7CkcMpCxovYsXjEZBDgdP65YH4ZzQGKkp25bKuzugTQSyYLdDegl4+kRdGu4XV26A23Lks
	ghoFDdjnaBvwb9csIMwJCWVCx2zeQcClspoXGucNAMYFvf0FJviIKsKvzanQfeP+v62lAbvm6z63c
	a3j8+CCQTATZRO/gXtf3jX77WKbpyY+Tgr9Fl6f3DekKNL6MP/CQod8VK+ptWfdZ0LeJkTBNMXZ2G
	iJ+FRUnIjovIvdK990cHxJlYdbSdaQhmGGUfz8/Xr//HjXhgvaEqKdIVzjaRyyGFDF1FU6s0iaF04
	tV6qmPgJx1RxwYSyK5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1k7-0005t4-7w; Tue, 21 May 2019 10:11:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1jy-0005rZ-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:11:28 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,494,1549954800"; d="scan'208";a="35521451"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 03:11:24 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.105) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Tue, 21 May 2019 03:11:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jwgT6eZYUPDlhGYpBCynN5Q1QzyGCv+JPz1oxPWFsx8=;
 b=QOWWx0w394aXXpeIENXnO7RhuJA8Sb1x1EkN1Wer1aldxVGbIggSh/6IiFC2Zub91+pddvcaubm3uSBEPxPy0W5ovlnRebAJI6rWOFTe1DdKeaPFZ9+DN1fCZa6MH4+adb6fJkE1YZ/hxuZq/kIHBSJkUTNHmCdJbd/tbHez1N0=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1949.namprd11.prod.outlook.com (10.175.54.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 10:11:22 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 10:11:22 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH v4 1/4] clk: at91: sckc: sama5d4 has no bypass support
Thread-Topic: [PATCH v4 1/4] clk: at91: sckc: sama5d4 has no bypass support
Thread-Index: AQHVD72KmkcClWjzC0mXuPvf8FDVrA==
Date: Tue, 21 May 2019 10:11:22 +0000
Message-ID: <1558433454-27971-2-git-send-email-claudiu.beznea@microchip.com>
References: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0254.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::26) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b174d7c-f739-4061-c3a3-08d6ddd4acdb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1949; 
x-ms-traffictypediagnostic: MWHPR11MB1949:
x-microsoft-antispam-prvs: <MWHPR11MB19494C27D6DD52DA9933215987070@MWHPR11MB1949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(66446008)(66556008)(81156014)(486006)(66476007)(102836004)(14454004)(2906002)(64756008)(316002)(73956011)(72206003)(26005)(476003)(446003)(68736007)(66066001)(2616005)(186003)(25786009)(99286004)(50226002)(66946007)(11346002)(52116002)(6636002)(2501003)(81166006)(8936002)(6436002)(86362001)(386003)(7736002)(4326008)(110136005)(54906003)(5660300002)(3846002)(6116002)(6506007)(6512007)(36756003)(107886003)(256004)(71200400001)(6486002)(478600001)(53936002)(305945005)(71190400001)(8676002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1949;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: c+ttUcHFRxGDfTREbd0RxXBq1h9f418b0cvnw2ff50BpUyv909e1+DVTGt/JeEyfpN5Ak8U0pCJcySWZFXa22GU+61//6Rdhcxs5u4YvrxGTmj6pCBAjJ3vQ81o/qy59Vz5kpfSIO8VLw1DYNEUrpL6qNbFrN9xa3F+5B0hpJ9zQzaVmW1tmRdOpA1jmmRkT3RJ//poaD0KjNYVUitVA52caMv/0OE0bLamj2fZgvfQlftEgtnKvh0dEpAd1CUbxZ/vDg40vUFi45KMJ/PVzjSo3rty/2S4dSQHnmk9LBtJWvSGaO81D84LcV6uQr4JLU2uPEqNNV7UWYziwXFVI5E7yx4m15LEn1+YPJfPWlkp6yR4qllE3x+HpeY9OBakq3IfC3lRqCaIGGZNrn2ZYdY5GvNKo08yfr0MjOdqD8Ho=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b174d7c-f739-4061-c3a3-08d6ddd4acdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 10:11:22.6075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1949
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_031126_573868_C2DD199D 
X-CRM114-Status: UNSURE (   8.72  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

The slow clock of SAMA5D4 has no bypass support thus remove it.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clk/at91/sckc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index e76b1d64e905..6c55a7a86f79 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -429,7 +429,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	struct clk_init_data init;
 	const char *xtal_name;
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
-	bool bypass;
 	int ret;
 
 	if (!regbase)
@@ -443,8 +442,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 
 	xtal_name = of_clk_get_parent_name(np, 0);
 
-	bypass = of_property_read_bool(np, "atmel,osc-bypass");
-
 	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
 	if (!osc)
 		return;
@@ -459,9 +456,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->sckcr = regbase;
 	osc->startup_usec = 1200000;
 
-	if (bypass)
-		writel((readl(regbase) | AT91_SCKC_OSC32BYP), regbase);
-
 	hw = &osc->hw;
 	ret = clk_hw_register(NULL, &osc->hw);
 	if (ret) {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
