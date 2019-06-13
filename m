Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A175543CCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9D1FrIm7w6qJZ9AH0OSRS2tWpe1kbkQMWxWR9w6MkI=; b=Xj1we+7cgcOZ57
	QVzLL3v2PWye6+vJWBy1L5ocZiysDdWbXFj4PNt8KamYe2fj787rK4yf7/oBmJDDmWNWqh/r6JSlw
	n0XH/ZasHsya1BcBvFqVTmW6XKvR/nBjSSes9/Vk9L8MZTQqYuweHjiDoPmmJLN1Ibu6ZoAZumst/
	7cr8wNQ2hZ2c2pGuy0yR0uYvsJEdWEC8+E6M2IxRYeIm4frYl+XX5K8UMy1QpGlhDV15zR7uN8AAE
	lJ7lDZkdLZlTWX4E2uNEhlC4KJAd9wB/PkwY+Cvl2V+/ELvUw/+QiivYlRlCIfFurmhvOMT192q3c
	oJLY924c8H5pIhdHsHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRnq-00008K-8E; Thu, 13 Jun 2019 15:38:14 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRn0-00084b-O5
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:37:24 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="37225840"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 08:37:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 08:37:20 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 13 Jun 2019 08:37:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ta0X/y6abik2Sk+vzjIhGrYsydqzWMDUwL32cP5cKvc=;
 b=PzOD0gskIPgZWSxa2QHtT59I8i/xGVWukXgpann/+Fh8zTOgeq3f+QHfPNonPHRZkW12rrSMzJx2ZgB3GV+L+2+W48XhF7O++EvKq5gXjIvKQU/EQcQxLqE1Gj4QF0Rse7PrAVRIyNrwaugc1HAd/3AW0QlAcqS/LOx+1lrh8vo=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1822.namprd11.prod.outlook.com (10.175.54.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 15:37:19 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.012; Thu, 13 Jun 2019
 15:37:19 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 4/7] clk: at91: sckc: improve error path for sam9x5 sck
 register
Thread-Topic: [PATCH 4/7] clk: at91: sckc: improve error path for sam9x5 sck
 register
Thread-Index: AQHVIf3iLxQmEIlvT06BHQnabFDXmw==
Date: Thu, 13 Jun 2019 15:37:19 +0000
Message-ID: <1560440205-4604-5-git-send-email-claudiu.beznea@microchip.com>
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
x-ms-office365-filtering-correlation-id: 5f53fef9-a73d-4d6f-a092-08d6f0150507
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1822; 
x-ms-traffictypediagnostic: MWHPR11MB1822:
x-microsoft-antispam-prvs: <MWHPR11MB18226A24BBC433F7299464CA87EF0@MWHPR11MB1822.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:170;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(39860400002)(396003)(189003)(199004)(14454004)(478600001)(110136005)(54906003)(256004)(68736007)(2906002)(72206003)(316002)(71200400001)(71190400001)(2501003)(36756003)(50226002)(4326008)(107886003)(25786009)(6512007)(8676002)(8936002)(81156014)(2616005)(476003)(446003)(11346002)(6436002)(6486002)(81166006)(5660300002)(66066001)(99286004)(305945005)(53936002)(7736002)(52116002)(76176011)(66946007)(3846002)(6116002)(86362001)(486006)(66446008)(66556008)(186003)(26005)(6506007)(73956011)(386003)(102836004)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1822;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OzBln7AzC8fe2ZkTuP3b8BL4hoGJkFOnvT0zAaN2uNittqDJ4xvJt+2LMFSJ5i0eEf9SLPl6aF3z5lhATn1IgHalKdMySUPySLzR367v4WbJRgqwDqfuqcyAByEiacAgmSpwBymbtEtzo+ncSwNLAqIQBY2OAKeMAvMRtj1iOGxV8dyQPq7puGflsog1iBPGN/q45630C4uimgGxxppUyI8aCKBKBtZrgC/E2SPaXUajfRc+N03fmV98YetQ0RHKC8rURXI4php6CEn1ToalkiuQF3Is2vQxmaUfEMlPg8EQgXhno9dERmwMQ9vcuRs889G30lqrUqQVAoAPfyUyC5Xeyq4lynh54gJI+dyreTKTjWTxk4mYInITKdfzAPJz0CNsiXDRXNavqNxhV9c1QrKf3JRLJXLTSrj8fGgzuu0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f53fef9-a73d-4d6f-a092-08d6f0150507
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 15:37:19.1411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083722_857075_4B34F68C 
X-CRM114-Status: GOOD (  10.67  )
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

Improve error path for sam9x5 slow clock registration.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/sckc.c | 50 +++++++++++++++++++++++++++++++------------------
 1 file changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 2a677c56f901..a2b905c91085 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -371,16 +371,17 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 	void __iomem *regbase = of_iomap(np, 0);
 	struct device_node *child = NULL;
 	const char *xtal_name;
-	struct clk_hw *hw;
+	struct clk_hw *slow_rc, *slow_osc, *slowck;
 	bool bypass;
+	int ret;
 
 	if (!regbase)
 		return;
 
-	hw = at91_clk_register_slow_rc_osc(regbase, parent_names[0], 32768,
-					   50000000, rc_osc_startup_us,
-					   bits);
-	if (IS_ERR(hw))
+	slow_rc = at91_clk_register_slow_rc_osc(regbase, parent_names[0],
+						32768, 50000000,
+						rc_osc_startup_us, bits);
+	if (IS_ERR(slow_rc))
 		return;
 
 	xtal_name = of_clk_get_parent_name(np, 0);
@@ -388,7 +389,7 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		/* DT backward compatibility */
 		child = of_get_compatible_child(np, "atmel,at91sam9x5-clk-slow-osc");
 		if (!child)
-			return;
+			goto unregister_slow_rc;
 
 		xtal_name = of_clk_get_parent_name(child, 0);
 		bypass = of_property_read_bool(child, "atmel,osc-bypass");
@@ -399,23 +400,36 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 	}
 
 	if (!xtal_name)
-		return;
-
-	hw = at91_clk_register_slow_osc(regbase, parent_names[1], xtal_name,
-					1200000, bypass, bits);
-	if (IS_ERR(hw))
-		return;
+		goto unregister_slow_rc;
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
-					   bits);
-	if (IS_ERR(hw))
-		return;
+	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
+					      xtal_name, 1200000, bypass, bits);
+	if (IS_ERR(slow_osc))
+		goto unregister_slow_rc;
 
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, hw);
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names,
+					       2, bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
 
 	/* DT backward compatibility */
 	if (child)
-		of_clk_add_hw_provider(child, of_clk_hw_simple_get, hw);
+		ret = of_clk_add_hw_provider(child, of_clk_hw_simple_get,
+					     slowck);
+	else
+		ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
+
+	if (WARN_ON(ret))
+		goto unregister_slowck;
+
+	return;
+
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	at91_clk_unregister_slow_osc(slow_osc);
+unregister_slow_rc:
+	at91_clk_unregister_slow_rc_osc(slow_rc);
 }
 
 static const struct clk_slow_bits at91sam9x5_bits = {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
