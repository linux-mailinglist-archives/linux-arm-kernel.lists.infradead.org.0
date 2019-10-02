Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEADC893D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwaNAB850jAY/L8fRH7KIB0ER8fxtGNE4SFg+Z3yAu8=; b=Z2OzTzIu5/C/NC
	invvCsTPk9GB9eejEkGSUeQ4qMWyjL0aVnlo6w8XKoOa6eP2NPwGmNZpFIxuidK488yAp0MR48WCB
	DeAdYETG7jtC3ImjmyQdpH4t0HwKRjJmnYq2Vf9hYxdZjmZ7SOFbnOteF8lAldvXixkx9Das5bV61
	EjXEBnkRm5e28b8ti8IxbvUClIGhum3fDsFWi/9i0b5mJSndMS53x5Omz9sW+E99Y+F+MYu9OvMgD
	hvywJKKMNQS0WW/b9F7s4pWa7K8GIPJMRKAqHvcmWYGIG97JIhcXok8jUY6QuTo4dQVjxnxm22IGH
	05qQe0Ntk8bP7/YZul0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeJr-0006yR-Nk; Wed, 02 Oct 2019 13:05:27 +0000
Received: from mail-vi1eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::602]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeJD-0005KX-8w
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:04:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5NN9Qu7Ky6ZIPtycoaUdLxTM6yoxVZ+5Y7xnS4iv/bCjHUMxmO6ZZ/gD+weoM6qpGHNGR1r1b3JyYBMqoHZLMO7J97cx9h2Hb+Y6Yh8rszGqVuto/0ZymSMjcEx851jtggiRhT6BrSm3TZcFY5lqwaQa5bvnXrWWhqsvRGM7Pv1cIb5lELhmHCA2UpdAGWwOrI1doCfS7a6VSJrcY5iK6fXDjyd9Dim1FmgFVVv3hB2F+g21QLX7rEVkzyv9a8YCkFFbR1ejSWYtdd8JXsugyM7Xp/Q2HliNihQeVgVa/8JnbKQSycurhkonYcpS/dK2d9apyXRa45QtqKJ+cerYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jDRbKsOFigBmVYBko0W+r9T3uEFtB6nFeU5C/rB+UAY=;
 b=n+KQodOz8sA2YAALGvWjoMVW6KBLhAyqqnxjuqhCV94SmXInutdNuMmIqoOTwhLMEQ7AjhuW3m/v0hrml5S+Oly4/iZjhEhsQWmym7byDvgO2KG3P0pF4oKMMTRKu9fMysu4zvVQbJPSmmcctlWjiSyVD+B2eUSYENEIle0mwipcSE6pFhIi9JNHrKfg8t/Dlwey5BarBKPVCjN+TS5e7wYZtPXECO0/vF8DRyREJ726Smdh81mX8as8eeifuoDlm731R0AoMdxYVY6AZ0VnPZkSgpU0ycXiTMEp+9k1Yo/flAAWJ3nJXwjNbyCKByRGgunF23gtNDJU8sxiZFbpug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jDRbKsOFigBmVYBko0W+r9T3uEFtB6nFeU5C/rB+UAY=;
 b=XPMlX+9RgFGwUvNoiHWqPyQrOy6Imy6FfZ1NMMirslJ4d8BR27nelC6k+b3fRP5zzr4JFW0KF9uUnmt6RE+TdgJaS2+XxA+ABDopM2J4hx5nq4gUSiHi5CPWjgmDF1IDfEADTdo9T6HgKmDUfzOTmyw9lvmtpZbq0vkql35eRCI=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3918.eurprd04.prod.outlook.com (52.134.17.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 2 Oct 2019 13:04:41 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36%7]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:04:41 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH v5 2/5] arm64: Introduce config for S32
Thread-Topic: [PATCH v5 2/5] arm64: Introduce config for S32
Thread-Index: AQHVeSH0gYgaSbiD5UaSomdVgm1X0w==
Date: Wed, 2 Oct 2019 13:04:41 +0000
Message-ID: <20191002130425.28905-3-stefan-gabriel.mirea@nxp.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: PR0P264CA0194.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::14) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c21a046-5b28-41aa-2275-08d747391678
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3918:|VI1PR0402MB3918:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3918A4525A7FFEC4E841470ADF9C0@VI1PR0402MB3918.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(102836004)(2201001)(5660300002)(26005)(478600001)(76176011)(486006)(386003)(14454004)(50226002)(8676002)(8936002)(81156014)(305945005)(81166006)(6506007)(7736002)(7416002)(64756008)(6436002)(66556008)(66446008)(476003)(66066001)(2906002)(11346002)(2616005)(66476007)(6486002)(66946007)(25786009)(52116002)(2501003)(186003)(256004)(446003)(6512007)(6116002)(3846002)(36756003)(71190400001)(71200400001)(4744005)(4326008)(1076003)(86362001)(54906003)(99286004)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3918;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KQeSlaIxYa5KHIyyZ4Nm0oT8JotShh3g43P9bjIWQTKD2TgOSOupnvB+JKkaJoPyKwxDNbGibC6mHsoAUJA00qg+Z/DBrkhn1abc4kkJXYX/OLiZHHRPvAF0Hj6pemc+kEstGszZeQzj3F8DvwKtoHwiN35D0B+lr9W3qeuShcNwBVd1xOsE/yYNuXEuyx+NsXc05tNBoEtKajuTfx7Bj/JuDVVNQWmEOLdIBoy27OUfQ3C1l/ZvlkJhZsYMCTVLrfv5tELZb8qYDEYTfr/hz/p0McpajkpUC3rLilSw+cD+Eig1M1hywVwX3czN5cJ7tsSaoQKUQ5KxQace+LAct5M+fqKj+1pjexIZfgmnq0taEHDdpaKdc0+eqwqeaCuf7sIV/21ILcjTZPXSjg1uaNLvbdPn+LbGVJYKYupeRGc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c21a046-5b28-41aa-2275-08d747391678
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:04:41.4043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UUKCLDeCiPmP6bSQB4G9flHLA2kdIhTEk4GJEt6XOD+VFG2Lfgn31aqm7upSrufkBPTjVKzU69HQ97Ic4pwQ6W6GT2evk/tgfeZTaH24bLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060447_357903_29A5663E 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
index 16d761475a86..17f1c34ec750 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -212,6 +212,11 @@ config ARCH_ROCKCHIP
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
