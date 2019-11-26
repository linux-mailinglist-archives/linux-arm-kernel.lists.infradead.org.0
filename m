Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C693109F34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 14:21:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbP/H1YvjiCvYI9TQ9e9lUfC9Y1A2lYKLzgbB07e7yQ=; b=kbTkLtTrVjbAdo
	+mME7Kt7rKoLE0F2h5gC7lLtJmKTdqXL6QLGx3xVbfJWNCYPCZeh520Ce4Zq7UfzJh6vkk/httoJ8
	TkSOLL/Iy4eyGVqnaA/yZ/+oVbTh1MO8PFBgZRtb3SBWHyPYER1t+xuQYMuNxDovk5XVo8WxJEcNy
	h2OT+dgHpNgLjV74ihFjNHbFt+hl7WXuABXIGfYdOTD58aNwQYIPdX2mhUnPSt15pdwSSQWt3oNUT
	rf/vRN74s5JJ3KRyS2G0FOEq6ma5//TGIqAsLXqTJP94BY3Bwd/9N6/ytTr8TMYgpdAk2vkscbrOy
	S82hoAzHbo/AEd0cGPiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZamq-0006WA-3S; Tue, 26 Nov 2019 13:21:48 +0000
Received: from mail-eopbgr20073.outbound.protection.outlook.com ([40.107.2.73]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZahq-0001At-Se; Tue, 26 Nov 2019 13:16:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=pX4foftaRCM9dA9DEdAENXCpieJQuPbJItHjvWjX0a1vj5CIURm6BNIJYnX0RMOP4nO1V4AybANyYt3U4GrdZVB0qDdP5YyuZ/P85ImioNknCOTxhEgZy8/CMz0Jf85s2eHH+jcqX6SONVih6byrJhSupo9K5NIQwMejM3yS6Xg=
Received: from AM6PR08CA0025.eurprd08.prod.outlook.com (2603:10a6:20b:c0::13)
 by HE1PR08MB2811.eurprd08.prod.outlook.com (2603:10a6:7:33::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19; Tue, 26 Nov
 2019 13:16:32 +0000
Received: from DB5EUR03FT010.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by AM6PR08CA0025.outlook.office365.com
 (2603:10a6:20b:c0::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17 via Frontend
 Transport; Tue, 26 Nov 2019 13:16:32 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT010.mail.protection.outlook.com (10.152.20.96) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Tue, 26 Nov 2019 13:16:32 +0000
Received: ("Tessian outbound a8f166c1f585:v33");
 Tue, 26 Nov 2019 13:16:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e7b39dd392aaacd0
X-CR-MTA-TID: 64aa7808
Received: from 95ca307b0d32.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.57]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B3E3C202-EFF2-440D-A934-6DAB61EC2BB9.1; 
 Tue, 26 Nov 2019 13:16:25 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2057.outbound.protection.outlook.com [104.47.14.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 95ca307b0d32.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 26 Nov 2019 13:16:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCtjhkowsKDNmCYBOpNs9sVB6ZdTtexIHnZazSVinYUYxbQ5GtXC2iR3SStSibkxpwL004r2ZtcDm8rO8JtR+zvi0LPIKWRC4DFGV6dIQV7yRGb6vOf7GxFMDXCGP2oIUwFHBw0Xn/OpSz1QgFMa87A/1T5pD/OLx+B80IKvouWKEEwBsHxCxTpJAC3h16Mx2VHYZRsZNeq9uBcQAVQmVzBbynaSnO9VF1eaZgUWmUiNkgN372U3XkmAVUdUz1ZUsqgbaoSGNgjaYFMH5LrRpkNqZzj11bUrpOy0f9r2Y3k+hjeprf+3IPApjZOUJ7W/azkNcPUDoGyjpRtelr0E8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=NB5ENJ/8ICLoi6YLzlyv7iKAF25/f0mwsYhCdCcuTqI8k+8Bl+FDUud9++bEY0O36ktBUUIzRlJAdKbTO+wrv5kTZihMxh9O/fMO2t2dW935QibCbHNY5OyMupMuHfuqYf7uXiLRB1H0NLv2BxGU11ApjWK8UEdqgHFFSL09Q4j2BUJ7qR1lumXd7wp4d1h2c0a0B34c82vC7dOprmFxC1C1gZbJdLEe9Vkj5Optmc+OCckl0xgIPmavR8PjuGFwE+m4b+1p14VSHFYPMSRhI4yehWelritLML/JVHKCDpmPP8q7Jw+6D0H77Q3XI6ci0bwGxa1ICQwSa/U4/cEmVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5MOaSsR5jY0wtwz+PiDW06AIZcsZxDj0v9S4kmIV+VA=;
 b=pX4foftaRCM9dA9DEdAENXCpieJQuPbJItHjvWjX0a1vj5CIURm6BNIJYnX0RMOP4nO1V4AybANyYt3U4GrdZVB0qDdP5YyuZ/P85ImioNknCOTxhEgZy8/CMz0Jf85s2eHH+jcqX6SONVih6byrJhSupo9K5NIQwMejM3yS6Xg=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB4317.eurprd08.prod.outlook.com (20.179.28.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 13:16:23 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 13:16:23 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH 25/30] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Topic: [PATCH 25/30] drm/mediatek: hdmi: Use drm_bridge_init()
Thread-Index: AQHVpFuzInu3PYWIi0+K6XxDPncYZw==
Date: Tue, 26 Nov 2019 13:16:23 +0000
Message-ID: <20191126131541.47393-26-mihail.atanassov@arm.com>
References: <20191126131541.47393-1-mihail.atanassov@arm.com>
In-Reply-To: <20191126131541.47393-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0453.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::33) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bc9cdea8-3175-4f98-459c-08d77272daf2
X-MS-TrafficTypeDiagnostic: VI1PR08MB4317:|VI1PR08MB4317:|HE1PR08MB2811:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR08MB28112E889D7BDFA5ADC0B0738F450@HE1PR08MB2811.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:324;OLM:324;
x-forefront-prvs: 0233768B38
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(1496009)(4636009)(39860400002)(366004)(346002)(376002)(136003)(396003)(189003)(199004)(5640700003)(86362001)(6512007)(71200400001)(2616005)(6486002)(71190400001)(2906002)(4326008)(6916009)(44832011)(446003)(11346002)(54906003)(66946007)(316002)(66446008)(64756008)(66556008)(66476007)(6436002)(4744005)(8936002)(186003)(26005)(5660300002)(102836004)(305945005)(14454004)(25786009)(99286004)(81166006)(50226002)(478600001)(2501003)(7736002)(6116002)(2351001)(76176011)(1076003)(52116002)(66066001)(256004)(8676002)(81156014)(6506007)(3846002)(386003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4317;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: QH9/CltOxxb0l/6tpFpbYlQcp5dmI9Yq82VXmWt8mb5qv4dHhuIdGTyyssbGnPc1mTu5G3yo/8/88sfFsKzGvM+MIn4ZSvgtIRVlySwdnEFZO3iFp3sfoKFyT2DH+8xlgWD+dJ96zQqxBPN7xjvBmOofGorf/WDil4VVlRGCUQgWApXY3uP5kp1k3oTILQPi9JaEo2fI35/pq15GxGgcZ7ozX8X+9W2FA2aVaLEApjsjIM3G4bK/+qx+6olIu5TAV4biKvA8cWQ0qOKMkEZMCLuynp7fvyzOu7EbXHifgznSa1cd7TYX97iAbiwAyZnyyT8JsDaNKDlxLEbYX9frSyY3AwL2j+TujhCFcGOpwAERBe/3BkBQx90scXxZd6jmnnQPydJEFTbfKl82YiGBr+ntvcmyYp5tTXIgHA8M+1THfgud0v7p/cfOpxRR068e
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4317
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT010.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(199004)(189003)(50226002)(36756003)(76176011)(1076003)(478600001)(336012)(26826003)(6116002)(8676002)(6862004)(3846002)(70206006)(305945005)(186003)(81166006)(446003)(2906002)(2616005)(11346002)(5640700003)(6486002)(7736002)(106002)(26005)(102836004)(386003)(81156014)(70586007)(6506007)(22756006)(25786009)(76130400001)(107886003)(86362001)(5660300002)(4744005)(66066001)(50466002)(4326008)(6512007)(54906003)(47776003)(8936002)(99286004)(2351001)(2501003)(14454004)(356004)(316002)(8746002)(23756003)(450100002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR08MB2811;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1e2bfdee-0080-4504-50d2-08d77272d592
NoDisclaimer: True
X-Forefront-PRVS: 0233768B38
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YxhXuhdYP2I2oLk5EhYtOmhGVFiaatbLkGNAHicRUXZj90PDEYR/8W+w8E7Hh2NbKls7u05YDi+wI50vT9n+5PLfrE6R5u7pNNy02SmbCKu8vf/dxcKhEX8rMd7FGA7vPh3Q/xo+TmIdx46oEFJWGz9wV83iGJcAe+q72w/XDoDhRTJL6xpVDxI7yljW/TvnPlGW56U7G3zThGjW1Zxxp4GIEGTW/0C+wlaTLTq36YHuHBBs0k7vi+D7s+O6p9wxIF4Mwz9dVPWRk7eYcfiQAWk3j8gZlh7I4D+ms8sCJt+mHgjVibF9lUc5QMSDjnA6Dwq7MX5Jn22h0EbIbrIEadJKvbi4a3WxvuygXscACKer9Z4hsicJzSFna6Cw1B7Fn7ssebdOZStKtdQPc2G6sb/zowMNGoFrMXpBaTFmH/JzHLEI1vD7YNJGUaPjz5D4
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2019 13:16:32.0662 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9cdea8-3175-4f98-459c-08d77272daf2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_051639_018455_49CC52D9 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
