Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5FB1B476
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZKAMRiFOv75PqQyzX4P/nqKIMkbWsX2LPSrLQo9zuQ=; b=sdt0axQyj/YKir
	EbgXqtlGNMdSp46M8UfZj4NMatZLfb2H38w+No1JRs1dP4HOUcd2UCzSzl+Gxdm/r8BL55EKbpkjk
	pLRhIa9YEkNwr5VarSAqBwQp+iclzPkUzIAHMMYrl+B4O0nhQYp508V6WJJw4LE1cizHuKayr2kvs
	thW9i57QsKgKSoYljIZvhdfBnwLBtVHMOQjEj/3rqf9MAL/SllZ55QvSYqX25PZI171WnZrqRmOyV
	El6S9ChXcnlMNlKyGuZxfRODOJ2ADzWykpTaHCwzp2z7EGNmNZ6FXkRywlZLgfdwtfFb6E8rB+lZP
	G5rpu2g+YP57RAhTIJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8iv-0003su-UM; Mon, 13 May 2019 11:02:25 +0000
Received: from mail-eopbgr50069.outbound.protection.outlook.com ([40.107.5.69]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8iJ-0003Eg-B6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0HLsto6RypR9wpu4UvLd3TTLZClxjB7pGoFCvtXVU4c=;
 b=SFOgF7sBtQBK53o4LPfMsqwxjaPbkdPy0vMtXfC2U1d5DYVy9pUJZBEa7RYJJJXD8Vp3C7kwn6pS3gLTPFgeaFWGSc5Vk9YLhPUDhPw+/almg2yLFXKwaD3VaRNbtM/QwmmSGbSC7iz6pu/5M5AEpM+MJdvncfUhmC/tiaBE5g8=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5138.eurprd04.prod.outlook.com (52.134.89.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:01:40 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:01:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 2/5] dt-bindings: imx-cpufreq-dt: Document opp-supported-hw
 usage
Thread-Topic: [PATCH v4 2/5] dt-bindings: imx-cpufreq-dt: Document
 opp-supported-hw usage
Thread-Index: AQHVCXs9inARAVSFcUWhxp3Op/Tu/Q==
Date: Mon, 13 May 2019 11:01:39 +0000
Message-ID: <7948ab63fe5c92da280542a9a372349486d40c65.1557742902.git.leonard.crestez@nxp.com>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1557742902.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: 0ffd7468-d9b4-4faa-14c3-08d6d7926016
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5138; 
x-ms-traffictypediagnostic: AM0PR04MB5138:
x-microsoft-antispam-prvs: <AM0PR04MB51386384DC3CA370378AADFDEE0F0@AM0PR04MB5138.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(7736002)(2906002)(44832011)(99286004)(36756003)(6512007)(53936002)(54906003)(110136005)(476003)(2616005)(4326008)(52116002)(446003)(256004)(486006)(6116002)(3846002)(76176011)(11346002)(66066001)(8676002)(81156014)(81166006)(478600001)(118296001)(102836004)(7416002)(14454004)(68736007)(5660300002)(50226002)(8936002)(6486002)(25786009)(66446008)(64756008)(66556008)(66476007)(71190400001)(71200400001)(86362001)(6436002)(6506007)(386003)(66946007)(73956011)(316002)(26005)(305945005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5138;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Gv2/HoUT8RCeTA4yBgbY0F4VG7/Xq+pAxqaTPXQWqcWuvDtQ9aI9q8w+vXbJWbfNoDBuOak3IVfzpW0rL4hwgpmqZmNeAVEIL4Y2VPoVHkCr9rz0znDZ0lphhmTtT/mJEWSgUnzbK3dbiyRFnxOF0YdEcRc8lsL0WkPHE+MC6R8sp5QPxkgdsm+6I0SK2gn516l9gDEvJ6QG1BKzwRxwaRhjH6aGi4ihVQyT0uA8CqkSCN8QsPfdwNgQREQMsJGJNSn/Sp8wdJSgjtEujgxoVWxv3syUuFUsaDslAn4repg8y6YUkArKq2GR32PALWDArHEu17878tGdzhIQQoIeAXFKUI09CT0/MaZRCdMxXCbHyCiwXd9ZerQm+VNEqytOqnp7vSAdEP60G/U7zYcZ5bmV0vswaLYYeMdgS6iud54=
Content-ID: <1609FAC9533FF0449E0A30AD2B339619@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ffd7468-d9b4-4faa-14c3-08d6d7926016
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:01:39.9489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_040147_577430_DDDFDED2 
X-CRM114-Status: GOOD (  11.77  )
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
