Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383F21D2665
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owKFKi15qHIUoSEXFMifXqOvmzT4KvyEJkY9WBjC/c0=; b=mB6k+shjVuZHIc
	BuznSUtqrF1X7KMENqUZbgjXW43pFWzWOqvQ1PfV8OS95oH2Y73iAxGztEdrt7jwS7vz30iK8XTI8
	ccJzYOM0QbJ/anssSpyD5ZGUQrYUK+sFM/lmf+meqL5OkVN0HZpppVRLpBKwsFFQwVzwsUB8t/idq
	jvFGyToeDP7oVChL7Twq0C+Dgh635d4XE4/DdXi+BgU6mf7motuaJQ43eB/em4xJiFCyU2G1f5vv7
	3y/yYgtv/eq51qbrYQxIGBd0h9ml6khdpEDiJRaTIwXIr3djaXyAdy467BwYrDCfww+PvFiUqUEL3
	ch55pnvD64yfKxTTCRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ634-0002jv-Ej; Thu, 14 May 2020 05:04:46 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61Z-0001iH-Cv
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432593; x=1620968593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SGFjrzf3ctrks6Ga8hfYMU+SwWU/PMN3PiqLrDvTS40=;
 b=BC/hGUujmqX/Hh0aSjkUb1ZfNg5o8THxd6L4/Argpe4ALUOOrLcsep/0
 qu2gRz/QCA5FD1wSy0M8KE3aGZxt+uvTqFgeX5NQpotmr6nZg8SJpqRl6
 k1bqhCM7zsrvD/3NIEmY46nzoN7nwzzH9CAFrLtrE4ggimbaIIV6cjsF7
 dHx1kTFmrkAVzNHHSprqJUIDkUy0RxKHijReNOxqEtDH2AhVKeboTdlzY
 xof77YTMQ8wPsBfyUiDBJ//O1ZXECYnIRw+nbpY4QBOXrFt6FUg4/D3yi
 McamOql+0AaPD4M/UOTHyldqnsNlY9tIrQ+9gF7kmi/5kO8VWFx4ctzQp A==;
IronPort-SDR: aZZNzTOuhyuQe+qbUvdSC+qXCtnFu27mfAKEB1/cS2iG+KFkCC4j0EuMxzJRiTNH99e3D6Kn3V
 d13mFMQ1WLylE0rxfOm+sl2x6L8JvOOcf1pEN8/O4V3owPUBQ25gkSQNvz814iuU59MjeJzl5I
 2Oqsrq9mkwu+iXQIioy8CKtJLXzPIuqQg4dwTMeNCQPMgvEfcY1wMfQpqcNwn1Y6I+MUWbcqw+
 c2ZW0/4OWAZXiuPdo/YhtNLqqvfXN0mDztS3WdSO3DPa3OqZBpf4cE4+wO7eBlVMw2ff3T4SmP
 +Dk=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="76601050"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QipiVPBi1b0rKZqya6GFu7lctqLnfLN9j+i76QnLy+hk9vLr8O68Y3sbPVhx6OVVjejS65zaNhMrGQr3bbt1ymn/QNIDLeWCoKEIbeIDWKOtuktz5vX3fmT8YeAkduWHW46gwzN6mR3sjFgJ+dzKe9GxZ5dxwlBq55lmjESSB+2vQH9TeMAvjQTXofHDZtM01Et3HvhliVVVwoLdhCLHja1mcpJB6VUEKlBi+hJyB/0MCCPjpUVxzBsV32dm01t1Tbpuy1vLaMV9xtrVOvKW/jQ0OjCq106AYjzls1ZwzsIMW6E37ILL9TX4dSM3XNyRHoygVTfZkIcm7nxV95VfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EOXjD0MmMz1bWn/7spjw2fhX99s7eJoIOnV5JCn8V+s=;
 b=UfxPpve2ZmqZ9LjvNHJYKsCuV+5voxskHmo+DKMF4ZlxQ299j11eHvkfGfwhvwgYI6CoFx8YxD0LEAjWdTSFE1e8/02wVNoSiK52BjJgAIfM8I0rXzWAU+FUzuuNfcc740cknVxe5OQW5a1aslL5egbx/dDiiIYwzPxN1T1KMQL1PPef6LIBKnYLRd9yvdGj9bi8lZaFNrYVMpKskbzdbkZJPdWopn1DlszIqYjQ2QpO1/VfpwmC4GJLCF+d4o5rFvhBMo8mo1G0dxv5AFKYJYS9Y0koKOFkdUDJb0hwaK5JXcH2hZ5kEERkV+a+uP2zKzgO4P0g8KORUSowesZS1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EOXjD0MmMz1bWn/7spjw2fhX99s7eJoIOnV5JCn8V+s=;
 b=thMiMp+fY3qQosr4iSJZ931N5s3GsKgrYNKmySCRbj03ja+vojpJATTko65e5LLAhDApjbxvQJUtxEqqgRqxQKZmqh1VqXVlzbRhqw77GzhbupY/sEAEnPU8XWI47K9Xji3zyQJpn3EUhdtYZcwxPYKiEir+ux3rSoMk/s/xR+8=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:11 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:11 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 07/16] ARM: dts: at91: sama5d2: Specify the FIFO size for the
 Flexcom UART
Thread-Topic: [PATCH 07/16] ARM: dts: at91: sama5d2: Specify the FIFO size for
 the Flexcom UART
Thread-Index: AQHWKaz3dpMmKuACXkmCJQFwirMG6w==
Date: Thu, 14 May 2020 05:03:11 +0000
Message-ID: <20200514050301.147442-8-tudor.ambarus@microchip.com>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28573468-0748-4df3-2175-08d7f7c419cc
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB448330CAAD8C4DFACA1716B8F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KwYyofis8n7sVy29BcjytiAE+rsrus9+03HLmowTXaYxABNvKvbDQL1NI+768H9owvSKoVKorSpjU3fnb5uFm/Uve1uwuDWImcyZ83aeQVpGT8+CU900S7tWcRx+ZonRkvbGWc4MwFEmKykRDFKtM4wgPu/BO7sQAFRRVHwIa9bUx2bCYxWV5ULHWxuwo4edrOK5WJxTyJR9zq9WJbT3hgHOGTDFT5SYdqtNjXjPYKfwdHPzerONu/n6pStI6oc7cpo3tWV9sugS7R0Ge42UO8XL/njfYeHDAGVGagF1MjEMHp2CER/DHCMJ5574HyvyqIQcjj3aWYT18DJopSFt5r7bVLP+txK9+SIqXmDccbFteh20k2Q7NbIP2qqAJhLKao+ZzbcbesCzQck20tS8qMDibcDgqyE9RZq7vHDVdrbN2Q+czkVQiWsM3BvD8wpC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(4744005)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: HKLED17pvp6vHaHRXi+DlReSMjrsdA0zcdiH2+siFII1Ito0+CSEdCGf5PrSuSnQEBgsO59cZ/txKVHroHCcfmpW/pXNezMixP3DQLwDUk0FfCiKISAzJ+7eCbeCzpQgamGekdF99F8OwqNoYxaB/fnt2lJplodtJx4FPgWf4I8Yx/d2iToJAqbIzv1T+llSBAGAABoKhtC4srZnTvDy3C9+5SL7Atf09JFDKja9EBhyBaWVoRwfSE+cmWgWYS03Aw9E908RSe7o8fCa+TdNp/y8nESUmQZZK5BA8VboW5OvJbOCF+TmiPLjz6SXqoSvdVNh/bBsDpZgtoV9oxl6J5bq1MOqgGjUF9Zf326PDzhPBVBrXCBlEpQYyZdHWgEgS5/rd/rxCO/srGRE/g/NDmIL1YzmsSPc9rXbwplIfzghp1j8qXx+GkqyIUtjS+YF18CccjfxxdZJOu3ck+Zj9aHWw7dwGSQdkLgmZSmuMabda/R8CzNy6A9YdGR8oVDF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 28573468-0748-4df3-2175-08d7f7c419cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:11.1225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SZClpZfZj/lXx7J/GZ8M9xbnRSykMhyQNhjVeU7g2CYNh7thrbBgtJ5VXKYt3M5NWn16VkBHrOpNoqn90ENIvd+MIuOzz6mxzxJS0Ha2A2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220313_472971_5E1E6A07 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The UART submodule in Flexcom has 32-byte Transmit and Receive FIFOs.
Tested uart7 on sama5d2-icp, which has both DMA and FIFO enabled.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index acb91908bd74..dde969a140b4 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -701,6 +701,7 @@
 						 AT91_XDMAC_DT_PER_IF(1) |
 						 AT91_XDMAC_DT_PERID(14))>;
 					dma-names = "tx", "rx";
+					atmel,fifo-size = <32>;
 					status = "disabled";
 				};
 
@@ -879,6 +880,7 @@
 						 AT91_XDMAC_DT_PER_IF(1) |
 						 AT91_XDMAC_DT_PERID(16))>;
 					dma-names = "tx", "rx";
+					atmel,fifo-size = <32>;
 					status = "disabled";
 				};
 			};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
