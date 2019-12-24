Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A5312A383
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 18:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3O2mUDqURThOg+WwuxPhwXrMyIHcRnistoxCOun67OQ=; b=ORLxrCiHZBZ5Am
	AY5JGVUFv91eXNNMAWYV93xGisdUjLiS6puXMh8X2n55Dt7XjclYqIOZuXq696IqmSVsM7EMkPWc6
	SvThoCF1RCPgmNqvZOsXYaiCjjJkvAEjJ/UIBCVmJhCqEZBNMmCjhSiO4aaKIuiByzF+Gd1I062zM
	Q8jFpWKUMrTyD4OKgmQbIxc44bFN6JsRVZV8+uPCDCd85rJyTZtXAo7OQlf3re46tvBebrgwUPRBA
	Uem5GtNglaqXqQkkuT0LAPbNUVHOfVNLNCco7ZihJJi+VFotu2GR1EeaZ+YRYCbZHOtZWhpNgmovP
	veWiWvxVhRkc+uPZy3Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijo5e-0001Pu-Tl; Tue, 24 Dec 2019 17:35:26 +0000
Received: from mail-eopbgr00063.outbound.protection.outlook.com ([40.107.0.63]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijo5G-0001LU-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 17:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnfS47iHXpzx6sxAqOtbtIbu7X0P1v8fJ9luy5E/qKU=;
 b=td2erWyAbEbcpwoN55M57FuHctDvJyKYN82v/JmDG16cc/7PLglaPQglxjyIsnIWf7pipBv+E8cXE+R00McQwMCM1TaAuLEzJC0GOOWnph+fhwjOe6Om9n4ASbiW56/ssRN+VitKVMsv+bbz+a2TLD5Tp/HEIyZh2UTli1P6M0s=
Received: from DB6PR0801CA0054.eurprd08.prod.outlook.com (2603:10a6:4:2b::22)
 by AM0PR08MB4995.eurprd08.prod.outlook.com (2603:10a6:208:162::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.16; Tue, 24 Dec
 2019 17:34:58 +0000
Received: from DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by DB6PR0801CA0054.outlook.office365.com
 (2603:10a6:4:2b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Tue, 24 Dec 2019 17:34:58 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT025.mail.protection.outlook.com (10.152.20.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Tue, 24 Dec 2019 17:34:58 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Tue, 24 Dec 2019 17:34:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9d3a1bdd31e541b2
X-CR-MTA-TID: 64aa7808
Received: from bdd2edd0996c.17
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C55D55F3-DDD8-4DE0-9C1D-C3FC67248690.1; 
 Tue, 24 Dec 2019 17:34:53 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 bdd2edd0996c.17 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Dec 2019 17:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcQB8XbgomU20APihe96xG8kWnRoDVzupRzJJ0kACEAOe1D4RDCxJAn96c8hcj0+c4PSINhuz2Vsoma4Jewq4sHAf8iYoIDqw7fkV7xTY23DUiQvtDCbU9ZbmECs7sUmpVrbw9DNVFivDqGjyJWeZKC1ysCN/0Q0VTncKoyrylGfHLIw9CLb1O1O04FCL6e8dl/i8kOSTGgg6TLYTfwj38FAGrOqKsaS1ID/lhgrTYHwkVzWTs+Zxu6hNEI47JXN3Ixsqf+lT40TdevIR9cgEYLp+maWUNIbAhx4z+mUarwV5RIJB2IZwD4wBRJ+OAjKa/rVdNwQU9ku4VCNMa3fCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnfS47iHXpzx6sxAqOtbtIbu7X0P1v8fJ9luy5E/qKU=;
 b=KIE+YVdntT8NAWoykz6TYB4vQEMzlkZ9ZqW0FV2EQKZfpU4I8Rxv41KxjCqaRTpvy+91+VKT8yuDi2okca2ShwbEogsuNH5XjmLVeb4cMyWeIe/9VeevZCeeVBXdTjTL3xWDS0/aOoQFTEDOgdi1vYm+Oy4cqleC+qL8UY+r3cDMmfRX/MfP3OYqQpAYq8+51MBCOVmno1Zhu3oKaBX02FJhobZRArgvzZ6voXUk3XO0Sk51eOOSIOF+wscZ3BcgaIgNioSjW/jS4pDCEj9JLt4aD5z87IpbG+gdFb1QqJoxnmM7xKUGBEDOtHY4lpsNmxtT5y6SwA+Ep5kE06MPSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnfS47iHXpzx6sxAqOtbtIbu7X0P1v8fJ9luy5E/qKU=;
 b=td2erWyAbEbcpwoN55M57FuHctDvJyKYN82v/JmDG16cc/7PLglaPQglxjyIsnIWf7pipBv+E8cXE+R00McQwMCM1TaAuLEzJC0GOOWnph+fhwjOe6Om9n4ASbiW56/ssRN+VitKVMsv+bbz+a2TLD5Tp/HEIyZh2UTli1P6M0s=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB2672.eurprd08.prod.outlook.com (10.170.238.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Tue, 24 Dec 2019 17:34:47 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 17:34:47 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v3 29/35] drm/exynos: mic: Use drm_bridge_init()
Thread-Topic: [PATCH v3 29/35] drm/exynos: mic: Use drm_bridge_init()
Thread-Index: AQHVuoBvC3rXHYh6JUCmNkUa0coD7A==
Date: Tue, 24 Dec 2019 17:34:47 +0000
Message-ID: <20191224173408.25624-30-mihail.atanassov@arm.com>
References: <20191224173408.25624-1-mihail.atanassov@arm.com>
In-Reply-To: <20191224173408.25624-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.53]
x-clientproxiedby: LNXP123CA0023.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::35) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.24.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 613a7924-65c4-47e6-13f1-08d78897991a
X-MS-TrafficTypeDiagnostic: VI1PR08MB2672:|VI1PR08MB2672:|AM0PR08MB4995:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB49950C95C8349D4DB286BE3C8F290@AM0PR08MB4995.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:324;OLM:324;
x-forefront-prvs: 0261CCEEDF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(189003)(186003)(26005)(7416002)(52116002)(6506007)(6486002)(81166006)(6512007)(81156014)(8676002)(8936002)(44832011)(54906003)(478600001)(316002)(6916009)(2906002)(4326008)(2616005)(36756003)(1076003)(66446008)(64756008)(66556008)(66476007)(66946007)(4744005)(5660300002)(71200400001)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2672;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: MJQp0lrj4tzSqzpOH/xk7MDMJ+O+NcL+p+zPzO8ffuCPeZoFftGg/u1DmkpDf/AgASUpFcU8HjZLpCMpcQDMWCnd5XCDZ7F2J1X4Upl9ULzhqocnYOiSYxqEKyW6vlkVz6w9Aq6tQD/JB4g4DU4zZdLhzfdtE2w6MtUYu/3YLKzOCcXffzReZN7TGc2MBfz+fSoCy5eNSTDz3uvKd6vcMNwGVtYeqAUsAg8Vt2WgYaE4cdmgQyGAYqaG8lWtmjb2zrcy2GaP7r/yHlpq1ZG7REYMfn0S9ug+LmJ98eNUBTUu34wtj7jGRiGpLR+atp+L1sKvE4DhfK8B61LR9Ztys2jZV8yV9x9gEgU0X7QsxejEpW6B1er2yyTjHzkVpyfq7lfwmdLLDMMMDOwsuhIZTZ9O6RPShaY4A78zr1TB6rGT9fsAv0YhMY3y/UQDXZHF
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2672
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(136003)(199004)(189003)(5660300002)(1076003)(2906002)(70206006)(4744005)(26826003)(70586007)(336012)(316002)(8936002)(478600001)(6862004)(356004)(36756003)(186003)(8676002)(107886003)(4326008)(81156014)(76130400001)(54906003)(6506007)(26005)(6512007)(2616005)(81166006)(6486002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4995;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1b4ac4f6-3c22-4f27-a3f6-08d78897922c
NoDisclaimer: True
X-Forefront-PRVS: 0261CCEEDF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MxvykWpmQT8mBTuQdUX/kU8wk8Xor1YKWli3gUtVxVRUj96b2V+SR6Jn4H071z2bzeB9mkbsAHQaGZ+JZUaYq4Y/5IKiIASZSFn2B2rfbox4VjSJRyosXfAAXa82Rvb1oIvi6B9A/MYdCRFoQcV16yyN9zPHVXVYofX5iQlBwT9HuLh10HVg0GbBvylC/xCPWNp8lcDq6R119af/Aj7ytv8Qch25j3VWBnDQgfAH6/gFxc5bq3C0LE2aMR/kUwS+jOs9cOHT71oqu+T2WXsdXQBaOmPdtdmag9sSM37Hc+hgMTatLxaeASu6golBMGFLeRtQONVOwFBS+/iTRfXpmojEf+jWPaxivOOHSF8Gw4eeAU1LnyWi0DeNQeTYUcpIY63ccfM3lR8lxsRFJTEhR5AKkioUN2+Q+uBUvqSHZpM+5LfPQXj3NU0Gxmi4Yf1b
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2019 17:34:58.5736 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 613a7924-65c4-47e6-13f1-08d78897991a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_093502_675654_E0A1F139 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No functional change.

v3:
 - drop driver_private argument (Laurent)

Cc: Inki Dae <inki.dae@samsung.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/exynos/exynos_drm_mic.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index 2b5f10c3a285..3bc9f81d0170 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -420,9 +420,7 @@ static int exynos_mic_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mic);
 
-	mic->bridge.funcs = &mic_bridge_funcs;
-	mic->bridge.of_node = dev->of_node;
-
+	drm_bridge_init(&mic->bridge, dev, &mic_bridge_funcs, NULL);
 	drm_bridge_add(&mic->bridge);
 
 	pm_runtime_enable(dev);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
