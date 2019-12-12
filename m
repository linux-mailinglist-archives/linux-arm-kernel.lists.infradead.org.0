Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45B511C3BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzVEQc11FnSBV4Z5nxOHQ9eVGk6Txd8FtSp6or/rH/o=; b=ryQ6SZtSeIBmd7
	JywxWX9ub9eUvqR1B0G+PqTkcHPzggOBDNWQvYTQ11zVe8h99ecor1y70nPw15eU/UGFSEYljuk8s
	9rc0YNc/t+1IE+yamobaQcuxBvR3/w8bPof79ttQZSBuWbjkb0Teh8kF6laGUmr2tFeURm/Wcou0/
	j+IW9sgiWJmrXSa8a3fTmzkd/EVwQhEk69Mylxg11+H5qwrHVbbCZtZvcb7TGi1poCAoukWqzcncC
	TBbU0W76dC1bgh+sPsFNh6cvIjrzwVXT05DcTnB4nEk+1Le5PNrKytO14E0GGt+mneySiH6eQehxz
	t+K5XkrAP9qqklLRKsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEic-0003gf-3m; Thu, 12 Dec 2019 03:00:46 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEh1-0001NS-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:59:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZZ7AB2cKiat6cMzw4+pKb6dPJbK2BXOswd/0I6iWxVPtBMuwuSd6BhgMMQeNDBIie5hvWHHTd43rzknqLf3PJ9Gw1W8FioCHRyy2QMh+LMaIsFdI6611W9YRKO+OW59LUH0ENCyI9BbhBmeXDtnd9dTIpQYPshpQE9bHTuL7QCMJ35LAol+pCgP8Ksfcu9kdWHQ+dUHvQZHU88uOyWafiqJzlZ+83Bu8Ub1EjqAnbhBJpUNKVbIrKJPU/I/ZpxGYxW7Hz6NhaayNBeP61xq3xFzWuZXc3cTkhqVYvByXcbBEroLm4Q3pLkFSkWaVmVdCkpZwkHblUkGa2okWczLDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdMtZnMiQ6ShimXBpJCJMex9hCe7iXPibZaNgDSF/X0=;
 b=g4JTG8GSposTxHv4RFEWKKeBId0nRxSQDEgm4V6nzSMmjN/+SwCUZq2pv7c6ju7OKb52X80L0kjTUK/gK9hzMuHiPZPAYo1p/YutcNx+6Pu77NknLKlWuCtAYiN79De4tfBZv2Bg+15rRnOp/N4YKXMsVlbttVNtV32j3k6tmPfYJWmmlmIUMAOMUtQGJ/GUvddGDPPK5RN/yJkuevwsG6DGhSI3iHuG4i7pFyL4TLaGAYmudDREiVg7Dt+j/qMQnz3N4CNuMyoYDtWsg2XyNFwppQ5c3tJJ5wS2kXt8CRGJ0W83HlltBTY9qYAygMQg+PLdr7la/MOuncDUibUxvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdMtZnMiQ6ShimXBpJCJMex9hCe7iXPibZaNgDSF/X0=;
 b=ar3zGG8YHoB3M6Cz+TUOXM9m0IdyFVVgeMIatL2mtfo2R11aGGGH8Oan+ES/M2YXfB1u0iGQxvkva79P5VCadyXJflFU7wxciNUXLHoePDFDtxDswcEFityLfzm3U7HlpDb4TsX7InsD3WZjAMVGzUE3OJcCZkLPYO9w1JfE+8w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:59:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:59:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 5/9] clk: imx: gate3: Switch to clk_hw based API
Thread-Topic: [PATCH V2 5/9] clk: imx: gate3: Switch to clk_hw based API
Thread-Index: AQHVsJgd+KHoh+Od+k6savbze6AFKQ==
Date: Thu, 12 Dec 2019 02:59:04 +0000
Message-ID: <1576119353-26679-6-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: fa648a4d-31ea-4d6d-f884-08d77eaf3f7b
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6196A34677B82062B6E40D2588550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yp+Isp9n32VloZosSsSv3OVksf61Aw6pK6fDIKpTPbJGxbomeGwZBLDiwWNCgZTE6C+WralWjMa8XTvI3iOrJdqO74WHmoZG3O/IbibfvDF2NJ1f7WyC2xprS26BXnewkDaHhH/G/Y9Mnjp5F0LiwbiD63p3qdpJ+aPeC6PHsVXYKCjLIH+hyQMnKfamIiJi5Lf3wsxJxSI5N9K7nukoSkozvDfdt9p+N4uNOf8/Q4IogVB/gj5dfRaj2y9smV7lunaZbQhP4dX8Gw6xktAECfx2mcwvRMm3lQ0Isn8Srfdvi6CNLvGMcurSg6AA2HB15kf9U58PXkbiSasfh7iM8a//l8cwVluh00Wj+QLkzYVP5mcwZEGiMc7Kz4Mc1NnWK2n3jkBBWOpa9zoa4behy4fx4IsgeC0QlznXIGICWAjuMWRhgzcwA97T+wClOMWg
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa648a4d-31ea-4d6d-f884-08d77eaf3f7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:59:04.7779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPQfLypCRQ+M2hEWUDfAfBUqUANYocm/+qBbQFzcZyNxoGJwBGw32lXMIUMlAT8liIPyS2m9+XgO2fdIN48jwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185908_028489_EB05C8F5 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
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

Switch the imx_clk_hw_gate3_flags function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index e28166a63894..65d80c675aa9 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -370,15 +370,18 @@ static inline struct clk_hw *imx_clk_hw_gate3(const char *name, const char *pare
 			reg, shift, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate3_flags(const char *name,
+static inline struct clk_hw *imx_clk_hw_gate3_flags(const char *name,
 		const char *parent, void __iomem *reg, u8 shift,
 		unsigned long flags)
 {
-	return clk_register_gate(NULL, name, parent,
+	return clk_hw_register_gate(NULL, name, parent,
 			flags | CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
 			reg, shift, 0, &imx_ccm_lock);
 }
 
+#define imx_clk_gate3_flags(name, parent, reg, shift, flags) \
+	to_clk(imx_clk_hw_gate3_flags(name, parent, reg, shift, flags))
+
 static inline struct clk_hw *imx_clk_hw_gate4(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
