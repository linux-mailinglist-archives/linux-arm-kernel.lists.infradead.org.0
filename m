Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1365116517
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob1IIIqmHOsOxIc8fBLTQQ1fFWbwOoXGjW8M5++Hsxc=; b=EB/LtZwteLB0fx
	fHFKUB24V4cJvrOiopLiJdnm9eONtysHWg/KuE+2zXHp3TuWHCbsRpvibGyEQrkSNvgCRWhiKE1wY
	AQznrh2cWo0G9CQQgS/LNvR87O5Ueh5+X/+jrSrK/pxyef0zxcZm2ex+xn/QfK5BtmDDJoHA71n2Z
	+ghUINXvZlMxvTh4zJR0Val9XfxJ7JHuZRuZ1EmuMwC6k9RMiIi46FErKaP2cCnd80oZw/gCDh4pQ
	pWurKXEuG2Urzj7gVKNRNwDQYpqsQO2iOjt/bL8I/13AjrSBZAeCVtvDmqQjPhU+t5yWVIGsxBDX3
	2+crVm+i4tewAB7DinDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Wd-0002vf-Mu; Tue, 07 May 2019 13:52:55 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0WD-0002WM-5u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jGbl+gAFgO1V5cR2PKg351rAjFabMk5PNLef7wxZEJU=;
 b=PETNffK5umX1VT0ElvTv7Viu1CF0uBIa1ANmaKYME2BG16BEcCJJy8XbyJT8LQe/DBLSiTtByxA2CK7sbVKvRnoMryZFKVyfWw96WQo/7Kbs8qCyIpBEzsgQLd1CPnJ13g1LFfexz0kCMGVN7U4u4E4qRuuvRu9KtqxEFEoiegU=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6548.eurprd04.prod.outlook.com (20.179.254.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 13:52:23 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 13:52:23 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/4] dt-bindings: imx-cpufreq-dt: Document opp-supported-hw
 usage
Thread-Topic: [PATCH v3 2/4] dt-bindings: imx-cpufreq-dt: Document
 opp-supported-hw usage
Thread-Index: AQHVBNwY/kQ/3ak9eEqbSCeWjXpTtg==
Date: Tue, 7 May 2019 13:52:23 +0000
Message-ID: <79a798d7d93cc89549e5fe290c8139011b72ee01.1557236799.git.leonard.crestez@nxp.com>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1557236799.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: e3a41e83-fb92-4a74-41e6-08d6d2f33b59
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6548; 
x-ms-traffictypediagnostic: AM0PR04MB6548:
x-microsoft-antispam-prvs: <AM0PR04MB6548FC6E6B1E3343DBECC92DEE310@AM0PR04MB6548.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(346002)(376002)(39860400002)(189003)(199004)(8676002)(81156014)(81166006)(486006)(11346002)(86362001)(68736007)(6512007)(110136005)(53936002)(54906003)(71190400001)(4326008)(118296001)(102836004)(66066001)(76176011)(8936002)(36756003)(52116002)(6506007)(50226002)(386003)(446003)(256004)(14454004)(476003)(478600001)(25786009)(6116002)(5660300002)(2616005)(3846002)(44832011)(305945005)(66946007)(6486002)(73956011)(66476007)(71200400001)(2906002)(99286004)(6436002)(26005)(186003)(316002)(64756008)(66556008)(66446008)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6548;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /41C6Bg9jHzc72qWMI0lWXXPht+LS4o0Iw/ozo04nvvhgrV2Of2llvDGIKkdA1RoaC/3wHDUDy6ZHB8gNTPZFChlRZfo8hpXaKzHehR/mAWMz9ziiBO+6afnZzS4lCqKz44XSMoJ0ab8gOywDFjRCM/BKTFbevzxHEGUVaOgewIWXsIfqSiIeR+dV2x0Z2f9Tnp/nb5e1FPfgvrWx+eYdQVl/+qlpfqb9SK7bt2pQTAd9ceGgBT4FBGFNfz9jk2y5jPLEWYljIVKUx3jyuw34c/c0YcdgKaaxGIKp3IjUG/MVR0N584e/IkXQRx/EKMfEhXq0Do/XrILgAHKHuNmqP6FbFtHXQV4WA92uDyGBAxl2Gn68u23OnG3rG/RyE4IpcRyzmrFziMZPYHzFBBlrTI0udIIow3g+0lp4Mo1QPo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a41e83-fb92-4a74-41e6-08d6d2f33b59
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 13:52:23.6243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065229_422841_EF62A043 
X-CRM114-Status: GOOD (  12.42  )
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

The interpretation of opp-supported-hw bits for imx-cpufreq-dt driver is
not very obvious so attempt to explain it.

There is no OF compat string associated.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../bindings/cpufreq/imx-cpufreq-dt.txt       | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt

diff --git a/Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt b/Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt
new file mode 100644
index 000000000000..87bff5add3f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt
@@ -0,0 +1,37 @@
+i.MX CPUFreq-DT OPP bindings
+================================
+
+Certain i.MX SoCs support different OPPs depending on the "market segment" and
+"speed grading" value which are written in fuses. These bits are combined with
+the opp-supported-hw values for each OPP to check if the OPP is allowed.
+
+Required properties:
+--------------------
+
+For each opp entry in 'operating-points-v2' table:
+- opp-supported-hw: Two bitmaps indicating:
+  - Supported speed grade mask
+  - Supported market segment mask
+    0: Consumer
+    1: Extended Consumer
+    2: Industrial
+    3: Automotive
+
+Example:
+--------
+
+opp_table {
+	compatible = "operating-points-v2";
+	opp-1000000000 {
+		opp-hz = /bits/ 64 <1000000000>;
+		/* grade >= 0, consumer only */
+		opp-supported-hw = <0xf>, <0x3>;
+	};
+
+	opp-1300000000 {
+		opp-hz = /bits/ 64 <1300000000>;
+		opp-microvolt = <1000000>;
+		/* grade >= 1, all segments */
+		opp-supported-hw = <0xe>, <0x7>;
+	};
+}
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
