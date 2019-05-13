Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584EB1B473
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzuP5b7gFmm7xY+MkqpSjfQsEr+NCgzf4Ky54T0wiNQ=; b=Msxg27p28fvu66
	+T9kPqzzVgXb2iD7051qupvY0/p+VZftdCcsFsxixXigiPRNBeWPIOjOOlCZ9z8UvhKno8n5grjHu
	ujWEDKWaJCxZZay/X4SLVC4w+4UkdC3eKUf4jc2rIK74lTS6uEOCYTzG24zR8Y+tjzlanDJ1VKeQd
	4snboCNBkTnDobOqVj36uKNLawLhuJRH0bT+AZOLH2lse5P5mxcSa5sXmQg4rd+m8wY/g2qYtKqUR
	cl4gevNINCimdC8FplE7AInSrQU/CG2AqRQfX+fdK7BmIykc7FXxzMmDFZbacksZ77ve/kxkeYb2J
	cNK5eTPiuI11WKEVBmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8iN-0003FX-Sn; Mon, 13 May 2019 11:01:51 +0000
Received: from mail-eopbgr50069.outbound.protection.outlook.com ([40.107.5.69]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8iF-0003Eg-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MO6gaIlOGNiwxpeyq1/UarEoxpVmmpAv5XZMDwy+bUs=;
 b=Gz+RpwjmBj6SdA18JLV7LQ9yubJj+S9UcbQ32iNxzibwDEzS5AVFExUnHwF+yz5olPPlF/oaZy7Jp/D9J7jubupK4cqtbyDGulQC8ivC4aRs9tOTwN2tlopSqiIJUoGORDD5ZoDrTIcPzHSD3IvKvoCcDAF+CpSY7AILsQKzD0c=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5138.eurprd04.prod.outlook.com (52.134.89.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:01:37 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:01:37 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed grading
Thread-Topic: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed
 grading
Thread-Index: AQHVCXs8MBVHQc8rXk+VbTw870d1OQ==
Date: Mon, 13 May 2019 11:01:37 +0000
Message-ID: <cover.1557742902.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR04CA0134.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::32) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c118f5d9-fc81-42ec-7f23-08d6d7925e81
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5138; 
x-ms-traffictypediagnostic: AM0PR04MB5138:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <AM0PR04MB513891F95DB3E83E63735157EE0F0@AM0PR04MB5138.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(7736002)(2906002)(6306002)(44832011)(99286004)(36756003)(6512007)(53936002)(54906003)(110136005)(476003)(2616005)(4326008)(52116002)(256004)(486006)(6116002)(3846002)(14444005)(66066001)(8676002)(81156014)(81166006)(478600001)(102836004)(7416002)(14454004)(966005)(68736007)(5660300002)(50226002)(8936002)(6486002)(25786009)(66446008)(64756008)(66556008)(66476007)(71190400001)(71200400001)(86362001)(6436002)(6506007)(386003)(66946007)(73956011)(316002)(26005)(305945005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5138;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gN2oYHLkf37KAcdh14g8gP4EzbCxF7hyWR4jmtg42lS5mBttH62C26wMF0C6QqIAuHFB/jkUS94AgBIC4hBmvWpWgUwvWPeBmy0vjg5S25qdEVik9iIF1vQsICnShw4wajtazY2QU8zkuylr4wFKGgUgci3dy+2stIqUIp7GWjVjdInSUhN7hqKsAMD5HNxutUGeF/wZYsORcoZS4j4dvTRQF+uBQ2tAxB1jWX2Q1bXPZuowhYdKW+rrS9BKqFntrOsUVJHx4u6y3jr4XUYrc/9UX3KcwO+pFC0zomnKFwrvOILX399Tox8eYsEZP+ntyMaHvxLA9TUFQfUSc4MwLUYS3vAQhrp1rXH3zjwh+TNDPJfMouAfMdmi/iCUIdCnokhUDi4Wxer6NJW7ma2mWhC8h9I0IynGr/sZmka9CS4=
Content-ID: <13C41D9609273F49A77AE0DA0AB8AA6B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c118f5d9-fc81-42ec-7f23-08d6d7925e81
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:01:37.2824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_040143_343050_A5CC43D5 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
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

Changes since v3:
 * Drop default m entirely (Viresh)
Link to v3: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=114685

Changes since v2:
 * Minor reformatting in Kconfig (Viresh)
 * Open-code imx_cpufreq_dt_match_node (Viresh)
 * Add mkt_segment bits to supported_hw and update .dtsi to match after
reviewing latest datasheets.
 * Add devicetree list (keep forgetting dts needs to be reviewed)
Link to v2: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=113163

Link to v1 (RFC): https://patchwork.kernel.org/patch/10916769/

Driver is built as a module. It depends on nvmem-imx which can also be a
module.

I never noticed anything wrong with going above the fused speed grading
however it's technically unsafe so the cpufreq code changes should go in
before DT changes.

Leonard Crestez (5):
  cpufreq: Add imx-cpufreq-dt driver
  dt-bindings: imx-cpufreq-dt: Document opp-supported-hw usage
  arm64: dts: imx8mm: Add cpu speed grading and all OPPs
  arm64: dts: imx8mq: Add cpu speed grading and all OPPs
  arm64: defconfig: ARM_IMX_CPUFREQ_DT=m

 .../bindings/cpufreq/imx-cpufreq-dt.txt       | 37 +++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 17 +++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 26 ++++-
 arch/arm64/configs/defconfig                  |  1 +
 drivers/cpufreq/Kconfig.arm                   |  9 ++
 drivers/cpufreq/Makefile                      |  1 +
 drivers/cpufreq/cpufreq-dt-platdev.c          |  3 +
 drivers/cpufreq/imx-cpufreq-dt.c              | 96 +++++++++++++++++++
 drivers/soc/imx/soc-imx8.c                    |  3 +
 9 files changed, 191 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt
 create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
