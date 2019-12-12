Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369D711C3BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PizB4sriB/6PbcsISR7UJilfljJAz8uoOT0cozoP0Ro=; b=EN7HooXhPu+2oC
	BpuQXIEXXylVcUqQnaz2sZfSJIL3BITDld8Em7uALfvaW7GKWk5Oo8IEFBPS8nfBmDZD/jcnsewrL
	xOZUbW0XJK8sUNQsYw7aPRCambExmsFlikdNUAcMOdrg2ye0OBicttmv9Uf7TySA9lDFCx21l1MGS
	GHwu6YOZBnY6mSwHbZIGgzMDMsY0QWOydC7NhGfmPZjnz8yCxorPcRqMMFUUvhjgmnvLQJdLUK21F
	JfrYittmUuJYVXZBhbV9DNsfIpDRz1Y4LFMJe4UfF2tcNeHRviuB6oOq8PTImv/Oyt/AEZw//NLDZ
	OBMXlxzoTkDQKLeoiw/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEiO-0003UF-VM; Thu, 12 Dec 2019 03:00:33 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEgx-0001JP-8K
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:59:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q051rPRE9ZARcZRf0A985q1l8uVNzZvkAoco0I+VuCX+cQrPGkkn2ereN0sJguiJCApzSuTRrAq7w4NR63zXblRC1I4owQNqwRUrqTuZatYiXGPvTtcOosLJUj23HbyNk1xBpmOXxttx1/vHuh7NsoO3pwed22ij2wQHE0E9/AAbz3B6bwaGiFllIECo8M7W0ItiVbyvTgxvlgAddjr0hQFQTg3uUR5bpPJ8N/h8Cx6ndpSid+M9RlBdJ5+c66vWqtPn8HULDZYnQFib/DRj5XlZCnsBkEgkIsb1vRj1BNgIk4uPkOOoaCma/7CvMCW2iDNGYMmvpaQKXj90N77/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyZPIAe8LjGerk71QQuWn5nzd2l4GPtmIAn+VLCR0I4=;
 b=oET+fCKBITgVtapMeGTWou4s7O0S6CJiehWgtFOO05yw4HVT5CqgmbZHkE37lh4nf8grD08VVV5T65otkFGj5LSoqn7sEUWpJs0SSsSmRuRsLLlgxXP4B24sEyT5wblCFPYH1l9xmKeN5FX/5pg7cvGGZe0oA+h1tbcLkL576SECiudkO0fT6uloRI1WHyauV2Wc3FwceyoUK2In8ynO/R9QREx3MNvqQEtq2v0WSj/DMwzxcYVmeT+1uRb6lVYdGSvcuMkhQYrTIQp5fqwz03kpM3NujU0KdmdieBowAZ7IdLsE3J3451U9ZukR8HrouYl/x2dL5ub7odZ9QuUXkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyZPIAe8LjGerk71QQuWn5nzd2l4GPtmIAn+VLCR0I4=;
 b=E8pqghRELFmPAluoyCb4mHP03m5Jvj4C+QVobbq4ejPgvm69YNjpvJIs85AfWtQ7MkTYtVaLq7n/UG5C/PXHR74yuAT6ianSSd8T5/iY5D3YoZsFZ1TPos8T7Y5vVGMzGo6ECmskUaV/BWW5N0AbLYmKa0KfTLvUREN0ejVczxs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:59:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:59:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 4/9] clk: imx: add hw API imx_clk_hw_mux2_flags
Thread-Topic: [PATCH V2 4/9] clk: imx: add hw API imx_clk_hw_mux2_flags
Thread-Index: AQHVsJgaUHTthaBEu0uFPrqdwhekNA==
Date: Thu, 12 Dec 2019 02:59:00 +0000
Message-ID: <1576119353-26679-5-git-send-email-peng.fan@nxp.com>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0ad3ed11-7e9a-40b8-52f9-08d77eaf3cac
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6196EF26C59B984CC863D8F288550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(4744005)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: onAgyzMawZtlwDoKlWp4KfFY+HzyX7mdhJMcSformi/Qn7p+8c7TMaJDuHr/gIewpZzPHFNAzhs3tPcbg6zMuXg5d1jUz78vLYECPfP0nKrdsoOlASe7W6wdqp6gCengMYT/umddBqNuD9pJrL2qYrJJinwFU3IUwZ33OaWcJLJ38jV45kH+0URLiTyfI481CMW/6aTOnJ6DTRI029Rk0a1fDehC0XBYYWvH3FUiw6uI3+hI/+O8n82weeraM3kJ6+H2uO3yXEqEKW1M0mtFl4d1rl14/hDasXd+queIHUy90D+wWfMguqwEjqrI804+un2YpDYdmQqI4vvgt3TlYm5rfFcDohDPaHmvk7nV9lXZL7Dq81AZ8D7JXnVZ5E54JQTcbTQiIC0pyGloA1Fx4cQ2MKc7iYoqUKNigoFNySfSpIpnoZ3YMTjcKdGgOgXQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ad3ed11-7e9a-40b8-52f9-08d77eaf3cac
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:59:00.2235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UaIhY5OfbpXol+fyfIwSjOm3AoomkGkvAQVq3GR80EOEW4FZB4F75tsuo1rwsgpV7RRZQkqYYHZVY5exnPl8Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185903_595486_8BDDC65F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Introduce hw based API imx_clk_hw_mux2_flags, then we could
convert i.MX8MN clk driver to use hw based APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 20dc9a1fcd6c..e28166a63894 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -435,6 +435,16 @@ static inline struct clk *imx_clk_mux_flags(const char *name,
 			&imx_ccm_lock);
 }
 
+static inline struct clk_hw *imx_clk_hw_mux2_flags(const char *name,
+		void __iomem *reg, u8 shift, u8 width,
+		const char * const *parents,
+		int num_parents, unsigned long flags)
+{
+	return clk_hw_register_mux(NULL, name, parents, num_parents,
+			flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE,
+			reg, shift, width, 0, &imx_ccm_lock);
+}
+
 static inline struct clk *imx_clk_mux2_flags(const char *name,
 		void __iomem *reg, u8 shift, u8 width,
 		const char * const *parents,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
