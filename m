Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD6A18AA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 15:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMHUEajRZvnZeHqds9nTd9mQsr7RZvt0LI+dxXrXIFw=; b=SVB54H/vMhW8Qg
	u7tTzNbpdj3QrVk/KeMK1EFgTcfWdkhtNUD+krUiea5dZ1/Uxjpqc0a9iqK3XQx4gXHyBNmIQeHTE
	oFbLcZBQY9wq3tWZADTO7xpriZKzIhi04+uDkf4ifXNo8pz9iq0Sr9gXJc1V815/tqKgaIAWB7420
	k1XFmvdhWm7tbyHAzJmKFmqqdlTpxw0EXkOK7K7ON0SL/2LixzrbbEs7p46wboYGiSXWQVJ5Kbtth
	uIfmRQ2ZWjJt6f6JF9xDr1g8dMd6lXdUEtRFcvo7nwPrvBtIBUyd7gPJZKvwsWTdpW7symawjsNFs
	Dk5vKUyVhGBTeIK5xfvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj7B-000097-G0; Thu, 09 May 2019 13:29:37 +0000
Received: from mail-eopbgr50066.outbound.protection.outlook.com ([40.107.5.66]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj6y-0008Ru-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 13:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMyZSRZWP9Hc0YpaV+W80epMlNnE3Yn644AfS+cx86o=;
 b=f/JFlPyS58l0q8JOcqP5w7tl1zLkgBcxGyQ6nd52Ds0s5CfFBKtvdJzUbsSgwMV0IVCPeMBtKm063h8lgNhWgfAkZbHp8h2bR6S69VvDp1jiLLFrCWorSzICsohOeq6bVzdEmbZYPfonucDXik1NI/dDa5MqI5aB47s2EN1tf2I=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3673.eurprd04.prod.outlook.com (52.134.70.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 13:29:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 13:29:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "otavio@ossystems.com.br"
 <otavio@ossystems.com.br>, Leonard Crestez <leonard.crestez@nxp.com>, Robin
 Gong <yibin.gong@nxp.com>, "schnitzeltony@gmail.com"
 <schnitzeltony@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "jan.tuerk@emtrion.com"
 <jan.tuerk@emtrion.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V12 1/5] dt-bindings: pwm: Add i.MX TPM PWM binding
Thread-Topic: [PATCH V12 1/5] dt-bindings: pwm: Add i.MX TPM PWM binding
Thread-Index: AQHVBms0dpnXU0ejkkq6UgSdEVVQow==
Date: Thu, 9 May 2019 13:29:19 +0000
Message-ID: <1557408252-21281-2-git-send-email-Anson.Huang@nxp.com>
References: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f43042c2-aeed-413b-300f-08d6d482570f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3673; 
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-microsoft-antispam-prvs: <DB3PR0402MB367361749219F4D72DD97629F5330@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(39860400002)(346002)(366004)(199004)(189003)(7416002)(6512007)(86362001)(2201001)(6486002)(305945005)(66556008)(66946007)(73956011)(66476007)(64756008)(7736002)(66446008)(316002)(99286004)(2906002)(186003)(6436002)(26005)(53936002)(102836004)(66066001)(50226002)(4326008)(76176011)(36756003)(52116002)(81156014)(386003)(6506007)(2501003)(8936002)(71200400001)(14454004)(81166006)(8676002)(71190400001)(68736007)(110136005)(5660300002)(3846002)(11346002)(446003)(256004)(478600001)(486006)(476003)(25786009)(6116002)(2616005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3673;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ghvkvIUxi5m0LqEzCIjIdZWp/QsmwJNlBdAdqlPkwHA3JhCYNXo9nu6FJZWAAWMneowirbhSAEHNAgGxJIHE04NbzEZetgHBhUYNH1aAEwxJupA+hrNE9s99/NKFqAo05CqOG+S5t8JwF5yEQpgiVcjYD3xDeG+01K7NGEowG7UPRd7UW5eOqKySpnk+8yIsmMU3FnfeXmUhq2r33uzYzVwCE67hZlQaopco7DwQ2Xi0fRE6FVJnMAIKmFheDupeJYIoPULuvk5/jwcgoLK+JZbl6vbiRn9xM8eRqeL3MjSbJ6/mN7AMjwNDdTQ+u2Fq+VtI0miamSKWv0C5fG0maq+f2hq6QwtGolCkjekphhJOUnbQ9mfME9lo03DryeLeCgfYUU+j9Zdkt8oQ50F/JqYUZs170+GH0HV4JARbd/U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f43042c2-aeed-413b-300f-08d6d482570f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:29:19.4836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062925_323657_82E24562 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX TPM(Low Power Timer/Pulse Width Modulation Module) PWM binding.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No change.
---
 .../devicetree/bindings/pwm/imx-tpm-pwm.txt        | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt

diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
new file mode 100644
index 0000000..3ba958d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
@@ -0,0 +1,22 @@
+Freescale i.MX TPM PWM controller
+
+Required properties:
+- compatible : Should be "fsl,imx7ulp-pwm".
+- reg: Physical base address and length of the controller's registers.
+- #pwm-cells: Should be 3. See pwm.txt in this directory for a description of the cells format.
+- clocks : The clock provided by the SoC to drive the PWM.
+- interrupts: The interrupt for the PWM controller.
+
+Note: The TPM counter and period counter are shared between multiple channels, so all channels
+should use same period setting.
+
+Example:
+
+tpm4: pwm@40250000 {
+	compatible = "fsl,imx7ulp-pwm";
+	reg = <0x40250000 0x1000>;
+	assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+	assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
+	clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+	#pwm-cells = <3>;
+};
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
