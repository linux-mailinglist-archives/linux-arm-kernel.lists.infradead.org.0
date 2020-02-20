Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B88716579F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 07:30:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LtEf1Z/NVVqGwOt+LFAq7BLnmNahrMXVol/kfYrV9B8=; b=LHN5L0ly6oJBuK
	ExY1lZux/aiAqKwEQznBvnrnqYdrr5PJ6qAg+2lwfbLJt3SGNQzzB7X8MfPfWa1t5zsHFlARxhBoo
	HmakhEeFvjQ5HvajvcqRZaN7ps2u1kjeRyzMML6qmS7jbtAH7HTD/9Zl7fAUV91GHBHnh0pN1KNXZ
	cFWi4kS5/rRIQU//PaF4XCMkVX40mNTbJVE0F1ulvf6TBzHNMAj5uDtFCJSWWeZenvaOogJ5+Ykoz
	CYhPHhqztr0RJ0o35qX8NBElpySO8hvP3yS0JDTzrB7z97LMUMY+TmDfnHPrza7AXTYBKcZvUUd8m
	UVPNJQiVNu3GLBroWX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fM0-0007gv-LB; Thu, 20 Feb 2020 06:30:32 +0000
Received: from mail-eopbgr40072.outbound.protection.outlook.com ([40.107.4.72]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fLr-0007gH-99
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 06:30:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FuttUpV/MDAJljgOVaq5u5TYICY7zMOdMMgRuKbJf/5zwUuCATqzwSzfYtVrtMlSqipuJ9/ZzynV0YggqLKQCFaSOMPzJn/754ujY9zDRwMfiLC/kzFhNff9n9UaQRjJ6G+aZKKwHzUWg3YRFOpFsls2iohwE50c/HcpfpbR6phuPZIUSppN6ZEmtg3qJTXC0FxlzeNNa7VoHMjrQsmvh7ByuwwXVpzjrjh/yGcLRuV9nyIY5FBIGIOYhqHcaL+KuV2cMeS0jQDnsxs0la+nLszuhgyeiclgwj8vGK9w7o9Anj/c8r0yh4jcy4RullBRHHsWVWw2xKNZ0/5A32KXQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gv/Cl6IAPZTxNQdDL67Xai+EznYnAbBpe0JWur6Ws3U=;
 b=dw+uUMdEACtTopY2lp5Zsa3ytGf9etswXdj267trpdnzAb7KvK+Su0BBMXjIB5/XbzmUZ0dge8ud5RDW+s/f4cb9nujP+417kQK4Y+jzQ46Ua7mIJQ7iASbMq8fRyTHoYaaPOe3ccSjBbqsHN0pZJpfo8kyvL40pfoaKoA1vobp2dyxRm9SUlm0bpyAAvRNoQgGZlGK8uj5DjNuxDcFBJ+q6UunGVvIFY3sNSYxCjbn6CHglSvbm5hufJbHnBBFcows+hwgfHa+q2reBmwKSoMmgnHi0AqlyBWQDPyLjtkXhY3IopybiaF/wP/MhZvlEBreVqfxnRpCmtKGVRbBoeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gv/Cl6IAPZTxNQdDL67Xai+EznYnAbBpe0JWur6Ws3U=;
 b=V0w87aSRb3H/diKIaXdcbrqz6RbWdscx/7UJRaLXZsg0hT7TBFh4O1W5ktvmM3PIRmVbYshsFnPW0xu/fPXGD/Wa8JZPsMn282VRKJYWFZIaGR0xQCcw4vJuKhqeFcz3TteK0ce6Rp+DDkwRyE0GYKsL3iIm9lvI17dBHRuIEHI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4860.eurprd04.prod.outlook.com (20.176.233.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Thu, 20 Feb 2020 06:30:18 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0%7]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 06:30:18 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V4 0/2] soc: imx: increase build coverage for imx8 soc driver
Date: Thu, 20 Feb 2020 14:24:01 +0800
Message-Id: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR02CA0133.apcprd02.prod.outlook.com
 (2603:1096:202:16::17) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0133.apcprd02.prod.outlook.com (2603:1096:202:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 06:30:14 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 44314b31-e790-4c94-469c-08d7b5ce5a72
X-MS-TrafficTypeDiagnostic: DB7PR04MB4860:|DB7PR04MB4860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB486022C3E6413A7940DE19EB88130@DB7PR04MB4860.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(8936002)(6666004)(66946007)(66556008)(66476007)(81166006)(5660300002)(69590400006)(81156014)(8676002)(6486002)(9686003)(6512007)(4326008)(36756003)(478600001)(2906002)(86362001)(2616005)(16526019)(316002)(956004)(186003)(26005)(6506007)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4860;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6UPQP5ZQnD66FemPX5flaKYizOihhWeYaVkhfTv2DhsM7unJDVNSP7vQSIiWqkeIEYxG+IL6tBVlrlqSy2dME2LSMLpjJVS92kP5tUzmfzrrvtBMGcSZ0hiCbKPgAlWlB3ShURAzECm/x9x5ED5ulZkJSAuVWKjkkyGiA8wN4XCs9J/Fl9BvzmymUJcgVCXtiHCRJTaWHiSUtLPlncDJnCmvKjg51sFxsUCVtEla5itgLsTBZ5kYGfJFZTnVohiLHwPX57mbOteY1q1pi1gRKlZQefLspQbUcY7jz2LSikNLXm2DnhIJRajqqLuF69cuKCkZouikKX3FQywRoSHuD6IjBQ8WMThoUOIp6RBRt9qdglEdjULwOcAPJ/s+UxvuqkrXLPFczGUZPJPhobYW7MALQzury2ucqGl6AqS3rVHkZoMOSTvI295r2cjEeVYNttau2wcY+8ZdlfC3mlGyqCFOFAG0Q1lEArPfKGuduhkMyQ9HdUola05iX7PUnjUTNJk6OAoTtNa11Cm1ZJc/LoumqVBb7+YOLXYZjlPQ7LQ=
X-MS-Exchange-AntiSpam-MessageData: sPJCH67ibtXrIRlZoQYG4Tn9hUJJFDEdVEYm0ai/JOCBPrJcxS7sw00UfIw1pLUQ4jfTUK1k6b+wuVFsqlETuLVFaf0T68HxY27eO9AInzHvrURR0JYTnXtsMcGu5edQc6unNPh36QM/ib9kXRak6g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44314b31-e790-4c94-469c-08d7b5ce5a72
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 06:30:18.6110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JwHNY9fHfFFGFDgNomLtrxzfT48V+7vxOQL4oImqWFYknpwgsYvKsSDu4ROJtY+GcRcgvFsHcCj6d+fGRztImw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_223023_390047_3A771E4D 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.72 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, olof@lixom.net, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V4:
 Add dummy functions to fix build issue when soc-imx-scu.c built in,
 but drivers/firmware/imx/imx-scu.c not built in.
 No change to Patch 2/2.

V3:
 Per Arnd's suggestions, merged Patch 2/3/4/5 into one patch
 Dropped the defconfig change with a default Kconfig

 Leonard, I dropped you R-b in V3 since the change.

V2:
 Include Leonard's patch to fix build break after enable compile test
 Add Leonard's R-b tag

Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
Add SOC_IMX8M for build gate soc-imx8m.c
Increase build coverage for i.MX SoC driver


Peng Fan (2):
  firmware: imx: add dummy functions
  soc: imx: increase build coverage for imx8m soc driver

 drivers/soc/Makefile                        |  2 +-
 drivers/soc/imx/Kconfig                     |  9 +++++++++
 drivers/soc/imx/Makefile                    |  2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} |  0
 include/linux/firmware/imx/ipc.h            | 13 +++++++++++++
 include/linux/firmware/imx/sci.h            | 22 ++++++++++++++++++++++
 include/linux/firmware/imx/svc/misc.h       | 19 +++++++++++++++++++
 7 files changed, 65 insertions(+), 2 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
