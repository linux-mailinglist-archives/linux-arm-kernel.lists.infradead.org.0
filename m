Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E5543D05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opCqagLpJrmeS7euG2A9LOwQRaC7rGN0AH3D64eBLrc=; b=K8kL44FDXI1di5
	GhrgCu7b4SftOOSKrJgGj/y0ScvlvnCtUJ5QeuXKEZC+PC8CUVlD4Qkn7bpRlwymYGjbZwGBSIPbb
	Z8XyiHujOlm3rsJh9cKghtXeBcKlY2ZqFyNAsrkWLHWJgUejvL1mecUZEGQaaBQqKQJ0lR5O8gr+3
	B3KS+xadU4z7EsMVDXnpQK2ZX0HtehLmCySMnNf/5c/PFtAxLXzcE2pJ3BC2XEShQngF2S1m3FtVl
	xjZeT6NXbrNcHkvlmDkemm1m76uL5mXRIAL7g1Doa6CxjXUFeWJpj0cFFBJSgqJDqDHSPrv4y6aOG
	c1vMw3QPaWJEd0L3XbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRor-00010J-Sw; Thu, 13 Jun 2019 15:39:17 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRn7-00084b-8k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:37:30 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="37225863"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 08:37:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 08:37:26 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 13 Jun 2019 08:37:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuMignnHSk1wHStshTPWzkZhNKC/LFV8UppGFTq0Jmg=;
 b=aJzcuNABY9eHzOXX4HULzTXxX0LnmfwrheU53Kzu0cd8jGhn8WvqkfUmxyHu84vnbx9EHKl1SHHNDh2tb9w7K1BUhuCCCFOpXBTEirWLs6Sb2hYk5E3Isf+FR9ccymJ1IHcmKyc2NmFsNMrqmYCoOtBjozRXSquwUN5XKDEfPWA=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1343.namprd11.prod.outlook.com (10.169.232.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Thu, 13 Jun 2019 15:37:25 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.012; Thu, 13 Jun 2019
 15:37:25 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 6/7] clk: at91: sckc: improve error path for sama5d4 sck
 registration
Thread-Topic: [PATCH 6/7] clk: at91: sckc: improve error path for sama5d4 sck
 registration
Thread-Index: AQHVIf3m83vVP0B1JUCHfcMSnaofCA==
Date: Thu, 13 Jun 2019 15:37:25 +0000
Message-ID: <1560440205-4604-7-git-send-email-claudiu.beznea@microchip.com>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0174.eurprd09.prod.outlook.com
 (2603:10a6:800:120::28) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59b0c989-6bf8-41d2-f972-08d6f01508b2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1343; 
x-ms-traffictypediagnostic: MWHPR11MB1343:
x-microsoft-antispam-prvs: <MWHPR11MB13431F894942F3C18032E59187EF0@MWHPR11MB1343.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(81156014)(14454004)(486006)(102836004)(50226002)(8936002)(81166006)(99286004)(110136005)(71190400001)(71200400001)(54906003)(53936002)(6436002)(316002)(72206003)(68736007)(8676002)(52116002)(478600001)(2501003)(446003)(25786009)(476003)(386003)(5660300002)(2616005)(86362001)(6506007)(36756003)(11346002)(76176011)(64756008)(6512007)(4326008)(26005)(66476007)(66556008)(2906002)(6116002)(73956011)(66946007)(66446008)(3846002)(107886003)(7736002)(256004)(6486002)(305945005)(186003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1343;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H4+Dz7PbdAY6Obg5kK6sVIM/SODfBjFJhdcfSaNwaWs2VmOvGcfeVtDBOagqjqaFc9qRL+OWXlZg5fgxVd5DPdDQIb9tEzK62EAUXav4yfqSZIKlUQ3fHnNW3CeerjvgIeJWHMy0tewCbA6dV4QcPXioydmpdTpVhffn1V1M5Gxj3SrPjkMg0kluRnNZD8M1f2C399Yz1M8VMBpH8+HiSXdXfL+ArNQbYJkJXwS6uZ0Gae6gtdGmiz9ey7OlsAr3gqTwkMtb3sPjprVnHWGRJN2a0M/sPfUYsLL/wq5p4MLTaquoeX91EA/d2NBxdsXtkde3kgOuFHLZ8u2eJ5vhgsD3RCXpWPXfPnV4TxVOr68xNIhGAS9kiLK0pt66JFqA4hizck/GhfxcCws47zWywYbCDqpQjN8YhtNJL0XE7Lc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 59b0c989-6bf8-41d2-f972-08d6f01508b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 15:37:25.2922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083729_540761_6B272CF0 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: claudiu.beznea@gmail.com, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Improve error path for sama5d4 sck registration.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/sckc.c | 43 ++++++++++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index c61b6c9ddb94..f7ad3e9414dc 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -568,7 +568,7 @@ static const struct clk_slow_bits at91sama5d4_bits = {
 static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
-	struct clk_hw *hw;
+	struct clk_hw *slow_rc, *slowck;
 	struct clk_sama5d4_slow_osc *osc;
 	struct clk_init_data init;
 	const char *xtal_name;
@@ -578,17 +578,18 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	if (!regbase)
 		return;
 
-	hw = clk_hw_register_fixed_rate_with_accuracy(NULL, parent_names[0],
-						      NULL, 0, 32768,
-						      250000000);
-	if (IS_ERR(hw))
+	slow_rc = clk_hw_register_fixed_rate_with_accuracy(NULL,
+							   parent_names[0],
+							   NULL, 0, 32768,
+							   250000000);
+	if (IS_ERR(slow_rc))
 		return;
 
 	xtal_name = of_clk_get_parent_name(np, 0);
 
 	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
 	if (!osc)
-		return;
+		goto unregister_slow_rc;
 
 	init.name = parent_names[1];
 	init.ops = &sama5d4_slow_osc_ops;
@@ -602,17 +603,29 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->bits = &at91sama5d4_bits;
 
 	ret = clk_hw_register(NULL, &osc->hw);
-	if (ret) {
-		kfree(osc);
-		return;
-	}
+	if (ret)
+		goto free_slow_osc_data;
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
-					   &at91sama5d4_bits);
-	if (IS_ERR(hw))
-		return;
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck",
+					       parent_names, 2,
+					       &at91sama5d4_bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
 
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, hw);
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
+	if (WARN_ON(ret))
+		goto unregister_slowck;
+
+	return;
+
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	clk_hw_unregister(&osc->hw);
+free_slow_osc_data:
+	kfree(osc);
+unregister_slow_rc:
+	clk_hw_unregister(slow_rc);
 }
 CLK_OF_DECLARE(sama5d4_clk_sckc, "atmel,sama5d4-sckc",
 	       of_sama5d4_sckc_setup);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
