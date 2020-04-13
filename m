Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88751A6790
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ZKjZQjLGdtx4PtcKQ3MspSirC4V16VBhlYsYU3cRBw=; b=l+ojg0xwimZQ7s
	Pck6agSviDIBRdgEWUS+w5n2aguixWYD9SKqTf/0yHSnAwbA9NQdD0ZCQ2MQ5c2h21Ov0vh9phGaj
	foQwcdWvoCETgK2EIsHAUpZjwiTyU0qSEvVT8m05eijy2VeuIychWRDewf3LvRMNEpDQaSveUR+Pz
	a5vHQoG5uyWbtYnMyy/yqYU/rLcqzEXoEywBNNAhV5sq9tQ2XNZOz20xSf6/yOof5mk3SrCZjbFYt
	sk9kGLLJvU83ME8bATn/zAv56kGXjPwx1eKvpMU4/wq6Vd/bC6kLm3LHH2Ww2uVPCO8wJccy1u+3s
	3vv3Am+RG4Wq/+vk3acA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzmO-0000i1-Q7; Mon, 13 Apr 2020 14:09:40 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzmF-0000hY-Ki
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 14:09:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586786971; x=1618322971;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JnXSZ379qRkkfEv87vw5+JmNSNxkHGW1u7TU/vPKT00=;
 b=SBiBkkBHBYuxXLQ1EgR19R7RnkQ8UNzSO7IVLmvcttjPlDvV+WnQ8cj3
 BxriJBf6vt3S+UOLLrZcTMQFByFWdnJOcR8iNGCdV9Goo09m8x6nfusN6
 egB2FfD5z6UwR8jepkK1ZH+xCs8m56/ExwaaEAwQJbmPV5eksR4KzL6z1
 z1BL2tkJxHPfsmQYXD3McgwZrRLYvHDxE6XnPZBiq9IKS+TALfFwgVqJq
 Y3s2ORv7l+0Qm9vCD7Gkv+ZuwqhfwvXbs9+u7wXHSeM0tNew5ae9gwy7X
 AS6+knJ6MlDO2sEv8vy4nQu0v7AjYWgl2BKrLLUv84zH8Z10Ef7r5Kck3 g==;
IronPort-SDR: 5UPko/UFTbXU/P3441GfgJHvwVtYh6A+hThTAB+n4VxGiDtZhHLY4CTMJpu3Oba5DyEg2VKFlZ
 ckFhEtnZkA1HvB1gF8szyZ9t47OTqaKJg7N28pumiW4oP54Non58iPEH+mP6hJ029DHX79XQis
 aXc7ER5iJ//gNVmg/0p+kaaZv8DU4/qJOtRcvg+6nt62vVgbOx+FYzYRVBBZvxhr1OHzsZtgrX
 X8jbx1Xjfy7cO5TgLDBN6AqxqMLb2OFrrSVYRXtxVvkYMjOcsRUaBm6rJEmdVwXio1rodgNYzX
 N9s=
X-IronPort-AV: E=Sophos;i="5.72,378,1580799600"; d="scan'208";a="70150515"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Apr 2020 07:09:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Apr 2020 07:09:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Apr 2020 07:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPd75aWcU3kOuxRnBP87QYfAxgzHxHDMnSnnmuvH09qz7fLt0KOEGroPAXRSy5mZPv9Imj0CzrfrnRHRvjpvLYwLvFBwoy5hTTBGzkhiUgcq3InZuQgcl1MCYAJdypS2nSdyr1arAlf9T6QDsJZmkit3xerJXUOu3yKzUnpDLXHqxH3PNSWTNAPxLnUDmyteHLvs53uDlAHQcSLNQY7HREiMLI5mN90/dl5XxWr8zFwfrEp3XY5eSloyFMwZ9yJ4QKXkdmMnCgybeUKEpTW+H9lYJc7ELx/sxd/6gAZx7g/ZnIUULcADv7QAt/HeSr9zkDNUCl6IdF+MMx5CrjZiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtzS1hxVqt++OLXjX2IYHlYrx39ZzfFXS29eRWbmRa4=;
 b=AIpQ70wyNYFXu4rsv/Wu0rPWuKXmmIaykKC1e70S0Bh1/KBcN5XpUK48xzipmyZEkds4GQmslWhCs1rwKRLAeWCoJJ6k2e0gC9eiDVKm8bWeLWNOV8pydmrtZmpcNhup0wfzhCC9Ii+UfAO+3pss9v0JlsgsUlsCliLk4lRacBFyW6os69XArOoMmMRMOOa9Yg7S5ocBpP9UFUa/utSYK73mLUMOWgPzZhz8NNTeitvaC9gc2TLSHMUxIPV9aCtuUGckGs0rFYTuySv/SbHkzwQp9VeO8WqXKUN4wdwpXJMApcpEQ5dvmVnjysdmgyCEW1qYc1Es+LY5TBWUO5XP+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtzS1hxVqt++OLXjX2IYHlYrx39ZzfFXS29eRWbmRa4=;
 b=T2ZbURgCSWW/QLh+AVAqexQFiBvP+A211g5NzODlvkJ0+8qAUug9TVnl0KAxCETXZaCwkwwG1hrTCPG73m787NdEXfpcCvyK/7WDA8x4jIf2E5I9qijX8r/G2/4bX67jKCebIQd7+cPQWRWm15S8EozRRePU/wI9QhLB5sNd/+k=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4500.namprd11.prod.outlook.com (2603:10b6:a03:1c3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Mon, 13 Apr
 2020 14:09:25 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 14:09:25 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH] ARM: dts: at91: sama5d27_wlsom1: Add alias for i2c0
Thread-Topic: [PATCH] ARM: dts: at91: sama5d27_wlsom1: Add alias for i2c0
Thread-Index: AQHWEZ0jFkAKqwF//E++5sIL47bPHA==
Date: Mon, 13 Apr 2020 14:09:25 +0000
Message-ID: <20200413140922.154886-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef1cba8a-baf9-49f1-d389-08d7dfb445ed
x-ms-traffictypediagnostic: BY5PR11MB4500:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB450045F30E2CABA9FEBC4BFEF0DD0@BY5PR11MB4500.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(8936002)(86362001)(478600001)(2616005)(8676002)(81156014)(6486002)(186003)(2906002)(71200400001)(26005)(6636002)(54906003)(64756008)(107886003)(6512007)(5660300002)(66446008)(66556008)(66476007)(91956017)(6506007)(1076003)(316002)(76116006)(4744005)(4326008)(36756003)(110136005)(66946007)(138113003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQZq0w92Xv5qV0MFW+AKGkQoznlDa3kY6tf0r1FFz3nWREXKJxx2XyY/GRp4eKM87Wv8MHSeUVFRr1IgCT6b3SFxPgr56hVDxR0QVnVotVDtRbtwOeGtX4MYcBjqm80KNUTdJgxWrz91EBvZDeh2IB4Kfp1mfwie43w27AqidIaa65aMNx0nFC4xHSIEY+dco0YW2EHVwfop+2NxFxMKnvo+gdTKwX8bUmDclbZd95Eak9UvR8I+a7yoieZWAnFIbjAHFTomoRjbSn9dWR4G9mpU+tdPi9ZWxL3g58OlaZKNNyVSbfJJcNHZ8JyoJlJlHIsxjnaTfQmKUt5eYpsOZzCDKbMwHEE97dg1JOKFZPGpUOnxBoQh33EvwZ18reNRJeVhcFYy4Hk8+aftzOMi7gi6Vdj67MrPpaFOiBdlqW4HpJm5R1q8o2lge+ifIWIsOl0VnaTkYjDDwgHKFf78zYK6KP68anHrFb0mu1cblGY2qYXjq31PC9NvD9OKraoc
x-ms-exchange-antispam-messagedata: Df7gYqBh9zPmjegLBTaO+dEii8cFYKLP3rVIwsqkRfvO8sQn8WiW7e3x3uVCJMzJAtP1Rs5CKJYJTf9QOZUfa6rNeyHBHnIPp4mKB/kyOL0sF9cVYDhj/RLwoST0mcSmNeyrXSau7Xc6WA9IyutUXA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1cba8a-baf9-49f1-d389-08d7dfb445ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 14:09:25.4497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hUSAweF2EcEN4eZNK5yojLumsSljo1z79u27LpJADe33Y6fmOnAV2H/UWnyXhi8GHSDkAuxakagyZBron9yogA8wlOzitCcN4dEn1K2O880=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_070931_730268_EB2132AE 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

wlsom1 has an ATECC608A-TNGTLS Secure Element connected on the i2c0
bus. Add alias for the i2c device to not rely on probe order for the
i2c device numbering.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
index db3e2239eee8..bea3d60b9722 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
@@ -17,6 +17,10 @@
 	model = "Microchip SAMA5D27 WLSOM1";
 	compatible = "microchip,sama5d27-wlsom1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
 
+	aliases {
+		i2c0 = &i2c0;
+	};
+
 	clocks {
 		slow_xtal {
 			clock-frequency = <32768>;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
