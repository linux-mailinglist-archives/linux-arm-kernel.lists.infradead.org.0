Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA381163EE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=youw1OHHkMSw4FEGvMwZIu/XBuO/YSF/Q0/vY3ciVZ0=; b=IJsealfiG3j1ed
	lGAsbNn+D42Ve2DydK3BrnhgPBmDoppbqHxx0HoTHHKwiX9/ZU3jkwfp8D/sxvqpSkhrYVIqS47AY
	mULJhUX7JCEy6FyNvzSn5lrM2QMQDRJ7EsHuPFBNrNa4JuTQOdlXcB8RgPW1WTQGJqVCrc5L9QQpQ
	NX2Qn/SjdjWGcYfgO3v7EgEBcFRj/XE2CFgZTiqQXXHgcF0PsJmo9bqAZ3Uus1t7dpfnaqtaOEyQs
	jVvAcpvN6f3zPENJg+7QhTH+rnTX9SC5kzm9NLuvGrQcq77/SFlYbsrruNaQDMk3xX/tyCLrIIJUO
	R48yI1+1uiIZcOuZsHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KbP-0001MK-OD; Wed, 19 Feb 2020 08:21:03 +0000
Received: from mail-db8eur05on20623.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::623]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KbG-0001Lr-Od
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:20:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwEBGpsata10dXBjU3KtgaE6Um061XlmgN/eHykXEEpV4prFTovTDF9sw8I38aRXaQwCO0fCh6MVYMiBSgs/e+L55mfgoP1xxjyEROUILtgR1/iWiZlO51h+kPa26wfz7nZjEI5NwBhAKI+4IG+h2JeGRxk+OMI+pO3NjbTcZGQuOfMvt6r/DTfWiqBbfuT66Oy/MNJkLiZ8jIdhJSlBemxlA/73BzWLM1Xrm92D7Ph74n26duu3V8kdj34e8V2g8DPsYSbautuOsdXEEaftAV2mN+Ud31u3RsvtedRRiWtEXWK5GJvsqkbq62Lshr8SD11gidM6yphFj9gpudr/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfZ44Kb0NxQ+7sVLy7y6S4fCrQNN8UZjk8uRJkhLVhU=;
 b=iABrxMPLmLm/D2q1UnaAx1ED7P6WUs4JhS1JDhm4TITj7CBWX0fiX1jTUXu5zibtSwk1WUbltgA2PUkwsqYDhMaGwROQ84hcWr3fNicOPB4RwLyAwUeMcvb++ORw2s9F5t2kBXx8olCwZVpbpVvVg8TI3yilB7ekU99xevzMO4mSNhpFft6loQasNzKyfrwVsDtUIjhaYOmfgrHTz7TP8iNQ/QISJYqUILzXmFennFWXdLDquGijiRNkF8X7BJTmOIqIbyy6W7AE34WWNFsR1hDsjvPMTVUtlofRMyEHN7VaOg1SqwcYcjqqXYgV9TOTo9WumA4ohCpqCAlmFosK2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfZ44Kb0NxQ+7sVLy7y6S4fCrQNN8UZjk8uRJkhLVhU=;
 b=QUPCQbS4zsoBRKA9jQlgaviO0qiijY0c28ghLLb8lySdIMxZRtSn1tiVsZwadYVIYNo9KL5tizFfAFtRxBTyrsHGN05EOVmIoqu6rRhS0ke+eOJIi4xHHBUAeGSEF15k3I7dHhcRTp+Cg2VuVX8zPPVX0s8ecJd57IBmRkN2ay8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:15 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 03/14] clk: imx: Fix division by zero warning on pfdv2
Date: Wed, 19 Feb 2020 15:59:46 +0800
Message-Id: <1582099197-20327-4-git-send-email-peng.fan@nxp.com>
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
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: adb08bd2-b481-4437-8f60-08d7b51297af
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6401583C5669AB7637FD166288100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:113;
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
X-Microsoft-Antispam-Message-Info: Oy4D1aBDjTOuUG8rQLnbWZmF8iOtTe8mHkURoLn6/SGV6Z5ZQ01C0b1tjGRhw+9DoL5/UTE8ZrodjLKdHn2rA9wqeskGAYeSIvkIDtl1CxHAekX073tiNVPIfA8z0p08iQHIQ8Jg9q6183T6psOO2gMCdVjNG7N6x9QLnul+GKO5bqn1OKpzcoN+3WM4rKr9qnoPIbD+AdcN2v5tkcZx5SztmlI13jXBe9ok8+HGUDsnCqFfV1v6KNSi0CaIW71ryRAp0UUix2YwSTff+Z3LGpNAULvKDXTY6x7w1A7A1Y20rKHc9YW/3YW24EQKe+/stXs7nw+z/32IC2vEnRMx+wa8Bmaf5oRN0BfRRTTckQBUdNxbu1g3H37RBiQl2AHyC4102ywvrrElHadPcreOq2YK10wOZY5eVGI2VEEi/SQF50rBL5JSySwvtTsVYWTLDQSFSxIsCCjb+Pry9kQo/x/hWfLz4vsXXl3f8V/xsL5+meIDJ2VYRXJxm41q/VOByakAI0/8qbPwQ32Df5fv7QmXswV32Rj+Vh8GoWAjhR8=
X-MS-Exchange-AntiSpam-MessageData: Rl2c8KgxMQkj+rG3cyzCHSrWOFPQBx5nY5OCeVR7iF+9Fm1ZAtMGcRhEocDKNBjN+c3PoWy63vG8MdnIcz4iZ5gxNixpYKMmLAK1GWXo+8ql6MbXhFAYXQEVF56jJgzzOPQgYls2YrqteCStkR0SpA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adb08bd2-b481-4437-8f60-08d7b51297af
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:15.6977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QShsE56VSHv0m3Aio3+kE4Gik1Hw80XM7cr1v6sV3ROA0sjVQr3cOVXFwP1VZbnelCVArpyBYHcJXn/C4wR4Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_002054_933428_2BD0FB09 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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

From: Anson Huang <Anson.Huang@nxp.com>

Fix below division by zero warning:

[    3.176443] Division by zero in kernel.
[    3.181809] CPU: 0 PID: 88 Comm: kworker/0:2 Not tainted 5.3.0-rc2-next-20190730-63758-ge08da51-dirty #124
[    3.191817] Hardware name: Freescale i.MX7ULP (Device Tree)
[    3.197821] Workqueue: events dbs_work_handler
[    3.202849] [<c01127d8>] (unwind_backtrace) from [<c010cd80>] (show_stack+0x10/0x14)
[    3.211058] [<c010cd80>] (show_stack) from [<c0c77e68>] (dump_stack+0xd8/0x110)
[    3.218820] [<c0c77e68>] (dump_stack) from [<c0c753c0>] (Ldiv0_64+0x8/0x18)
[    3.226263] [<c0c753c0>] (Ldiv0_64) from [<c05984b4>] (clk_pfdv2_set_rate+0x54/0xac)
[    3.234487] [<c05984b4>] (clk_pfdv2_set_rate) from [<c059192c>] (clk_change_rate+0x1a4/0x698)
[    3.243468] [<c059192c>] (clk_change_rate) from [<c0591a08>] (clk_change_rate+0x280/0x698)
[    3.252180] [<c0591a08>] (clk_change_rate) from [<c0591fc0>] (clk_core_set_rate_nolock+0x1a0/0x278)
[    3.261679] [<c0591fc0>] (clk_core_set_rate_nolock) from [<c05920c8>] (clk_set_rate+0x30/0x64)
[    3.270743] [<c05920c8>] (clk_set_rate) from [<c089cb88>] (imx7ulp_set_target+0x184/0x2a4)
[    3.279501] [<c089cb88>] (imx7ulp_set_target) from [<c0896358>] (__cpufreq_driver_target+0x188/0x514)
[    3.289196] [<c0896358>] (__cpufreq_driver_target) from [<c0899b0c>] (od_dbs_update+0x130/0x15c)
[    3.298438] [<c0899b0c>] (od_dbs_update) from [<c089a5d0>] (dbs_work_handler+0x2c/0x5c)
[    3.306914] [<c089a5d0>] (dbs_work_handler) from [<c0156858>] (process_one_work+0x2ac/0x704)
[    3.315826] [<c0156858>] (process_one_work) from [<c0156cdc>] (worker_thread+0x2c/0x574)
[    3.324404] [<c0156cdc>] (worker_thread) from [<c015cfe8>] (kthread+0x134/0x148)
[    3.332278] [<c015cfe8>] (kthread) from [<c01010b4>] (ret_from_fork+0x14/0x20)
[    3.339858] Exception stack(0xe82d5fb0 to 0xe82d5ff8)
[    3.345314] 5fa0:                                     00000000 00000000 00000000 00000000
[    3.353926] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.362519] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pfdv2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index de93ce73101b..f8707278aad9 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -139,6 +139,12 @@ static int clk_pfdv2_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 val;
 	u8 frac;
 
+	if (!rate)
+		return -EINVAL;
+
+	/* PFD can NOT change rate without gating */
+	WARN_ON(clk_pfdv2_is_enabled(hw));
+
 	tmp = tmp * 18 + rate / 2;
 	do_div(tmp, rate);
 	frac = tmp;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
