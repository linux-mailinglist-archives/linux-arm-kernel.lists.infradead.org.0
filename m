Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99244AA248
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxUZfzSueC1IZRxkB7/krFsiiuuMTbgIumxHO1fNn7I=; b=GP6+cSjUjaWaSl
	2TQCKMeoaE9OkaHhlM6Hnl1omLjcsINVTtVqUnUnKAHVgQ31WGQ3OqEj2rhWP4YXGLlNpDH3+YNMW
	GwYCSFk8M73xSVw2vVvR4lvRvxYd/+kuiltU8UqIcsAaR0QaIHFFMFBQiT40Cbzaat4DtmtWdAfsk
	EEvuOi9cZmNQG+gNxudXDjRM8tnTg+7DKaQUqsyXLABu83Xgg7HccjY6qzV3sJiTkIJAMh2jruNTK
	WBbr81CpMu+4yIz8JbSoVwWXqXJ8HSHNpqHB7FT03+AFVVsuZjvHlu0B15bvQMg0God0UisBIQhpn
	xk7GLsiopFsNZ6ht8Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qRK-0007Ec-BD; Thu, 05 Sep 2019 12:00:38 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qPW-0004UO-6W
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:58:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bKAoDb2zCK7Q+bzXXcqOeTtYELoM9zyY0OBmTaVI1ymAl51JZzKb1/IPHtE2I5WNp/018V4LuBtbLZbzP9nOaBlNFqEUHF8H1M3y22nxbZ/jD1NXy4oFse2laMIyWP8CJEcA2E4IRyCL9wbaGJlnjunZl1iZ6ogR+U+OX/4vAeKArUQXygnYNIWzaLHaPyogxY26a+2jgGuue4XZTXrIkEn5rUNJUnbDp3mbPqIiUkWWzeRIEfJLlHfD6dspM/XxDxvSclLx0kdmtEyzwgrmRe3h6U6i8ZyaX+94uB8ydmfpJSG9gGkN3UcX4rMSIirLNbok2siyFFv2MadHQw2wWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=RiDFctgqIYUCOM0NAqMrspLlcu0fS4GgrqkZaq3w/RQUFhxN5UK4D3ZjKxK6EBK4iSf/JYCOG/eawSsJlSnReaQ0WwD9YCJzkHtdms+/MZf9HO7f8gmvGZ0HR37aTFvlBgSLsFqj2seZ1/lPHpA9hm/17PxXn6IsnWffDZuwYuMLOuZQMut8nBC0iRcFWYidPo0PydRHepUJ8YEdvdXMEcrIjkxomcWvlyFNrfMZzbBd3hVqE7ACBf7OUojsrZln7lgh4k+3R5/jU/ogC80nBIC07qotpxgs/SyCgluN8SpxdIP8b/c8ecbWMk83d01eZqd0+u1r3+Lil9ghEuIluw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=Tqkrqu4rOsAEd5J1ezYDkXwvgxLUPExymw50TUmtBgVMh4kjKv2k2ndYq+776jm4TGSyRFasSSkJe/ppQUTN+r3CDL5Q3tEJrxOp782X9aI5kUYg48udTudLbEj45U5A6qEcnGavqG8edkj/gfKC5VVQxf4bXVmFquo5tpgpjLE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3805.eurprd04.prod.outlook.com (52.134.16.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 11:58:41 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:58:41 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v4 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Topic: [PATCH v4 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Index: AQHVY+FC12rG9yn4iU2MzSxKohFhxg==
Date: Thu, 5 Sep 2019 11:58:41 +0000
Message-ID: <20190905115803.19565-7-stefan-gabriel.mirea@nxp.com>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6P193CA0005.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::18) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52e9e927-a1d5-45cf-0cf4-08d731f8650b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3805; 
x-ms-traffictypediagnostic: VI1PR0402MB3805:|VI1PR0402MB3805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB38052310A176976C1AE777F8DFBB0@VI1PR0402MB3805.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(476003)(81156014)(81166006)(446003)(2616005)(486006)(71190400001)(11346002)(6436002)(1076003)(54906003)(71200400001)(110136005)(53936002)(8676002)(7416002)(102836004)(478600001)(36756003)(14454004)(6512007)(25786009)(2501003)(2201001)(86362001)(256004)(66556008)(64756008)(66446008)(186003)(66946007)(26005)(4326008)(4744005)(3846002)(7736002)(316002)(6506007)(52116002)(99286004)(8936002)(76176011)(2906002)(305945005)(6486002)(5660300002)(50226002)(66066001)(6116002)(66476007)(6636002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3805;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P2/Ou2M7NRa69+jdpisdTjUDtNnjQhQZwee+CQ+3DhmyPHbsqQZ2jYVvx+uW7DrZateik+4GOLdgaAG+ixIbRehEKZYSNH/3VSqgTyevI17mJVY1oMoypbTXSQ42ZhOfbMTwQqr4ijStR6nyX5uy/q7yMU9XV3Jm2jnNpgeGFU9cvTRozMXYhhJdZu+wphb8n1vjfzHoUMV1N9/UYl7uR5h+GbmH/9T/TMXHsYRJ1qeTJ/ySdZeUeLYsbMRr1qXGi+mLSKFGYqV7kYjfSYdKHE0uDmzeivRmhF9m/tgTmmIwnAde097htu7/aXbwhhSOMcSlXg+KloThczCLXGJNViFnTtYpGNUNQh9l5cWn+USDAaFz4jj/MZMckHYu6jbjYRSqaSx7Gnyvl3xu7Peod4g8ctJu2WCU31h4Jy6MoHE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52e9e927-a1d5-45cf-0cf4-08d731f8650b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:58:41.5936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H5mWGBWRf+jmJM9z5sDNk/Rpm21pcY6qpcMUrrIKi46x4+3xOozdj8zvb9BF6wDGoh1eoSMa9ms/axi3R03KD48JWdeLX+uCVDZ+0PCqj1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045846_397324_233A69C0 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mihaela Martinas <Mihaela.Martinas@freescale.com>

Enable support for the S32V234 SoC, including the previously added UART
driver.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Adrian.Nitu <adrian.nitu@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..bb5aa95a8455 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -48,6 +48,7 @@ CONFIG_ARCH_MXC=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_RENESAS=y
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_S32=y
 CONFIG_ARCH_SEATTLE=y
 CONFIG_ARCH_STRATIX10=y
 CONFIG_ARCH_SYNQUACER=y
@@ -347,6 +348,8 @@ CONFIG_SERIAL_XILINX_PS_UART=y
 CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
 CONFIG_SERIAL_FSL_LPUART=y
 CONFIG_SERIAL_FSL_LPUART_CONSOLE=y
+CONFIG_SERIAL_FSL_LINFLEXUART=y
+CONFIG_SERIAL_FSL_LINFLEXUART_CONSOLE=y
 CONFIG_SERIAL_MVEBU_UART=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
