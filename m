Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32CB13E58
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 10:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RHhYxsjWWJK933uBs4c66/hYWTzrs+DMRKXt4UMF4Ik=; b=Zcza4IyjKemfbZ
	RBxIa7Qz/bHX7Jfcf76Ra4ERjraWveloF05VzUmIXWhFhGL/plDvUWsZ8xWh3XFgV+49wnfsnXF5a
	QPDKwKoxi875KvzqQYfRL6kw/+58XqSo6b6EKy5N1aFBzGNdY4omXcRK+9tuD48SBUd7QdWWJkrQT
	41/AMq4w1H72FMc1gMjhEm2dwXI0vOhSOaRReZqx1teBBR7BntgLKuVhpQk9dpFlTade5cgOSYFk/
	aRx47jPLjOVbLmLT3bscLRCaytAxkyQ05cpS949MwueW4Phm1GAx8sR6aW05c3NUueUX2hdGJnIyq
	PHdEV0Wem8ZdDpD/zO+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNC70-0007rx-3B; Sun, 05 May 2019 08:03:06 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNC6o-0007rU-1E
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 08:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjuzFV7a9sIgcJgmTqibTtxLFuGtK/9z7b50oy4mXXo=;
 b=x6htGMd+xvsJjUby2r1zUbUHjC3jaP5JAmly2Jz5QAhhrUrrlGeyxUBkQ6UqeR91kXh4VcTXDhbg2pgAKODveikBmva2KG9L7PTIce8F8J377m+X38a+oD5fA9BixPL58zMaq6MDniEL06OoU4eYMvGPBocW2eXpBKo5axfpu5I=
Received: from VI1PR0402MB3519.eurprd04.prod.outlook.com (52.134.4.24) by
 VI1PR0402MB3584.eurprd04.prod.outlook.com (52.134.5.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Sun, 5 May 2019 08:02:48 +0000
Received: from VI1PR0402MB3519.eurprd04.prod.outlook.com
 ([fe80::f830:3f53:72c1:b14f]) by VI1PR0402MB3519.eurprd04.prod.outlook.com
 ([fe80::f830:3f53:72c1:b14f%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 08:02:48 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH v2] cpufreq: imx6q: Fix the resource leak caused by incorrect
 error return
Thread-Topic: [PATCH v2] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Thread-Index: AQHVAxjtnjxGnDga/EKgfP3NYCr4Xg==
Date: Sun, 5 May 2019 08:02:48 +0000
Message-ID: <20190505080736.27970-1-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: HK2PR03CA0062.apcprd03.prod.outlook.com
 (2603:1096:202:17::32) To VI1PR0402MB3519.eurprd04.prod.outlook.com
 (2603:10a6:803:8::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 175fe945-3197-48cc-5101-08d6d130100b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3584; 
x-ms-traffictypediagnostic: VI1PR0402MB3584:
x-microsoft-antispam-prvs: <VI1PR0402MB3584787147E22385280F39A387370@VI1PR0402MB3584.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(376002)(39860400002)(346002)(189003)(199004)(4326008)(102836004)(86362001)(71200400001)(316002)(110136005)(54906003)(71190400001)(2201001)(53936002)(66446008)(1076003)(50226002)(68736007)(66066001)(386003)(6506007)(8676002)(2501003)(476003)(7736002)(2616005)(8936002)(305945005)(486006)(81166006)(81156014)(6486002)(52116002)(478600001)(186003)(256004)(26005)(3846002)(6116002)(66946007)(66476007)(64756008)(25786009)(66556008)(36756003)(6436002)(14454004)(6512007)(5660300002)(73956011)(99286004)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3584;
 H:VI1PR0402MB3519.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XFm9RWRAIDesOSvgVlRA+mA/p1GKSrdBBn6L7oa/LEx+IbfOdFHwuWZMjuUs9LMWI2KhhJEzWpYNUt4LjnnHuSWcjz0o2mgP0+wI/7/q6533ZpI3KtDm5xoz1izgzOT7Dw+0Q2PxN+bO0fGs5y8FdvtmoyEICg9e7W5M8H8nU9u3k8gN+stpRpNuDv+HXki1JtUOhTXN5PD/edpbLnPkiK9uAz8ybSpaeyijIzFSU3dNEUXCGjGfg3cvx3Jr/KI7tUeXlXXr6Z6uY12pnG7Jd4+5thb6BL6FLBn+aX16wT8f3Ca4FmYl7M5rNDitHcnr0llICDnfKKmCwG0Ps0Xaqlzn6AtA3Nib9lU/CaOoRTorks0l6Fi1EPavW2CrrlJpbaAiqeKkHbEN7lGYTSLIg3pokqt+gRMCL0R+ge5jrsQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 175fe945-3197-48cc-5101-08d6d130100b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 08:02:48.0578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3584
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_010254_078419_170C72D6 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previous goto only handled the node reference, the opp table,
regulator & clk resource also need to be free before error return.

Fixes: ddb64c5db3c (cpufreq: imx6q: fix possible object reference leak).
Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/cpufreq/imx6q-cpufreq.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 3e17560b1efe..1d4ecefaabc6 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -383,23 +383,22 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
 		goto put_reg;
 	}
 
+	/* Because we have added the OPPs here, we must free them */
+	free_opp = true;
+
 	if (of_machine_is_compatible("fsl,imx6ul") ||
 	    of_machine_is_compatible("fsl,imx6ull")) {
 		ret = imx6ul_opp_check_speed_grading(cpu_dev);
 		if (ret) {
-			if (ret == -EPROBE_DEFER)
-				goto put_node;
-
-			dev_err(cpu_dev, "failed to read ocotp: %d\n",
-				ret);
-			goto put_node;
+			if (ret != -EPROBE_DEFER)
+				dev_err(cpu_dev, "failed to read ocotp: %d\n",
+					ret);
+			goto out_free_opp;
 		}
 	} else {
 		imx6q_opp_check_speed_grading(cpu_dev);
 	}
 
-	/* Because we have added the OPPs here, we must free them */
-	free_opp = true;
 	num = dev_pm_opp_get_opp_count(cpu_dev);
 	if (num < 0) {
 		ret = num;
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
