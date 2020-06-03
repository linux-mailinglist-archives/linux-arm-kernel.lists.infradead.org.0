Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32841EC7E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxamQG+qZ7GZMY9nBdV+dtC+jEPtD4pMqf5lprdj3wM=; b=rLtyOh1t0BUo8K
	ie5dpl2QawtfWUlqRRMsEgbfuib8/B85EA1FQBZQAs/Mgm+JFqOwuWE2v+RPAD2Hx/dDVjY1au7o9
	OaQwHxBTyQuyJkzM+gi6zjgsTGwVSZR+dJt3UcZcuNUWpLQNd+UDaywPGQlh3/ydRqYMWzDQfhxHe
	GLkHFZoMKBn9dVSUD3BrMoRDBGNSMouq7YfFwcbCl7IInf0Zb2qjZXfOK391FqxBU7uT9ykGEzrzI
	4N5CZDqSohIfy7kBZdnKzPZmBOT0jE+SmG1AwFW30kmbu4/HF2lNB0IZVpP6jJarYL4rV4nEnkC/U
	O3NKfZZeO4uSzR5KuLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKJN-000323-2s; Wed, 03 Jun 2020 03:43:29 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKIs-0002nj-Dp
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:42:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuOyomA1C4aSGVD7orgYzx+Q/IqwVKQJcFWrhINkASd1iugHpM2Rz1df7UMapdGK6w86CVPN5Iym6eG+7JRgQKbAzj+56/MKVo7btp+BnQ6cjzsJhbkNZRl0syT7uD2R4qDGYuqRVqCClmFfx3WsQSaQZpYeJpR50XTDLitvRYP1jvp9E+IUB5IspyVKckv7YgE82YyZs09BBOZcyb1dqp4RtgvqDiG96OF6vkULTJKGues7uqx269SoFZWtGNZhdrQhUe7IyrPLbVEBgPIwqg79JcRQYtcBQNT4bNAVKWVxHMi5gaZhHmESlrDw8BC3HTeoPhRPR84k6No8Y+CrDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8k7NXNuGefdlSKiqskM6lVCF/mKipaKJjqtQnfYlFU=;
 b=guMbD2aDYFKDlLrM2rKoyaG2o0ZpzK7W86I7gOakIeHuPDr9TTbWXgZXk7AghnbsfEn9D0t8dAIiL7ss0jTiUSdudXa/OoRrgRA3HK+pDVkiwZq+MOpJ7C6dRlZong4j+ECOQYz7TP2aVDmLBEowmau2Yyy1ch7PvpCbHc/95YWpRa8JerpR9mCvlrMWxDaqsvtGXVU5Vl9JCWhng+txt6puVw+b6cN9IfDPeG15L5LZwEDgpauI6olKmvXmdAiXpOWOdWJ1noVYgz+uCwPzHURAGafKgC7MiMpXEJsDOQ5RNvxT900WymKL8ImTtwBbIDHWTWE4jmeoBbS3E+dIZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8k7NXNuGefdlSKiqskM6lVCF/mKipaKJjqtQnfYlFU=;
 b=fDEhWA7KQqiemJp4KZ0w2oEKCQkH1K6nJruPPE4eE6Cx1RVtdAb1udEGi0z3NVhS4ZW9TKxS65hRYqpLMxcL69VJJgVs0tnlw/eb6j9xyJq7JXvaU4hD/J/9XuFjuj2phtwb1Q20cB51Q6eQmqmsI8+q+dWvLLGo1v7W5/KUihU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2854.eurprd04.prod.outlook.com (2603:10a6:4:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 3 Jun
 2020 03:42:57 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:42:57 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH V2 1/3] firmware: imx: scu-pd: fix cm40 power domain
Date: Wed,  3 Jun 2020 11:32:21 +0800
Message-Id: <1591155143-25972-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
References: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Wed, 3 Jun 2020 03:42:53 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 55cd8f7a-ab25-4044-e756-08d80770346c
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2854:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2854D01C1CC3D5CBEC7DF2DD88880@DB6PR0402MB2854.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RnS5wzsklALvXXLfYm3xCHuvzH6BqgF/SOZqo/bNrdCrmrli7JDUQBbX9L0oqLJEZ35EsigjqnTUko4Al/52FS7xciUv15Fi9VxdJOPX9wGNVx2VVrMFzbovP0D3CBheOxECO6/e05edcow0YWMbfYjBZqY1X5VNys4fIu+RkfK9lNnX8K36Kf2Vtw3te2t3qPfikxMLQQJvRG1mD992kDvFDa7eUcbuUdgRUtolGLqu14zfP5fhWcJ8aJ4Dm1VT48Z7FxklKT1eDOk2ZCGvDwGS/vZBcmTItohLlyLkAr7NDa2jp8hcozrKCbF3TDUUYtz7FtxChHf9cuvpEpFbyeupgLk7DVZ3Hg0RCRoITqBlU3/9xHHEDzNryU0T5cYM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(6506007)(478600001)(186003)(6486002)(36756003)(5660300002)(26005)(66476007)(66946007)(66556008)(83380400001)(2616005)(52116002)(8936002)(16526019)(9686003)(316002)(2906002)(956004)(6512007)(69590400007)(4326008)(8676002)(6666004)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: p2gIJaHTV5LpdvvLEyh6pGCVTJeRhs9ng/mshTrlLdswgVnZdpQPIV6SK+9R80LZe3VAAxJjT9EoygNTwxK/i07lQSAY8rPICnJouXXUxND6alDyuK/hLSZZge8kw77EVgJz7NsoRJcKuPQu9EMnhAAmFDVIWh7IT4CCuslgdYb6vwVP6B6F6KwMXLDJ1BAhpAyjGKkPu5XYKzbgGwMQobarKU//SJ4rSk+eX+bWkD+GDScVBWpZ90Hc9oMr3qDXU0+60Ulldvs/5jwFs1i+Kc9DgnbwCtUbMrYQP9oia3TFxSZi0+o6Zp5uMt6AW2nCEtckSO6vl4CHUnJM/3Snn6JVxCqNkqL4f+Xyf/Ho0Vj3Qx2ucogWA3wB2b1D2o+uqOZZ1MljQgQKli4a+I52ZuakezQDb44XyFw/ULtuMv3RR9v3WAt/JWtfb5dnAKc+Q6jUQA/n0IbNumec8wBe5dQ4SOsW/E9wC2QED9DiC6C3O6T9sYcPi6eU4ExpAEPV
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55cd8f7a-ab25-4044-e756-08d80770346c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:42:57.3287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZIa9Bbgy7SY9VffctB/YWY6iS2Neo6x1fBWOWhj1h63Xl/D3YLgI1QUl1+Hk8f14iWtd9Ko/ThEoBJ2o/PKVqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_204258_462609_C7280302 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, festevam@gmail.com, qiangqing.zhang@nxp.com,
 linux@rempel-privat.de, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The postfix needs to be false. Alought compiler use 0 for postfix now,
and take start_from as 0, it is better we add explicit false to postfix.

Fixes: 705dcca91d0a("firmware: imx: scu-pd: add power domain for I2C and INTMUX in CM40 SS")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index fb5523aa16ee..d1b313fa7b96 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -167,8 +167,8 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "dc0-pll", IMX_SC_R_DC_0_PLL_0, 2, true, 0 },
 
 	/* CM40 SS */
-	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, 0 },
-	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, 0 },
+	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
+	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
 };
 
 static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
