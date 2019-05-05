Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B496A13D4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 06:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wZProgMB1cVh4KOpA1X/WNY2p9QBlaZ0sGnd1pfCYlE=; b=do1SYNoi1kkuD4
	XFCO7gHOzWadZ3vgOVTboqxKwvxfRjGbyuZXrdyFbTmC52NmE684WaXk2ybQYcKCXs47ZiJ2u3m0E
	fu4nIrsKWZJlqPHqG3ml2zQx9UHtRbAM88CTZW1IdGjew2Y9/k8c+275qg/JUHjIH5YxrMRzKN0U7
	lLU9LTLiyzwLZTCP7QToN1VJPNjeN9bcaxnDWVH2lWJVPoYn5vVvuaLJjKNDjNCUaokuqUaCt1Hmn
	YpdOGES/iKGvz4A6x3HXjnIFgxXwib+U1NWG3OhDmuTvDzFwPTcjkHGrJZ1L/GCa5NzMYDZruzmay
	PMYNTfUp881mRy9dwH4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN8rh-0007KC-SQ; Sun, 05 May 2019 04:35:05 +0000
Received: from mail-eopbgr150047.outbound.protection.outlook.com
 ([40.107.15.47] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN8rS-0007Ji-Ci
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 04:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ANWUEQ6rBQifMaNgnq7/NTxHfRWd6clsc/NPPBLBXS4=;
 b=RrOWDVO8Do6Z6SZ6E+3YNlkR98l6QqABHfGsvuAMNuYIH7nhuCq2hw0Do7L0yaLk/n4RlbxS6F2hl8Wrj1USRbO5hndIHuPUTENCmx9MIZzztu5Jorm6EWJpfXZyRDQTH0wIhg+92IuqZDo385OtVV5shf4NyJLXEwnyW/reUGo=
Received: from VI1PR0402MB3519.eurprd04.prod.outlook.com (52.134.4.24) by
 VI1PR0402MB3343.eurprd04.prod.outlook.com (52.134.8.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Sun, 5 May 2019 04:34:43 +0000
Received: from VI1PR0402MB3519.eurprd04.prod.outlook.com
 ([fe80::f830:3f53:72c1:b14f]) by VI1PR0402MB3519.eurprd04.prod.outlook.com
 ([fe80::f830:3f53:72c1:b14f%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 04:34:43 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH] cpufreq: imx6q: Fix the resource leak caused by incorrect
 error return
Thread-Topic: [PATCH] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Thread-Index: AQHVAvvcgKY/ghVFik+vqE7MN5XPPQ==
Date: Sun, 5 May 2019 04:34:43 +0000
Message-ID: <20190505043929.19071-1-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: HK2P15301CA0017.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::27) To VI1PR0402MB3519.eurprd04.prod.outlook.com
 (2603:10a6:803:8::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 492b1a90-ee3c-4408-007b-08d6d112fe68
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3343; 
x-ms-traffictypediagnostic: VI1PR0402MB3343:
x-microsoft-antispam-prvs: <VI1PR0402MB334368CE20B9C91948E091CB87370@VI1PR0402MB3343.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(366004)(376002)(396003)(199004)(189003)(36756003)(486006)(64756008)(6436002)(66556008)(66446008)(1076003)(316002)(102836004)(186003)(6506007)(3846002)(2501003)(6116002)(386003)(6512007)(68736007)(81156014)(53936002)(2906002)(52116002)(2616005)(6486002)(8676002)(25786009)(66476007)(66946007)(73956011)(71190400001)(71200400001)(110136005)(26005)(305945005)(14454004)(5660300002)(66066001)(86362001)(478600001)(54906003)(50226002)(8936002)(7736002)(81166006)(476003)(99286004)(2201001)(4326008)(256004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3343;
 H:VI1PR0402MB3519.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Sa/cgq61mYkfFUB7DXAFp8TcuJysS3Gk056ASLMbTJV95Z7cl8gDM9dyTic9/fWilidM93CBcttDz9k4CvQkN38MFXyXgT1Q0VKnt0xXVwyyGB87h//2xI7sT9grxx+sWnytoz8rA4zCj2LsP3PmBgcI2FByS8fuHGFmj6UUOdL9RPD4tbisUEPdEthibRz9J8uqk2XnvafSsaXW+BCd1Fk77mhL4yKULYgaT4jm0KIPjcuR4WDeyWG5VDhEPvAC7bw6kdDn8Y2f/5SB9/nWqIg4whG3JecJxPGrxerY+SpF9JWkTsgijpr+c31hVR3qIQuZH1e5xwSXlFOrqyN9P9VobPCTXjo2aessY2OORuD9u30vLdbniJtEKKh7Vma9T0xCeJZidkpk9klOe7LpudPR4jMYYEwniLs6JUi9IkY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 492b1a90-ee3c-4408-007b-08d6d112fe68
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 04:34:43.3483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_213450_539060_3F9FC949 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.47 listed in list.dnswl.org]
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

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
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
