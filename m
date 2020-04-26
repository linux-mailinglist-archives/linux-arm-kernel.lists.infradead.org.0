Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082211B8B4C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GnVauRQutj+e7OFKvOks7gsDRa1PUhVeCY9zoYDeEM=; b=hjohRTwKRF42vP
	w9EaWbCzTesTGRzU+AuJT93b43LhpsPxbjl1c88JqFLtK/ck65PklLBeZza2gr3gbn3aMfUhPryA1
	d4o6Qm+7QSN3qvoMPqTqUHk0DMhO77RRLeArTPA/GOl2pr9JlsrvTb8Gxhqre6b4If9/W/5dnkggD
	eG8Bbk85kjh2i+mt6HRVbup1UCWu1S8mA4kZ70/KvF9FVpOJUahz2gewhjGHccXfRM24PTk1jSRva
	cO5MvOZ1h95Fq7MCgSwoGxg8/oAcN7WoxzDilyFQbasxuYN0ytYwmdMS7oWQQQtmkcYkX4O8lgLX2
	MUgJMt1EioR9FT9cFplA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX3p-0005oF-8x; Sun, 26 Apr 2020 02:30:25 +0000
Received: from mail-dm6nam11olkn2046.outbound.protection.outlook.com
 ([40.92.19.46] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX1D-0003uH-Ro
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DnyE5OEa2o2IsX3caMVKGKHx8Q35P9pdZtocUlsce85/0o6RxHMNXfWypSqWMR3joc+Wwlcl0FOx8dCgmooNwEYqxAljCkvwmpRtiQnlVApR44xM/ZIZBVGjeVbn4IPYMVRVXB1TUiHFyGyBj7jhkmwP7CgGJqbSMSA6VGG67rDm7D+7LdswiWX1HgZueplLIyoOr/lff2RAVkAmEEmPl8b/5uWY8dgcQSjMEZj18lELkAN2icROlFLDTsN5qEbiltgSk8dyaaFTwQoKdXBSAVio/27aCSdPdPyjYR+Unkbe/viF2D3I1VHXNXWvYRfzwo9j+/nT245beWtCdQbx1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iprQQdz+psQamFkQQrl+dOwSlPAsEpGAalGcxR2NGF0=;
 b=RnFvdwLt+nNcLhZSDHgKh1j/yCg35qd9YyoOMjfdKak641KqJy8hlTaTv62PsKKx/AM/QCcNDwwtpYZaygiy5XMgUsQRLdH3JwaN+nd9Qx5cR6NFJVr0GTUlXjoDWwYE/+traY87qjcu6UC/CcRQMBk1/JyE8fSMAvZYc0T/EGzbrG3uC9ywfM3tu0msHWDbx5RTeIzVeHqYBEXoIOkljxhk3LDTnfTUQUJ4aGLc1l5e/IxeYNfhUdLSlOp4QTmUK6ClqsgncghuM2jKruJNBQohMUh6JrBsn1B/fu1FMSwrnmfhtM2MCWwizUJ0Y83Lk5hwCCOg0zytXxLYBle6NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::47) by
 DM6NAM11HT190.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::182)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:41 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:41 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:57D8C8884E97E8FE8297DBF0D73B69E6002A00C14852BA063C16024718656113;
 UpperCasedChecksum:51447C4D015754B58BDAB4BEEEE3AB8D9383D5D7B8B42C43C02529953DAB7A07;
 SizeAsReceived:7872; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:41 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 09/11] media: exynos4-is: Remove unused struct member
 input_index
Date: Sat, 25 Apr 2020 19:26:48 -0700
Message-ID: <BN6PR04MB0660C45D4EA577F9D5BD6434A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-10-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:39 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-10-xc-racer2@live.ca>
X-TMN: [Yb/+40pJkmK9k6MFb5LIWqyQPzAiG99ExrCIB5cRWplWefTrxcoOl01aliaXnh1/]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 421b692f-a82c-481b-5a17-08d7e98964df
X-MS-TrafficTypeDiagnostic: DM6NAM11HT190:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fmUhbSNWniBEZd5Ie92EGI9/1wtpHUGlaIN83wEq8XzxhGp8N/CRP2FqNV5/tGyPjbrzLQKCjuE9iLlxotSO/4iW9ds4rY10VJ0l4paW19DBFXvuOwz3OXPLd0qs5TqnYWv4alM8lAKYLbKBLkY6/pcyEj+g+OO+sLzMJVGUHGIfqViTmGuoiqnWwygXG6h16poyFsC/+z/i18sCrt2JEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: pIezLZspUIKRD0NMKnN1MrQhJk52JnKPKBOlMCkNpwcWm4XHdxfI+FlPBIeOBmKeuzooIgJXbAE9nxP/6EvA6S8YIurXKL4h/v3jgmG0y3Q1/A9MG7YbKTO3RZGdfXDPNBefR/KHnc2j5lQMJBCPf/kunKlxS/eGLsCbJ2tXK/iJTE0e+gX6IkLQMcYG4J2h4PDwMlJJTVIT4XC4okMmag==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 421b692f-a82c-481b-5a17-08d7e98964df
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:41.2563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192743_915207_699AD37C 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.19.46 listed in wl.mailspike.net]
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

This is no longer used since the conversion to DT

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-core.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-core.h b/drivers/media/platform/exynos4-is/fimc-core.h
index 31f81bcb8483..e4a56232907a 100644
--- a/drivers/media/platform/exynos4-is/fimc-core.h
+++ b/drivers/media/platform/exynos4-is/fimc-core.h
@@ -296,7 +296,6 @@ struct fimc_m2m_device {
  * @buf_index: index for managing the output DMA buffers
  * @frame_count: the frame counter for statistics
  * @reqbufs_count: the number of buffers requested in REQBUFS ioctl
- * @input_index: input (camera sensor) index
  * @input: capture input type, grp_id of the attached subdev
  * @user_subdev_api: true if subdevs are not configured by the host driver
  */
@@ -317,7 +316,6 @@ struct fimc_vid_cap {
 	unsigned int			frame_count;
 	unsigned int			reqbufs_count;
 	bool				streaming;
-	int				input_index;
 	u32				input;
 	bool				user_subdev_api;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
