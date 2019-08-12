Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD78A114
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=on1TshgSpCJuMo8PNNK7kShLAtKyVexR8HJOEKh/gbk=; b=qOMSxvsnkgWaCn
	94YnQnstKpgoSAmqW+RHhZOEsAsUrLwqG63LftWymqdnoWw4o4NerAfwWojdU5ZsJWH1Hc2Ay2J1N
	mL0DyxM36PDoRlTn1vcTzVr3xTqN2r2n5a1eR6DVVDjogiQ28eWAFpGKGV+EVCKZ16m9QJ4CmkoGt
	IUd7CIGlMu9obsJ+oDbXyS1QSHtWthDjgSOOytU/W+781r5uYhOJk5LhuEKBQM5nzeUcfYNMD+v6C
	u5Mr8v4jD8EwSMdH++p99z72vR34l5ybm2lBdxxofmXquU29c8bXludMoKqbiCi3J/EQLz2TtDkvn
	ToJ6De6falS0MP4hilBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBJe-0008F2-6Z; Mon, 12 Aug 2019 14:28:54 +0000
Received: from mail-ve1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::711]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCt-0001e3-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LzJMiJ0TA6/WIotfTqK6ggqn63X7qPt7J8fRMcO51YgN7oJy5/Hze6jJ6rAqelPH7KI10mgx4TTBObc44dx2rWSw7jouTVn/IWtPT6F3mvAPVVl9Q9gDZvwHzQPmaOdABQ9Z0ui4Pot4S+KPOScRmWkE7Phqfzc0XhsXi1TVLXnrCrXc1AbCMmuwU6Gfqt7fOba5qSfWI/Oq12JTT8o/RFzIPshEkzAyhM4BLcHG1wah+D6uWyAFhsCxgus62vjIqrGn1Qjpm3PepIws20b0T8oR8gzkBRj3k+DvF4vWAzU/HJwEZs5T6F/UAp6OwcCz3F+FrjwNsp6Y9N74J6H4Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmMFf1xaDiXn9Xp9+Hwbl4j2YgT87jCUPpFjYuJi/Hg=;
 b=CmfLKfjStx7a3RbQCYzKfbZ8dv3TSt4sqheM3d0S/5oWE13Bb5X6BXa+Y2g98QtJa41f9CB3DIsutxYPw5/JaUDlgeovoogUPpAhJcOAKaVzoFVzkqmKTKPegq+Fo8+Wpb6jx7sT32zCjVhhxJsMfs/pYAwupi+S4YauLZvI4lKsvPKEtKAxbrxxXiQ3uDMrnRrV/mRREieg5JPPnJ6t9uff3z4lne2jEeS1J0Lmlrqj2Mu6GuBUPvfVdvhRZTh3+8D6LEJOtRhTzv00BnLLLGC6qm+EEx1AHZIY47h9AnAHBwbPAT7HOeUN768pC+ri0AiMIBfQi2MB4AX0hv3pPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmMFf1xaDiXn9Xp9+Hwbl4j2YgT87jCUPpFjYuJi/Hg=;
 b=BeXViv0WWVvecUASh7htFSnqW3879oB/o4wRN63zm7NzuJdh7HpdevLBKi+Z1wvfqR4wyndQaM9aZwAulwukuhE9VHUwITMpwLMjmm2hDiyLLyme+M0pBO3vm++yeh/9pkB8/X7OTvTdAzUfBRlbcXuhyELZYegQZghjtkhxVQI=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:45 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:45 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 20/21] ARM: dts: imx7-colibri: Add UHS support to eval board
Thread-Topic: [PATCH v4 20/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Index: AQHVURlFnRbeofYGyEy6mLRVDRVbVA==
Date: Mon, 12 Aug 2019 14:21:45 +0000
Message-ID: <20190812142105.1995-21-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61fc014c-99a9-412e-0c88-08d71f3067c2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB294207B36F196D8456F4927FF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:196;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(376002)(136003)(39850400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(14444005)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y/xOGY+sgTByHy+63+BRMGkxkiLYVz9hKGtVh9/ULH/xFojDGXfcrsXlVCRcgb9WA3KNLztvHdQ9ovm7oOKYSj6FrD46RbG5/vn0EP7cHJZuIe2xn7FYByEYD9ut+Bh5carUGQphkP4gOuURhPR84HuS+mU8dQCxssMjGD5kVm44Bh7VFL/VNxYzwo/ZDMR//0yXg2GHRnATCOV8A0RYgShO+QPQWepsJ/tsETXZDUUN+Of2qI5l9JudCNLZvcEK0t9wKSXaRTq8Mq7GlI0OHhSBCoKSect1emgUSTd47sJxj6fZiYWER2fgxvuryloidq/nJcuUZCgNtUGqRsBzLxfzmdRy5ZoVxiChZ/9ulTWp1EaOQDbSj0GGdbgOl9DBxxXHPLijKWnvXhn/TrxUuQyyhvqNFRbq2jVeRFJ+Mxg=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61fc014c-99a9-412e-0c88-08d71f3067c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:45.8144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W0U8NWRNlQ12ehnFdsvyvLKIdlST48lxQeq5RHQ9ccl2Xtlp4hunP8DDpxJ/wVV8FeEByVSnYTL4FkUy6mSLEj/mycbJ5oLWHyxM6IAznU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072155_737170_C4A823DA 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:711 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds UHS capability to Toradex Eval Boards

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v4: None
Changes in v3:
- New patch to make use of ARM: dts: imx7-colibri: fix 1.8V/UHS support

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 576dec9ff81c..90121fbe561f 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -210,9 +210,16 @@
 };
 
 &usdhc1 {
-	keep-power-in-suspend;
-	wakeup-source;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_cd_usdhc1>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_cd_usdhc1>;
 	vmmc-supply = <&reg_3v3>;
+	vqmmc-supply = <&reg_LDO2>;
+	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
 	status = "okay";
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
