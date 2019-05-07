Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863C816511
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W9MQYdexDUYCpGkIRJ6TnMJra5w3+dRGtz6GA9q2AzU=; b=hR0UVTP+LTFQkr
	N544YgX/sGIgmsztmGP89z2M9GvEfqoG0+ezyfno1+hBtwOcbf7dzKZQ6Md1CSNnu2EoM2enDK4sR
	LNC55uvNnfTI+AYvSW5oE+MAqMjOtzUYKqk/NGubEri3DS958XRMkoOGe1qYG+XLiO0ZyrUhFCCQj
	qgvallSAGL+ye93hcGFfXsCg7/OUFkvU2jvRrTt9Ud/IGeqm5krlpFgbplSh2RCS1qmrumgM3vguL
	zym+pUMbSe05CfA79/UsniZl3bUKD27siU6l2497yja5vIzoEhDNDmuzj55q2eHc/GQH1etgmUXET
	HPiwNrgtLvWwj/h7Oiwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0WH-0002XC-Le; Tue, 07 May 2019 13:52:33 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0W9-0002WM-1F
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZPIpNe/sYvT8+vNlOIzRA0yEC0RBd/6uokBQ1R65OJg=;
 b=eF4tvebw2SrJ2KVBZ0WDIdfczNO7xUsuknMnyRZq82UW6S/E4exm2NC5mJypPD9XHRYobif0rcrM2zT5netzJgjyvkqgbXZUcvD+txD7y1dh3//GyE14Sz+79aZIDyBHJuLV6hTNl7GswuLZpUSnqmri0rz2jpnRRA9VbhXLaHg=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6548.eurprd04.prod.outlook.com (20.179.254.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 13:52:21 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 13:52:21 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/4] cpufreq: Add imx-cpufreq-dt driver
Thread-Topic: [PATCH v3 0/4] cpufreq: Add imx-cpufreq-dt driver
Thread-Index: AQHVBNwXNrFwRf2w50WsyF+7BjHmLQ==
Date: Tue, 7 May 2019 13:52:21 +0000
Message-ID: <cover.1557236799.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0202CA0006.eurprd02.prod.outlook.com
 (2603:10a6:803:14::19) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a627e12e-34c6-4f7a-e30a-08d6d2f339f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6548; 
x-ms-traffictypediagnostic: AM0PR04MB6548:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB654844701CDA9F9DD15BEBBDEE310@AM0PR04MB6548.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(346002)(376002)(39860400002)(189003)(199004)(8676002)(81156014)(81166006)(486006)(86362001)(68736007)(6512007)(110136005)(53936002)(54906003)(71190400001)(4326008)(966005)(102836004)(66066001)(8936002)(36756003)(52116002)(6506007)(50226002)(386003)(14444005)(256004)(14454004)(476003)(478600001)(25786009)(6116002)(5660300002)(2616005)(3846002)(44832011)(305945005)(66946007)(6486002)(73956011)(66476007)(71200400001)(6306002)(2906002)(99286004)(6436002)(26005)(186003)(316002)(64756008)(66556008)(66446008)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6548;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: l1o3fE00RwJVE88vcA7ytHEOw84YshlG4SlHTEJrtzjq5Le0Lrz776QK53de/ZzUV5Rmf6bFn5xQJ4bI6IotWI95aZKFf9mQpHxTAyNbUZCXkkUEBrpWAuy+YcPMrszs812jqFgB/INbvWuBlh5syrct6ElyzDp+413+gDBG1znBmx5B0Mn3adst8QqUQgvpoShphsx2WP/gSV0o1zHDujHcIeyKVXBIKyrLlWenoVvpU51MD+Zi+TbtQKZEWGQPJVwgcxSMWrj+2gDe5PNPBk4Yv6tX4gKlxGMo+660iiE3Yl3gVRgWiKPy7lVBPq4PkNCfzET53O/ljWs4Uddr0etVpZtXryRwI3tl+Tdt6MNXpB4y7HE6lg3jyRek7mHpGJaWz0q59PgnMBBUT5wXzIN0/Qc9rQ199S3ZKgPUpc0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a627e12e-34c6-4f7a-e30a-08d6d2f339f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 13:52:21.3147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065225_141450_F6B2B7DD 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "Rafael
 J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now in upstream imx8m cpufreq support just lists a common subset
of OPPs because the higher ones should only be attempted after checking
speed grading in fuses.

Driver reads from nvmem and calls dev_pm_opp_set_supported_hw before
registering cpufreq-dt.

Changes since v2:
 * Minor reformatting in Kconfig (Viresh)
 * Open-code imx_cpufreq_dt_match_node (Viresh)
 * Add mkt_segment bits to supported_hw and update .dtsi to match after
reviewing latest datasheets.
 * Add dt-bindings like other opp-supported-hw users
 * Add devicetree mailing list (keep forgetting dts needs to be reviewed)
Link to v2: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=113163
Link to v1 (RFC): https://patchwork.kernel.org/patch/10916769/

I never noticed anything wrong with going above the fused speed grading
however it's technically unsafe so the cpufreq code changes should go in
before DT changes.

Driver is module by default. It depends on nvmem-imx which can also be a
module.

It's a platform device registered from soc-imx8 because couldn't find
any appropriate node for MODULE_DEVICE_TABLE(of).

Leonard Crestez (4):
  cpufreq: Add imx-cpufreq-dt driver
  dt-bindings: imx-cpufreq-dt: Document opp-supported-hw usage
  arm64: dts: imx8mm: Add cpu speed grading and all OPPs
  arm64: dts: imx8mq: Add cpu speed grading and all OPPs

 .../bindings/cpufreq/imx-cpufreq-dt.txt       | 37 +++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 17 +++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 26 ++++-
 drivers/cpufreq/Kconfig.arm                   | 10 ++
 drivers/cpufreq/Makefile                      |  1 +
 drivers/cpufreq/cpufreq-dt-platdev.c          |  3 +
 drivers/cpufreq/imx-cpufreq-dt.c              | 96 +++++++++++++++++++
 drivers/soc/imx/soc-imx8.c                    |  3 +
 8 files changed, 191 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt
 create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
