Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19501F6C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIphsOHxCHpbhmacUUluaNIDJrJQLLm1FNadtLFIg6U=; b=dKVjscEluMhQlP
	/W2z+txJqVnDjBz27vW7uek9Hxy8PgLHCC4vnbk2jcOdwG1/8WgFdBjxAKuMRaUUAMcTuc20lxReh
	b/4HMyrQ+N0vn8AdS6Zt/YN0y2aNHbT/Ho8mim1GxBjXuTae391JAtFFjW2LM6NGMrwUxHHucuznN
	pIeyRFC3sgTF7ULH1m1ciDQewhH6lir+9yaZzjvbtYghSHfnzGu5Tayd6mgbhb3PZL7jLKGLyplKv
	ioxjif7jtv+D3YBGRehk/T2toGvNpV11mBA5OzmHec3RNcZ60I8LZNYVh7/KcVlmX/oNxeJQdszVU
	5l0T5dNeoQWjKEAQhXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQv7F-0005ei-QH; Wed, 15 May 2019 14:42:45 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQv75-0005cg-2F
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZSxi6PKEX6QkZ1mzRoDXi9tKdelUHX55DqOzj4GltU=;
 b=U53HaBSBl0JUobTb8D12Fft2cCLBXlUZouMPIkisfM7sKHTeJHbMK2T/0AYhA4p33BoYc/YRf/hhlNVD+CzdqaF5zFdyWNhCAS7asyvIJwxX2ZoH6mKGXw974jxJTW7XhRJivJluY0CH8T8XU+oab2GWyDiLbxj4eulA08Omhfk=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB2895.eurprd04.prod.outlook.com (10.175.24.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 14:42:27 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f%6]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 14:42:27 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RESEND PATCH v3 0/2] Enable wm8524 codec on i.MX8MM EVK
Thread-Topic: [RESEND PATCH v3 0/2] Enable wm8524 codec on i.MX8MM EVK
Thread-Index: AQHVCyxqNUZOmlzo4kmYJC/BwBb+ag==
Date: Wed, 15 May 2019 14:42:27 +0000
Message-ID: <20190515144210.25596-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0094.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::23) To VI1PR0402MB3357.eurprd04.prod.outlook.com
 (2603:10a6:803:2::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 165c3486-26ae-4ac4-ab05-08d6d9438d3a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2895; 
x-ms-traffictypediagnostic: VI1PR0402MB2895:
x-microsoft-antispam-prvs: <VI1PR0402MB2895C4E1C680060AA451BF72F9090@VI1PR0402MB2895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(136003)(346002)(189003)(199004)(54906003)(5640700003)(6506007)(6916009)(478600001)(6512007)(66446008)(14454004)(99286004)(102836004)(36756003)(52116002)(386003)(73956011)(66946007)(7416002)(3846002)(6116002)(64756008)(66476007)(66556008)(2616005)(476003)(53936002)(316002)(486006)(44832011)(5660300002)(2351001)(71200400001)(71190400001)(1076003)(7736002)(26005)(4744005)(305945005)(186003)(6486002)(86362001)(2501003)(4326008)(66066001)(25786009)(256004)(68736007)(81166006)(8676002)(50226002)(81156014)(1730700003)(6436002)(2906002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2895;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cD2520dLrqFKZXpTQMvflvdnDYyeQLpRgL1sZ2dWDsLuijvU8yj04cyHeM3u2hTbXiQRfUeDTOD6bM2PQ7S0hmCsBFFyp+kkYIwPX8zo86QXpi6tqaCvCOQEupli+wd/9n5QOyzbKWeYcmznOZNCfXkVXCbVwXi0U6wLjiMn/lNpnfIM/fMgyFNNJ+82UG5uFWfTJKQSLasVi225/HhdQvkO/2EUQ8JnZspT5NqDVa4oKN8TL8u8/2GAIs+ml9JhDmXGa1v7CNTXSBvE1jyD1uQxaO31NyNBbS1JReGIXlKri4NJOYod23gOcYtx7KnTQtd9M3QSZoY35gW5N9Jc1d58ymfHoOiXo4ZILH79zPWg/1gSuYuzajAaBr030pyAx4OkcqLWDh7AEfjQubvUY9CC6SFCIUpTQqOb5utScrs=
Content-ID: <2C46ACD4F00E9A4DB116E9692A0D211A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 165c3486-26ae-4ac4-ab05-08d6d9438d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 14:42:27.7850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_074235_110722_F098EDDD 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series introduces the SAI nodes on i.MX8MM EVK then
creates the wm8524 codec node and finally uses simple card machine
driver to create a sound card.

Changes since v2:
       - place compatible strings one a single lines
       - move GPIO pinctrl in a node of its own
       - remove codec phandle

Changes since v1:
        - use "fsl,imx8mm-sai", "fsl,imx8mq-sai" compatbile strings and
          remove "fsl,imx6sx-sai" because SAI module on i.MX8M is not
          compatbile with SAI modules form i.MX6

RESEND to fix email encoding.

Daniel Baluta (2):
  arm64: dts: imx8mm: Add SAI nodes
  arm64: dts: imx8mm-evk: Enable audio codec wm8524

 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 55 ++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 66 ++++++++++++++++++++
 2 files changed, 121 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
