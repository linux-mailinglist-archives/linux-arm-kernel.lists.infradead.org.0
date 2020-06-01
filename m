Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545381E9C38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 05:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrpFN7pQZ6HNnJXgzfdgdLyHVgg+gKZjrGyPLbu6dsU=; b=Or7SDIPg4pDkBd
	b+HJcDYxdnR4spp12LrV0wRle7pMyTIBKrDAwgy/JKRMAi86+D51PE7uhUV6xTSb7BpWlTivBEdK3
	kmKyGXxL2+utAvRf7qqhnj71poOB046FLZms8aiudixYyOnRAhZ6iQHl3TtzfDYFCQaQS1n5rkkAK
	559kh0RjCLHSON5Xt+2U/3cUtdVf1x7RQkkWakF2wCXXmytQRZV4Og4YH/Qo88NGW0BPMDam5R0uO
	2eEe1GFG4H23g0rWNrK7QPYjjNFEvbn6F8+cJZ6IlkzUOz0KYie3BtOxcUY4x3e8+uO/uEXAHCIBm
	V4YqsspGpOzWE8PtckdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbXL-0008RB-SJ; Mon, 01 Jun 2020 03:54:55 +0000
Received: from mail-am6eur05on2069.outbound.protection.outlook.com
 ([40.107.22.69] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbWZ-0007vT-Tk
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 03:54:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X+Nrigny+0wZxFD55mfWlC19UugyLVrWTRbDsaWQZNgDBu8ktKlaZmnD2DWRAb9mymzgQGj1cpDJIfPMSytb7xSmduwJOKXyru3FzYzXS6eE6e+vSs3JcGvW5D1Y+EHrDBMzW3nk7fILBZwoc0Mp4WUfTRWwNbb9xbhYOeST841KAlxVRhCz34OeFy3gcuGm37EFjJ7t3T1xgPP5S5bUrb/kGpOgvtu7NX/up0AcEmIg/vpNw3E7vprQjIWTqKtM8aUg+T+tCLZCvIC23/mUAHOCW7JyO1/w986TbU8B5tIbD4BDlnstKx4/xoIK3HlMafr3DjSDrdHg2P0/gLw/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZvpJmM62ji+KohxQ8u/BkIjRnZ7++RLYseC9Eit9cfQ=;
 b=d5S5ScYNjL33+i1kbrb4naQfDFNki5WiCpO54aHVTC5vtxfEJWY/UUO+fkxpcg/8rPiPailVkLClucIGiIqMvWaEzs8otPYqY+DAknzPOSifT7OTjx0POYsrmzjulzudReud8HfZ/xJ7HjFCF0k8JM2aL680e2Fife53pA5TjAPEmTsnoi2Bymb+zTGIQs5bGj7kAMnvcJMYgLQsoJKWlVVuXW1UP55Ax+YG0kqNwhESJXkFd5OblXSolmcrGjXBun8Q6gzZ0zhBBSH3crwmPdj4hITe4i1L3KZhXMX+NJohdsigdIfpIKI7f9VpxW3JVOyBhrlVmCQB1B+G1ppvjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZvpJmM62ji+KohxQ8u/BkIjRnZ7++RLYseC9Eit9cfQ=;
 b=bs5r+W2JIDpd8SjujiK5aKqIiZJw+cRx5NqisURxB1mi1YV9XKzV8dbAvyh37KiuSGT6+Th+qy7jtaC4SpLeUyo+RJXzIypvsI5k9Y+CzZoKbxk1D61SLlemU9sb/EKJuHJxRJW6tO6GhX6aqSqPUd0vgC5QQuUEJZCCAi0onVQ=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2920.eurprd04.prod.outlook.com (2603:10a6:4:9d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 03:54:01 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 03:54:01 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V2 3/3] clk: imx8mp: add mu root clk
Date: Mon,  1 Jun 2020 11:43:19 +0800
Message-Id: <1590982999-7149-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:4:7c::24) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0096.apcprd03.prod.outlook.com (2603:1096:4:7c::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.7 via Frontend Transport; Mon, 1 Jun 2020 03:53:55 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 562a2846-ead5-47c7-6de8-08d805df6b63
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2920:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB29208A0C73C8DA66F3DDA307888A0@DB6PR0402MB2920.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HI9Cfxls5qWDdr7H3UDW+xiMlwwP1xq+ibYfO4QtDtE852s3vKmF84PlANAQm8JWWmQ6ytXvvr+GsI53hJEIH6pyn5UMImdFqAojxSID3jtNyU35FEIbltfkdrQPmIcoCk1ucDcaIrN9b/RIlq5B4WHX+xMmi95dGJS6GLVJe3OB4WC/2ZL+Vov8QYyIi3H/RsuICKx8ctKA55dcX3KnVMbC/jrPpAUf0w+3tKBRR5JYF+GfEgmPknCr4D0ubj+fW2d/xAxBWSbfdyaq+P5p4o6uhKla4d8ejb/BmY9nPiDnx42TqrdrT1rfw4lMLynMGEHCmX1TfifXTVLzxoiKarAnUBRjZJyQHsabFiHvqJr6vLjnYw63sIxkigkgOqvlBtFsPigdEfZ5H8TJvyAwsNwYf2gUySRKeQyIyeN9v8s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(36756003)(4326008)(6486002)(8936002)(6666004)(8676002)(7416002)(6506007)(9686003)(6512007)(478600001)(69590400007)(16526019)(26005)(316002)(52116002)(5660300002)(66946007)(66476007)(2906002)(66556008)(86362001)(186003)(956004)(83380400001)(2616005)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: d5WnHW6qRhBlBidB+S3xyhI7ZMURk9tV0mInehdcPrN7g5Ud/ey5Cq6TK4SKwx5tPe76uQcY0Lofy1UaE1XMxAxu90p+hn1YqaCdmG743gYU6w5EMwCd7MpY+4RePZZhBppAlW8gxdwPTANajm2REbGczYaQr/bgb6fx+lEGp7ajFj4TP/pbndC5ATFu2mlHixeMeQWU+91NrD3ynOhJ8nvhSgUa6NPvTJ72jZFwYk1SKci/HYLsgAdKJh60vbBquQBUuwEHZKeg6fJOaKa2hRX5Oy4PlL/jJ8cBeszb1unsy+P8M7ERPL8ppE6X4Z+Syeo6Wo/U8H7u137R3XVGOdLnvjVfUCJRddi6CBdcIjm7vYF9EEPBndNEE2vkMwH7wv0OBhq1y2EgJ9A7NRPKu+1ChQVU5LXnigO/QYVqOAmFBOe1wNaRMV5pbTObmXWPfZE4blXJT6UwKNpPXyC8WG+9ZOmte9Iw93+JT20cj23by5MFSn3YE3bownfekzMX
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 562a2846-ead5-47c7-6de8-08d805df6b63
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 03:54:01.4347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f8C6ojl56knBrSUTokC3sP1kyCZz2oAZBm160NvXtv9/AI58nhRCTAhDfeLWzK+mEO6R3PUedMNIBbx7fdBCFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_205407_983858_560D641B 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.69 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
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
