Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BEE1EA01B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLnRtYkV1133HAJ/FFkMItR5ZcJW2q9w5e5ubK1WdT8=; b=HTtf9fLTNktIit
	CjVrrld71K2uwwvDXrTK1teks9vjtzxSxazp4fHsFu51Lbs4eFhNFquZaABcaAxetQ1uqXK4igKtZ
	kQolqNF53kq/2hsGgrW5ZLZ74fyG6NqIJBve+sPOsh3Go00t1z5EDDMWomxsTuXVy4Fecwdj5VhZ7
	qrV+4QP2UZSl05Ia1HzyI3rSG0KopKiCdwvGWXs5FLAW6c4PVLkARSuFIOcmGMmUgCe0WeMVkvy2j
	qXH/DHgTRiZ6uChwCt16G1iqGEbt8ebX0rZ1hFN6vvGu1KJDUjsfwC9nRpTCQqSLUKgfizl26O38W
	Maqp1hMGa1OcVrNR1HbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffrC-00034i-M4; Mon, 01 Jun 2020 08:31:42 +0000
Received: from mail-db8eur05on2085.outbound.protection.outlook.com
 ([40.107.20.85] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffqJ-0002Xw-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:30:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVjZ6FCfRoyhGZXP9fe0Wwq2RoALRM0dxH8qIm6aOW9S9iUc9QEMbq/UN4SEZz7rChhLXIuRf1BowN6BUHET+8lEnGFaKR6XuNjzQqolcT6ZoAgLKzbMCcJhbg3DAAW+DbQHwKdwZYhOe90FJ2uJiYI6H6T//HvQsKjA35nT6+nVGOA7TCbDz3kL0uBPOwbXCGcdMRxkFA6Iz6lGnZMCiHSDW9ZPWepMvgcPfi1cePotnfG784YWhZu0PMv4wOPRR8wwQXkEWVd0FQRvMbDisSFUEVwSUTf5NgynyL2q2gM2XEo5EthL1ONU3KlIc7uBWr3LhkUieLsDUYzxL8BUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ruvIzOSMZF3SHzfC80qeNDBWE4NIJ+y4nAukjDkwis=;
 b=aiOddnOXIFvFYmTpetdqlPsPamwm2PBV06azkwTMWBsgqPzr+tNNYTLeIBcCo229LoYuzKTCK/aO6/hEL3m5Oo4CAxrLWJpHWZuAtLvtGhFdemhPCq6h+zaEfAqUcuVbuuRiRMwX7+7EJYp099zdeBzseXfpYp7cbdb2T12m9iaO17gpolXAQggKfszsYOtNXmotFvo/ZM9/gZ5d1UP+VQaONCWVy56tyKePYZisCgk3UBmkVh4gIwLjfgSOOhzjAWKcyfkFC4CbSW8R3u7oBmROSyrliqynhBKXq4z5VWpqwAHewBqqbVVNFl1Pbpc48ijZx0OH9+4E5Jhz1EmnGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ruvIzOSMZF3SHzfC80qeNDBWE4NIJ+y4nAukjDkwis=;
 b=eQXpHVJukbRZ2b2N5VCnraY2dBt9QhkwwaLr+dRrL79ATMM/m6kPKg26EaO2Lz34Izwy8fffxDfEe9fl86OjEI5NsB0AyXzZy/G1o0T5KqFwyjyzs0oX2OKfHR28b8f4vJI9cQTnrVDViajR/RqAUf7AcQeH8PVYnHgG3gVef6g=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2728.eurprd04.prod.outlook.com (2603:10a6:4:97::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Mon, 1 Jun
 2020 08:30:44 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 08:30:44 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V3 3/3] clk: imx8mp: add mu root clk
Date: Mon,  1 Jun 2020 16:20:02 +0800
Message-Id: <1590999602-29482-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:3:18::32) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0044.apcprd02.prod.outlook.com (2603:1096:3:18::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.27 via Frontend Transport; Mon, 1 Jun 2020 08:30:39 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 970f4402-ae71-4081-694a-08d806061399
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2728:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27281E6AE59B1361FBF0DB5C888A0@DB6PR0402MB2728.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2YmzK/YC/anJp5iGX2l14kss+M0mTXg8JgNVdVi7/3UJh46hA4Ox21fy66YuUnTqB6gAZ5TeLV0awau60nTx1c5YeaaWEape1/dkoKkWXqeiuf0PpGULe3Fb8Hj+J7y6A7ZAkSWM9nWJ3x7KsfjFKm3Vl33XbdU1JDOMl7Ii5IgwGPaRv6gxCTAStgpZ5xozWljKqmLtGZP9ADJzgCXwY/bTTijA9uRORv/nqEGaS73zbCwqkEmj5AXpoRoSpCf1INe89rFvMrviFSkeKP9GFL1oQELhLnqcAmvw6FiBv5kwNUmLqHQgyVbboM5OXB3YvZ5CWdTf0gOXzbl8O3yqFC9gMVtXtigUiatORQq6JqB71VA/t85m/SAGQs0y8IHt1b8vv8lISpnST61zVBy1JnGh01/CLd8fIb+w5VDhEo4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(316002)(36756003)(6486002)(6666004)(478600001)(86362001)(8676002)(4326008)(2906002)(83380400001)(69590400007)(66556008)(26005)(2616005)(6512007)(66476007)(8936002)(956004)(16526019)(5660300002)(66946007)(52116002)(9686003)(7416002)(6506007)(186003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: m4PwUTpvzdSzSaRnf1Xg0fn6gimiW2Y6YUQSlfvBjh05Tun4LLh9scaqBeYWzUP+4ilAV5rmHvh0iK32GLfzoT/khg6TN6xOO0OngMhCYjQCbRnn1aGX14xetXZfsQ1LqGwlRUCXz/w+GAXzAoEDk/Y9xTjQPov1XAGIpOntFEJyqu0pSYRqtOb1DWeu28YBVWgPkgm3kZOhmWXAu4fUukLfrUNYTmccxIa1gSly9F5lrFM9HYPC47jt4ZS4FkxQZDu6bfpa1ePTgqXv3hOIAxMstGiJZAGI/Pb4Sdlza13WfAFCmupnGsDYOOt+MdhXDN/O6leDaJAC0COCH3o6vS7jeBk4QOKDnPpNAaXfBHTOy6Y6oAQ+8MicD6W/WNML6BreCoCw2MHmZGEd8HZfgFJOlhlRVFmMC+piHXRmb4aCcKquPeBLtcdh27p+8cuQTcaWvBb89eQACoW7zUIcxlEbGRm9CiTAhFuqukkOK2x09gZPz62POrVqlLbEaSEq
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 970f4402-ae71-4081-694a-08d806061399
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 08:30:44.4685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFHUashyaBlbvAKo3vNtUqBsQP04sTZlQFxuiesYZSj0RUqadGLt7jrxNI4cCBeeS7/FdlpNfHaz+EKGaFyT8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_013047_381940_B6D480F4 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.85 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add mu root clk for mu mailbox usage.

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index b4d9db9d5bf1..ca747712400f 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -680,6 +680,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_I2C2_ROOT] = imx_clk_hw_gate4("i2c2_root_clk", "i2c2", ccm_base + 0x4180, 0);
 	hws[IMX8MP_CLK_I2C3_ROOT] = imx_clk_hw_gate4("i2c3_root_clk", "i2c3", ccm_base + 0x4190, 0);
 	hws[IMX8MP_CLK_I2C4_ROOT] = imx_clk_hw_gate4("i2c4_root_clk", "i2c4", ccm_base + 0x41a0, 0);
+	hws[IMX8MP_CLK_MU_ROOT] = imx_clk_hw_gate4("mu_root_clk", "ipg_root", ccm_base + 0x4210, 0);
 	hws[IMX8MP_CLK_OCOTP_ROOT] = imx_clk_hw_gate4("ocotp_root_clk", "ipg_root", ccm_base + 0x4220, 0);
 	hws[IMX8MP_CLK_PCIE_ROOT] = imx_clk_hw_gate4("pcie_root_clk", "pcie_aux", ccm_base + 0x4250, 0);
 	hws[IMX8MP_CLK_PWM1_ROOT] = imx_clk_hw_gate4("pwm1_root_clk", "pwm1", ccm_base + 0x4280, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
