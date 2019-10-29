Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C33E89CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLzLQliGjvu0nSxsgC9rfRkh5Vxg3PduLrlY3bxU11Y=; b=CBMMLRn4fip+fe
	b1XIt2der43+Hmiwxd3MgTYGe4u1WiPiUeVXoEKZ0ebeMBvmpl66/GuSpC6QMLSViOphWFSTF/VWZ
	1Ofb8SD1zV/un03gPdnHayMNmVYdlqNeRi6pzbSkhKtVwxxD/jj74m+cPQLLPCypVm/p+8TybaScY
	1y4MwG/s+uMQR83uK5wCawz4GL4o2Bdu+cG08C6P8Y56Ff2pUFkNAsaILo6kSp2iSGoAx10Jpms/p
	SwoazEUNW1ocQGIBwvjGfHLVpck+UIp/q3pG7tOkJJTjzlIiidSVf/j40MOW1RwbV28M+laA9L8ie
	ayEvxQ+omkyl0Rpx5Rvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRlc-0001kx-Hi; Tue, 29 Oct 2019 13:42:36 +0000
Received: from mail-eopbgr130051.outbound.protection.outlook.com
 ([40.107.13.51] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRkK-0000rQ-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:41:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDEySlTMA6Ck9g0NpxYBqlE2OPSbVdzb09bkMsh9R9YIY6OmeBIoT8+OrhvzBY9khpls8Vv6FQNKxB4eTLGRTvzCsnWTvMLFmdy7UzALXwyRbXd9c/gsq1bcn4Q782WBZyKNSYxanBk1cyEjodVNkA3U0+7FovvpJVcsnRN4Q+A0dSZjW2iJVZ1twpH0ZDSO4OiWqPc73OXwOxJab1De1fPFXfQEnQSQTzBx8/hFpO6abW7SsCt0UVhUCm8qqfligzeJIdJ1fqH3GL0Mzv2mzSOAgi5irfN4GkwFSEHHkdmWAbkDn505vSThTWR70otb7cFVmiMOwA7a6F6RGxiVaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0ojVvQmDmvqqMgdPmxz3y3KJutZczDR4Aa7mO2J/0I=;
 b=I/BiCjKQ5T2IiJ1r/JDTSczqxzuFT89mNbgd0kY59iZ+XZF+XJ73RVPM8+5ZjF3fnu9DG73+PAAQ9/4ghVI9EaYzhbSi2lAQ3SG4qVZvMbzqiVfFG1ob7fMrKKsCEwjgvp1xJoFp8ac38ZTBRXbwVYFyRbGQAwoL+as6ywmM1nqXnNDaQBVg/4WcXiHEuGicHujHVsUG4KwzUS8DMODkAP+iFPKVjI3LuvKfSJf0UJep5q2v/dJh1v/KyBZX+u7hh1+EtX7e8AKUqQFe/5vM+DgOauByT0B4Qh5H4+Tj3SkP8QQUh+WbL9m0+O4+5V/Dn7CngiPQEyoc6gNqAcaUOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0ojVvQmDmvqqMgdPmxz3y3KJutZczDR4Aa7mO2J/0I=;
 b=QxzcnifIoegvrAirERz1UfaLtRVrWZ6FVocG8FwykSbS713rIc2DTVZo5fchmSctz0Ou2QxMhY62kL0drMuEI40KTDDZm6ue7JXrsTF3nLyGB5lOMTqSm3Z5NfPHYsSLH5fmTw2i1kh7ZUpmlgmmmrg8+ZsdWu20BDA3R8Jdcx0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 13:41:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:41:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 4/7] clk: imx: add hw API imx_clk_hw_mux2_flags
Thread-Topic: [PATCH 4/7] clk: imx: add hw API imx_clk_hw_mux2_flags
Thread-Index: AQHVjl6GZBndHj4ozUe5Pjr40bMdUw==
Date: Tue, 29 Oct 2019 13:41:11 +0000
Message-ID: <1572356175-24950-5-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: ec42eff7-26b7-438f-0acb-08d75c75a8bd
x-ms-traffictypediagnostic: AM0PR04MB5139:|AM0PR04MB5139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB51399942F4FE3A49B9C8FD4C88610@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(199004)(189003)(6436002)(102836004)(66946007)(4744005)(52116002)(66556008)(66066001)(5660300002)(66476007)(2501003)(81166006)(8676002)(486006)(81156014)(14444005)(6506007)(386003)(66446008)(6486002)(64756008)(256004)(478600001)(26005)(2906002)(3846002)(76176011)(186003)(25786009)(99286004)(71190400001)(71200400001)(6116002)(6512007)(6636002)(54906003)(14454004)(7736002)(36756003)(446003)(11346002)(476003)(2616005)(305945005)(4326008)(44832011)(50226002)(316002)(110136005)(86362001)(2201001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5139;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xz0J5xa+KKaDBW4yE01ZvzomDg1kRfr6vIPmL4BD4uoHxk1GtYZl0srnB7IS4HY5Y3C5/F2lHAyUaUg0AZg4DCk8HNiwWafBawN0IuLdQZcXLsPmAuJmdgNngyqBd9wmKXwwvksxFAvG1izvy38zuk6LOqRBLa2KXL2bNPvv7Xy9RGohF3l0uC8K5rg0HIwd6/RMaQThbALbii7136i+mCnT6yQZMLDKLoJ2JxTco/TzynE4BxH853dr9rjiDOTTyg72oBS4eEtd6UpOi7W7hKWDQyUWNXYay/nWjjX9Byq4NGiP8UnmLeRsbrypEUZ5AosTfNMApLbLYZgIb0ZymOD+f83bmCte8MRHZ1EuzVjv0vK/F0fESlHnUXUQDthxWYAfkkZ+mM+/CVzujP7sVwhnnOBEyqEYcokR3kcXwhjQnN1ijlYtcTIutxuWIajB
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec42eff7-26b7-438f-0acb-08d75c75a8bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:41:11.2612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPZsQdQaTrAkCQfmosZ9zHI0CgiHZFpdP1PKC1awRc22r/DhuzbLYLJqbJArraLP1heIY8aiwFZzMb9XIzmbSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064117_054704_2B181A99 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.51 listed in list.dnswl.org]
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

Introduce hw based API imx_clk_hw_mux2_flags, then we could
convert i.MX8MN clk driver to use hw based APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 7d6157f6dcf9..49cbf6e20ad8 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -425,6 +425,16 @@ static inline struct clk *imx_clk_mux_flags(const char *name,
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
