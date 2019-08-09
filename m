Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6388C87884
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsNhfEFE1NLpE+0KGdJzPFqFIWCeOkds1PzRXCG7/+A=; b=m0EsDDXyw9psIT
	nN1Pn3mXGF1fuKhtuJIaeoUX1U5BTav7HJUf8rDqWbBOfaX9FM0u/d7HDuldkzQ/fQVJNuCQGY2ku
	OWzLNvx7cNaRgp5n6030AcAhRZ7ImvuO7GgJUieH8plNinB/Y+w1ahmtP5rkyfo+ZG88DXd9Zd2Oh
	5LYQhhv/jVouoikEDXvdIxibGhv48wivgadbspBWt0ujBq65aUP8c7EOE1czCAVZLXisFplzd+dK/
	cOx3OHANKfjGLJNfUPBj6h+L6wtjiNcR1wXSe0otdaqSWuJyfuOjELOs9l+UTWSqDLbCz7lKdq1kK
	mD+bZcgH2fqm6PeinnMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw35g-0007A2-8o; Fri, 09 Aug 2019 11:29:48 +0000
Received: from mail-ve1eur02on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::616]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw357-0006rc-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/JKrvJ0w6MZjCIojlyZHERZdYwMYdT1+DG173HDrZeHX+3TIXn1HN/u6k+6DrWqa80wfC0x/vWS4O2XJdh9vuRI9jWLDGnKzel6gTqAOQsYAI0ZlMVuun2g+yZ/iKMoLEXbzdAkqS4Bc9mAF8U7xyg8FdCe7PVnjLMis3afUWC0kg0NcJIuzBxYlDmxaFzDKlu6j4c+biBuwHCTt0ByeWMmGOqaW1A8MkVspihI18+WsDE/SOn61Jcm59WBIFzZxbDV6bNgFeIpl9RTqfvuAlrjabhoyFILqu2pjT4TfwPie8ixpiMEHcu2kc3+6ghjaMBoh4FUb99m3FSpy68TUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v21CDJCD/8a9YgJtE9OOJDZ2FaNzN2uvWxpNJHK88wo=;
 b=VpPxAoNoTj5EZfncHBF9G/+aXyasqb0M/5gEeeF4KNZahTPqRQHDnL7wbcww+iujPw9PQuT94NUo22LhobomoBIWQrrZAMVfup1IqgR54kppppZTU9mztF7OU1ootkiWkYyqpVuVCF+/OBlreRQ/jDeA5O4rNkhcBGMOygZ2EL830opcEt0y2eaJW0oVZN5yPpp6Hiz+P/UlC1TZcjykTb7U4AMjtwvrqPCkb10sjGOKIgcYns+3l3mcxQoUd6h4k8XEFPPQl8VVPI/Dls5rExj+IXMTNSqPBR9eBayUW8iSURKtSjZewSnMd2EG8sdEhpejI3SK5AYrN0vBYNIXtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v21CDJCD/8a9YgJtE9OOJDZ2FaNzN2uvWxpNJHK88wo=;
 b=ss+nIRxmnVeaKU53Ex+usftqWFeSYxVwTcR4Ct7V/7tlSVS9bcviwSkAmGEYNEz5dXT9IsnkgR/Gm0bFlloqhLseXfpF54tUhauufDXTTNYHszKRITpTAiYom0r/q3SmH7z/NVxOhDndgTMpndIoxfK0D57EoaST4rwLqNN/OGg=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3408.eurprd04.prod.outlook.com (52.134.3.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 11:29:10 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:10 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 2/6] arm64: Introduce config for S32
Thread-Topic: [PATCH v2 2/6] arm64: Introduce config for S32
Thread-Index: AQHVTqWpsmmIXhVzb0GEzMCdK4Yhxg==
Date: Fri, 9 Aug 2019 11:29:10 +0000
Message-ID: <20190809112853.15846-3-stefan-gabriel.mirea@nxp.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffcc341d-6e78-4c7c-7c6d-08d71cbccc4b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3408; 
x-ms-traffictypediagnostic: VI1PR0402MB3408:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB34086202742055E80EC1DC07DFD60@VI1PR0402MB3408.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(199004)(189003)(54906003)(486006)(110136005)(66446008)(81166006)(81156014)(316002)(64756008)(6116002)(26005)(256004)(66476007)(52116002)(3846002)(8676002)(66556008)(6636002)(2201001)(76176011)(186003)(86362001)(71200400001)(71190400001)(386003)(6506007)(102836004)(2906002)(476003)(50226002)(11346002)(2616005)(8936002)(446003)(2501003)(66066001)(66946007)(305945005)(6486002)(7416002)(14454004)(7736002)(1076003)(4744005)(36756003)(5660300002)(53936002)(478600001)(6436002)(6512007)(25786009)(4326008)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3408;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FeuXisWuvlZZUyVyBa0nMg2sG1QIXGuA22CMgzeP1vOb3z7KcLXVNwxEO1piuuCUo72Kxvw9fn/tMEMJf521G42xbGPofAEcfStya4xvZp7hAHfM0mej51KqvMXrtp/TjPl/8KRVVYIgeZJ1/YbpMN7osD2U+dHh+RHGuSXCjDA4bCa3iZtSSRSSTTjiFKh/XYfhG5NSMPniw29uC/W7mfeCut7APSYvDKOuxi1kunZ9t8fiq2ogW7zieyD0PLLFXtAdnUm01lMLfLFThFPpvTUz2GqdYh3wHlSjEqIXbjVtS+uO2Jncdkz4zEcwYJSBtIcVe6d4UbFPkQCXZhag5ZV2hsC3+E6/8UE9tkAFazFYDY7Zkd9xJ5dCMwju6M1SA+cUO1cN0MtoZlzdgLSKjiJlzb2e/FW5QyTBewagmx8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffcc341d-6e78-4c7c-7c6d-08d71cbccc4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:10.6011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maRgVo7v1qBGDpl4R3L52s6uHzUzza9EVPffsoDKQk4BpT/cOyqb5PiVy01vn3gwTW9NLg7xXqiAamqlUkKO/K63w8VA05wtmdB2xKogP08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3408
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042913_399980_33C68B13 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:616 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
