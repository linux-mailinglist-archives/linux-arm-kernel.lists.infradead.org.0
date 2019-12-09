Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30667116811
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ALiJSFGOUJy3WVv60kSae/gVp1+H3hChR/9iEX1UwVQ=; b=u7SV32hNTY3Efk
	7JoBEKnbPAtRAA0Nk8coQWRcGInW8vDK8SOIv0f/iWzB6UL2IsSC6g/6gqi9l8cdwg1D2xQaHPAGa
	UvtGYZDC1Uc7OvvpNUwaLN+SIBdm5m6loA9U7m1sdqoD6JvKFEKTXlw5Cra0KHO6YgZRrefp8lu43
	liJzapLP2M6f8B3sjWaxvne8+DtyjmjYqUebWYJgT3VA3elsmfqiB/maBLTw54hi1WgW/Gq04fEAm
	e1yK3tkvhRUtFZBTQozJdXHO3cRphb3QyDXmafxunYRhG3o9x0BrfoAg3EkN1mlSpq10VquIHLLlG
	v/ayH9NNWIl/cvxcF8uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEH8-0000jx-0k; Mon, 09 Dec 2019 08:20:14 +0000
Received: from mail-eopbgr30043.outbound.protection.outlook.com ([40.107.3.43]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEGw-0000EC-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:20:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A01GesBGeY3+jGz4ge0MqBK0dZNm00mOGKIs/d7L+wFVLuOHgO8843Cq4gzjchnTQCgju3NlYO5/844pCxEc0JnGdNBvXZoxOO/0nYXKW5gZgqPz5Sp1iNlkeoIcFPGNu61kTo2dwHNg6LHTTeifFbxclBkWIbhkq9bm2t9Gx9upnjxBWq3W8Ih8VTloMNZXu+CDvgabI7r8IFUxKO5OgcTkyPRjcHGIqCANasiJo9BKFtiDDO/AzVE92AcD3O8wFfri2GDiDXdHuGJm+YSUXXcSjqYy2vV3bRhih2G8oOL7KvBmjyAcfSYZSepmSm6bhJ+bIOc+Iw/BHfO81RQnHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/0nlNRR4KsLmjhSPFU0wvPfWw8ccbIg1qKl7F9TlC8=;
 b=f7SgTj3BdGgBQOgQig/CboQN0/mWqevHYWceMMTUCVecfECXLMf6jgEbaKEYHAhUYSJ8sNs5TTjfXcvEng/ai8ivh95vrSdNbtsW1aMeEwDdq4LVpo69LQLN2eu3PcblEs7qxHUVq4+u1rODohsyN797au6Regxbddp2AfxLOsOkpmMIkV0jk3Yo1bCtqG5dZ+KJQe25IjwnX6G+j3njzmC6dnAH2+6v9tq0COwXHRp7tSs6rD0XsIgUZInmAYDVPuxPSxEvlMOuVIGxFC4cT66zD9t2siA+bjdhjhGxpM+9+9LQcMRU62Jy+LPzmyaUO6+1UArlNRfhzW7mPxQwdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/0nlNRR4KsLmjhSPFU0wvPfWw8ccbIg1qKl7F9TlC8=;
 b=SC3tCdn2cBgz+uk0FrQpiMxdXlRZNPPGlweIN3UroDwEX8YMonNR7V32motrP28Do7mbkO/WWr88igVzLIHEhG4t4Xxwp4izZFV66m/c2ZOt2H8A/bFLcDtK8wdzm3WfsQtrG3So0zM02Hdf5ot1RUS2kkd/Qf6eJKB+Zdy+3xY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5123.eurprd04.prod.outlook.com (20.176.214.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Mon, 9 Dec 2019 08:19:55 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 08:19:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Topic: [PATCH V2] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Index: AQHVrmlwcc3x7P8/l0KrSdq2pbgfNA==
Date: Mon, 9 Dec 2019 08:19:55 +0000
Message-ID: <1575879445-15386-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0065.apcprd03.prod.outlook.com
 (2603:1096:202:17::35) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 422d5345-ed97-4948-1e84-08d77c80928f
x-ms-traffictypediagnostic: AM0PR04MB5123:|AM0PR04MB5123:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5123FCD5915FF4D731CB9A3E88580@AM0PR04MB5123.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(189003)(199004)(86362001)(478600001)(99286004)(6636002)(66556008)(66476007)(305945005)(2906002)(5660300002)(6486002)(54906003)(110136005)(66446008)(64756008)(4744005)(316002)(36756003)(8676002)(44832011)(2616005)(6506007)(186003)(52116002)(6512007)(4326008)(50226002)(102836004)(66946007)(26005)(8936002)(81166006)(81156014)(71200400001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5123;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nlvcYqQGmh57h6cyRUJrklFdRNq//zRXD6Wv1AckfX7sBV+ol9cx/uBcHsoqsHHr4RqcLOpEUCtzxZSoC2WxQdVlnuQWBmIqvoEQvBzcbf5OdEt8BMMaeORQmHcaJGuLd44B8Yamq63DwBH1D+sWEEERbb9A7dsl+skZPK3KDA8H9sX7TUcrGPxDZUwZvYggwYzBpzVPyuDp3C6j2m6PL3KRrwkfkdbyxsbeHj2tc74OPw4XJIcpl+N99FKFu9OAHCcSMBl4ifxLy/I6QNBY4S02eoIyj5NYedDm9w/65Wmb43QhDL9V2XTeRaEdRFdb9T46qHVItL2YSW6G7yMx12JJCJgfkEeGZk5xrGTqkYH7h6j2O4/d/HKK9iAul01+6WWLboDCMrHe8Quu29HBFwnAg2kGYX6X+l/fBOKn1SmvVH4JRx2ehl/fUwI/dJTP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 422d5345-ed97-4948-1e84-08d77c80928f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 08:19:55.6283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rFA4Y43uULC2pAP7QYKWszpu0DsZYwip+1l8LI/AWSOlHc2T3xNCfHHQRxoUIR8FWPzYt57YeVd/bR1NqN60dQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_002002_245826_E175751C 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
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

The usage of readl_poll_timeout is wrong, the 3rd parameter(cond)
should be "val & LOCK_STATUS" not "val & LOCK_TIMEOUT_US",
It is not check whether the pll locked, LOCK_STATUS reflects the mask,
not LOCK_TIMEOUT_US.

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Cc: <stable@vger.kernel.org>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Update commit log, and add tag.

 drivers/clk/imx/clk-pll14xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index a6d31a7262ef..e2384271ed83 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -166,7 +166,7 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
 {
 	u32 val;
 
-	return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
+	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS, 0,
 			LOCK_TIMEOUT_US);
 }
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
