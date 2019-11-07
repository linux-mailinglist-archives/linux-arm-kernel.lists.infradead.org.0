Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E4FF2CA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:36:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNNwRC3j3ylyQRW62eLmARcEWBEb0WknSSkTOOKoJGk=; b=kvigtFpVFF2EaJ
	plutBMH0rxoI+u55/EbqCBj1YtaRDafznzcFqJuX8l/dWjAVlPQ98kSLJzkPOp7RCZ50E3zkvLVmk
	HovQuljcs4DjUNsTphixtoaTMb0N68Dtw5IuBjZCoMhnTxVvKaxGxZfS4OdJNqgqnKIwBLF/tFgON
	b02n1FXbg3g4VSAjK+jVZQTLlTKuWjkfDmUkusJhQ0T/IjU9ioncFDPd2g3HEXYQR32vxJiolJanY
	eBiYUQE9a+xjImUhY9zI5hBiCRJPHtQWxcJy22OTICfmV8HibvlTXY8MY7/N/NkGb/2nf2jt+DP/y
	wGEJlUGZHl08uzPkyeDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSf9M-0001mI-G1; Thu, 07 Nov 2019 10:36:24 +0000
Received: from mail-ve1eur01on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::60b]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf8Z-00012T-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:35:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0YyjL/WcMKwlNUb85K90O3op12NnJg4uOZU6lccrAsBhA7LfV9VgNgIvTNNEXSbVBekHOh7RUsIZb93Gf8nvu2fzg+kWKLyxAqnQJH7Zeez7ciluYShEADrb4Bzn6g8DknUe9il1JlKSy/J47oIxbLv1j9VPxiydjPBFroIdlzJBZEBAIYiLPFtWWvYamHCehGyib6RCjKZiO5p1HVhIjVGRP/89DkB0zankQliQacjKYgiMd70CsCfwbX0/lNaBh5ZpyiK2LPyLWZF+j/M60Eke010/GG8knHtqU7ZzNGnPZbZB7jNXI6u4MRPDBt+WyBM/Hy5dQDryCSxEGt2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mgVsO4i3AdgxVuKPyXMkUN9Y2SvE690p5wzpZ6BlxMg=;
 b=HbIvoysBq5Pgf22EYHRyKSPkfn5NAGQ+36LIq5jCGBmgfZ0DaeVUrL/69DP9nLUY7jlOP6gfSz0UDLfaLqgG9B74S0yp2g7b/A8TDovdwPBb7XhA1/EI0tQ/X1voFUMXkRQM1dx+GWixp98uRmzxfxI2S1tADveWwheb9eLO+gcv/i5ZViJ46D32UZuW+gilczrlsPv8VpRhUkJd/wmsBdekkz3faO3dNOCdC3O+XJgNjhlqkn4Bc9KP9LcBlQz1T+xutnGlLkUgHuaHt5+gnP2WmjtnwI/26HyPuZLhx4Hj+2DMkm4GE1gZ1i7uSyS8V6NvYwPPmgKwODu60Yi7Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mgVsO4i3AdgxVuKPyXMkUN9Y2SvE690p5wzpZ6BlxMg=;
 b=eBRJ+wYOo436/IumHq+iXxsMN2ImV6NTMknNoqPPFMjzz/f/vkayrkQy9+2+OFJ2oemu1xJhvyog8MvHGku/V1XXi2IjNUAaPU/AX9SoM4twIJgPeBZ5yMHtiKvl7jFxFv99eCyhzgIXAPlpJuiHnZLk6++VIm4o8R+sqjFevw0=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB5543.eurprd04.prod.outlook.com (20.178.94.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 10:35:30 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 10:35:30 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH 2/2] arm64: dts: imx8mn: remove "simple-bus" for anatop
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mn: remove "simple-bus" for anatop
Thread-Index: AQHVlVcTGcDZNqwodE+6bb4q1XT4Qg==
Date: Thu, 7 Nov 2019 10:35:30 +0000
Message-ID: <20191107103332.16485-2-chen.fang@nxp.com>
References: <20191107103332.16485-1-chen.fang@nxp.com>
In-Reply-To: <20191107103332.16485-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0050.apcprd02.prod.outlook.com
 (2603:1096:4:54::14) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1b727b75-9dda-4bf0-501c-08d7636e3617
x-ms-traffictypediagnostic: AM6PR04MB5543:|AM6PR04MB5543:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB554304AFD192689E4EDF2355F3780@AM6PR04MB5543.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(199004)(189003)(66556008)(14454004)(5660300002)(64756008)(66446008)(66946007)(54906003)(66476007)(99286004)(71190400001)(71200400001)(14444005)(316002)(110136005)(256004)(7736002)(478600001)(36756003)(2201001)(26005)(446003)(305945005)(11346002)(6436002)(4744005)(25786009)(1076003)(2501003)(8936002)(3846002)(186003)(6116002)(102836004)(81156014)(6506007)(52116002)(386003)(66066001)(76176011)(50226002)(81166006)(476003)(4326008)(6486002)(486006)(2616005)(2906002)(8676002)(86362001)(6512007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5543;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vb5/bX+h8a3W/gwQFbXTsVxa4wx/wBoc7ZFJoL8KfLfwN52OD017rkMFyXP9j5hthGOnQp3fMaKJ1zECXYZZb4EMhgygDJ0fABguPwlHad1/1aecF9tuOpTxXUSW+jwCHT2c3z+Fm74V8KOG5V2xKTtVWaHV3txkWrHYHNg0WM9im0NwTleJd5280ILlCxpQSK6rn5yJA4DxSRI3GTgCRzmKDpRrnP2SNqkVEi7KC5ODz/FXUsgXePSvEcU5HCyhZ9y418ovyeq35jL4hao1QLDFBEqVVqo36EZvaVRfsWu24hvUU7+NoRj5w8MiEq09QV2oAw3Q8XqQ4YiBmWBmKRzkQxqhDxxQaqUS1C1ONXpI9SIfCq7rOGaLFj5czb144pokBNETZiUWi7Z9ezHL0kvZm99m1rlNRR+6pKugAvqKraaV5+9j3BHMlU/SNVKd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b727b75-9dda-4bf0-501c-08d7636e3617
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 10:35:30.4722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NqCnPnTmyD5sj8e9EnV7yrZgtI207QNASmb+ufP3o3g7/GpgponcCLyxvIs5/QE3vD7/sXxuspRCtnauvqf/pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023535_870455_62EA861C 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:60b listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jana Build <jana.build@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove "simple-bus" compatible for device anatop,
since no child nodes exist under it and it is not
a populated bus.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index e91625063f8e..aa95f76de5ef 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -349,7 +349,7 @@
 
 			anatop: anatop@30360000 {
 				compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop",
-					     "syscon", "simple-bus";
+					     "syscon";
 				reg = <0x30360000 0x10000>;
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
