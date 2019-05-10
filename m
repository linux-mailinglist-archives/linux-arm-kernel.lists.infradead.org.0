Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8154819C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlzWWjRmnFDz5Pd79cMVBel8jKdVu+pNooW/wzsNrbM=; b=Zd3TgIhJSRH+8M
	hb4Ua0t0wo0lwxkUNlm0ufu1uJThrUCRpNPqmgNQOubSOzx3CVfIpsKM1yzy6JK9Hf5gyHu6zkB1T
	m+Fzw+6QlcYzLcMbA+4bcC+gnx3yjgJ0vE10pUkppO1TyFpTDnaeRCKFgqbnK085oWeOjATLpkapU
	uBuroH+m13t9XiS5YoSJ/5jBox78SgwTQHRf7iygG2zjEXbH6mCfTow9Flx9SU20UrzvNdc5Uf3ut
	xNOzo6Jqlpg1i1+YlcVcPDWlDxu0AS/O7Naq4RpXDCAiJOJf1IZHDz+ky8kroTLjOgy31u1dQrHgb
	1RAaXdSYRbb4rWP1NSmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3dj-00009H-BZ; Fri, 10 May 2019 11:24:35 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3cs-0007e0-LA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:23:46 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,453,1549954800"; d="scan'208";a="32481306"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 May 2019 04:23:42 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.108) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 10 May 2019 04:23:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GdaiyIKcD+Ij4voBQqWKWs/6VTrWHtTD2MjTZuMJq0s=;
 b=nHA1TrHQa/Kdyeux6OrtPkWh+YFpIFGmpFaEv+VA16b/MIFUy0pWS62GZmP9TE10dqWYKEA5i4TGtke/k22FvtrMn6s8aZ0fgz1zyFZWpkLhfp3UhldPLIDOtZM41CArI2pfr9kwhVRtNJY9O3RQeuieFhdVZJ1Izqnjgujsbtc=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1935.namprd11.prod.outlook.com (10.175.54.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 11:23:40 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 11:23:40 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v3 4/4] clk: at91: sckc: add support for SAM9X60
Thread-Topic: [PATCH v3 4/4] clk: at91: sckc: add support for SAM9X60
Thread-Index: AQHVByLRkxkV9DZjpEixl1qT+jadoA==
Date: Fri, 10 May 2019 11:23:40 +0000
Message-ID: <1557487388-32098-5-git-send-email-claudiu.beznea@microchip.com>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0031.eurprd07.prod.outlook.com
 (2603:10a6:800:90::17) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd260084-f17a-420e-8e4b-08d6d539f39b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1935; 
x-ms-traffictypediagnostic: MWHPR11MB1935:
x-microsoft-antispam-prvs: <MWHPR11MB1935DC9E2B92B7B827199F46870C0@MWHPR11MB1935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(136003)(366004)(376002)(199004)(189003)(256004)(52116002)(478600001)(3846002)(99286004)(72206003)(68736007)(26005)(5660300002)(6116002)(66446008)(110136005)(107886003)(2906002)(4326008)(186003)(386003)(6506007)(66476007)(64756008)(66946007)(102836004)(66556008)(54906003)(2501003)(76176011)(14454004)(6512007)(73956011)(6436002)(2616005)(6486002)(7736002)(305945005)(53936002)(66066001)(25786009)(316002)(71200400001)(71190400001)(86362001)(11346002)(446003)(8676002)(81166006)(50226002)(36756003)(81156014)(476003)(8936002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1935;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /lNEvNvGyAiHfebKVe57YDsQV9DlXQHXY2IQ4zsrNDQcig4oT2gdElCKVIkrRqiD4grSlKRZ5TL/tDJVGzi4UUMzxsNY3CeNITWsfiiwSzpr7+Ve3kAtGed3jScuBZeXqascNk3Xy1SkfgS26oomy95XPghQWxpAZkjctwjRKVo84bXELUKS0/R33aotHOeSInfpw8zH7CU8e4/U8bV0Q+kEo/aOc2xIzidHnDr1ILCc3EB5kVa2JUEYR6Smmfsnj8OLyW/kGQsvNa6L7G0tRJSdip87nDWNeLEmexj2eFSYDIf4SEw6v0K9XT0o9QgB5JIyMU/kjAaGfFcu91uPXUa4OAtBzvEnc4+IkH2rkUSMZPKp7HQy3TWiPia+Rd04dyH0ji1G99C5MK2vUq1KAVeuIv1k9T7nvZzJXAG1AgA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bd260084-f17a-420e-8e4b-08d6d539f39b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 11:23:40.2549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1935
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_042343_220128_983CDF7B 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add support for SAM9X60's slow clock.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/sckc.c | 74 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 2a4ac548de80..2c410f41b413 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -415,6 +415,80 @@ static void __init of_sama5d3_sckc_setup(struct device_node *np)
 CLK_OF_DECLARE(sama5d3_clk_sckc, "atmel,sama5d3-sckc",
 	       of_sama5d3_sckc_setup);
 
+static const struct clk_slow_bits at91sam9x60_bits = {
+	.cr_osc32en = BIT(1),
+	.cr_osc32byp = BIT(2),
+	.cr_oscsel = BIT(24),
+};
+
+static void __init of_sam9x60_sckc_setup(struct device_node *np)
+{
+	void __iomem *regbase = of_iomap(np, 0);
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw *slow_rc, *slow_osc;
+	const char *xtal_name;
+	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
+	bool bypass;
+	int ret;
+
+	if (!regbase)
+		return;
+
+	slow_rc = clk_hw_register_fixed_rate(NULL, parent_names[0], NULL, 0,
+					     32768);
+	if (IS_ERR(slow_rc))
+		return;
+
+	xtal_name = of_clk_get_parent_name(np, 0);
+	if (!xtal_name)
+		goto unregister_slow_rc;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
+					      xtal_name, 5000000, bypass,
+					      &at91sam9x60_bits);
+	if (IS_ERR(slow_osc))
+		goto unregister_slow_rc;
+
+	clk_data = kzalloc(sizeof(*clk_data) + (2 * sizeof(struct clk_hw *)),
+			   GFP_KERNEL);
+	if (!clk_data)
+		goto unregister_slow_osc;
+
+	/* MD_SLCK and TD_SLCK. */
+	clk_data->num = 2;
+	clk_data->hws[0] = clk_hw_register_fixed_rate(NULL, "md_slck",
+						      parent_names[0],
+						      0, 32768);
+	if (IS_ERR(clk_data->hws[0]))
+		goto clk_data_free;
+
+	clk_data->hws[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
+							 parent_names, 2,
+							 &at91sam9x60_bits);
+	if (IS_ERR(clk_data->hws[1]))
+		goto unregister_md_slck;
+
+	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
+	if (WARN_ON(ret))
+		goto unregister_td_slck;
+
+	return;
+
+unregister_td_slck:
+	clk_hw_unregister(clk_data->hws[1]);
+unregister_md_slck:
+	clk_hw_unregister(clk_data->hws[0]);
+clk_data_free:
+	kfree(clk_data);
+unregister_slow_osc:
+	clk_hw_unregister(slow_osc);
+unregister_slow_rc:
+	clk_hw_unregister(slow_rc);
+}
+CLK_OF_DECLARE(sam9x60_clk_sckc, "microchip,sam9x60-sckc",
+	       of_sam9x60_sckc_setup);
+
 static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
