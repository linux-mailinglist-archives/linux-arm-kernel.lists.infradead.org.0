Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5380163EE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPVf2WYHqhdjl1RATWFghYlshqY14rbzPEfzpbCbVzE=; b=FozU5RITHEoTGo
	aNsoP16cyMhamPi0KBkzXyfxNbtqMRphnDQFxHCNJ5qE1M8YX1b35s5KjDIsACICh2A+E91t1pPh3
	wNiTnrDsciYGLmvTB43vadJq8AiwywAmEeQgHCV5WXRe7QrF2CoUHqfuuPU7vdycxwbuqN9rVVQYl
	L9yWy23Bikdfd4M9FRsxkxIjsOpgojTfv5gBzepAERTK/kAUp0p3lmPlv6MTEL79d8ilUjjuMSgOv
	ZNC5mi8WB5T4OgdrEZPlA3zkNgJu2fAWggCgO38UyaoLtIMA9DhUbeW4iZ1YKsz8SM9Hi4cqzJVWP
	T3OCcM0SRcUA3NpXoeVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KcE-0001cB-AH; Wed, 19 Feb 2020 08:21:54 +0000
Received: from mail-eopbgr50077.outbound.protection.outlook.com ([40.107.5.77]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Kc6-0001bf-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:21:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8fJIigb8m+N1CxPwzqBKFxEV29HCm8P5aNw5UtgRdIQxpYlWZcv3tg0QA+TZ0XQ43yqqbpQ5O9nhC4UHJTFguMdTa+o4DDLn6sFkoM6DVcbTfAMsfuSvANjPU2dL26Q0kTLEcdSxD0+/lKaGgSIGS168yh0j/n4/XK3Um51y8f0XepVo1Rll0Wu3hp5iRAVP4BF9wBWa4Hm8Lm/bQxP9kRhj8LsYvb1jVpn8ksNHZGmCm4Df3fQoPUh/pFsA3F6paULlIoYD6Z/VHNK1B4f4iXPUF0qeAxOvnlNYl2CQWNbQD3DaBFHHn3btqQNHQMKFAWBnmAhd1ap+prH06XKBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUlRr8faB/i66fx3x80G7m9tQuoYyRbLoNWtPavuV8Y=;
 b=n1DKiA0cQWOz4WIOYhs6dzcAHXPF0v1FGlFgpYVP5J0zJ/grCQL0XR1cmJI11PJIlxDQuAf+wlueakSzi6fG5ayhy4FGo513969a3H6Q5F0+WoKxl3Psd82+w2pBlkmdWKriEPZRsWAOU9qD8hEnGa3N36/lJHvUaU56l6P3yn1sJcjHHTtWWPyn/Gv+OLIAfALUFmi/bihSrBMDDGAm7+lo++sAWWuN0CMLACmXMVTqOUSjU4HYnS5r76yMOXMFv9bYCCHoHJYH8PvT1zex7eopoVF19IYb3DaFTS/B2RqxkHWDDNx0FqYiyl6lyiaJqgD+0xImmhl06OAOH6nD7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUlRr8faB/i66fx3x80G7m9tQuoYyRbLoNWtPavuV8Y=;
 b=lgiTBooi5hxsFR2J92ZUL0/l80A8T+/1ETeYRJu0mg1El8ETzIBo32AFVmv1UDt1w8RwisQAzCb/TfD8uVzxgFTHStLW5DI8eyBMBaZ5Zg7XECX6tiB4Rx2jr9R44f2OSWZj64pZyu6tPyl0bVFTmSTGvK2LGmvnEkSWLwGB6SI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:19 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 04/14] clk: imx: pfdv2: switch to use determine_rate
Date: Wed, 19 Feb 2020 15:59:47 +0800
Message-Id: <1582099197-20327-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7dc1bda3-4b84-45c4-261a-08d7b5129a36
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB640127C07D11F1DC95D6DA7F88100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(2616005)(81166006)(8676002)(9686003)(4326008)(66476007)(8936002)(478600001)(52116002)(6512007)(6506007)(66556008)(69590400006)(81156014)(316002)(86362001)(66946007)(956004)(6666004)(186003)(5660300002)(26005)(6486002)(36756003)(16526019)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MKHoMv0jwmNhA8VdWaVNXdENEJc8OlGDfPiAr3M4P3WSV++GXw2EfhSZJDwlX4drExXcUgBTvLDCYLIlPdqioB0CbescY4Qs3QzVTTtHNBzy2Bp7Xh4pcIqGu4aVOsWk2OCmMtKqgyTg/EYvEg78dk0pUsuYfMB/NpXm87DkWOpfxMjQNV7R9205b1DJ20IgysN50MNBxrRb24Ksd129DwFzrJxKNh4pUwkJ7S3EnEhX664Z7X5VuV+Li7FZf84FsYVCNQKLHujtdI1YrPtAR3KXB+aGUZnhZsfU9nYLrYZNdC62vT6yiX5kTmUFXbYss/kahxb6Vd2XpbuBzqx4LQmN0CwCg7jZlBuPrMZA5rLWhc6KBt35Lhv8tacCJibTLKyEQn0ghX87qkq95INT7tA3+yN4/8bb4Z3j1l5x0RDyZdpBhg9RPJ6nfyj9MzoniKEMynSVXhrEP9xZzqE8MzmmyrmHm39feauwuME2a2cYk8yfWti9l38s1rIANefLPJZPDHpu85dbV6ykq4T/3S4d1jnN5wKczvHWqRYcajU=
X-MS-Exchange-AntiSpam-MessageData: upd6ubCi+A9kV29cYtjZEOYHAETZ+KM+6R8F+ko8hJdum8LJk3xqD3st2pBoQGPe+SkY7sngBLBKWIawt8jxuwUNOjK2mfnBuXgMlNzpsOoROQ4rDsOQI+BS1lqu8AsyqRIRIzdPmXj3sumGHLlYLQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc1bda3-4b84-45c4-261a-08d7b5129a36
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:19.9162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jXYvNwqvX1QusE1J8fZ6rt2c6GgMmLjLo06VFI3qp5hodWXSiMoHg14Ju+ArzqXEmEWjl77bTEOLT+4JJ+LPtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_002146_215561_AA773952 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per clk_ops, compared with round_rate, determine_rate could optionally
support the parent clock that should be used to provide the clock rate.

In this patch, the parent clock is just parent->rate as round_rate.

The following patch will calculate the best parent clock.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pfdv2.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index f8707278aad9..28b5f208ced9 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -98,10 +98,11 @@ static unsigned long clk_pfdv2_recalc_rate(struct clk_hw *hw,
 	return tmp;
 }
 
-static long clk_pfdv2_round_rate(struct clk_hw *hw, unsigned long rate,
-				 unsigned long *prate)
+static int clk_pfdv2_determine_rate(struct clk_hw *hw,
+				    struct clk_rate_request *req)
 {
-	u64 tmp = *prate;
+	u64 tmp = req->best_parent_rate;
+	u64 rate = req->rate;
 	u8 frac;
 
 	tmp = tmp * 18 + rate / 2;
@@ -113,11 +114,13 @@ static long clk_pfdv2_round_rate(struct clk_hw *hw, unsigned long rate,
 	else if (frac > 35)
 		frac = 35;
 
-	tmp = *prate;
+	tmp = req->best_parent_rate;
 	tmp *= 18;
 	do_div(tmp, frac);
 
-	return tmp;
+	req->rate = tmp;
+
+	return 0;
 }
 
 static int clk_pfdv2_is_enabled(struct clk_hw *hw)
@@ -167,7 +170,7 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.enable		= clk_pfdv2_enable,
 	.disable	= clk_pfdv2_disable,
 	.recalc_rate	= clk_pfdv2_recalc_rate,
-	.round_rate	= clk_pfdv2_round_rate,
+	.determine_rate	= clk_pfdv2_determine_rate,
 	.set_rate	= clk_pfdv2_set_rate,
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
