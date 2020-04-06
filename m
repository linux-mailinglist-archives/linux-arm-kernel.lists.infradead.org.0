Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5819F7EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gsj15xiX3/LI6ln2DygzBtyrfRITuE7dFRh41Fpibro=; b=X2zCen0pU54RXL
	IYkLpEG72VLcIg3eqHQNdNP0hkRXga2JBWpzVMFphwdB+U66ZEQMxcOhdvvoA7IctL2N2mJS/+rB/
	CCC4EcM3oaxec+tB3aa8xFAJDmbsKXPa6w1heTGR3m713RJ6TQWn/fZYmEgoUyevnlyLAekHJ9kcD
	sFjJTrz+zqJsaHtblVPk1Q0xc49MCX78PYhinzF+yCwRUqdzvYCBMaRpcVBoJRjqYxhvUXp9RzMYy
	Et0M34lXo/R6GiMDp+kKs88O5yEs6PkxR8tGXAhA7Ui+PskMnNZ2vTC1z2c/TKUqaCpW644plOliT
	KkOe8frIcF9hRjEMGoyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSiu-0005uC-MR; Mon, 06 Apr 2020 14:27:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSil-0005s0-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E2011A0E65;
 Mon,  6 Apr 2020 16:27:26 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8C6641A02FE;
 Mon,  6 Apr 2020 16:27:26 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 08CF3204E6;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 05/10] bus/fsl-mc: Set the QMAN/BMAN region flags
Date: Mon,  6 Apr 2020 17:27:08 +0300
Message-Id: <20200319154051.30609-6-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from AM6PR04MB6054.eurprd04.prod.outlook.com (2603:10a6:4:2b::20) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR0801CA0052.EURPRD08.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:43 +0000
Received: from AM5P194CA0012.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::22)
 by AM6PR04MB6054.eurprd04.prod.outlook.com (2603:10a6:20b:b5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Thu, 19 Mar
 2020 15:41:42 +0000
Received: from VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::c) by AM5P194CA0012.outlook.office365.com
 (2603:10a6:203:8f::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:42 +0000
Received: from vger.kernel.org (209.132.180.67) by
 VE1EUR01FT044.mail.protection.outlook.com (10.152.3.137) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:41
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728313AbgCSPlf (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:35 -0400
Received: from inva020.nxp.com ([92.121.34.13]:41436 "EHLO inva020.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728107AbgCSPlN (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:13 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 64F1F1A0107;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 58E571A00C6;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C6E64205C2;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Thread-Topic: [PATCH 05/10] bus/fsl-mc: Set the QMAN/BMAN region flags
Thread-Index: AQHV/gTjcb7HzBf5Pk+oGi8dik/flQ==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-Organization-ComplianceLabelId: 3dbb5f39-dc76-4916-9db3-fa9191760a55
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: fd31f94c-2053-4d05-3a71-08d7cc1c057d
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM6PR04MB6054:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?PKQhtjOqSeOEuuA/PrQtggGN/iikc+oPeYoLAJTbdeeSokTRabF44enSOk?=
 =?iso-8859-1?Q?RXFCG8L7KN0MpURy4EH/P81K42HOlRBC5A4KVc7T/S1XsGxDjkn2hEKCIQ?=
 =?iso-8859-1?Q?YXAJ/ygUNMl0Z3vgeXuluLoxo693DJHqJTXXQ3hNWWH02ylolwkIb4ijPw?=
 =?iso-8859-1?Q?z3muXNLj08LKhgXZu1Brsp3233yeUz2afpS8vWRdJ6Lm+LLn9QYC8sNCWH?=
 =?iso-8859-1?Q?LBxNg53nwizZtMIKn7PsW+xsIVj7baudq5pvr77Cu3mgr1+l8dYMXDPoeK?=
 =?iso-8859-1?Q?rZQrMWI9VUgWMLubU3Hh3n8tULhtA0Epp2nwe8p3ibvnE40s1wYKhtdPsL?=
 =?iso-8859-1?Q?vdFGGFlT8ldIHiTYh4xaFAPpMgkeyi0fBBx5XH56NGU3Nk95A8IjMekqNG?=
 =?iso-8859-1?Q?QlkReDO8pYxCihFsZxrbqCGYsvrbyxQxhslzHAuhIeamFFun87csqfMsrQ?=
 =?iso-8859-1?Q?EjFpHveQxQ0N3TwudJMp5kcjO/d721oByTi8jkktOWHFXCqrFzD3MFEikk?=
 =?iso-8859-1?Q?zNF3KWdgCH2hJLRrDu/WoLlOcd6QP7yzDYaEExDdxxB9qQ4xOnCpO3fS1o?=
 =?iso-8859-1?Q?o71sW3KWhA+U2qiRgXNJP/u7AQnzmlcFLoDCAqiMfWZsu9hkSvQpOdhYcw?=
 =?iso-8859-1?Q?rxh01sMe5GbpGUfv/JkKHMMZdcQ55QaVzG9s0EftxlCFgG8GMt8PRSsyN1?=
 =?iso-8859-1?Q?P7oljXMGj795L9k
 iF42dZimpVWDipTxxIJn3RqcpB6eJbmtb6Z+Gh7+b08?=
 =?iso-8859-1?Q?UsR/HJdwIM4I9Pn/az5hblhnmdJVCC56PsIjlYWDeYbIJRbaX5d4tlpodb?=
 =?iso-8859-1?Q?Fm2KNV68phAHkFqQmEtZ2NSSR8ZwXyy8667KYBqNn8GRqkoGkAQVHvsuxb?=
 =?iso-8859-1?Q?D/cKsumtOkBrpcg30swgPexpCBSSIQRwuVAK3xDhqKS3qkJf4EyD1wKElS?=
 =?iso-8859-1?Q?IjxKkhhWmuCAfglbca+FsB8uR6estijpZp9Vww+m4OMxkan6860exlnLCK?=
 =?iso-8859-1?Q?uzFIYONgeqZRyqO7GFn4vckpRZUy1za1m0uiRRRxNdlKRXOZ61qE/vBqxH?=
 =?iso-8859-1?Q?343yREjr2W8t5d9r+WWIZ/cVZqKQ4zn0/ztN9RKeH3nIk8VqqCKaEJ7PH6?=
 =?iso-8859-1?Q?Rar6joKJAAkH93yZzSQNGyLDSurHR9H5hILUKYnbr2raf94kleU4SpJ7g0?=
 =?iso-8859-1?Q?7RB67nDHiXDOE9k6/ZOrMEtJQQT3oVAQXwR5rz43nENaY7OnD/49rznnfq?=
 =?iso-8859-1?Q?L+ruXZc72NQMfCW6uI2z0i4zWoSRAkuEzuMIFNm62hxWngFOHueu8mG5KO?=
 =?iso-8859-1?Q?M3FBL7t/CmJnMXJ5l1tg4IPgY4TV5ZtyRFCBCriA2l4qwAbPI/M59HzxkG?=
 =?iso-8859-1?Q?6NnvXHCVOpq+g5+m+MOr/n10FhZE/QkVGcqkccq1QN7uJBgJWGIQyjW8Dx?=
 =?iso-8859-1?Q?jcceU4h9FrfEHUCpIolVB4Lp0xHGFdVTwRvOWyHkmz9YSd+xHYWxuhdESM?=
 =?iso-8859-1?Q?KXm
 RnU/4P+M/0gEwNga1FcmqquExcAfCoM/MqKz7iSqK6phDWVmO+4ve9v?=
 =?iso-8859-1?Q?2DOS26hkbL1XNBQxZgd8aYXdq6F4pCCU7R/4V5W9qyYF18WdmSnlU1+Ym2?=
 =?iso-8859-1?Q?gJMsl1OwY7EUsoG+SWk+MpGtt0PUO8Ij5TkMkX5b3N4to/9cb5xdE3dTKG?=
 =?iso-8859-1?Q?IGihZsK9ZIRowr6YWTOy5Ftr3xIjogPRAEVboRADep7y+T7HgO8K0MveTs?=
 =?iso-8859-1?Q?RTnxDdt0f4P7Hd05i968m4aVG1tctrFQqPzDFpx+TT7hpaIg85Bhaqj16/?=
 =?iso-8859-1?Q?VKw//DH5/lRqvfJ2LMcC19sSmynPKEi1HMcJYNHYmyy/G1WWDlB9HvLBHo?=
 =?iso-8859-1?Q?tADQUkafG0V8IfkiO3u1nvgbNIrotmLlf+ztuUZfOBt3kCD44kMDPwr0C4?=
 =?iso-8859-1?Q?Z7i3eucpVmDFOgo64dVu+i363WmVuz4LC4g0dePrNkK8wB50tVkW6p2J9B?=
 =?iso-8859-1?Q?/OqXjJcFz7JiiDMDkWLsNGWn7+pnjQYAeXILZBrmNx1OyyMK4rgILKrjUl?=
 =?iso-8859-1?Q?i00TuvyDl8v8egVAlqoY//3FxZLEGeAw0UkNu0YikU+QFT13+MtnBw8uNq?=
 =?iso-8859-1?Q?ldfD7jM7sx5DAtjqyhqkXQontafo+X5CB7IBQVZwtFSSuOaEoTbr0ygSpm?=
 =?iso-8859-1?Q?tWm6U41fwiirZkVd1bB1n/3X?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072728_184399_5B68C89E 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The QMAN region is memory mapped, so it should be of type
IORESOURCE_MEM. The region flags bits were wrongly used to
pass additional information. Use the bus specific bits for
this purpose.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c     | 7 ++-----
 drivers/bus/fsl-mc/fsl-mc-private.h | 6 ------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index b9ccac9862b7..a99a0edef252 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -571,11 +571,8 @@ static int fsl_mc_device_get_mmio_regions(struct fsl_mc_device *mc_dev,
 
 		regions[i].end = regions[i].start + region_desc.size - 1;
 		regions[i].name = "fsl-mc object MMIO region";
-		regions[i].flags = IORESOURCE_IO;
-		if (region_desc.flags & DPRC_REGION_CACHEABLE)
-			regions[i].flags |= IORESOURCE_CACHEABLE;
-		if (region_desc.flags & DPRC_REGION_SHAREABLE)
-			regions[i].flags |= IORESOURCE_MEM;
+		regions[i].flags = region_desc.flags & IORESOURCE_BITS;
+		regions[i].flags |= IORESOURCE_MEM;
 	}
 
 	mc_dev->regions = regions;
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index be6bb0fb4603..81b9a9b16698 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -359,12 +359,6 @@ int dprc_set_obj_irq(struct fsl_mc_io *mc_io,
 		     int obj_id,
 		     u8 irq_index,
 		     struct dprc_irq_cfg *irq_cfg);
-
-/* Region flags */
-/* Cacheable - Indicates that region should be mapped as cacheable */
-#define DPRC_REGION_CACHEABLE	0x00000001
-#define DPRC_REGION_SHAREABLE	0x00000002
-
 /**
  * enum dprc_region_type - Region type
  * @DPRC_REGION_TYPE_MC_PORTAL: MC portal region
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
