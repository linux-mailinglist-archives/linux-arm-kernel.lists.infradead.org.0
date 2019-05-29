Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B30E2DC35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+xLDMyq4nyVm3peiEmQ+3FwYffGKHotB7gxxgEr5fg=; b=XtZaJZZcwW5ZsI
	lasZFn/PE2fIdQuF7zEpw7mSj7rwRNFC9dqz1La+qSxMimOVqkQah3lvnV0/9o7iE7hF/1SIWwvgG
	B3tqaN9ln+x6vaa9wtBM5q1aQw8cCH2XRgoWe6qsJfZWTsS0SX5Q5JyLBFHZM5uhJLRwzOewG9E4Y
	bOXACiKYjx9H3vCINPDYWgZ/ORNEWsj61TiSNqqOos0S+a5H9psiN9GwQI7m131pL46b44O/832XK
	SeAJTqQTn2NbDUwYq3SMEX4S5cVDTRv08i1YY6gk1SnOTVwpkaZAx2hx28nqLDEyPEjxFTgyzumei
	w7dU5yh517LospLIf6kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVx80-00089N-A1; Wed, 29 May 2019 11:52:20 +0000
Received: from mail-vi1eur04on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60b]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVx7s-00088p-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:52:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7D/Gg8qSHSqJQGQHiq32cJjXVFES/JbGTqcX6A7suFU=;
 b=JcZiKf+XtADtW7RPo3RqV6DLkOuWb27QwvyE3UcdyzeylvqV7ocdJQWXVAZeTk7xjeSM4c2sm9uK9FWNWO0Jhgf/Bb9nI2AxGkBt0EtkDDa5NnuyqBssnguGuov0g+Kxvd07Exv44IRYm7QwXXI09LDOnQ6TpibuLZqqBvwfd6E=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5231.eurprd04.prod.outlook.com (20.177.51.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.21; Wed, 29 May 2019 11:52:08 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 11:52:08 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Fix no OPPs available on unfused
 parts
Thread-Topic: [PATCH] cpufreq: imx-cpufreq-dt: Fix no OPPs available on
 unfused parts
Thread-Index: AQHVFhTxPvevUIzw3UGv3Gp2x1Kq6g==
Date: Wed, 29 May 2019 11:52:08 +0000
Message-ID: <64c450d4ee5119ef21ae744a3ca90d7172f973fd.1559130569.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0367.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::19) To VI1PR04MB5055.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a001f2d-21eb-4927-205c-08d6e42c13b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5231; 
x-ms-traffictypediagnostic: VI1PR04MB5231:
x-microsoft-antispam-prvs: <VI1PR04MB5231C38F8DC288511EEB12F7EE1F0@VI1PR04MB5231.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(136003)(366004)(39860400002)(189003)(199004)(386003)(50226002)(6506007)(8936002)(102836004)(476003)(186003)(305945005)(4326008)(99286004)(73956011)(316002)(66066001)(2616005)(52116002)(7736002)(6436002)(36756003)(53936002)(6916009)(71190400001)(71200400001)(14454004)(44832011)(486006)(66946007)(66476007)(66556008)(478600001)(6486002)(3846002)(118296001)(26005)(6116002)(6512007)(86362001)(66446008)(25786009)(5660300002)(81166006)(14444005)(81156014)(68736007)(8676002)(2906002)(54906003)(256004)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5231;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MQp0K8Jicoc/sf040FtDzSikKL3TeMAKZZuTQbxhl2L7TIYrlnQtYB1vela3GShW9F2J1CaASUZN7EJpVniqRk13ijQrYaHK0NkOYZO7t4RGQ5WTcETWATjpPkB1JyPqNvpfmb7H/O6fnoJlZ1DbWjUJhZPxb6NHTH4lixnP/gGo5ivrh0VCdNxOQfL8hu1WThSCDKkGsEBwMkJ3n7edJuGsDyESQuHAUql979F2eOKS9ZMBXg7s8qbmE4vY+7ROZLoq8p5+N0SQLCVtheqJgFtNY1KfHOdHlP8TJR9WInXB2WSg19HcNXGthzqIFxt6kv9kanXLHyFSkkulaFhyvhIPJkrrMKS5i4rhV36GsDvSzn2XSz5t03x8P1vfG9C2mdZP2WToBGXzOVOQp1z/IsQ+k9VEOjSD+NR8r9hciuw=
Content-ID: <8E96EBCD316AAA43BF7BF4B50D10C3A6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a001f2d-21eb-4927-205c-08d6e42c13b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 11:52:08.3065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_045212_626186_4B9740DB 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Early samples without fuses written report "0 0" which means consumer
segment and minumum speed grading. According to datasheet the minimum speed
grade is not supported for consumer parts so all OPPs are disabled
which results in stack dumps later on.

Fix by clamping minimum consumer speed grade to 1 on imx8mm and imx8mq.

Fixes: 4d28ba1d62c4 ("cpufreq: Add imx-cpufreq-dt driver")

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 27b9b94cd4fc..ce26ffc18ce6 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -49,10 +49,25 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
 	speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK) >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
 	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
+
+	/*
+	 * Early samples without fuses written report "0 0" which means
+	 * consumer segment and minumum speed grading.
+	 *
+	 * According to datasheet minimum speed grading is not supported for
+	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
+	 *
+	 * Applies to 8mq and 8mm.
+	 */
+	if (mkt_segment == 0 && speed_grade == 0 && (
+			!strcmp(match->compatible, "fsl,imx8mm") ||
+			!strcmp(match->compatible, "fsl,imx8mq")))
+		speed_grade = 1;
+
 	supported_hw[0] = BIT(speed_grade);
 	supported_hw[1] = BIT(mkt_segment);
 	dev_info(&pdev->dev, "cpu speed grade %d mkt segment %d supported-hw %#x %#x\n",
 			speed_grade, mkt_segment, supported_hw[0], supported_hw[1]);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
