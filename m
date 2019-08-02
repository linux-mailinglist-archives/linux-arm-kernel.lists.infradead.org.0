Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7C280145
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsNhfEFE1NLpE+0KGdJzPFqFIWCeOkds1PzRXCG7/+A=; b=e7zl21hidRsxBq
	slhAOBMNRQ+xopDFDG9O8X7eNixXgwChACRAdHFA9F4Fj+N6iHJ7T8yCf86YtL8GDKMJqjWvI3UEd
	CCtP7dFov8D96Xyd2mOTK0KxJ6ByVPnzqTz7P0vkC8WPpW0MTXExLaBh9Hr8Eyw1rF5ZmT2Vt/mnJ
	DDt078Ibb/VKeOoZSQEZLOgI5rTwcC1k5ueTHCKvMI9hXT/E/RLHxMG2QGeURBoEFksAHAh5yIXHf
	iKLuTa7iPm7BQo3otYuSVSQzraHEKS2s+/AwTZZ7Yj1OkaR9Ng6npc0LX1UhHApd3ycmxdKAn/Nln
	aBp7FDHCrnWC6eKRhvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdWu-00059s-HP; Fri, 02 Aug 2019 19:47:56 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdWQ-0004sU-DG
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 19:47:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHSOMIr5XOfj2vspTQplFqLLBvr6YzAw9GC3GmaiNAcIIGiZQairKupT/ws9mAlp3tzIKxJ4Rq4Y0H0JtuYutGwsMM+rdN0wq2mDNQHY5ZRLiyQZoYNhF3HDQ5riDnmSJlHc9fmWinLiEDPAzw1b/l00UED85jZkfJ5vHaiR7EuZmvvQH7Sc8DXthKHbnIPp9xW6XBysvfNk6CEpM+O8EHFp2WDoo1y0kRaGmEPD14IPRpXazX2kqZ5/FZ0tLvlT2dK/yWMKxyltAUbG//PeSKPiK2vGCS61i+jw0MbiOADWVz3PFZ+2mqlkmeA6Hsot7HzWtv7xGjH/nja1doY/Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v21CDJCD/8a9YgJtE9OOJDZ2FaNzN2uvWxpNJHK88wo=;
 b=d0+/lXip3VyxXE2+Tzw9biVf/SUIhP/4//BNHJtFEU9Rs4VfxyScsTyTGodnqVvG6pg8/jfsCqYo/7Nt2xFvnxl+v8nCJdw59EurGlgylmWUgOqonruCN1QgaF0OPosTRGbpvlEbjIubWUi8HluvVIAfXd8ElJwskJ5JO87tzFnr6DfWESyKycGrMWRP2eRA9jmsXiGAqHtJDOsyIomQaysNvJuvbpZTPNMOvrsZeCf6zgdQz//p7/v9HsKhrvDs+Eeelb+PBosyoStp6nv/MXJkjCkK0I4iKqtr7TGAbVPTKSc5E1BumAQtM0th7U2Oj59qr9OSQwxnYPZv//6THw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v21CDJCD/8a9YgJtE9OOJDZ2FaNzN2uvWxpNJHK88wo=;
 b=W93tUU2T7gPuEXLVFeaj+1qO9dp0J3PzCta8RDd1djU83iAu59yxk3R9A7fVIriOf6807B90k4k+SpKS4hwg1xjhW+OapmK/h88UJE4Bkuzci1UV8nCJ7+LaujID+OcI9rzZ25cEYfRGUjFXqG0lAmN07XMDdo4JELB5cn8EyhE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2829.eurprd04.prod.outlook.com (10.175.26.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 2 Aug 2019 19:47:18 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 19:47:18 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 2/6] arm64: Introduce config for S32
Thread-Topic: [PATCH 2/6] arm64: Introduce config for S32
Thread-Index: AQHVSWsXz0Pt2XfzzkillP+EFcmjQQ==
Date: Fri, 2 Aug 2019 19:47:18 +0000
Message-ID: <20190802194702.30249-3-stefan-gabriel.mirea@nxp.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6PR04CA0051.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::28) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20cb8aed-a644-42d6-aa67-08d7178239d8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2829; 
x-ms-traffictypediagnostic: VI1PR0402MB2829:
x-microsoft-antispam-prvs: <VI1PR0402MB28291A7FB2BDCC7BE0C31CB5DFD90@VI1PR0402MB2829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(446003)(8676002)(6486002)(54906003)(110136005)(3846002)(305945005)(4744005)(7416002)(1076003)(6116002)(66066001)(2906002)(2201001)(316002)(256004)(36756003)(6636002)(486006)(102836004)(14454004)(71200400001)(53936002)(26005)(66476007)(11346002)(81166006)(71190400001)(186003)(76176011)(66946007)(2616005)(64756008)(8936002)(66446008)(66556008)(99286004)(4326008)(386003)(6506007)(5660300002)(2501003)(52116002)(81156014)(50226002)(25786009)(476003)(478600001)(86362001)(7736002)(6512007)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2829;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wht4a8RZ/YM6hL9xfLIlhpd3PIUqbhPn9vttuy6WxmiCTebBlD/qP65pwTmqOURzmUExVBlhEmjIcfX6nPnbhlwq6Bh591zRHT2m2J56qaVlKcattsbs+66v8t1n+ofQXLtFU5iNUOCo/3pLQT9S2PttiMs2sQY2U0LLsaKfuIRO7HMh7cbX3GNO1H0WxdTA/ZAAk8mQZnjceEzHA09+ER35edAaIAw1FDWJemnyFEXhTQYl7nCcZenOC9Mb1D52ABhoJzduUphsMZyLLtpDkdyAQG3h5ZNY5DMq/ryq+tP+IKi2/lLzQdB9ri5WLB2pH3Ah6n4zSGb5Ybq5pV9smwf3lE8IzQJp6Sw5MVtCAlMHclDd6BLalm7tZI2ZLaXlhtAwMnZ32pnkn5LnocPnJnsKa8Lkwio2qLGGO16Frek=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20cb8aed-a644-42d6-aa67-08d7178239d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 19:47:18.3141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_124726_450685_5FF79F47 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add configuration option for the Freescale S32 platform family in
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
index 4778c775de1b..a9a6152d37eb 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -210,6 +210,11 @@ config ARCH_ROCKCHIP
 	  This enables support for the ARMv8 based Rockchip chipsets,
 	  like the RK3368.
 
+config ARCH_S32
+	bool "Freescale S32 SoC Family"
+	help
+	  This enables support for the Freescale S32 family of processors.
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
