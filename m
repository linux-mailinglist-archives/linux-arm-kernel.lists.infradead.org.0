Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D4A114B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXFuW3+60buVFKhMBmjijAh93lvnZdZFNtAgNFs/vPU=; b=JUz1ymsF0p1Qq6
	ul21iaXCmGihsI28Xx3+cKK0En9tO123F3kgSUUKGPVXv2XSx6thVW5b0eUidPh1Mv7gOD1fZV53y
	O8fWcYGS1hI/JE+INRvhqUvKAVKlKacBRMDi+i5KBXbWA8Zso44/nJA5EUqKpcqHUkxMQ2utUI42x
	7m0wefI9iup92HKv0nBGk0c+pln2kS/xqm/c43Ch7gC35duXPJmHHMd17qLfTA4+fv+aYOOegnRWa
	Eu7i45fjx2/jBlxJpszjWOWS+anwb6t2QH5opD8mo0RczpIwfSEJUr9HrENg+vkzJaKWzxQ0BFT9D
	KRiyIvIMfS3LMjFpcL5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6kD-0005Ud-FA; Thu, 02 May 2019 08:07:05 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6jv-0005KE-FN
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iISrDjyAoc6TDYWK96wenQgzdLPqBXlHCjl2IjXhpn8=;
 b=HF6jVqTAfzDVon/M835T3fiXA4NM9KFH/VGmjzTb2vsWq0KYkVA0Zmx9xfYhgtPBCZrffpI3EOcJgwss81+HQm4XpInpS/Q4MzRod/GwuZAXBVwn3GFbCO2u7GTbmviLGQQeen3DPJJVJGnRL+pxfeSxo5NfFFAo4TzbxgS9Q70=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:40 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:40 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 01/18] clk: imx: Add imx_obtain_fixed_clock clk_hw based
 variant
Thread-Topic: [PATCH v2 01/18] clk: imx: Add imx_obtain_fixed_clock clk_hw
 based variant
Thread-Index: AQHVAL35/2k4N46H6UCnqYXwrcRJjg==
Date: Thu, 2 May 2019 08:06:40 +0000
Message-ID: <1556784376-7191-2-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d36d3cfd-22dc-4d71-fb72-08d6ced51b64
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB45637E9F40459D4343A60AF5F6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(14444005)(486006)(476003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8DLgjDcn4HIogCG4XchsY8es3GgkWMnJMWIdtw/YO0+D3k2taBFaLYaDw9NffmKvMxl+/H/qMU3+Xq2VPYsJ+DNF869EMTThWjHX7UYKdz/0WLYhnzfE4b1I/G/LPvXYpsaNL/YtEQTKE8/rxHaJvd7X9/94Afn+9BTO3Vf0n95z9BhvDEgtZ4Qcw6jDyOcPjVwduiQIy4XlcV2A5E1MmDE64bTkIVYsK1nTovv+SZE1ZUYhiG1bqTJi84Rp3a/Fje7UEGIqK3M3BvqxJvHWFfzDJgNfjWqNJ7KX2mf+vCv4OnvfIBrvPGUMbcR43W+JoGok3MYp2krg15QOVYic+hC9WjsihT2jhUIOKvcmWdHj//skhPSrd2WYgXk4thsw/ZF+57EwGPnRkYaF4E79RFMgnHHFy4WTSMq9w7qDCuU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d36d3cfd-22dc-4d71-fb72-08d6ced51b64
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:40.4681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010647_510139_937C961E 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to move to clk_hw based API, imx_obtain_fixed_clock_hw
is added. The end goal here is to have all the clk providers use
the clk_hw based API.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk.c | 11 +++++++++++
 drivers/clk/imx/clk.h |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 1efed86..d9ce911 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -59,6 +59,17 @@ struct clk * __init imx_obtain_fixed_clock(
 	return clk;
 }
 
+struct clk_hw * __init imx_obtain_fixed_clock_hw(
+			const char *name, unsigned long rate)
+{
+	struct clk *clk;
+
+	clk = imx_obtain_fixed_clock_from_dt(name);
+	if (IS_ERR(clk))
+		clk = imx_clk_fixed(name, rate);
+	return __clk_get_hw(clk);
+}
+
 struct clk_hw * __init imx_obtain_fixed_clk_hw(struct device_node *np,
 					       const char *name)
 {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 8639a8f..f76fa22 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -95,6 +95,9 @@ struct clk *clk_register_gate2(struct device *dev, const char *name,
 struct clk * imx_obtain_fixed_clock(
 			const char *name, unsigned long rate);
 
+struct clk_hw *imx_obtain_fixed_clock_hw(
+			const char *name, unsigned long rate);
+
 struct clk_hw *imx_obtain_fixed_clk_hw(struct device_node *np,
 				       const char *name);
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
