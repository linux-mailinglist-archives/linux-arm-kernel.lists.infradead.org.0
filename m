Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94E12CDDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Yd3ga6Aj1WR3rVb+B+b4pgUStQOwJ+IWQE158sGGIc=; b=k2X2kWBRjiSoIy
	ANZDFOj2PRqeq6E4TbM+Jdz6gjzONXsIExCv1R9MEZXh1wlD8wEnXLUWHC7a6UhN6Tyh2mB6FLLNq
	yB8/X9Zs9rbAZV87ldGWppI9ncTjyHTIzUN82uQX43brviQ0lwrOyei1ydYSch5bMVbblAwA4z4yX
	5WvEtz+C4m1EtF3VOpswPwgjrrthu7CaOz6zkjM7CTx6wvR/6mRvuiG53Z50l7FBdWCjszMH/XqMB
	LRx6lKi3FYi1T4cg715BDpdf1sg9UOHbalhZP5JmqgyNm/0HV4/0cwcciBBPriuprALp1ui5ZXsV6
	QGvKEk8u6hiKEUKSrrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqy6-0001Dq-1O; Mon, 30 Dec 2019 09:04:06 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqxw-0001DQ-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:03:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HC5qAI7hejVIrgUeFHpsfczyQwspjaf+60+owUmFhbQl3eRVIlG908JVeXQUDKXcIzMF8RxkR56eFy4ktZuIVbvcKtefMDX6WCOL8du/SqshnB0LFehAeIx9E1JafB6f5Lp8CdA7dwFzWRdRShjXDc0SxC4JFeTekfcHs/X9oHK6AAcoFqrlXUJlTjiWq0bWeQt2wkRWnK3lrqED2bBzMQZJWbI171svt93xZdTcBspOew4uX4FMrlfmMs5QpAF2H6DuUVacl0R5ufNENCh9aedBEcPnt7+zlZNzA5yPjDbppA1woRzpGCSUn+zFG+mRu3IRqYqAmj9i2lVBuLQlmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4L3MzR2o6uZGqxIakM7tPEhQ4hhMPBTbcxMQLFauVA=;
 b=LQWGJeRBa7gwFf6FYeZ/2ioHvcalq4aswmR07c2I3W91W/OzM4lQnUES/ju+MGUTrnI/+HOFNYuhSXpI0mjQhH5/Ewfnbvz74RtF1mLA256m6q8OnmyKSKFRv2nqNLfK8MTzCmhzhEWWke2kuTuRQkPI0ATRuWR6G3uGEuD0i4mCHlIGFAi+ghlLpMmDq9mobE1nOn25yblhG8xfOWw4sPuhoZaRpHzhN6rh0tUr7UWiF6VzYjheeZLD4WOQMu6aDXdJOfG2iQGXEkaMPO3mb6X67d9ojADLdVbTLO249y6kTnnoHSLvH6fpDDXisn6t3ewRlxH1o01+Brr8iHLXrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4L3MzR2o6uZGqxIakM7tPEhQ4hhMPBTbcxMQLFauVA=;
 b=KulnQ5KPWLSsOLgCzEpgbyOX1hRW1j8IGxXMNeJoS/oDac5TTRNtNZ5MtGLO/C2RQM2f9A2XsxcAm26qmsOlytdPD6LnMvxDhWbEz4nswychFxo1032+SF2mUuoe8VFdyRULS0KdMWBnfJ6h+Y8noZY2HEetQsRoGlpO2c3eY3I=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5347.eurprd04.prod.outlook.com (20.178.115.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 09:03:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 09:03:51 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR0401CA0002.apcprd04.prod.outlook.com (2603:1096:202:2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2581.11 via Frontend
 Transport; Mon, 30 Dec 2019 09:03:47 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH] ARM: imx: use of_root to simplify code
Thread-Topic: [PATCH] ARM: imx: use of_root to simplify code
Thread-Index: AQHVvvAOkP5pfM/SI0ufVklMt6+Kwg==
Date: Mon, 30 Dec 2019 09:03:51 +0000
Message-ID: <1577696316-27635-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0002.apcprd04.prod.outlook.com
 (2603:1096:202:2::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ad0930dc-d534-4405-e1c2-08d78d07306a
x-ms-traffictypediagnostic: AM0PR04MB5347:|AM0PR04MB5347:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5347FE777C67F861F3AA7E2F88270@AM0PR04MB5347.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(189003)(199004)(86362001)(956004)(52116002)(6506007)(71200400001)(16526019)(66556008)(66476007)(26005)(6666004)(316002)(44832011)(81166006)(8676002)(186003)(64756008)(6486002)(2616005)(66446008)(8936002)(69590400006)(81156014)(66946007)(4326008)(36756003)(6512007)(2906002)(54906003)(110136005)(5660300002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5347;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WQSlAbDFSehprei1uR8t5gyOWBVCbCXPWJF31OC03XGW+B+lagjTorfO6jh8u9gVurdxoVHnyG0uy8n8SOHeyuV29TwbAio9pT41HkPUBGcSburIELJlzdwLtlsC8+dr3gNfy3iNn+qxiEj3AtwB/GVc6p6AQrbw81xWdhwKH4S+8ywzilQ6Ju7u9nt9ImrR83ixmm0VWaSURYbG+uHFwPNNZ3Ibvcmh5ksL+K2eNpxccu50IMHBdEa27F9FwBDiLVPhvd4C4UdsFKsrHA/rfhAwe6L234JdKC+2SoMcEknRSCjQBRjo7/4MFYjKtezJCNectKEzLc9Il17PdmhhRPlb+HpBhM2E+/Ncg/n6+fsHePh5ZAbMC4D+eVApaKhpV8dtWqUI5N7P9SNdQ2IkhGIjEGFTkwnxsxSG2s7mTJBaurTl/bze+131YFeF1CfV6sdyH7nHY2PcScJ5DneBEfqk5Ui31iDjY4TnyYKjLKi/x7GnfPL3etuUWCVAh3Dd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0930dc-d534-4405-e1c2-08d78d07306a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 09:03:51.6420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lp/83E+mcCxrFlXylClC2byJgFPXDf6WAmWYy8McLt15PZqdgh0pWCWTW0yq4lq1Q5xurugpa6Y6rNVFrcl27A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5347
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_010356_453525_CD928667 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "cniedermaier@dh-electronics.com" <cniedermaier@dh-electronics.com>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

start_kernel
     |->setup_arch
     |       |->unflatten_device_tree->of_root ready
     |
     |->do_initcalls
           |->customize_machine
                       |->init_machine
                              |->imx_soc_device_init

When imx_soc_device_init, of_root is ready, so we could directly use it.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V1:
 Tested on i.MX7D-SDB

 arch/arm/mach-imx/cpu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 06f8d64b65af..77319b359070 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -88,7 +88,6 @@ struct device * __init imx_soc_device_init(void)
 	struct soc_device_attribute *soc_dev_attr;
 	const char *ocotp_compat = NULL;
 	struct soc_device *soc_dev;
-	struct device_node *root;
 	struct regmap *ocotp = NULL;
 	const char *soc_id;
 	u64 soc_uid = 0;
@@ -101,9 +100,7 @@ struct device * __init imx_soc_device_init(void)
 
 	soc_dev_attr->family = "Freescale i.MX";
 
-	root = of_find_node_by_path("/");
-	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
-	of_node_put(root);
+	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
 	if (ret)
 		goto free_soc;
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
