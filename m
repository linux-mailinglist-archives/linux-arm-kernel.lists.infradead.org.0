Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA5F1D2676
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drPKh5R1UP82nkmD9mO4vuI4vExKyVTmHKS9pRkl7jo=; b=pYB5pxJe5Z6AG3
	kOrGP99iNLlNUGMg79bfS1SD+8AvZ1+K18u8vFkqM0dKAX3lmvPVdZMGZ06WSJVRTR/fZsVylJM2l
	cB78XnjK0MTFwBsFBSLMihJ2xb/2kI0S3zAWUtevAZF2tZ7EZcWhk86f1ttgPrH30u+RGwdgeektZ
	UL62r8i5TumZ+rPoGyEe4efjaMb9al2DRmHod3Hxi1tINk1OREEQsBmA32RqbB/SQZ1mZsknAh/vg
	j5LkoAe0zKXnLs3b8ljOMVMJCKZX3icaDsx7Fm0TqpcSbHqWyzoAhby/l9UGhsKW68VEQQrJAPKl4
	TIa/L6L+1K7yadUDHNOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ65s-0007oD-Nw; Thu, 14 May 2020 05:07:40 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61g-0001hQ-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432600; x=1620968600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7Qtw8WyIBpRyf9s4WJQQZLKYcduXMVC0l968XR9oamU=;
 b=XK4pL8x47JnrqfO/nKOu0zyXuce4OliNyO3KTnVovFf9TaeDRk7Qr4rD
 wrwproVROsoKWSfP6+eQQlqQzMEr3zX0ecRKi8eJAPjVfQJC2RMc0uxJE
 DbKbQXa1582qkQOyc2YCtOFRjqsJBupzDAWzWxUcIwrk7Nz+rQM4E+sO5
 Z8iYpP5QMJNFub/D1Asgh5d0JVFzPiwl8O5lmV4hDSndmCabTJEwAdsga
 Bh/YFlTTDO/kdTJHDYJp3sM55MIrd3obn+kbfq0UuCze7L8Rv7n8zjqfi
 Va5cZmclKZEkIjnSklkBh8m6NOoPLApFYBwkqRu6ImfnNDonPrfllQ85d A==;
IronPort-SDR: UpcwKiGBOWuZ+83MnuTLHv3U3ywQO58kegbGi6Dt+lYTc8Tq1HK/m+zHfzVKkjMlhcSAMnjszU
 JwBXSi3zScwCafq7jkImom91R4cHxPIEo9iad05zEowXtkxYxfz4O6r0eDMBDM5TQMs7+nKXiP
 i7epjZqnOxfbbsOEbdQD0mTOPTQUq/KvrRgcM/drKtG0832oellS2/trFYyRk3ekoCXkgxEQB+
 dIbPTwVsHXUXgghsVYtLVFXGo8/z8wF0CGRxQ3I7qrUQsWim+rNvkXDEnT46eDBZJQMcIppEt0
 dto=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551128"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VN/hjzMp9Q/5DKRp+05MjsX9KAJCvQN6L5yCuD8I5VteaRLiKdVPrHI7p1JG+VYQLvwaQ7dYY/GLzWw+SSAkHZ8rnCK5NtwS/ValFkjunfIGx7SzYQCyXlyuSzEd3qzx7Ae8HrfaNV/AYP27EcM9qBKw1IyQPKImxP6GiVAJWFFUFd67DmZOEQmMtT8tTAv/pfdNuSRZ2zdv5smiv3hwWFJ/86oF6lQGXFffokpMnUQnhaN6af+R+3lPCc7tDj0sFyuh+e8MZJAjOtmd54FpWBsNFGHOIf9gSXm0qCGZuQE009E/pk+dDjv5TM9zTZbwhEiDN62xX7m3Vv2V4m8bIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4grfYYfXHkKtzPg9SswqCLnAlHDofbIxigWygQqcD/A=;
 b=bYgr1b3r6ywba6Upe9BQyPh9YRzUJUJic7BATgPz6uGCAEcEAFW53KNQ2JwkcPz3GO2IItEZUBWrhc2G8n01jKNwv32WEmrwM4O6g4yq4ehvwz6I8bRtBvQk+tvNot+ve09pcRUIrwjojm/qoA0iliqeiZH5lYeZTX4SX2WX/YRFkXyS3RvE48SOcmb0HCNQxrjakHKcqfjbuUXGjTQyU41Gd7KbJgFrrQQzrADrrY2zG+hdybvimJ0aoQgJZNhh0QNi+n7fNySRx7jpFgcO/qOg2LYBM0Fa6Ce9+ETEFoaKoSvzbPg3ebE+lq3gPZvtKcDyvA5Q3laWpCjrezPHEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4grfYYfXHkKtzPg9SswqCLnAlHDofbIxigWygQqcD/A=;
 b=Oeo0u/A/6qIB69cemUypyuMPU2u/pKrpijn9UhBWcvPsPa7bVIiCzuW4DfuY17gGW2GEoayFrY6ZUQy78C7urXYjXiTpKDThCofFB0bD0tMosgn+/Nm7v3zLiuThZTExJMkiITaKOV883Rk4Nn6G7g3RX7alSxlfQs4QyMnJQck=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4040.namprd11.prod.outlook.com (2603:10b6:a03:186::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Thu, 14 May
 2020 05:03:18 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:18 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 16/16] ARM: dts: at91: sama5d2_ptc_ek: Add comments to
 describe the aliases
Thread-Topic: [PATCH 16/16] ARM: dts: at91: sama5d2_ptc_ek: Add comments to
 describe the aliases
Thread-Index: AQHWKaz7B/63x91lDEatHaURenNffw==
Date: Thu, 14 May 2020 05:03:17 +0000
Message-ID: <20200514050301.147442-17-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 690dd394-b430-4c24-69dc-08d7f7c41dd2
x-ms-traffictypediagnostic: BY5PR11MB4040:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB404066C81030D8415CA161AAF0BC0@BY5PR11MB4040.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d714Tu0dkBDofQB+QkFSqHG7fgYvxr0hbaawdDCVfFE59czXDY5e54Y11tWK792n6og+q9EQobs2RWp3eESHQSMrVnX+gFT30CgpYvPQ+upokE4MTpJGqpISokHofR9WU/HEIhFyvIJPyk8pmy/fG4ULNDUCGvZ2ZKoZaf6x7Zgpa+iAlY1oFBMme/4H7uiP++ksTo8jBRcCgNCqPdOIU/wuZxaIxzwGMUkb8uensEBB8CCMx3sql7rK1GDOA83ylj04vxF77rmjWLDwNfJB230qffa69cn4rwpMpgtAj9cGol7x1bsHnXOaAMOapuNFyp05xHPALSQ7G2b7+hXee8nsJ28EarNZkmbG46eQn0qfLC2CvsemryDO51r2wU0+iXZn3v9ua70M91Lnmj0Hcpmjqywcs4Ks6+W9HTfqGWv50DHN4olW7+sjo+41hVoh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(366004)(39860400002)(346002)(136003)(186003)(8936002)(36756003)(6512007)(5660300002)(66476007)(316002)(66446008)(66556008)(6636002)(4744005)(110136005)(4326008)(54906003)(8676002)(1076003)(2616005)(64756008)(107886003)(66946007)(26005)(86362001)(6506007)(76116006)(478600001)(6486002)(2906002)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7WQ/5S21oHpPIyvNp9ulQxwCm25WkQtwbzq+TjI2F28lNz2Kd++l1MWUu3jVM/fNczxW3BnM6FiMqQ93Ls9qme/1+vGg2P9ljRNA2N+XK8ZqxKAG6BBI41Gx2dKUYRtnU9GnA4bdF1eAmEICgQEBH6LorTNUTOk2/FnkO/jtPTpiqOgVpNNyEZq4J5oBkPfNXcu6gRcf2Ic7H5+Bb3cpEjnWqvL/DcJcbEKie3roVHCLBBSEqNopsR5TTnDUU9Dim7hKj/od656rtF11HUhPktCBNhzzPmeRv5HSRhOJxTpkmp91+DeDCZ/3xQal1Dypy3MtXZvl4otdzrozke1RR9qpYf47WUDdWFah8RcQG+pbnd+sc4iaKhue8rmMiPbubqRBHg757/NeuaFLgF7DvMmGUlIpdBtbXzYUFIWdqNd0I4e1Gu+CmAIEgQXnmdvJUXJAEZVPZUJpjkSLDniPuPg0X8tQ3L7WFuFQsQJE7s45KwjlsLtLIGoMJtXv3Up/
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 690dd394-b430-4c24-69dc-08d7f7c41dd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:18.0215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xBLPV8C1NQATB2yHexbOQwS8/YXaotFFhi1QCfi+j5++BVkWJnr1hlYxFqhrxrI3pFViklJNAoyehVGlE4nX39Mx485sitGsYuR+fBoNWqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220320_870277_AB7A54E8 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Indicate which i2c alias is for which connector on the board.
Specify that serial0 is for DBGU. This eases tester's life.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 0e0341c83aa5..45c671a2bcf2 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -18,9 +18,9 @@
 	compatible = "atmel,sama5d2-ptc_ek", "atmel,sama5d2", "atmel,sama5";
 
 	aliases {
-		serial0 = &uart0;
-		i2c0	= &i2c0;
-		i2c1	= &i2c1;
+		serial0 = &uart0;	/* DBGU */
+		i2c0	= &i2c0;	/* mikroBUS 1 */
+		i2c1	= &i2c1;	/* XPRO EXT1 */
 		i2c2	= &i2c2;
 	};
 
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
