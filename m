Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CB7E89CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4mjBSmh8ZFzAihOVgukr/B3oAy0kFVFtqeMq6qXkO8=; b=AxJonDfjGXB/c0
	i6CjLcwSJfsSqs5DmCLqjuFOKOrNNEYb8Ql1nHj5FcZdnhw/ogpbnU9ND9zIAIwaLgZcOS7KMUZd9
	RWNEOcTI3DYSFOO1zqzEndlc5s68sytBRUAc69erKb5GOLnjRxDZQLDKUavxfvRit6GyyBYDsC4w8
	oyImgy3jmlDBlAtuZxaxKFjpKfq6VWhvi82N1Oi9ZAZZ2rwBmKH+Ajhc6aEnw1pCrukhQqi4OP+gc
	O9rXJZYg2A/v/T6rXnMjUGZ8baOlhpIMLQgRu64tqI97YnatLYJIW0kWUkYKKhFFNfPSS3Lp0Aq9/
	MRnePUSe7sY5wHIKeaGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRlK-0001Pr-Uh; Tue, 29 Oct 2019 13:42:18 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRkC-0000fv-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:41:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwXyB4Vs8Bq1ZjiCglG3qSibaGLAqk/IwGXr3n8Sh2KSWpUOW+d9uB6uIH1jxoiZ8goZ9GTHAmMQPk/Z0r0Nchb93r1ar9hd4H0QC2W0JhyQPhKYP29VC4Acd5fzqrb7zppO00Se8D17VUUBL+li8Jts5WWWkE+HlUhoNRO9svO9BC3XlqTUFmDreiqhiAPJnW+5ox3rCOmIVDa65TPHjdTqFS1NihWHDeiFdfDODtsDyM7Mkq5oAEsj7KcWG+RpBcqAPcmvozqFxgklG0y5YBtcQcWqd+rJGJWghv32AevZYoGGD/G1Nxa+HphgtSz7ezp3OF6GmVSzed3BuKWncA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kr8VloC+mYDuv5cVLFmzjcA/FCSlxCF1LuDIMNtDgmA=;
 b=HXiTHXsaNIYSr06VJupHdfoelj4X6LURyM4nmGzRliyl1HfONKFzpyyJ5qZD7Ay1Wme9+gNhpaWdGrauFuvdFIDHv6kTJljAmqAUpFPw4dE/cr1FYi4PrF+bEKDm1BBzmZBpzVKiZXnQfgjemI6KVnTXKq13qLlLQB7+MzZNMLiKuChcUCPWmHV6GK7b9vQ+MGiHRToE4rTAmD2NRI70DrijFpScqB8wOFQO+yM+VOvHSzdgBUqRBIh6gUQDbwc2eO4Orz02SbOWxnA2LRHPW5J9HczTgOKRrgTnrjfgzeSZ2diseIP7fY2FHlK8XlZK2CSnc539yhvlwy3SI8k3ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kr8VloC+mYDuv5cVLFmzjcA/FCSlxCF1LuDIMNtDgmA=;
 b=rdTj/lnoVeJCoP1Wgbk+PaxRuIMNUlcmXv18wBEL+P1lXqQIm2c8OFAGXVhQ1W6ySu4x/0NkJaCBupmwAqmyl4ucxfpXlrSx0wg0WozSo4aUxfxSWPHjPy5PHgWO9IwVHjDs83wy/I05LzkJ695jK7i8f4iczVjRYWQDaGCWGcs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 13:41:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:41:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 3/7] clk: imx: add imx_unregister_hw_clocks
Thread-Topic: [PATCH 3/7] clk: imx: add imx_unregister_hw_clocks
Thread-Index: AQHVjl6DqFkzDZKMjkuaAFJmKDfH7w==
Date: Tue, 29 Oct 2019 13:41:05 +0000
Message-ID: <1572356175-24950-4-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: 0af38f9c-b4de-4821-1945-08d75c75a58c
x-ms-traffictypediagnostic: AM0PR04MB5139:|AM0PR04MB5139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB51393CA89789CD55FBAB921388610@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
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
x-microsoft-antispam-message-info: 1YyQKMeP+EQSs53hKPrRzJ203xBODIRoduxM809N9Ugt25RQodV+R+EygwZPdrAU0WQPubSICyh1k1jAajRzzTuPEsZhfHg4PD3FP8xN+NtlJAKlemzD4+qGwtv30oES4KWN/psV77PrrDa7nggQ87gla45iuBbl/TZknq+Isqj6iFB8v47od3A5fgfgC7hlnV/wpVxZT7la3JxKdZIJ7x/jr8id2SuHHjKBt2QL5JZ5Pay4TaWeUHf8uW4HF9JX4B7DsBUJAebSLHMXfN4T0gMqTQEbBg+Zi8J6sPQOnYm8abWQndjf51TFhFmVQUbs8tJ+FB/r+hKp5DJ9NEigb0pPdzuxaUnb4CteoC7Llft6+yl961wItbpm7IHD2g1vQ5a6fAngeICM04wFRKhjZS+0YQoxCdMxKnfJLM/Ff0v+AsqzGhA82UGmv6s025Td
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0af38f9c-b4de-4821-1945-08d75c75a58c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:41:05.7024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tCGJmZdpqjVuaTURmm8sUPPImytfTiVTEsfgyQSldhx13Bd47cgpRQfGNcvEIJ8otVRUQLGmbnMGkxe441ccog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064108_978893_8B7A424C 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
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

There is a non hw API based imx_unregister_clocks to unregister clocks
when of_clk_add_provider failed. Add a hw API based
imx_unregister_hw_clocks when of_clk_add_hw_provider failed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.c | 8 ++++++++
 drivers/clk/imx/clk.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index cfc05e43c343..d0ce29f2c417 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -22,6 +22,14 @@ void imx_unregister_clocks(struct clk *clks[], unsigned int count)
 		clk_unregister(clks[i]);
 }
 
+void imx_unregister_hw_clocks(struct clk_hw *hws[], unsigned int count)
+{
+	unsigned int i;
+
+	for (i = 0; i < count; i++)
+		clk_hw_unregister(hws[i]);
+}
+
 void __init imx_mmdc_mask_handshake(void __iomem *ccm_base,
 				    unsigned int chn)
 {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index e67f7d4ab1dd..7d6157f6dcf9 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -12,6 +12,7 @@ void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
 void imx_register_uart_clocks(struct clk ** const clks[]);
 void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
 void imx_unregister_clocks(struct clk *clks[], unsigned int count);
+void imx_unregister_hw_clocks(struct clk_hw *hws[], unsigned int count);
 
 extern void imx_cscmr1_fixup(u32 *val);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
