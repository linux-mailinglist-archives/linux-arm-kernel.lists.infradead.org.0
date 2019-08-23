Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA959B6B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl9fvIKCLDqOSwMfogXblpxiQNgOkV+7+u65aMWHUGA=; b=mlh1GKt67UwxnU
	7kUFRBYY+QzGIEWBKmJIiLSUFXJr2TkBN1DBqJJtSH8CZpFlS25ufb6qjL9GIZEPKaMkSrPEken5f
	KDX6uOLGeSLrk6nesh1HOzx0+V/sljjJ8AxN3dMhXakf0XoNaKL5m0HIBdsM2veGrjQ73Fm8Jx40A
	LOTlEKTLUwGEumZaKdBhEB3zVt4sdg6fFO1mZdAh/PGxxet0jDmzHgUYzyMl0NEPvTpd2f3QUepJV
	2owt0xef1O7ewSdHFCZU2KqjQGA/EsSVso83cNrgvIJvF/HabdXJkE/MBsgNoY2UNwQ+vSoUN12a1
	DKjtXfRFdM54KkddlE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Eyq-0004QO-1c; Fri, 23 Aug 2019 19:12:12 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyJ-00041M-MT
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOQ8sA9HIealBV4GQh92D1O4LPW4evUfplXTLVEIwNOu4hWLQlJIJxr2ebWNbIPENVFssqDqEsQ+J2+5+ruMYeQBo3fgG287vrIfNqO36a75JypVo5z0NrKANMmsl/EWzu/ZQGy6w/CTD6SFZHDWc2zj+nL3bMBvzNugsbjSrmliIVxxy5zYX9qR/7MbWRqV2/UPh5lHt6TaxSSEPD7lK7ZvNEOXyTlbyj+AVr1Pp7VWVHkgUenHn8g6/Td3m0A7N5/ix/WRPfpJ823kZE9H+3gEKsauNa9ygP6UfMShxe0ZBYO1VSygYqYK/GYWsz2qEfB9d4raiiJsvPlqb3TN8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pe33SIbYB88KZ1InOfVAGswqJd5chZSXWAxNGDHRk5M=;
 b=JaLqvWRUN+Yij6/fmEI+egzUHQHL2Aks8hMgMkUDSYQ1iUeKmB5EYchZ8kOvLryVx8aTNyI20yhzaui6NY4qa9v3dvrMbQJVPp9I5HMhgIwyWsxPJaVQ3ZW/8fVwThiPuneyALqGRF/H0A9RXG+PBP0bWzSduDw0lDeHXRLUENfbYLxjMFUrvNKAnOtOXVJXFw2/Ef4/a3IJJTIeVnqUV8Q6gLOVfxKoz+KbHj3er1EzM9mOJf5M/S65v+EKZhcs/SnXw+IOOPbJdyenWIfUBzFOu9NzfFZk7x8a8Ts54TRUaBHz4qK84zXYNV4Vka1oLL2E77gEFIK8o1T4Gg0OSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pe33SIbYB88KZ1InOfVAGswqJd5chZSXWAxNGDHRk5M=;
 b=l2sd2uZ84hOp9pOFMZ4T4O3R8NbaK4Db9+iwTSSmKyhOHYKh0A3s1+ho0GjazE5MEVnNWBaQ8WXnk7ZRRHcL9UVEcN7PidYhgKDtoaVAgaXRM541Wp8YRKn028JC662U3t1VmTCLICB/nrxiPM6Zz0JsP5oAgcgvDxfrvDs85jw=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:33 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:33 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 2/7] arm64: Introduce config for S32
Thread-Topic: [PATCH v3 2/7] arm64: Introduce config for S32
Thread-Index: AQHVWeaUeu8ClIZIZ02ntuPRrU2pWg==
Date: Fri, 23 Aug 2019 19:11:33 +0000
Message-ID: <20190823191115.18490-3-stefan-gabriel.mirea@nxp.com>
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
x-ms-office365-filtering-correlation-id: 9a02c3a0-3361-4816-724e-08d727fdb65f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2717A8A2E191B39B753028A2DFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(446003)(476003)(2501003)(66446008)(76176011)(6436002)(6486002)(386003)(6506007)(50226002)(81156014)(256004)(86362001)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(11346002)(2616005)(4744005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GWD3IOsrk4sHW+qE0pyovaqW3bgYKDeZJZBiq+VGjAStQPKOJKZJb3EANeFNfKVAWmZ+DKy9G+x5V/dTzM6XW9bhV2DMTvSInsJZ2h1NsUKnN1iNbPjQPvNk8XDRsWgGn5KT3IKGbxD5Uo6t1pd4iNOoULLk13ziBhWWk7Td933WipktbWIV7ONOqJYZPDGpCn50gA0KMVmWO3Ukp3xtTBoV62QY6Chex5aXzt5I3E0OujPAfk9tNJNxvWpHnps9H3ZQU7tIwr8x6FCRcaZbZR0gUv03sMBkHUPIMMAbSsE0s7AgJ+2MUU0KuPvjZzppld+8oX+qgskQrrXbOYNuRiaRNPoEeaBPC1M586kqt+xWaO6HZ1/deBSb4HK/nqHNImjlSdsC1/I+Btn04Z9VIo+QxKROVHHzFhHfyxm6HhU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a02c3a0-3361-4816-724e-08d727fdb65f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:33.8461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zS9a0F0iyEkxYw4lUr61USq4cr8zGGm0zk9n0fUVA6fjqhXmfDRtQEc078y9HdvlM4hbhlSq6o1RliusO5fKad1LzCyonMA2hyYF1mecMks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121139_783590_F60E7DC4 
X-CRM114-Status: GOOD (  10.28  )
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

Add configuration option for the NXP S32 platform family in
Kconfig.platforms. For starters, the only SoC supported will be Treerunner
(S32V234), with a single execution target: the S32V234-EVB (rev 29288)
board.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/Kconfig.platforms | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c775de1b..64bbe2d0b04f 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -210,6 +210,11 @@ config ARCH_ROCKCHIP
 	  This enables support for the ARMv8 based Rockchip chipsets,
 	  like the RK3368.
 
+config ARCH_S32
+	bool "NXP S32 SoC Family"
+	help
+	  This enables support for the NXP S32 family of processors.
+
 config ARCH_SEATTLE
 	bool "AMD Seattle SoC Family"
 	help
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
