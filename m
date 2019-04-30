Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC77FC41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LBFeGasrIlQucv7E1F5CrXidrYF5QDygnutteHStV0=; b=D7cOi6Tu4ExyPZ
	CbXgUsJZluPAlk4viqAbyPQuVpeo3YmRNC9ZCmpNoFaY113GPz05HrriDCgOZZJjBYbiFN/w6hNhv
	J+QEMvpwZrewstwDdLe6l5efF5tRedvEiZ5CYZ/hi0eQ3VILAX9BFUFGF/RFlx0uEaom0aU2XD0nf
	D89cGaTLTZrD0QJXrXsj3XKmPBPGvbWfd0cgE4uLtMmeRNbRTVkjgCqVXJFHqg+swpOidkXV50ZqQ
	IkFPjh6VLmSdSyuCMYXSeQztSu5gNQ6JM0OACX7A06AgSC6tx0T4/47S6M+lbX3xeopRSng1Om39R
	LOCtj9ZR3ow1Z334CyIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLULU-0005um-6V; Tue, 30 Apr 2019 15:07:00 +0000
Received: from mail-eopbgr130057.outbound.protection.outlook.com
 ([40.107.13.57] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUKn-0005Jx-UO
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qCyXE2v0gaGjYZIuzW3baa0FKPpsncWzwhLAVdtmFlM=;
 b=Nnj7Nrxe5vJgrYIDfMOiYaavkMREGMOt8rX2bm1Y/yiy8ATDw5QpcLoPi6bftHJuIeeGxsBOz2sCneZrkdlvQBv4By9c6GuWYTAihrO6dWG4PNUDtYTX6MQn6W9LtMi1Ry0dxrMjgIWVnbhS6NYK5Cgrhfhzw6Qt68QmU31MAN0=
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com (20.179.244.217) by
 AM6PR04MB5478.eurprd04.prod.outlook.com (20.178.93.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 15:06:12 +0000
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4]) by AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4%2]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 15:06:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v5 2/2] soc: imx: gpc: Use GENPD_FLAG_RPM_ALWAYS_ON for
 ERR009619
Thread-Topic: [PATCH v5 2/2] soc: imx: gpc: Use GENPD_FLAG_RPM_ALWAYS_ON for
 ERR009619
Thread-Index: AQHU/2Y/OY5ccvekDkmJRXHYA33jSA==
Date: Tue, 30 Apr 2019 15:06:12 +0000
Message-ID: <8f53bef00e72aa35d146210bb71ca05b8a3af141.1556636234.git.leonard.crestez@nxp.com>
References: <cover.1556636234.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1556636234.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0902CA0058.eurprd09.prod.outlook.com
 (2603:10a6:802:1::47) To AM6PR04MB6440.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2aa435b3-0c2e-4f36-fd1c-08d6cd7d6239
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5478; 
x-ms-traffictypediagnostic: AM6PR04MB5478:
x-microsoft-antispam-prvs: <AM6PR04MB54782D46C4BA453664A70070EE3A0@AM6PR04MB5478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(136003)(39860400002)(366004)(199004)(189003)(8936002)(6116002)(50226002)(81156014)(3846002)(81166006)(8676002)(66446008)(4326008)(25786009)(64756008)(66476007)(66556008)(6512007)(73956011)(2906002)(66066001)(86362001)(66946007)(52116002)(53936002)(118296001)(36756003)(99286004)(316002)(110136005)(54906003)(7736002)(44832011)(305945005)(97736004)(14444005)(6506007)(386003)(102836004)(26005)(11346002)(186003)(446003)(256004)(486006)(476003)(6436002)(5660300002)(6486002)(14454004)(478600001)(71200400001)(71190400001)(68736007)(76176011)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5478;
 H:AM6PR04MB6440.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: A8KeZJb3yRx9e626m8wGmurcZ4NXukO23oGR5KNBr9mhzDpkZLrukHYCKVDQqaVEBjoqPiS+wfeFelRBnJMWSvabjsc/qHzjeC0uOgRvLVL6LJ4ofC209nTfRhEn19vOEyh5GWG5XoNfAylgO0TdLhf6lQSkOuwEJ1PQsEpVk4yc6kjHlQHuNlyM+Sb54JbGjKIqyvy+wyvUoDE2IJG8CxoiL6SNC+r2a986F0zjzBRtLaqxIMV785c878KDaDflFgXO1qI/+90N7kNObXSAM8FWNN6FyDv/lPC11FlrxbCGEa1kZNfu9RRgSY57PL2I5fYTiF5jfoDD3ajwPFbb22o917+aI75YRMaEBSvpQ1EVcqSVIXTEwb/dEAIsPQCKvoxSiRxgpNHfH0AelEkp+vUjXEwcbpTWI/Q/iIPPW48=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa435b3-0c2e-4f36-fd1c-08d6cd7d6239
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 15:06:12.4839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_080617_975552_614EB0BD 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows PU domain to be turned off in suspend and save power.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/imx/gpc.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
index a8f1e47ce698..d9231bd3c691 100644
--- a/drivers/soc/imx/gpc.c
+++ b/drivers/soc/imx/gpc.c
@@ -427,14 +427,23 @@ static int imx_gpc_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "failed to init regmap: %d\n",
 			ret);
 		return ret;
 	}
 
-	/* Disable PU power down in normal operation if ERR009619 is present */
+	/*
+	 * Disable PU power down by runtime PM if ERR009619 is present.
+	 *
+	 * The PRE clock will be paused for several cycles when turning on the
+	 * PU domain LDO from power down state. If PRE is in use at that time,
+	 * the IPU/PRG cannot get the correct display data from the PRE.
+	 *
+	 * This is not a concern when the whole system enters suspend state, so
+	 * it's safe to power down PU in this case.
+	 */
 	if (of_id_data->err009619_present)
 		imx_gpc_domains[GPC_PGC_DOMAIN_PU].base.flags |=
-				GENPD_FLAG_ALWAYS_ON;
+				GENPD_FLAG_RPM_ALWAYS_ON;
 
 	/* Keep DISP always on if ERR006287 is present */
 	if (of_id_data->err006287_present)
 		imx_gpc_domains[GPC_PGC_DOMAIN_DISPLAY].base.flags |=
 				GENPD_FLAG_ALWAYS_ON;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
