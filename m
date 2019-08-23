Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1E19B6D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZOhsCMiX7ykBgoXNACX5hdPFrYiZNM1yKENTRasU6A=; b=egll3Fq/kwtBZP
	uv/fOMmo35YYOcnWP0zOClguLhbATCM2JkT4sUGLBpyL1wB0Qp/PM4R05o+Sd3LyHPPyUvXMljnI6
	EFHVl58MKlHmg/hq1ZmTcsPJSpB5dnAQ/NuKiX//5UnV2vlg7faWnWHdvJ6x0u3nJ+H3su8uUvbTT
	gadauZHO0jhcevr26dACSqBcF9kWG/Ax6dZGG14OxqRuix7h8UnDdAFrhXhtWF+OLJayxHZmw0dDP
	i2e92vWekSZ7hNtDVw13VxjZfARbxK4nMemrP6snAC65qfX/d+6+mXNh/sw7IjkGgIa7rwjeiIC2A
	ceI0NztMdmJX/NeN5wLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1EzY-0005TA-Ku; Fri, 23 Aug 2019 19:12:56 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyQ-00041M-Rk
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIium7eWJko05GCVo2OMTFhrwgMm+unPhUdGcfi3LBLSb+TM/MhSVcD6GhRkFXfWF9uR4VnIABdsjd6HvvXBxQP2+ZCYPZIp3dSZHATY8M4NnoiwGy76h49kLyrUfhlT1iVWLsL51daXPeeP6IWipTKueyDN/WvX1fpUrHot4iZ3SrehSyPi3W3zTdSDLHLxeOUgLb5aR9xA+WXuBZBJyUnDi3py0yBRw7P7A2yslGSYOwez48dGP8CuUJw3Io5NwFaqK0oBGr+037odqLXLvnGXVEBrRMPi3plBiIhBgxOcYlczgTCnWaT5JT3+yyssh2KwJQpvTlSpHA/HiMcbcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVGtPqYgeNUMGUDvSdDhwXRnB7/1cCxytwBdJFTooTY=;
 b=GGSxMsyHfKtVWIjb9GJBDgnEJYvKbJe/xNcJBZlpB8MJwEHp4UWbBpzaGUsMkE5tpF2HWX4VOF4yxcZ5beJ9ZNocvEX8uz6MQ4E1ub2MBcPc2qBT7qYMJFHfw07zsarvpZXNCnH5VJJL8br5AIE7GxIWwB6sqdbCJEO8hIaq1t0Xn7JwxmTV/IAT4wSqW+EuJJmcRkCkwybtrJElnvv1dmkGDY9/9ObUq1cTvPIYKfEuzBlRHh/vWesomPZIJPGrjx3GDQ4bjJi5gdixHeQh7o4Zvk+9+L8ncOPCCRmBzU3SrACj64vGUYL4N6TRhLsMG2jtXozDjtjyhiwNb2fj6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVGtPqYgeNUMGUDvSdDhwXRnB7/1cCxytwBdJFTooTY=;
 b=aled662O9Wq2B0GVlvX9HfnrOFxmQs5vpgViiIPHXSMU8a0+FCqEIQYL7H0Hrp2KJtMtQq0FL5TKsTYD5EX/Z2dBIkmEDPA4I+iboBcQ/KSV7qM37hIbhFKuaoG3DvCfvAoQOwvjuxtw4QSxYpHHh/Gn+JWAZwFFayjrp9JOC/w=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:40 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:40 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 6/7] dt-bindings: serial: Document Freescale LINFlexD UART
Thread-Topic: [PATCH v3 6/7] dt-bindings: serial: Document Freescale LINFlexD
 UART
Thread-Index: AQHVWeaXr6g+f2xfpEuGiQBvWT4t3A==
Date: Fri, 23 Aug 2019 19:11:40 +0000
Message-ID: <20190823191115.18490-7-stefan-gabriel.mirea@nxp.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR0402CA0007.eurprd04.prod.outlook.com
 (2603:10a6:203:90::17) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e817fe7-1a8c-42b2-78ad-08d727fdba4d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2717741680D666B8FD9A6D0CDFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(446003)(476003)(2501003)(66446008)(76176011)(6436002)(6486002)(386003)(6506007)(50226002)(966005)(81156014)(256004)(86362001)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(6306002)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(11346002)(2616005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MaS+Lp+7Bzq47mDFlAgrtffp0uMbE90DoJjqzVPKlwff1zHYm6J4Bbg7kXMuu9f6+0FNooeAZXazRzuILsfiZJAdXKPSII2DU24xm0Rvx9s11cHhkmX6zJRuvZjALwZLYxZN9+mZZKYJUmXwGhM82ZOQmVu6CUgVa2vuwjuFyMwBQjwgUQ2FVFphiUaFHjq3SBbyPhJkBvjWuy4X5c/99DERZvRsaEAzLuIpzDui+dHUVBgvlpqRiWw/LnqiCg8bPaAKdqRktUzHWpPQn0OvPB7Aqh9sYqEQhi7IN7iEgKAbuhGeetvkWFQiJXrYFDkcLxAudassSHacWRPbq2NQWm+cA51cdHyRoJw2RQzup47MUtnoqqdJ1i1OUYpGfhF48o+dSUVxHC4DgQYH1G94RnbuksBv/R6iI5TwpryTbtM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e817fe7-1a8c-42b2-78ad-08d727fdba4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:40.4202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1p4rk5vSmc4Krhfu+knh7q+oMwVpRL5VvUaoetSiksZYiT7T7lrSB+CSNF7Kbnz7WKYXalm9LtuTj+MrFR4PHZCsJZd34ctq71od7yM2cd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121146_920440_BB7CE75D 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>

Add documentation for the serial communication interface module (LINFlexD),
found in two instances on S32V234.

Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 .../bindings/serial/fsl,s32-linflexuart.txt   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt

diff --git a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
new file mode 100644
index 000000000000..f1bbe0826be5
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
@@ -0,0 +1,22 @@
+* Freescale LINFlexD UART
+
+The LINFlexD controller implements several LIN protocol versions, as well as
+support for full-duplex UART communication through 8-bit and 9-bit frames.
+
+See chapter 47 ("LINFlexD") in the reference manual[1].
+
+Required properties:
+- compatible :
+  - "fsl,s32v234-linflexuart" for LINFlexD configured in UART mode, which
+    is compatible with the one integrated on S32V234 SoC
+- reg : Address and length of the register set for the device
+- interrupts : Should contain uart interrupt
+
+Example:
+uart0: serial@40053000 {
+	compatible = "fsl,s32v234-linflexuart";
+	reg = <0x0 0x40053000 0x0 0x1000>;
+	interrupts = <0 59 4>;
+};
+
+[1] https://www.nxp.com/webapp/Download?colCode=S32V234RM
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
