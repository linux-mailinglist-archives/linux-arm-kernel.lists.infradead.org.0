Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E951B5536
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JU5cf6K0z0h/jz2IetDVE/8ZI6WjGEqIXfgj5XVkitI=; b=Tq50k7od/XW87f
	YAPRvDb+l7AFbjs7RPtRaOIeJbTTSSsc2GeCrQDJgSWOj4W/5aH53E88JBVW9OQnYG623VuwvCslf
	5fmEc+yMcTz702VYhHNIlDzRcKeUb2A1650/HV5MuXufB6yYvcKb3/XbXNzT0dDjbb/sXXvyICzhL
	rF021W2ACoGppLG/g6ZR8Vjs50SMWWO1niz/oqPR/5pqp6uLFTRwcD82i+HYAHdmVAGL2fOEu/cS/
	c8r9y4slTS1eI9nC/YAqGwFFy5mjavzlPSb3tg7x2K8+hRdU1ejLd0KyXRkgokf7XKZ5jLDF7VPVp
	D3XEDuUvnqTophLvBDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVzG-0004is-4a; Thu, 23 Apr 2020 07:09:30 +0000
Received: from mail-eopbgr60056.outbound.protection.outlook.com ([40.107.6.56]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVyQ-00042B-FC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:08:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKPIA81+j9RB2kcq4IszHUFnHjoHVpIAArZwTLKJ5ROfe0S0BLordLUomdZ5x6M/4fqdUKgXN1Zadpks9q+fE4uFegZRMftgxsY3CTeWzFPvoVtVoTflYLsLymdmfdcKKajxgntD0Z+1bE0gQNxB5S63I8xe0Qk8/TT/iWVh6qp7uiRkRWi+PUjBQykSa+jbCE55DZJuItb116xcL4TVGaH1RjTc2VG54BXubFRYcfos3oZd1inHO1eUQLnCKZlPilf2/FKjjj1jP3Pim0lwO6y2tNG8G1qbDcV87DFnFy5Zd8V2cwbSz7//oMT7TgQhSqi0nvjUS3B2fSmQUoSmIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fgeF+OkJz2dE44ywUCK6M1VgyGE5Z4cWNu17ijm1ZxQ=;
 b=cWP/JtqdjC2+NXvxxWmjb9Xz71WhQAe8YPclH740QJFVlXKVLMY28ONoNMiITsG1mw1yJmAUMts0FLrlrraxhXlunTucQzZG+t1nt0DW2q5airw0P/W8wJVjlCARQT4DFCdm8+VWIvKm+8irGOC+kYdOQc4uP2v4VmwG4Svl+QkPjanJrYljsFfQAlJi4IvAmxppysCp0Dqiz7NHTDLFa4CaMYH5gv4O0aa3h4XMp15lLjfI1NAZr+sJe+fHNp3C730rMKUvLptTuYdQuYDNnJ/2/B/gjpimZa8lYQsN+DzkjXzNQhGP+5621dsyjbg4DDM1ZrMLx8zxUvqu8GYjTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fgeF+OkJz2dE44ywUCK6M1VgyGE5Z4cWNu17ijm1ZxQ=;
 b=Qe8pz9qiAZrJ9fN9QvWKsITzupLgq+9PrsqVb9u5tMlxWny9Jk3oEE2JXvUS/iCEhtJbVmHS7vzga/+wb9igghddrteS9Dzdphs+OL54BzHtpLZ+B7dqfxy50BdtyNVIi8WRZoiyIP08w39c3OI3HZLF0Ob/jiiIAt6ZSQUcjHk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2855.eurprd04.prod.outlook.com (2603:10a6:4:98::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 07:08:35 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:08:35 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 4/4] firmware: imx: scu-pd: add more cm4 resources
Date: Thu, 23 Apr 2020 14:59:34 +0800
Message-Id: <1587625174-32668-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0149.apcprd04.prod.outlook.com
 (2603:1096:3:16::33) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0149.apcprd04.prod.outlook.com (2603:1096:3:16::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Thu, 23 Apr 2020 07:08:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: dbfab8b6-1fbf-4660-8a20-08d7e75523ae
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2855:|DB6PR0402MB2855:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB285553DD1CFC02B91915C48B88D30@DB6PR0402MB2855.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:364;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(26005)(66946007)(4326008)(6512007)(9686003)(66476007)(6486002)(66556008)(69590400007)(5660300002)(86362001)(8676002)(81156014)(6506007)(52116002)(16526019)(8936002)(2616005)(316002)(2906002)(478600001)(186003)(956004)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ixEYShV2kkFKoL/XTv7EXGzY8CeDBUaNXBSD/FI21dkSlqNI4cbccoF9QKBXM74+yXxyOrwzgjt0I4KVjaYww4kyaPyXtORJoIMpVNHd3Pee6HsXw+f/spOrZqehmWx67LfnfdEeNglommCQVDRUb+8iuMV1R3W5lkjN7ZQUNPYBqERrCXpPy68XJlEX88vDMOy6YzdDWBVG+fLjaQ4UqlxPr7kYueuRFEsOQFIe2LtqtTFt89kcvqMqSdKEM/kpM2rvRwPcM8Ml7JcYXcsk037rJs4yn+OuDYr+z9hZ/wYo2Gid/8mHPNhswfgght4I2FF08EPtI2mgvhwP07mvTrf/L6zGfzMQ2XEIIGn1YQgtunp2Qztdjs+EbYq1YH2IgQVJRN6oBn9S3sowyfy14J0uMkucCvL/A8jLhr+BXEQZNYFjeUgeF8SSD7n0E8kilLuEiYiDtv0zjlWr1drWbjJBWPqdR8p/grvx+XSJtbQ95qQJiR5F1rhPLelfllQj
X-MS-Exchange-AntiSpam-MessageData: mDGa/qIG/2t90Q1kBgenj2VmHRtBa12J2mMeL1yZmOq27/yJqWRNXLM4blAYf0M8cuF1ikZ4Mpy0TDjV+Jy3yn1fVwEr5fpyOyd8+6+rX2kIiy01rPdObeuGeQauyCskhp/VBVAYNdqOJOl3wb/CLA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbfab8b6-1fbf-4660-8a20-08d7e75523ae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 07:08:35.7400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7imp+S/Y8LYsz2k7JwdASTDTgy9qg2UqTxz5xlGIn7mv21pB/OhGmvQpS5BAXNDn44M9ylGRnOnLtAa5CrisoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000838_539769_0B6F8A36 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.56 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, festevam@gmail.com,
 qiangqing.zhang@nxp.com, linux@rempel-privat.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add more cm4 resources, then linux could use cm4's i2c/lpuart and
could kick cm4 core.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index 7b43bd63cc1e..2fa86be2027a 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -170,6 +170,16 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	/* CM40 SS */
 	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
 	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
+	{ "cm40_pid", IMX_SC_R_M4_0_PID0, 5, true, 0},
+	{ "cm40_mu1a", IMX_SC_R_M4_0_MU_1A, 1, false, 0},
+	{ "cm40_lpuart", IMX_SC_R_M4_0_UART, 1, false, 0},
+
+	/* CM41 SS */
+	{ "cm41_i2c", IMX_SC_R_M4_1_I2C, 1, false, 0 },
+	{ "cm41_intmux", IMX_SC_R_M4_1_INTMUX, 1, false, 0 },
+	{ "cm41_pid", IMX_SC_R_M4_1_PID0, 5, true, 0},
+	{ "cm41_mu1a", IMX_SC_R_M4_1_MU_1A, 1, false, 0},
+	{ "cm41_lpuart", IMX_SC_R_M4_1_UART, 1, false, 0},
 };
 
 static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
