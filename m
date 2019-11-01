Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671B6EC70F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JXYJ13GdXxv7OjFmzrtnLRamdmrCBn5Evyiao0EXOA=; b=hGXOqT45o8TJQQ
	H6mt4FEznPQpwvUCyjS5/KOaAYmCT4ufrDWfxOr4pKVmQKGbVJrCKdwtRrl6DeQcXQhoHV60oKwOx
	09EdjG4OcEkzhnzkiSvv+aYpG5GYIYLNCXpVl7DybNoid0QMWRRPvRq4vEkPgWYeCgXd1g3UmQ9zT
	EAEDMkOzpHLnBjcC583H0X3R33DDT//iZ91ccNaxjUs/c+h2WJoN8wOuMtPwOFYxZvoAQAW2jlJUe
	gUQjzWQ9gxCo+ebCXoxrZxq/YkgpbzmICGK+yh4OYjueuxOtCTuDqPMaaeC+5Y2tuUWHkr8lAlTE4
	sbdZEykEExcza7f7H+Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQa67-0002H8-HG; Fri, 01 Nov 2019 16:48:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQa61-0002Gn-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:48:23 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hY4myC7Yl1eSu/Ky2NfJ6QOj2eB9sJhDJxXOS0Hv+yhMrPRzYa0cdwdTt8dqwSEU7XvGjd/Upl
 W7kn973mwu8UsvS5TKvJSkaQ9RS9swS6+H4OqXs/VLlE8Y7GE8txWouU3NiovcK+QEsjKbe/Yy
 YUgl6+cV06oDiiiZfble+FyuVgRAcAJ/r1qnyqCxvFw0bluRl9IVXqBZx6R9uWkcN4aPP47lSy
 PtR0sHGGx8RApZa0PBKBdUEPZ8pSGpR5DSqBY0HadiLEa8sGb37gFJUikjB1z9TS1sEa0tzSG9
 wFA=
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="56664987"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Nov 2019 09:48:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 Nov 2019 09:40:39 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 Nov 2019 09:40:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fAOmasg4CRk/JILZYZvTTs/CBKq9Hcdrb/Mny3+43r3wEk7fmSDkdCyTUrDdpFUqxBI19YYaXSwQROqkdEmH7vNjH0aEvDIzK5d/GDH0v2Rd6YqouS4QM+nZbtm3lRhlOk0CCSSsSXPuapjrLzp/hDFnpB/pYdStjLjR2CMMS0o62DPEI0VCFzxl/goQisZEIKngoMqL1k2t6NY0tagYmdEbpCcKv0EQQQbhwr72zeSyNc47E0DOCQ8zUm+0NFA4Tan+ankBa/X7RrviJ54cyeQVD1POHzauDYR7hgqzEnZrTqUedxeyK9JmNH+3xgMcqH0oZsuMN3kPfNERYo/J7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ki8xag7iRcdyAJcVGtUpFm8hic7nBFicfqgA4N1K3A=;
 b=OhkP7C90z4oIgTYWPuskS6w7WCu6l9ocQUAgR6tjtwvyEHe3ggCSjQgEI1oO6taxqNA7V+7GVhZRKS/3TmAfTI7k7OmB9auDQrttzJyOAXSsrintxqPZcweX1bRblMJQ9nG6gTqC2ThpTIirR4JXE84OVuIkLNuE9HB3EYr00DwMMdJzapxaeCUJ38FK3iG13MrXCbniM5WuWkuDPl3P3DV82rTvN7KdDiJogVdWfvwqrVSXr//Ogbejn7Bm2p9bDmnypNjVm92kUrkaVQlxAMmUHUas5Ecl2TACR1pAIaWLiqPLMvGUfmLZCghA0U0OG+s9FQ5vL6DWRQowP+xTzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ki8xag7iRcdyAJcVGtUpFm8hic7nBFicfqgA4N1K3A=;
 b=rkcUnJY9ZYxRIQmJa+RWcR71w57uOjEH4oz996I2bEjc6usMmvLJEwJB2Ux0Khe0j2+juqEq7aCkZ+5PxOgeldp8/vDFsqpU5rcFy2RC2++ZZhFPnyMqKDr4EtfhK1LrNTiEHjt1TGSU3y/UwqM4j7sIJHbdM7ay+HWDX9OW0Ec=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Fri, 1 Nov 2019 16:40:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 16:40:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH] crypto: atmel - Fix selection of CRYPTO_AUTHENC
Thread-Topic: [PATCH] crypto: atmel - Fix selection of CRYPTO_AUTHENC
Thread-Index: AQHVkNMXZnIxpABMoUy8YqFz5mBxpw==
Date: Fri, 1 Nov 2019 16:40:37 +0000
Message-ID: <20191101164027.22478-1-tudor.ambarus@microchip.com>
References: <20191028073907.pbk6j5fvi7ludbvx@gondor.apana.org.au>
In-Reply-To: <20191028073907.pbk6j5fvi7ludbvx@gondor.apana.org.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0115.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::44) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deb07862-275d-4708-f2a4-08d75eea394e
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3661C4EA8A44868859B08134F0620@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(376002)(346002)(366004)(136003)(189003)(199004)(81166006)(81156014)(8676002)(478600001)(6436002)(14454004)(6486002)(107886003)(64756008)(25786009)(50226002)(54906003)(26005)(8936002)(99286004)(66946007)(4326008)(66556008)(66476007)(110136005)(316002)(386003)(36756003)(6506007)(52116002)(102836004)(76176011)(71200400001)(186003)(1076003)(2906002)(66446008)(6512007)(7736002)(66066001)(6636002)(71190400001)(2501003)(305945005)(86362001)(256004)(14444005)(5660300002)(486006)(476003)(11346002)(6116002)(3846002)(446003)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OxQwr7FbROPBKoW55TahJhaWFiPbqS/uU/POfq8JgpnsqRgANr8x8o0Bwdskm/JXSvcaw7Bqlo1DIVVKhnLE3iR6Ctxkyzt65wDFVlcC5ozYC6noyeJw8fjQEmGtPs8QmpwxtUG+hsWjeOHwyaBDmcP1kM4ILG759p8A7RkR3KIYLJyRBUeHKbDzJj6BnB+YdtOQxyTtPq7rzZFH/YLZeqa2kZB1Twi1EDwQaIz7FXocnscS2vkhPSqAY72vw7DH+27aaEsVgCnbAilSHXsIUOEuqQUMUGyqDVFF8iaxRP6EWVRCddca2LHFUvxN1t1YX/Gq+RkB+nbrOqgylMcf0RjqMP/F/moNuqL7gGYABExLiUu0g7bBFqcQFunTmbMh59+P4CypXyfzoHjjfxQ8qR6qPzXT9PVzNn4tzvliof7SBZzd6W6E+Sp7Nwaa+gdF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: deb07862-275d-4708-f2a4-08d75eea394e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 16:40:37.6246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BYSzzPpxj3adbxQzzSNnX7PvCfuZRgkVtLXK00Vf/29v19u3CyKNM0XiM/JdqowAJ9mYS6vwv7Bl7fOSrs1LcVZL9VTJX0DsR7v5YxZNerk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_094821_924683_1716B995 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The following error is raised when CONFIG_CRYPTO_DEV_ATMEL_AES=y and
CONFIG_CRYPTO_DEV_ATMEL_AUTHENC=m:
drivers/crypto/atmel-aes.o: In function `atmel_aes_authenc_setkey':
atmel-aes.c:(.text+0x9bc): undefined reference to `crypto_authenc_extractkeys'
Makefile:1094: recipe for target 'vmlinux' failed

Fix it by moving the selection of CRYPTO_AUTHENC under
config CRYPTO_DEV_ATMEL_AES.

Fixes: 89a82ef87e01 ("crypto: atmel-authenc - add support to...")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 8a1d04805428..c5cc04ddc4fb 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -494,7 +494,6 @@ endif # if CRYPTO_DEV_UX500
 config CRYPTO_DEV_ATMEL_AUTHENC
 	tristate "Support for Atmel IPSEC/SSL hw accelerator"
 	depends on ARCH_AT91 || COMPILE_TEST
-	select CRYPTO_AUTHENC
 	select CRYPTO_DEV_ATMEL_AES
 	select CRYPTO_DEV_ATMEL_SHA
 	help
@@ -508,6 +507,7 @@ config CRYPTO_DEV_ATMEL_AES
 	depends on ARCH_AT91 || COMPILE_TEST
 	select CRYPTO_AES
 	select CRYPTO_AEAD
+	select CRYPTO_AUTHENC
 	select CRYPTO_SKCIPHER
 	help
 	  Some Atmel processors have AES hw accelerator.
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
