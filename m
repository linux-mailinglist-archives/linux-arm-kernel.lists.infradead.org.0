Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715D31319AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rvt04fkNS0EhPeeF4hFrgwVwFw60YISsCLqBGh4UF5U=; b=L9VNKW6sCxGpDx
	RiFnToPamAByyaC3+LQbTs+rpB+gcaboTexQ+kSDKemVYfnd5vIt9sH1FHKMDMozTxX6R4cQwAxyi
	kUA1o3x0AIx7RbM7QZZ0+gtQ5QKCURMZIHR3IjLjSGtCb9Z3/g5J9MPK9/MNRTjvL2dhzPQauKrz/
	hy2LAs5UMmUm3brVZBcUZP3ZukdH7g02FuzGjs/CM1BUZHrdyBfh+ZwPUtwa0jS/dncurBDM22h4a
	mBrBLMiNi2WOCBiWtuF0UlGsdrgwlhCK5Tv50DmVCwXjnL/xdbwfDY5CpqaVHKgz5IljAQyDRouf0
	dwQElu+DEnOgJ0HUglpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZIh-0002VY-8A; Mon, 06 Jan 2020 20:48:35 +0000
Received: from mail-oln040092067044.outbound.protection.outlook.com
 ([40.92.67.44] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZHt-0001xv-2Y; Mon, 06 Jan 2020 20:47:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BdYlFNdN+V6S91avnXRrwjuJWoqkQ453rTcmRVpClz+XSlNeWD/9XIdgy7/hMhqaMd1LFNsXOkDyBpP3TA7Pf5TUMgPl/djogCmXqUbpcdfWG8GjTyZaIDAchRcRzaeInUzVaN3RLIhONzGVi5MHX/DPcU2nLvx1rVWvGtW5jIkfQBWMqn+Fot/OEJjbKbj7bNVTxINZjjl/2NSAPH78uToLfraJujQOSm+0I+Z7DmWday00LbQueCawM5yHO45cTu8gda4r3Vr4gpkvPGNuy0GVvnaooAd3q3ukLbkzM/ITR6Cn5JXR6FTfSzNCyGOyQlkP6suPMsw7zpreefv14g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aY5ktgJ+QRa9uqdirUaNg1I3IrW3TlDJZAZw2jbYKss=;
 b=dP4NYJcSqmtgKB0/laGslG6Dvd1msEkqwPqHH/Gp1S/Q5tG+eBKVNksZ0QAqp1xOT9ZqGo2RmiQdRvQ54JRKoke2g+qSkb14zvMIr5EEgcMXCLfukb5hVbKklUNXzGMSSVWXhXBedjfIpov3aY+u6HahxOaW4/QVvzWOrvHCUthkB8MxG+9q+bIwKP5D4BzZ4i86km4+sQof1nOCQFPJrn/Z3lr/seYaz0nXOnd+Bo+GjtwtzGB2I2MmYm1XqQHRLNhHbeyVQvxqqZClCzfqSEEvRtYTo65tf29oUvn/WgL6aQZvbUtH7ts0U3LhYw+83AtyxJvSSN280kP5UiuR4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (10.152.12.54) by VE1EUR02HT150.eop-EUR02.prod.protection.outlook.com
 (10.152.13.166) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:47:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT060.mail.protection.outlook.com (10.152.13.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:47:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:47:42 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6P195CA0080.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10 via Frontend Transport; Mon, 6 Jan 2020 20:47:41 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 03/15] phy/rockchip: inno-hdmi: remove unused no_c from rk3328
 recalc_rate
Thread-Topic: [PATCH 03/15] phy/rockchip: inno-hdmi: remove unused no_c from
 rk3328 recalc_rate
Thread-Index: AQHVxNKKPaafaEKAxk+Qt3cWlEUCdA==
Date: Mon, 6 Jan 2020 20:47:42 +0000
Message-ID: <HE1PR06MB401147C5614E2DEDA87B7A63AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204723.5889-1-jonas@kwiboo.se>
In-Reply-To: <20200106204723.5889-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P195CA0080.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:A218D2239743A09E352A77C47FA8137872204F3074F74A405052448B2DAE4EAB;
 UpperCasedChecksum:1629669DD3F21DD25A1283082DA12964E31AD203F31BF55A408A7AC769C735A2;
 SizeAsReceived:8209; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [FybFPbdRa16xhGY/og59RUzVipxdMJEJ]
x-microsoft-original-message-id: <20200106204723.5889-3-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: aa6adf75-9242-4137-bec7-08d792e9ac9d
x-ms-traffictypediagnostic: VE1EUR02HT150:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zIt6oRTrcNVgEW4VY53DWQpSchU2kARGxHsRsIKD+t3H1gWApDhhwrkRVeB+gOryzqFemRn5mLmJgQdVb5aHvfF9HcY44vsF9kpPL4RhEcccgfbDKK4ZsHN7CCKXjyY4BfdayRZPGeiUpxBcwGZVrEg4Kslxr7Y1VggbcS/GY13RPW9gdgyhNHiF3yRnExbC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aa6adf75-9242-4137-bec7-08d792e9ac9d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:47:42.1096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124745_114381_84074DB9 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

no_c is not used in any calculation, lets remove it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 093d2334e8cd..06db69c8373e 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -714,7 +714,7 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 {
 	struct inno_hdmi_phy *inno = to_inno_hdmi_phy(hw);
 	unsigned long frac;
-	u8 nd, no_a, no_b, no_c, no_d;
+	u8 nd, no_a, no_b, no_d;
 	u64 vco;
 	u16 nf;
 
@@ -737,9 +737,6 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 		no_b = inno_read(inno, 0xa5) & RK3328_PRE_PLL_PCLK_DIV_B_MASK;
 		no_b >>= RK3328_PRE_PLL_PCLK_DIV_B_SHIFT;
 		no_b += 2;
-		no_c = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_C_MASK;
-		no_c >>= RK3328_PRE_PLL_PCLK_DIV_C_SHIFT;
-		no_c = 1 << no_c;
 		no_d = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_D_MASK;
 
 		do_div(vco, (nd * (no_a == 1 ? no_b : no_a) * no_d * 2));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
