Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB0C166CF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5oSBabwjPu2LAGBANszcjbeTmaKxhXHjlcgslXYH4Z8=; b=f+ku1Zi63LXvmT
	rojEdd1WUjNryOu4CIyEXlTh9Vdg8IMYm8IC9SEkaAvjAdIx+HItHls6Frpg7mhXWfijl2vtiAEel
	HY5XwAQJ1pn3E696gggKnJUBuW/RjMjCnB/tDC7wdsrSAHavHEVUbhx5eK3aiumhlkZJLn5o4DcOi
	chRFgXZHtn6e93spXple3SYALf1rUoFqTR/ePWfiJJnJm5ajF64YM+IXD3qjakCO+I9I2KkoJ8sOO
	YHv+4fQY9IQQkMAdJihEZpbKO0YH9EBHuiUCZ6xfbeWRq0rhLwt6W7akeFol6EdeRJhrWdBFh/y7o
	l8cvRrHtUUNeb7mNAu0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yD8-0007ji-RC; Fri, 21 Feb 2020 02:38:38 +0000
Received: from mail-eopbgr10065.outbound.protection.outlook.com ([40.107.1.65]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yCu-0007iq-25
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:38:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MyVTn6z+KqS2kM5cDbLfcsI22FK3zDCjeN55tD/lL//OL7xjF8orLUWeWbUPwCRFgluUUeHaDw2XyjfSkJc32V2KOAYSbduaEFo+ZD+KU3U4Q3rGeZSMMy1jsjITQoR2Bttxi6fUoBovhXwSIne09knLWT0YiAG2B9+buu6gaefmnr/ukwEwRmPI1zW3PxZmIMszUqplW7K5JDi0Dj/B75pvXyd7RU3gTgshobdbdIZeuvFWTqmf+LcoAe7bm2F/YxbujW3g83Ty+G5DiHp8auckvSEC2cvh5hMAndzdmXYLWX3lNDYX5Otfp7EzAVKFLySSkvfqHYRiRwW9oCtvJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mPM9H2X6jWFRlVlhCfS2tzaunv0fZ1C6GhScDwZiu4E=;
 b=Ms3tHV75ta9Z4XX+OewR35D4c2MziZt+/SahlECPhob98rIkpRxMZAzYA6wEl8AyC1DQvbYJyymekD4Bk0TfRqrMBsNjNeZovwoMkPiuH8CljyN4I18isZcztqbFdOz7vfZ4zbGwfy13R6+nKBg5o3FBQLbKkI8nSqi5GCt0I2jkg0Cvx7Q5s7QvcoobSK+feRd9n7c2No4uS+cQ93/CZ/5iM7N5WWPiC0HU4hndn5vaH5zKoaht9szomSxHAt51zt1idODvRW5FtxYhA56sk7D0jFfyM97oISiMAiy4zAQsbRVH3vYNPGSW4T9EsI7Mo/DKj3tMnmpSDJncphJ46w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mPM9H2X6jWFRlVlhCfS2tzaunv0fZ1C6GhScDwZiu4E=;
 b=F8mr45kOTdrYu0GOd+jBAg+ggl8MC/TWRO6gho3SdQyMF5ORjzMQ7fVCOpWw0+XhmTCXOu2RGdgGhlMWlOkGsoJHtnrHUEK9CGi4KxlBiM4FKfQtwEMwAwoo1vnU8RHPPaXhTYul7z5qEQzwU0GUatz7r3YffGFsQhRUWX8Mmog=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5281.eurprd04.prod.outlook.com (52.134.89.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 02:38:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 02:38:20 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V5 0/2] soc: imx: increase build coverage for imx8 soc driver
Date: Fri, 21 Feb 2020 10:32:17 +0800
Message-Id: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR04CA0057.apcprd04.prod.outlook.com
 (2603:1096:202:14::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0057.apcprd04.prod.outlook.com (2603:1096:202:14::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Fri, 21 Feb 2020 02:38:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9d6759d9-1915-40ca-784e-08d7b6771cc7
X-MS-TrafficTypeDiagnostic: AM0PR04MB5281:|AM0PR04MB5281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5281B98CF93A3492F337C90088120@AM0PR04MB5281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0320B28BE1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(189003)(199004)(2616005)(9686003)(26005)(4326008)(956004)(478600001)(6506007)(36756003)(5660300002)(6486002)(6512007)(16526019)(8676002)(86362001)(8936002)(52116002)(69590400006)(2906002)(186003)(66946007)(81166006)(66556008)(81156014)(316002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5281;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ca2z5nIaaAuNTU2ozlT6e9cpusPYNpSiTSjGdKzRHaVIIEiVkph4qDluClkQkGwqnMWKvNQgaPBG1PXG+ZgJJCMpf6OaCkxrAbbsBr41anN+VWcw1l0q/BcXjucw9DF/Vo4hlsUoOuRLPXxTrpYtHzyZCJ+y6QPMHCpc3mDBW24YjDsJNbUteULtA3iIj+OVQkMXHvfoqmcuW005lMI34YdWj5h4p4EDCUTiBOgIcyT+aSIkon1SC3jMnHgQuisH9SD5NF2LgT2oMXSB39SzXS+Ms2ZfmBzf2ICkJs7fjz+BCpSuJfZtocCcOu5mi/SqYpjux5CCCJ5TNt9WtxoF8lm1wjPnKqpyvKP3WCGYe0FdBDlhbRsatOlJRPDtdgYwlVMqt5RyBMLjoHqTNewIJa+xwbkjQBtvmhP8Tgye+jBtUDiN+f99nF9v/5XndS3MNoWl4Mu6P8P+kH18hUKoalo++WgwfGlBgchen215KO8VSGMeXgACSxyzDmWUXFNyBDXcChbvlRfgP2Sa8xkvx+ySldCef75dpRW4QUbhEH0=
X-MS-Exchange-AntiSpam-MessageData: NQar+/uk3ZNP806CJSGZ6HftseH6gM3JG9+tWOx0G+r3jfuMiGqWABt05C5YLF6nkM80H08TmqZyueCk2eqpa4wraIlSeXL2+fg0JZ75pLuoKzhxul6Zr+l+gEMkIAjGhJaqQSjhS/BrTU3vel6Ujw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d6759d9-1915-40ca-784e-08d7b6771cc7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 02:38:20.0170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m22t0Fmotlntvhv92IaZwryuofTYoOOfegKzHP7+EsCilLDUnluKFnoyO3VCgYyS0j/7E/C+cFxxVGRANjy6Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_183824_207012_435A8201 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

V5:
 Add missed "static inline" in misc.h

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
