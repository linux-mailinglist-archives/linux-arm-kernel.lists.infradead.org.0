Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E50112AA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:49:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbP/H1YvjiCvYI9TQ9e9lUfC9Y1A2lYKLzgbB07e7yQ=; b=i10+81M692cm0n
	fbZSNO4fw2Ehuvx4tg2jtxMmZUBzkT5WlAkPAIFoqqdrMG7TXlvdthk76ten1ZouNABeT3P5G/nDa
	ZtG/n9DHICOqxwsRgzBlj5d1p7WG/9c9xJ4HVvhrNaxKV70zKeR9pmDsHiqaC7TafWI5PhB7GAP4f
	QoEKj2OcmJtgWHo6Hm2wuVNr3dhTP7iC6KifSWGGmwfLUVnkPEXdBiXt3Sq2CHJ3cBV8rnOmVcMQV
	H8w3foxltAJj/UDTCSE2jZXlD/M/ObFH877M2pf5C9uWCL18d+gkjwIAem6i2KHhG+OF9Ayqs+N4q
	D35zKNGEELUup2HPl+Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT9n-0005gs-90; Wed, 04 Dec 2019 11:49:23 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT9a-0005Wj-Cz; Wed, 04 Dec 2019 11:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=VXpLXIOwxbrLMCWztCBz0TFzJaZ2wxbL+CDvNfwM8Kc1UGXjbAWwAbmDtiS1V2BiSPBZCwwoUKaaJUFXRVe/NsugxZJRCpMDGj3Yf08urWwM8/5kkRtVgQn2IXWliAYw+f1YIHwqFUX2UDjh8tNJ/O9RnukMB+Ttnw3qRjLPA8M=
Received: from VI1PR08CA0123.eurprd08.prod.outlook.com (2603:10a6:800:d4::25)
 by AM0PR08MB3124.eurprd08.prod.outlook.com (2603:10a6:208:5e::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12; Wed, 4 Dec
 2019 11:49:06 +0000
Received: from DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by VI1PR08CA0123.outlook.office365.com
 (2603:10a6:800:d4::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Wed, 4 Dec 2019 11:49:06 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT046.mail.protection.outlook.com (10.152.21.230) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Wed, 4 Dec 2019 11:49:06 +0000
Received: ("Tessian outbound 15590139dbb5:v37");
 Wed, 04 Dec 2019 11:48:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1593aa137f188207
X-CR-MTA-TID: 64aa7808
Received: from 27b0b5ea6d36.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0C2DDF3E-45F2-4B29-920E-BD34AED50448.1; 
 Wed, 04 Dec 2019 11:48:25 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 27b0b5ea6d36.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 04 Dec 2019 11:48:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVxzEScDcWcNWXchJPU9fDRBCTskhoWv4+JEHSusRiEP2E0bGEzDCc0Sbm2qsq8JgyNXwiylJostSO/4qyMeFaF2E9vxHk6fUt23xfhj37u1dLcDNTLLATJueYTaBxevjDrXKX9Zebx8LeWbi25ayB+ACsq/AXG0+NfnW3CgqsI9H89MtmqehR8IWgL+0rb0PZmKSLRH6PBH28r8B0biL/gwk9FsR2edU/KQe2PqwVSy4j0hDdZg+q4u0hOYPWGU5SxUBbBuF4219Ml2uUwy+roY2sXU6/J/k98Kf6e0UklkGq7f8xYu8GzI5QEnTrH+m3iqP2yTCI3bZRuSgdUaBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=F7e9Va60308TA9zXKwYBwOZrFcEl2MaXKt22lPxNnSO0Y0Au9FW72wuSnVZT4d1CqJIKZwooW/+7lLw6AquD4FSPiqQIYYvGs/VZsRpAWWTc1yR1KKQevWeNCpykqng0vjlsxR6/Ib6Qsex7cIRnPP+i472jFmUVrdjqI+lBUPbGJfNEpThlCKAaQjbxdeXodE5itigr5O3LnQbBRSidtylBWYaJKC7ICWraicRHAQLkT2F3BcCik4f6AsKR9u2WUkZKyHaa20sFJ39QkdpBynHVv/y9iZtroS8v/jzBQfC/t3gqZ02DuxQQeUcWhbFeYdy3vo8MB7nhDIUpemaF5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=VXpLXIOwxbrLMCWztCBz0TFzJaZ2wxbL+CDvNfwM8Kc1UGXjbAWwAbmDtiS1V2BiSPBZCwwoUKaaJUFXRVe/NsugxZJRCpMDGj3Yf08urWwM8/5kkRtVgQn2IXWliAYw+f1YIHwqFUX2UDjh8tNJ/O9RnukMB+Ttnw3qRjLPA8M=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB4624.eurprd08.prod.outlook.com (20.178.13.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.17; Wed, 4 Dec 2019 11:48:23 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 11:48:23 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v2 24/28] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Topic: [PATCH v2 24/28] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Index: AQHVqpi7pYXgRFSlykS2PKmc/BjiSw==
Date: Wed, 4 Dec 2019 11:48:23 +0000
Message-ID: <20191204114732.28514-25-mihail.atanassov@arm.com>
References: <20191204114732.28514-1-mihail.atanassov@arm.com>
In-Reply-To: <20191204114732.28514-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LNXP265CA0055.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::19) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 69f323b7-9981-4968-a8f1-08d778aff7ad
X-MS-TrafficTypeDiagnostic: VI1PR08MB4624:|VI1PR08MB4624:|AM0PR08MB3124:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB3124BD46BF2F7BB84D351BB18F5D0@AM0PR08MB3124.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:324;OLM:324;
x-forefront-prvs: 0241D5F98C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(199004)(189003)(2351001)(305945005)(316002)(6436002)(81166006)(7736002)(6916009)(4326008)(186003)(99286004)(6486002)(66446008)(5640700003)(4744005)(66476007)(1076003)(66556008)(54906003)(2501003)(5660300002)(66946007)(64756008)(6512007)(86362001)(11346002)(2906002)(44832011)(2616005)(14454004)(50226002)(6506007)(36756003)(25786009)(81156014)(8676002)(3846002)(71190400001)(52116002)(26005)(478600001)(71200400001)(8936002)(102836004)(6116002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4624;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Y2CFPPGxqO1fAvAD1HLdv1CyHaI8+Nz2Vc//xhcEkqXsz+FygNZK3wryNGtGFFdRqNLoZ6yz6h4I1vzI+pdcgAhm2sG8JM6uiZK5KG+W12cHzxQAgAP9HIpM0EUIJHJgX4fWfaBZHXb/zTcruF2VVaehsLQrRMU6Un1qftKnqSoZdNkd1isaPVEZ5JC/EXdM1SJNy08qI9+lYrHGfkXMcLF0wFSURZ90jzDbFy+lp4pSW7tG4Z3dbT1uDrSKF3YxEkfL8YQ9U7VdBdLrAuKpJ4WWCDGWH7sBtQwlDpExIx0Z4i8v3JlFVwVIr8kWICSkGBBxP/BdZe/J7UGjWaKvvj0mVLYvlu00LiP/FvWlkglPsL8cBWZr9xbjGkjQp0ZMZgTheY8LFW5xmhRbLv2C5yLjYoGtr6i/2jc+w3i/7um4dG7UAEuY6HtZKTYp8gTx
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4624
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(199004)(189003)(54906003)(3846002)(2351001)(25786009)(7736002)(305945005)(70206006)(107886003)(316002)(50466002)(70586007)(11346002)(99286004)(2616005)(23756003)(36756003)(478600001)(22756006)(76130400001)(50226002)(2501003)(336012)(14454004)(6512007)(8936002)(76176011)(186003)(6486002)(6506007)(102836004)(6116002)(5660300002)(450100002)(4744005)(8676002)(86362001)(6862004)(1076003)(2906002)(4326008)(81156014)(5640700003)(81166006)(26005)(8746002)(356004)(26826003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3124;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4a18ad8e-9d7b-4f27-905c-08d778afddaa
NoDisclaimer: True
X-Forefront-PRVS: 0241D5F98C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sBlLaVmu+PjExgjavqBvcJ/0mdCWSV80Mw5FlZfJ4f8Lc7TY8ycxUxECKSklZ8RyZTMeVI0Iyl1HZwJxIEQqTcG9II3j590Ml7laEYkw0aWSnQaq+wlYsfAtcim2D0uLhJPj0DpDEgbKCbpP1x8bkaa/offE75n9RIR9Mj+t0tXDNvA26mVOm4VgN8nukSA+5ByK/mOP1+tbtROTqIggqmqrCInAarR3zzzOUorxOo7Rtli+ljs+aO8FtO6e4EF7JNgVVpW5c39gDRQQ7ve9ZsXbogy4pL4GsU3Tn70iB/52EG4kxsfiP7X4GHqdbQtFbTsucfKCO4Lc3XJObZsbNbk1dcl03YRr1jOdlKcMzjzkCSVcduzqnJSF4f4ByU519MZkviQPx0gT53wy6dgCNKHdbKcsRA+xWbWmh3Du5dr4ImJO5fJxc3zqAjFWSujT
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 11:49:06.5367 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f323b7-9981-4968-a8f1-08d778aff7ad
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034910_449028_3CE9D329 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No functional change.

Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index f684947c5243..9761a80674d9 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1708,8 +1708,8 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 
 	mtk_hdmi_register_audio_driver(dev);
 
-	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
-	hdmi->bridge.of_node = pdev->dev.of_node;
+	drm_bridge_init(&hdmi->bridge, &pdev->dev, &mtk_hdmi_bridge_funcs,
+			NULL, NULL);
 	drm_bridge_add(&hdmi->bridge);
 
 	ret = mtk_hdmi_clk_enable_audio(hdmi);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
