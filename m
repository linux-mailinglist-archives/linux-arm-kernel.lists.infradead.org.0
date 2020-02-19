Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3421643C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+5tFXroaHWZGcORHgG+FV5/MKGxqrlkYhauaI9qUBI=; b=OsArsNAqztQXwd
	OypZMJqGxsfV3ruhvjFu9s+GCa0Gf0J6B7piGdQUn5FRQn3glSl7AI1BmywNgJgPl3smbvCoHoeWp
	jVL571a+qKX8ISSnraMwq/qkAhX1IUwFrdZTMWGhBLvHHPVttByOiYXmm8J8gmKRh0HF70ljCYaKG
	hVqnAYhLuV88eBTCuTlQfX9AoU5Hbdd+NJ+sVDO3j6LkclKDMeNulXlcH91hx1DbQ8v7s/eKAJrO0
	fLPFDGmGbXrK3/r49vf8EngPdm0apJZWMHF7kdpCGxqN+06M6QnHaM4jroKdz4SClJvPhVLpJ9pkJ
	3U97u8BSjJVC8QczSejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Nyo-0006Ov-KB; Wed, 19 Feb 2020 11:57:26 +0000
Received: from mail-eopbgr130125.outbound.protection.outlook.com
 ([40.107.13.125] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Nyg-0006OR-3H
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:57:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gypDhe/vfxWsUoertfApfMgjXbD99qCVEOfkK7Dyi9SLthHo1AjZq+b8JMq3X9aEyc2ISYbzVu8euU8dkHH0wQ5xv8M7phxTWWmAz/C/JBtYi93eP2FI4JzeSuipu9fUtGRu9FIhi9kfxB6lXtTGpM7RB3cvlLGbGt7R9btX1dGtr0EUY6ZxJSI1zkP8vUGP+K2ZJrOakA+CSs0sEj38cSvi6221NtxGdb/XNAnPuV8p9nIn7OpB/UvOfhUGOYywoF/e8N9QQGY5bbxpaR2QRqQjCYKn7VK+IaDm3qgFiVUy8mY6zYz3EY7Nox2zsC5hct0rnodalUHCQ7YGHbbNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbaRyFI+AQayIqXPg9EJfANGjleTwZMkFamRErvfBjE=;
 b=mblr4sSPhP9bwHZGcXtvS8JYL39Onx6v1u4SzGsjOJ2hnbBppwu7F2Ab5AO1Du1LwSdfSDUw/0h3MdhWBIF7KLyV6cKDy4oB23Y774XBpe0U8l0YJatfeHO3hHRIDE4Gu+MrFb8/eRPzdH8296wxx2x0ipx5YTfkgVlTNLZaMoi3AwGkh34Pz9HyrPLeLEG8dUy8l4z7/fxemIeSy58b3uNUTPcxgIvDVdA0eGAf2GMrCSBs1YyT/ttaBv0qjg09OeCQ29j+MV8TwoJVi3LUwtYQo2srtiggNUPM9oIyQsRDqsAE02wWCN/2reoGDrt5PwNw3hgLC1nwJjKNDIUOFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbaRyFI+AQayIqXPg9EJfANGjleTwZMkFamRErvfBjE=;
 b=DIyxlmhMwNKDn6t0oSOaqjRPr2DcgCn8C9e8mtH71gfKkLXIHZkY3r3o154hs4dw0jpBIksoxp+Yu8l3y6MSE72H7qvDqTiOepHV4m2PjKzWbwjXXre7j10WKUYyzrYn7kNln+VdPMb1DKcSBwN6gJK1Y8lKXkcKh/od1kyaIeE=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5197.eurprd05.prod.outlook.com (20.178.11.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Wed, 19 Feb 2020 11:57:13 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 11:57:13 +0000
Received: from localhost (194.105.145.90) by
 PR3P191CA0037.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:55::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 11:57:12 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
Thread-Topic: [PATCH] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
Thread-Index: AQHV5xu5UD2HW6jXL0+gmbn3erTUlg==
Date: Wed, 19 Feb 2020 11:57:13 +0000
Message-ID: <20200219115709.3473072-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR3P191CA0037.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:55::12) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3eac186d-e322-48a2-8875-08d7b532db69
x-ms-traffictypediagnostic: VI1PR05MB5197:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5197CE9F548774E0864DA21EF9100@VI1PR05MB5197.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(66946007)(66556008)(64756008)(54906003)(66446008)(66476007)(5660300002)(316002)(6486002)(6496006)(36756003)(86362001)(4326008)(52116002)(8936002)(7416002)(6916009)(44832011)(71200400001)(478600001)(81166006)(16526019)(2616005)(186003)(26005)(2906002)(1076003)(8676002)(81156014)(956004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5197;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y9BXsWtMKDKT0SmEmjpulPfa7Myg586sUnsLhrSGcU3epTS4014uiSm7D0Qe1/byEjYtBG64eUqH7wAQJgbuzvu4KAod0sNoVUIT4deBtTUwGAT/CQdbL68LH3MXvs2aU0xwwfPrhtXBB5mWowpeI2VduEohkhj1MPLWZMHOtLBnTclmfLMihGJF6gQ/1yd7/hl5CxxV7pAPXpFK3RLcT6q5v/DG5DZoq4P2kl7ohJq7+Lk/UYT574HWAMWmtsW5SyfNOBxRcVl7Biyq5Yh0Eg32GrOYn36DdG5K42Ep9xakvPvjJvmPzWH2MHLmLmksBU2ZX91HyY+4NudAO7eapID6/5FILwdQOH3Zo/cN9CRn46uJTlAvi1JC2tXjakZCNroE8R58F8rDwwflO4uYEoFk/3tPNy0gQw6jWXAYZxG5NR/wKaeBh8t/IGLRf5jh
x-ms-exchange-antispam-messagedata: 5yfbRxDH2RDwlqVyjE8EZZsliMJ7IEaTeaSiAmywh/aKEj0qYHhurnSBl3iXCA6Etg42OK6X5hbi7TfmMAZaqBwQddAX1tH/GhBl8iuoa/yfVz0V6odwQDtS7o5k7LHNDyOUlMEk0CsrOeR7z+06Rg==
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eac186d-e322-48a2-8875-08d7b532db69
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 11:57:13.2242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIVkYFd7VPy3XY+Mf2P63x6Vg+IGmaQB2ZNRXzfOE18FzMpUySqDWojidCKECiGKwmfvXyatx9eQsfBoamfVFIyZTfeZvieGBeX61pZAfl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5197
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_035718_191770_78FFFDDB 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SD/MMC on Colibri iMX7S/D modules successfully support
200Mhz frequency in HS200 mode.

Removing the unnecessary max-frequency limit significantly
increases the performance:

== before fix ====
root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
/dev/mmcblk0:
 Timing buffered disk reads: 252 MB in  3.02 seconds =  83.54 MB/sec
==================

=== after fix ====
root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
/dev/mmcblk0:
 Timing buffered disk reads: 408 MB in  3.00 seconds = 135.94 MB/sec
==================

Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D
                      1GB (eMMC) support")
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index d05be3f0e2a7..04717cf69db0 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -336,7 +336,6 @@ &usdhc3 {
 	assigned-clock-rates = <400000000>;
 	bus-width = <8>;
 	fsl,tuning-step = <2>;
-	max-frequency = <100000000>;
 	vmmc-supply = <&reg_module_3v3>;
 	vqmmc-supply = <&reg_DCDC3>;
 	non-removable;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
