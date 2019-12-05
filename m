Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA39A113EA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5f5kfGpUTINPMJ3HtHnirqIjzxj1mSsFeKaSw2/ESGM=; b=KivDC9gf/rD4J8
	JvSMgdiRGpaYrybN+NOfrfhk+4dDj+ThztzaxbRSGizhxktXmIB0nwVpfXh26qhFT2MvTPuYoeECa
	DP6y1n1YI4QqNokuwPWMH6gY5mv9JCSW8GLaS9IwqaYiMzIlrPfg7N96ZxXyBD+PomHHjaDpgKSsy
	luyI+jGP0qF5KJjFFhigcMHNGSKbZWyAz9x/6FLx603LqJGO298kzpoITZ32IxHqLHFJewwYRqG6m
	If/SbIGSOaJ6SeRZAJd6HXv0TkITtP7kkgnNp8U8lWRhLnIDCFaVIyNcXwy/D6I6Z8Og9zFnn3/YF
	/wLMvwU2HmJ1AYGreBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnpj-0002qh-0G; Thu, 05 Dec 2019 09:54:03 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpS-0002oD-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:48 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: n82bip38J3bRkkGy1/3d2rYdMVCTPZ/lTKFB0d7tf2QhXmVelxc59mrdAHS6Fp0oIC5BoXXCPk
 yHzEuZJx91sSF9lCxzz+S//zm+UbtOQPk7pk28rC4MASqFp2ywbBUS4o9pXYK/Z7iuEuD9ilyX
 4TCJ4irVPa4siqNJMSbAArp3AFotXxTH9vQy97jkkzWdyuWng5NBh9v5sPUCnosKSwmYAGMK51
 S84unDrfZg45f1jqSRcdSdluhxllnwlRaWesi+MOZ8Vayf9v5mO8prhV0pviWDHUtkEC10fosB
 EcE=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="58828869"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 02:53:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/+aApJVZ36HbIxFBGAAVKrp0naj+Qir29zBaa+kZJdLFQ82F7brOOkQ+LFU4AHaKVnb512WRiSnFO/UqlLnz6kK9TitdDyjT3W3t4R9kZCrkDWC9/N9guoinOCjFbaiVnqCbcwnM2Od36qWROpVFQKn2W3Eq4e63Hj9J2X5V8eWFBkmTclNUbqdHTl0lnALlPGMVIMAaKhGVmjMrbjeqGEjYFzyOTLkA4BDP8Joe1YmYUVwEJM1fQEXtj3iak3UI1j3wG4hG0XDirkmG/YAPKZxXEcYr63MoP4TdMzC9dhsDr9FWqGpcio8VoWj36CVd2ef7Hghk8sdA1dAVe0CuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2M42lxTGtsVVc0PDLWsKAy6Mb6epP2IqIvRzdb2Y36I=;
 b=b/RwaPjYX69e7LHB4I0z48On8PflunQ4yFSdctwb01hLw1xbiks4PQ97qZosqPcIz+Fxue5v3lYvJBT9uBGrDDrI1ZTtwiaIFiQhwVcRyGPzv9RFnXGh50J/E199vUBOTLxfOJU5sRZYF0tu5aEirBJWB1px/MskvqxsVoXLYJSfQWtWwdNE7TnaWxguChIKHylkNe/wQws3RVsD4h1PdmZekk/zqJpLGeWYjSGV8Jw9HdqGB9pQ9oBICtPgHQuVCXd5Q31ux69gu7VdDOiN11hgfJTjUaA6YBVDId44zXLqZGn2Ap63mg8Vvxw9fkKGsiD4uLIOHcO2m73fPvmLyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2M42lxTGtsVVc0PDLWsKAy6Mb6epP2IqIvRzdb2Y36I=;
 b=rUj2mBYhFQXjiHWXcajSvmhITyNFA6PJCrJuPnxUSc2UCcAN2CEuHooYVYuIjO+paOiraLuWukzrYY+SyUPlNe44X07tqkCAaR1TWxHrRCszO4N0EEECAVPZvaPL8CnkJhkdbU92CurL7Jltav/1OsI7YNAE+tZOljudzN+QfgY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:43 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:43 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 00/16] crypto: atmel - Fixes and cleanup patches
Thread-Topic: [PATCH 00/16] crypto: atmel - Fixes and cleanup patches
Thread-Index: AQHVq1HgGYJ7Y9qfpE+77cxwmTv1mA==
Date: Thu, 5 Dec 2019 09:53:43 +0000
Message-ID: <20191205095326.5094-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc77d333-5944-47e2-35d1-08d779690365
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB367714EB312B5F2B96906884F05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(5660300002)(52116002)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xMc+4GYAgaXBveRx3uibEEw6Eks7VIC+f4pYQ0jFgQ3Lvo5ybwMqsOoYpBJWC2HWYjEzLbjl4p8Al2qkhPjDZUVMymGG3epN9zqEzY/IEsCUef2lnwzDmSim1vPivrbb4BK7PXCwVVFPLG1OySbUqMHM4xydB80dk5k/fIGsqF1uRXo+1SjamjQTB7owggBdZniBu/fgQEjUnxQy6wiPyCGfmQvyxLndKJw8Osc2I3qih+fmB7HhUxalFzMYFk7eJ3gQ3ryqwnHs2QAYasPx3Yj/DNQbWIPapgOtApCqZIHD45QPUZ+hVaHmfhVHeyt+oEgjUXjF/8/ROXyovHwe/bN+7Qb+twltkrgzCSU/VebFBbOffFDZXWXxhZEq2W1YGMlCog8Y2WFrigGnQ7tQ3r+uDOVyU8IoenytFMY4Lz+d2b9Ru8nXngj7wU83zR+L
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc77d333-5944-47e2-35d1-08d779690365
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:43.3435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v5gRre/9xDJGlj2UCGTH0n3Lu7RxhPBT8T8sDRiUwnKmdYIqO5hccF7bq6jzv9LXOfG4V6suUDErqKXZGqWU+1sCDme9Gb0m9X1pUWwKOis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015346_993516_20C22065 
X-CRM114-Status: UNSURE (   3.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Fix AES CTR and other cleanup patches.

Tudor Ambarus (16):
  crypto: atmel-tdes: Constify value to write to hw
  crypto: atmel-{sha,tdes} - Change algorithm priorities
  crypto: atmel-tdes - Remove unused header includes
  crypto: atmel-{sha,tdes} - Propagate error from _hw_version_init()
  crypto: atmel-{aes,sha,tdes} - Drop superfluous error message in
    probe()
  crypto: atmel-{aes,sha,tdes} - Rename labels in probe()
  crypto: atmel-tdes - Remove useless write in Control Register
  crypto: atmel-tdes - Map driver data flags to Mode Register
  crypto: atmel-tdes - Drop unnecessary passing of tfm
  crypto: atmel-{aes,tdes} - Do not save IV for ECB mode
  crypto: atmel-aes - Fix counter overflow in CTR mode
  crypto: atmel-aes - Fix saving of IV for CTR mode
  crypto: atmel-{sha,tdes} - Remove unused 'err' member of driver data
  crypto: atmel-sha - Void return type for atmel_sha_update_dma_stop()
  crypto: atmel-aes - Use gcm helper to check authsize
  crypto: atmel-{aes,sha,tdes} - Group common alg type init in dedicated
    methods

 drivers/crypto/atmel-aes.c  | 227 ++++++++++++++-----------------------
 drivers/crypto/atmel-sha.c  | 102 +++++++----------
 drivers/crypto/atmel-tdes.c | 270 ++++++++++++++++++++------------------------
 3 files changed, 247 insertions(+), 352 deletions(-)

-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
