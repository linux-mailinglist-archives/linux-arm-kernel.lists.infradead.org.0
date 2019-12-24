Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5112A38C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 18:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7PevTf+LSvl8URhNTloVMCgPA7W/TuiiUNlAg1zdD0=; b=njtbddWBYRWVxp
	SufWn8afQ7ZulwnEuHXI5j4iTcCBmTvJhEF7SNohMD/1zOb/aIMvJR/DxSa+5sxT+CK3XIFQ7Pwrd
	KYKHyYh59hbHL4rXxzXqdxSPdxVHxqbDUC0sD49E5FcaclqJIGo2b3EYwap8G1n/6R01mdVTeZYOG
	U1tTdz96+gUhL4Rpvbnvkg6vtkWpqXK6awoxbMb/3Nz+LCndDsQlYj1/TUgbYN1rShIDJBbKAZP2w
	Yw1lDC2VDcsA7zmXz7bRmku6WjMuJ15aVUvLNzxAJobvPiEnktQQ4BME80S6pdjiycnY1U3TTMunL
	LN0iiSwnzG9QvsLQk9ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijo65-000349-C9; Tue, 24 Dec 2019 17:35:53 +0000
Received: from mail-eopbgr20067.outbound.protection.outlook.com ([40.107.2.67]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijo5n-00030s-0K; Tue, 24 Dec 2019 17:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aawaic+7F9JxuHcXn/LveVUKjL6TBezQVbgQSBWd5jw=;
 b=X0JPwCEYU9IiEM99tpyztROfHShsL0+cdRnGcje4fu8BWimKT/ReJHp4LBq8diDGEdiONjvisjEwtgbTVUmagDZMV6eo3mzlZ73Cobz63zl9YNHPcVUFFVr/VTuBUgYBy8bA8zjH/J2ZEdYGe59Nv7UfPSj+gQ5O7HEBAVYzDwg=
Received: from VI1PR08CA0195.eurprd08.prod.outlook.com (2603:10a6:800:d2::25)
 by VI1PR0802MB2623.eurprd08.prod.outlook.com (2603:10a6:800:b9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.15; Tue, 24 Dec
 2019 17:35:31 +0000
Received: from VE1EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by VI1PR08CA0195.outlook.office365.com
 (2603:10a6:800:d2::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Tue, 24 Dec 2019 17:35:31 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT034.mail.protection.outlook.com (10.152.18.85) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Tue, 24 Dec 2019 17:35:30 +0000
Received: ("Tessian outbound 28955e0c1ca8:v40");
 Tue, 24 Dec 2019 17:35:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f874434845d6cb7d
X-CR-MTA-TID: 64aa7808
Received: from 2398bdd0a748.6
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 64153F3C-3911-45CA-AEE2-3284817689BB.1; 
 Tue, 24 Dec 2019 17:35:25 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 2398bdd0a748.6
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Dec 2019 17:35:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQZe7+y40eK4v2MVKdPjI4R3EnPJftMsYARUjHxBKq+d20PiDGwzzCUiZAW4GZ3UjSh65gYgpR8thPN+LUk7tcS8WFiTR3KcPuSHRSsyOeo71cbG9o3eMo1xfrlwvX3cNDZhRSXCzP6/vI0rKNuYtbwXsAee47Sj4aSbU1HFqu+DEpSHZCZWKFbtW3AiElINlj8t1LUeHDjleWy44DpaMWs37CYGtmo8DJYtGYpIIwGYhj+M0HqBXOPgCdC9FTfQKCl423UJtaW31U7E5XelWlXYQH0Wjs/yT0DCl11GBejzKrJy1FL1fED8LJYd2hCJC9KfsPvK2bW4EBe0xRzd/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aawaic+7F9JxuHcXn/LveVUKjL6TBezQVbgQSBWd5jw=;
 b=ir1daXCuMT8RuIPlKBHWZnEXJPm0ZQWvPtEQ6Oj9Aroi14gwTJd8EnWBLrphoFnEyk9YLVWWOhy6kx8KncMJ7V/Sp0dHlGCgBZRLXWSJPj6itAciMkvo7GYhJa9HcyiG0njJY2GKzzYMGUx3vUYqQnixJa5I9KUUoR327Aff81oVfMctlA9k/9NciKnQnbPM3iNQalpExGvvGdD7T4T260JheWD1dd+htabRvs0QcqsbxyOIO9icwNdhh0Xo1yxtvd7yOaN3mt+lnoHvlRQ6pyKAiWLmBE/rbct+7wxwHEJOJK5fexzop4JtlWicDjWvijJ02qJgYcTfqnxIAp6u6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aawaic+7F9JxuHcXn/LveVUKjL6TBezQVbgQSBWd5jw=;
 b=X0JPwCEYU9IiEM99tpyztROfHShsL0+cdRnGcje4fu8BWimKT/ReJHp4LBq8diDGEdiONjvisjEwtgbTVUmagDZMV6eo3mzlZ73Cobz63zl9YNHPcVUFFVr/VTuBUgYBy8bA8zjH/J2ZEdYGe59Nv7UfPSj+gQ5O7HEBAVYzDwg=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB2672.eurprd08.prod.outlook.com (10.170.238.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Tue, 24 Dec 2019 17:35:21 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 17:35:21 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v3 32/35] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Topic: [PATCH v3 32/35] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Index: AQHVuoBzYhz6qpsZD02IuqSUEsF2WA==
Date: Tue, 24 Dec 2019 17:34:52 +0000
Message-ID: <20191224173408.25624-33-mihail.atanassov@arm.com>
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
X-MS-Office365-Filtering-Correlation-Id: 234e0c74-54d7-463e-ca24-08d78897ac6d
X-MS-TrafficTypeDiagnostic: VI1PR08MB2672:|VI1PR08MB2672:|VI1PR0802MB2623:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB262341EFE520BDA97F3CB01D8F290@VI1PR0802MB2623.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:324;OLM:324;
x-forefront-prvs: 0261CCEEDF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(189003)(186003)(26005)(52116002)(6506007)(6486002)(81166006)(6512007)(81156014)(8676002)(8936002)(44832011)(54906003)(478600001)(316002)(6916009)(2906002)(4326008)(2616005)(36756003)(1076003)(66446008)(64756008)(66556008)(66476007)(66946007)(4744005)(5660300002)(6666004)(71200400001)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2672;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: cV27tvp6q+UWLP46VckiQyvP5aTwvS1N1FO//Sa1bQJtMVlJg0cCX6ZqfFddtvAqYTplJUk37WTAVi8T6TfQz+2ruixxI07udErqpndpSY720uOIIC0bqnqKiaOX4WALtDvRJXJg+FnIhYxhIhqMtdwWIiLM9erAlJm8HnHNC40wen+Bt0XrYQXBoUKbzsDKMkTcdzVdWYumK03P9Ffyo8ODpshCV+LKWUlTltdJIvX4gZ9/jyZ6wXkIQ2TQb5A34OwDlHSHZ9brSumYMU372Et5d71f6nDvo2ryunf+TWarZYw/SzSIZ9s4LLqxIJv4uudzf8O1f3P2t5Nc0uzB40bJ3S9FwZEtDU32PJmvZnjeoZ5sw+JUR8bobNfPmRDpJdYD/aLhyaRgr+tcHsATB4LKY9eUmH0mAuVjo+2mNLJkJHyxj9LYtbNxnZY857bb
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2672
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(199004)(189003)(86362001)(6486002)(478600001)(2616005)(70586007)(5660300002)(26826003)(1076003)(70206006)(6512007)(8936002)(336012)(186003)(450100002)(6862004)(26005)(4744005)(36756003)(107886003)(76130400001)(2906002)(8676002)(6506007)(81156014)(6666004)(54906003)(356004)(4326008)(316002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2623;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 15250682-1cb5-4aa6-b4b9-08d78897956a
NoDisclaimer: True
X-Forefront-PRVS: 0261CCEEDF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yQmfbNNlfL1IdaEd0ChkxQ7iYIU9cfvO8v/VeGX6L+ap9Ekb6fPTPc/oG7ffjB0UztpJvLhgsDchn4oVXhAe6Nqq1C/6pv5GI9U3uWzklXIdGBukWu26yEA6r0Aa0dX17pLTr7lOQ76OIT6vZS45yl3sZ7prly8A3GCkoHvncwSnM/ge9e1JTZEk9GQm1T/Gy5dO8o17Q/pgA8DWP5oquqIgE+ZWE18YitLOut7baLvofZSbVkf4z4h7Szk/7ejOiWxngZOCq8ApnEEwNJ0KzucstJCe8zLgE5bNLfKDHm8+/a/4dd2dfvvrSqmswy/ROd9EoCaNtRcYfZ8nxpmsnyWtklzXPjiNBtULetfiC0ztfTjn7CyXa0MoPmW+LdgCvvRzVtKoRdTEDVCpflWY7Xf/L4+QOkPGZf3Pfv77WDhOPKvS+h3pbnM/hlWlMuHF
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2019 17:35:30.8788 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 234e0c74-54d7-463e-ca24-08d78897ac6d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2623
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_093535_066760_645293E8 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.67 listed in list.dnswl.org]
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
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No functional change.

v3:
 - drop driver_private argument (Laurent)

Acked-by: CK Hu <ck.hu@mediatek.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 5e4a4dbda443..a5fd2b68e407 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1710,8 +1710,8 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 
 	mtk_hdmi_register_audio_driver(dev);
 
-	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
-	hdmi->bridge.of_node = pdev->dev.of_node;
+	drm_bridge_init(&hdmi->bridge, &pdev->dev, &mtk_hdmi_bridge_funcs,
+			NULL);
 	drm_bridge_add(&hdmi->bridge);
 
 	ret = mtk_hdmi_clk_enable_audio(hdmi);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
