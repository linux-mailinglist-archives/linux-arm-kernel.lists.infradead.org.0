Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66151B8B2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0uM6eKfcUEjXYfMC2WztmEaIGvbPnE4NtEgaZBDLgMk=; b=oHhKDeq2wQP3W1
	EDY+vjZOt1SRT93OPd4nM8cEmYzrZiZr6iMuw4oW2N72QuIz2Nu2Un7xTB8X8Dvf+5Py/p5OhOl50
	O98mW0TACLVicMfTt+Tjhj7VeTezNu5a+YEJnt7n/4wADovOCbzM7B6WLQAdLV3VSFavv/3WxjTJl
	VgCEu7nbE9bExIFCw3WQ44jV2y/9CMeMmIku8wqvC6fYTJaI/aTxQToUtJBa/NgF81fXvHEF2sGE7
	nSck2wh7FGH1VphZc/44d/Me3kj4US7uFvQ8WxXlF4YupzfGiMO8SgoP4LDgz8vueg5DD5wEUxbsB
	RVuDlEkV1oK5t+79hs9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX11-0003Xo-A1; Sun, 26 Apr 2020 02:27:31 +0000
Received: from mail-dm6nam11olkn2044.outbound.protection.outlook.com
 ([40.92.19.44] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX0n-0003WL-El
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVWczFcwgVsbygDxIzPfJGyLvJp6mf/cyxpsOKA1T8Dk1RtIDCWogHvaCYmBSoUt+tOinO17Uwy+Lv5vF1GcmWE+jvLXBBNZlw5zxHBonjNHm7zKotinMDq/CIWXEbMnp0Iyd1H5mxjJ7NppaxWwAku7vi3JGqg/Y4lew7Qk7IXQnm6o7VExDyyVpNlQjiDpeZ8zgsV49Gxv4FOS6pcOkJNrVa/cqV83nk65slwNah43m3fkPIJ7JhjEfAwBzAFipRq20CDIApAQrVRnv/dRJi2bMaDXMp3v+IbCE+5+r1ewuCDHsIChKqQaLKBKXYaWU7c1ddWejFAYqf2O8qHHKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YIai2UCie5uAdRZypBYolyyz1q9wd+OOct+1I+f5Gow=;
 b=QWae5/77RItvlqIqU9Kgn1yIOIQi4OAJqLMXPCU58FAleD5chsqu+7yaeVl3r9M+bsXnR+xVz+ffDvX7fxeyMIIQeFGoAc4oXsd3jZeW3sOO+0KP3AZGPwHYylczdylf5MO5vlk/MwSGLfjvuPfHDgPvHaiKchdFr13P0A+GYGfAkvngteEMUnoKrdlyC59HdJQNUiPqxP0MXDc0BSYDuS9qPBiLeFLCyojZ2Qf5k1Qu31V+oP/txgvQ0IrdbHWvjWbeh5eXsxNYRnayyiuPFCojsVmuivwsdParhN9Gg43sufdUwwfkj7byI5BK1MH/5PS1lUXKySAOHMGmm7CB0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4f) by
 DM6NAM11HT010.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::169)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:13 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:13 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:6C3C4D775E340410A25E041F9860D233A9430FD71AB0B6C65217D9B2BB811079;
 UpperCasedChecksum:FFCFA57C55479EF904CAAAC48016629450CD64C999D9A17CA2EC27511A171EC9;
 SizeAsReceived:7772; Count:48
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:13 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 00/11] media: exynos4-is: Improve support for s5pv210 and
 parallel ports
Date: Sat, 25 Apr 2020 19:26:39 -0700
Message-ID: <BN6PR04MB06602E7221CC7455F3142540A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-1-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:11 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-1-xc-racer2@live.ca>
X-TMN: [Ir4pf3fCPfIZp8hSif/KV7bN2M9wUsbTSjsvWkRqHJKxyj04210y2rxIq3JfF8Wz]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 7c52f882-2a33-4e07-6414-08d7e9895433
X-MS-TrafficTypeDiagnostic: DM6NAM11HT010:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NqCIYIiw4DxMxZ14MuE4EsKLh4N0ziK5vHFy3Fz47C+2vzue9LCEjNJuYQtJuEFtKz+Mi/yBDKGBQPtMRSHlvGmX03RwMhNFugv/cDfDsRuWJ7G4xD23+zv1ERaJvdlUQt2DRGq4bsgaoIc1SOQfscLAK0V831Ix3Bgkj1obTxJYa8Mq3ubSrltzfeTGUR+zzJfsJYduKIx96MtY+DRIwg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: oniZQFVDVYiluJ8VIae0XN0hwSqrV1g0sNABB7eDrauLO5QqfMDguDosZSrUaSaWB4NHuqLlcja8rf8KIitP5sNCjILs1Myw0iLJ40hqBbIAy8teoOPlDKf7K1Lm3jjCf8ytT0k4tyq7Bg363Xt5GtFQjcjR0qdbHj4JCHuvy/Lh2sGnjzsjVUKJEcGgwDG0dw7teXJ3/tdaDQc52pDYZw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c52f882-2a33-4e07-6414-08d7e9895433
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:13.2598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192717_495976_853A5C73 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset improves support in the exynos4-is driver for s5pv210
platforms as well as for sensors connected to the parallel ports
and not using the CSIS device.

Fixes range from nullptr exceptions to probe fixes to JPEG fixes.

Notably, it also changes the fwnode probing of parallel port sensors
to match the binding doc.  The binding doc said port A = reg 0 and
port B = reg 1 but the driver implemented A=1 and B=2.  The only in-tree
user of parallel ports is currently Goni, which notes that it uses port
A but has reg = 1.  Also note that the sensor driver is not mainlined
despite being present.  I have left the DTS as-is.

Some patches cleaning up non-DT support are also included.

The patches have been tested on a first-gen Galaxy S GT-i900M device based
on S5PV210.  Two sensors (CE147 and S5KA3DFX, both with non-mainline
drivers), both attached to port A, were succesfully used.

Jonathan Bakker (10):
  media: exynos4-is: Remove static driver data for S5PV210 FIMC variants
  media: exynos4-is: Fix nullptr when no CSIS device present
  media: exynos4-is: Correct missing entity function initialization
  media: exynos4-is: Improve support for sensors with multiple pads
  media: exynos4-is: Properly set JPEG options when not using CSIS
  media: exynos4-is: Add support for multiple sensors on one port
  media: exynos4-is: Remove inh_sensor_ctrls
  media: exynos4-is: Remove unused struct member input_index
  media: exynos4-is: Prevent duplicate call to media_pipeline_stop
  media: exynos4-is: Correct parallel port probing

Tomasz Figa (1):
  media: exynos4-is: Request syscon only if ISP writeback is present

 .../media/platform/exynos4-is/fimc-capture.c  | 22 ++----
 drivers/media/platform/exynos4-is/fimc-core.c | 67 ++----------------
 drivers/media/platform/exynos4-is/fimc-core.h |  5 --
 drivers/media/platform/exynos4-is/fimc-reg.c  |  7 ++
 drivers/media/platform/exynos4-is/media-dev.c | 68 ++++++++++++++-----
 drivers/media/platform/exynos4-is/media-dev.h |  1 +
 include/media/drv-intf/exynos-fimc.h          |  2 +-
 7 files changed, 72 insertions(+), 100 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
