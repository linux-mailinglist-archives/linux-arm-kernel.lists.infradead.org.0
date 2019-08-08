Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E54B85D00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH7OYFudJJT8047n3S2TVc0y7QHKbK7AC+5SFWeA5Dk=; b=gJobtcLgo/8xd9
	zmeehef/g06mg5Z55vMLRs0Ym7UlC6S5cCESSECh5Lp1gGfQLZODVvzLCoiy6lTsbfcyrqG1sXb5u
	cJ+PHzuATTU/uvpIX4H9rEgsSzqN4W3f+4ZerMoo51vjfjHlSgyRQ4dTuODca3cSlewrE4HiStkNz
	qW15xXlCq8E1c7kSARgrcsiWDCBxkwc6i94mtmZETYahY18iBXuhG8cZtsfGM6HqrmYbfOX6/Jzcs
	amx5j1o78QFSVeC+MysWwut32BK9rF0A+N7mvh+HKmbSQAfSGqxyqgJQPe5/gj6ZGYFSj6kiOSLrq
	3NFcUbNESkksorZ7glyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdun-0002bg-AN; Thu, 08 Aug 2019 08:36:53 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdtn-0002KW-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:35:52 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RY3q2Q80RNwYERE2vCW4rQcaEFq380jsKHF2eOkpCKwXhnFdIs7CMGcn3MkKJdJdCfvGTX4GNa
 84KvgoQ5tPKig0rbP4fi7valZ9srh+wwb+CVAwadGtSM8+n/wJvLoKTC0QeE8Nx3b6QOtNMkai
 Byb27KxFJ6ryXq9uloQJAPd1pIQaIwqoQDWcl7eVkNlmTB2z6Q88XG/anCByAqi5Q82rooMhwT
 SrTANv65yZcHNO1+UTkxC7hAoeJoqAlK5c6hbnKkbSvgniJQJXoQno5RjqgWWNjGzgQaKKJsvi
 0lA=
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="44412904"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 01:35:44 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 01:35:43 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 8 Aug 2019 01:35:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KS+dpHSD4lLXkWuvTeFdKLAgCwNQq7uXLUjbS1gyJcGxnbCX22ySGcoERSQKe7XApZgNos8gbIZN8RLIIwtFjLfdWirxRFXw5bwW1KzNJd+ALcwRzX7iGQFiqtwjGCYfaZW4zZKWbfvwxUwUivBzPi7ksTyDOL30LpWagxBeV7z4XLDtGyzDnrS0vSFVWKAHB6JWZ5izFY1T3mt/d9ud8G12ZNbJsOmGSJ3lZt9Tez/Jw/UBEVMbhzrS9/yLJ+oh4e7jzGU8BgqEQA2JfY5SMiyUc5riMMZ8K89G4KjLdemxrJY46bPJDDvrNDPnZOeOVc16FrSQTGeXB9WGSK1Ekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pseR9+6/5NTqfa/7+d7WpjGM1Wn3kcpn9G4zGNTt9r0=;
 b=BhZyUberdFyeQzeXwzb6YN1c1VWpIa7iP2GJdiAKF12uTFhXVvohBiGDQqjU65SKqhQTnYPtRYKcCw5f+n99guTdx3d1+HvxmCmiUVJuIjyhych+VDUUT34OdTfGXu0Dzf1Pog5zr5V7JxzkPDoH/7z6er7zWLma8T0MgJL9EhDBInp/4Zh3X7vzwpwsoBLu2IPuB8cpZwh7KPUilejsvx2Kpjmbjxmpsg5FQu6GzlFHt3Mr10V0gBxyO2wOSpdp1QMh1cH2QLLZFPc7cjQfn1iNg3Sv9fgPjpxPr3GniAYjqe/hl4QIkPgPe9pcoMlz8Ummjruf+TXrRGup0DflKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pseR9+6/5NTqfa/7+d7WpjGM1Wn3kcpn9G4zGNTt9r0=;
 b=iW/dK8i06zyXXoNRuGddCczG30iU0Xab3AELHBDqzCp3pUJ16DoxTlJY5mM6aIsNGitOnaq2vfS/2nwm8pL28XzDY9dibzjIBdkvXKAogLwSj3hs8jaNhPbAre19GE9u9mrUu0FHuO18AGEGtTPLTC+CJ5F0Di7Sn57Yx9hCsRA=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1545.namprd11.prod.outlook.com (10.172.36.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Thu, 8 Aug 2019 08:35:43 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 08:35:43 +0000
From: <Eugen.Hristev@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <Ludovic.Desroches@microchip.com>,
 <alexandre.belloni@bootlin.com>, <adrian.hunter@intel.com>,
 <ulf.hansson@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc capabilities
 for SDMMC0
Thread-Topic: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Thread-Index: AQHVTcREWHJkbws9ckOkZIu1sPO5NQ==
Date: Thu, 8 Aug 2019 08:35:43 +0000
Message-ID: <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR08CA0020.eurprd08.prod.outlook.com
 (2603:10a6:803:104::33) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16521185-323f-4cc1-2632-08d71bdb666d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1545; 
x-ms-traffictypediagnostic: DM5PR11MB1545:
x-microsoft-antispam-prvs: <DM5PR11MB1545F838BF905C8AE809F660E8D70@DM5PR11MB1545.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(199004)(26005)(66066001)(64756008)(66556008)(66476007)(66446008)(6116002)(3846002)(2501003)(2906002)(446003)(66946007)(11346002)(14454004)(256004)(36756003)(6486002)(2201001)(6436002)(86362001)(305945005)(7736002)(53936002)(81156014)(99286004)(81166006)(4326008)(478600001)(6512007)(76176011)(8676002)(316002)(52116002)(25786009)(486006)(2616005)(476003)(71200400001)(71190400001)(102836004)(107886003)(386003)(4744005)(50226002)(6506007)(186003)(5660300002)(8936002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1545;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u01LVk5+UmXthyMYPJGkwqT0hjHfsGrzrkcnZx6TQHi7yIGZZpxlkq4qzsLKCzfmYaNPvQ6vJxObFfCcmfsBXPAYbQRLV6wpn+MijFPfe1qtZcXCSXtyM/ywU20E5K99MiVjI9OgdPrss10z/DkdEn4IbBOXdPUy+lbXhZSINp/jG7O1XDQiqeq3dDnuSZTx/WclHbBpMtveG/wz88ONNxYQmE/mrGDcqQVAIWjkpjNdMPbQiBDeBVDJNB0eH36tCbiRaZq7G3n9EXR+g6hI5RfdLSj/j6sSvq1vJAJifCSEycTYSu6jSQGeZrodb7YjSssObBXul0D9HLBwQWQz0VP6FqwGr2x/UWyg8irG1U/JNmGjcuY6twps7ZqfblxRsEQBWK85TsNaYYQJ6/zEtCsxLFm7NY0y0z9jmj/bIFM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 16521185-323f-4cc1-2632-08d71bdb666d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 08:35:43.1299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AVfxCLiNiLFvo5r1vj2ojcupQWVSrJbfoHBkTvK/fbl3WbNR09p716FxBoOzIHZGQ+ElkLT97E5t4rZsiCBHJfQ1CIJnbWrCov7Q4yCXtic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_013551_315275_CDDC775D 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add mmc capabilities for SDMMC0 for this board.
With this enabled, eMMC connected card is detected as:

mmc0: new DDR MMC card at address 0001

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 149e539..194b3a3 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -54,6 +54,7 @@
 
 		sdmmc0: sdio-host@a0000000 {
 			bus-width = <8>;
+			mmc-ddr-3_3v;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_sdmmc0_default>;
 			status = "okay";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
