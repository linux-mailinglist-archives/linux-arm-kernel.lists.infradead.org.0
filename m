Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FACE89D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEposkoDcYbk/cYQwycwntxlaJl6mtWxDHBGWW8lh/E=; b=Wr+ywEFQX4/6m6
	yhY2/+HeAQqM1A/w07k0dNu9nw57ifeGX83oEZhfYMpX7ywBFlCOsawM7+x5NnmUHtfjwQJG9JuMM
	omZXKkuTRkSKl3AftVtHqhTpkK66dGdz8GGaEQMr5I9VerQeOMWDZ7TTDjytOGbR/11AjZ8DSIHDU
	Mu/eouuozJKp53Poz3sAh6XctSzIi5Yx2+8zRI3iTFsYxRNMrqaZJxaP5AYGgsoBL335fwxwz3Luf
	q5vZLsvRWHCv0+Cg7sZ7ayvwOZQsNdr6pM0WvsXFuP28ET550G2k8tE46/t9qTl+ogmEDOZQQSJrq
	3xrZYdo7wI7zhwwSrAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRlp-00020o-0x; Tue, 29 Oct 2019 13:42:49 +0000
Received: from mail-eopbgr130085.outbound.protection.outlook.com
 ([40.107.13.85] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRkS-00010q-Lf
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:41:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnuJX/0zBLxUQiDI+7BjVn/I1hEBmbSXnnmnMYSCaMRBf0z4/Tv/uBsCRTIimqI0Q9eJJ6UKYHIydzmqVpP1UcEICqYaGBTR3m+DAUovYS/a9Zut0e662wWpIbBrJaSzqe/cnm8tM4xp5TA2vz3IRqVuiGnvnuwAEKidgnxR7YUepQTwKwI8kDcqZ7RRpLep5sj1xmdTtPtjK84nEafQ9LbgXgp5K11Mp9sCHfEt6UN7ZozqdO9MunDM2AZGjSF08FK4UO/AIIAA0TOvGMn48DTHOah5Q0NtW6KN85hMq8d6b3s9gx9y07FU+gDZJ9mYuGQDbG6iYU9gb9fJ+YmovA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+N35YA2hGtlaq18HtoQiKoZdlQsPSmE4wBDIDrjkUkA=;
 b=UPeDVyo0FlSe2iq+U52KfFeWMWo/lt4z6KuisTTYGmoekt9bSLonoDItDLOzhAJOkxwdPlsYYJuifVayaNP8cyqXY+g5tnOkvIK23xmq3CA5V+2bNzcw+dcbka9c2wtWIP43PJhd2hMgLX13nNF8WxheubRvUZE5VChMGIjFFSMxCNnTwk3spHdPG3bj+4/PeTW4aJJLjDxzjvVmAAgLrh+2n2BeFPwdLKSC6tuK1O4fSWCiuO8e1jWbSVs/57Xll4TDg4xH+wwHRmKsmeJQJezdRfP3uKM6rzl8YpJBXdMpXkVdqjky7teWVi0oQ1ksug7bXs5YKeW3uew4SMx+9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+N35YA2hGtlaq18HtoQiKoZdlQsPSmE4wBDIDrjkUkA=;
 b=OtFXJgsIhIE3UKBUDMdra3MatkeOdl8LnkYMFbOnoUWXEX2cWD9YhZmlqUuYxtONdYA8jTEgPLa4aOfhxQbqvjRQCxJhyEnJP8Tf5SaGpLKVPJkrQYqz6nJTk+IjJX/cXvJM5C81a8vRRaZyxRTtn+E5tUq6ACJhMkvd+dLPZFQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 13:41:16 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:41:16 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 5/7] clk: imx: frac-pll: Switch to clk_hw based API
Thread-Topic: [PATCH 5/7] clk: imx: frac-pll: Switch to clk_hw based API
Thread-Index: AQHVjl6JCjRvyPL6y024UL55o1NcNA==
Date: Tue, 29 Oct 2019 13:41:16 +0000
Message-ID: <1572356175-24950-6-git-send-email-peng.fan@nxp.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7579d4e4-868f-4e97-9ed0-08d75c75ac0e
x-ms-traffictypediagnostic: AM0PR04MB5139:|AM0PR04MB5139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5139A21B13ACBADF1C6A99DF88610@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(199004)(189003)(6436002)(102836004)(66946007)(52116002)(66556008)(66066001)(5660300002)(66476007)(2501003)(81166006)(8676002)(486006)(81156014)(6506007)(386003)(66446008)(6486002)(64756008)(256004)(478600001)(26005)(2906002)(3846002)(76176011)(186003)(25786009)(99286004)(71190400001)(71200400001)(6116002)(6512007)(6636002)(54906003)(14454004)(7736002)(36756003)(446003)(11346002)(476003)(2616005)(305945005)(4326008)(44832011)(50226002)(316002)(110136005)(86362001)(2201001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5139;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UIJziiZF6hof3oDCUUV/qLKiI/0qN3+8ZU93u2XVvoS+Cn7jIJ3LrLy++ERAhDweZgzmtzwLj6TMP2Wn41dhdCKLLXY3NzC7IkCpfRstZYM+cNxh2U/rWsGeQZFKFBXmTI9NPhh/x/+qNmR5J0g9q/BtFjzwMveMHvls06YOCcim21rp7OcPUD1We7ZjZc+jWj8Q44mL4arRY2euiAftLpWOVX9SAMFFKfcGPwpxlzTa2KDKBW51kIq4d1KZIcEzdbh1Gh2lhVg8Ph+ID7IWKL5QyVr6bkGvvD8LQqfUYrIma0DoxdKqEupgPzkHdh3Yd/N5ksYqUbLR9HDAaQKdaUnaTuboeyBPdzlvbkfz9UcX4RduUXwVermvl2DU5GWuA/OrjWcCrCX+Bj4SF3Irywpc7xXjv5VUsHf+oCyP1vw8yC8EpFxshPPy8/G2a738
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7579d4e4-868f-4e97-9ed0-08d75c75ac0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:41:16.5771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P3xd4SlU46KrbuAWkyB2jzXYdwXCIgE/uMWm4x+a7fp8agIxITWPowYMlUSeEAwrJ3Fc4u4pd8Y6IwS7OmTexQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064124_757694_C93E6A69 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the imx_clk_frac_pll function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-frac-pll.c | 4 ++--
 drivers/clk/imx/clk.h          | 6 ++++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index fece503e3610..818ddb35329f 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -201,7 +201,7 @@ static const struct clk_ops clk_frac_pll_ops = {
 	.set_rate	= clk_pll_set_rate,
 };
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
 			     void __iomem *base)
 {
 	struct clk_init_data init;
@@ -230,5 +230,5 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 49cbf6e20ad8..a260b8dd3256 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -111,8 +111,10 @@ struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
 struct clk *imx_clk_pllv2(const char *name, const char *parent,
 		void __iomem *base);
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
-			     void __iomem *base);
+struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
+				   void __iomem *base);
+#define imx_clk_frac_pll(name, parent_name, base) \
+	imx_clk_hw_frac_pll(name, parent_name, base)->clk
 
 struct clk *imx_clk_sccg_pll(const char *name,
 				const char * const *parent_names,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
