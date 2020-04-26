Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338441B8B4D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01VD+6JY7PmWQgxYoC7V4LW15Y9qt38EAo97RFc0T5s=; b=l5bktjho8pXjng
	nrBjypr0hV6WFMm8A0KK/Y5vubneFedT/vfsOmdD/LZR7SAjeb5BPv14wxAoUYWMPsQP1xMjto4KO
	sEGh6od8TnrHEldvBFF7CZxo9lZ/e36Zbe0JlWu4okyL8FtaeCNOXb2BV8Pd+1MYwxWe3zMxhaFyk
	XrG9zp5lskHDIgEEPfTkGSaIPh/A78zZ5kIUkO4Y6C2NQTVfR5HD6/CiT4kuDbG6P6R/2864ICo8O
	AsdSUu4UfurRGH55zviBNocr327j7tGYzfQ4nxhJ2bEifGGYDjiF3BK0aN/1AeRVlhyu2WC/4unx6
	zCPBKNcE1lbEEKAGrSBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX46-0008Tk-C4; Sun, 26 Apr 2020 02:30:42 +0000
Received: from mail-dm6nam11olkn2073.outbound.protection.outlook.com
 ([40.92.19.73] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX1F-0003va-9N
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhk40PPRxwCRpRKLTEsCQYI3fS8JwDTJ0ratvEBK35GyKzWzBPhSvqwT6i8iA+jxAhQeLSJpvuTA4knbbnMDUhatYteggh6KZ/G1ra8/2h/b3EMdI5wSrzu3mZTVyCwuniIfZ8Nr6Ar6Fu1nfcKNB79pFP/sCiytWSN/g9tUogfr3CQRJuCVnKvoBpThYobnGzl49Kliy+HzCOGQ6lUOFkrBLHnIZ34U/d8wGPltcLxBah0TptIRzMDunHcRtIoasy3TVJr5o5bVVcyr800IKJ3aBKFJuV2S15HQCLhBJGpj6NCxgFUgV3USMLQqD0mod/lTrg2R+bwaYB6TAT8YKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nr0yCJ5s8PKdUrtGRarxzpQ0RBEjeAqGUYmeuB6X6g=;
 b=gXeiiOlPr5JN4nM6cQnZ9rWDUsiLM9emLbMW7cAgZEK4I5qEvMP5tVs+7lei8h10WzdeHSvrlLg3dgcMtk4BjzgMbzvnnW7K0nBPAkCIK856FuXVNBB91pms8r9mfzEAlnPxT77bih7JYA9TN6XHcz40MMrRCPj757zZev5Yps4Z+s+Nasf63GjyPajZvhOs2EzgdKutPH+Y/ZZSCb5cDq9SGsCLV0rLqu5mw7zqMFN0VR12v2xRDY71c64PUShUfOQ3dIMhtMPH5Z9rVB6F8UplCMFyqiZu2X5aPGFav9Itr8prPCgaHzygaYHEnUCYNxuUT/rON26zwrCAGbtUAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4e) by
 DM6NAM11HT143.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::231)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:43 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:43 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:F4926194AC0F5140EA3AF986850745AF19401D6ECC73722FE9F5D8CEC73031A3;
 UpperCasedChecksum:12D7E4F828CE42369D993E499FF97492A61B2061C92B5F7EFA13F74EBC781750;
 SizeAsReceived:7891; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:43 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 10/11] media: exynos4-is: Prevent duplicate call to
 media_pipeline_stop
Date: Sat, 25 Apr 2020 19:26:49 -0700
Message-ID: <BN6PR04MB0660DB1C884EE9F9C7D94857A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-11-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:42 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-11-xc-racer2@live.ca>
X-TMN: [s+Hv9NB/YytGgC0xxJLCrVAuLRAM6TYQPUGQoDmwjx0kBS1VbMVwJxCAjn8aHqP0]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 4e3c2e7b-9acf-4154-95a1-08d7e9896646
X-MS-TrafficTypeDiagnostic: DM6NAM11HT143:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iPf9Qg6TqPRtfkhYpIK/IYWhVwDXrxtl0qRj6bTtSMslDHBYZxfHx9z0g8JtOAjm9B/vwSMweWkH7TK8RX3KZep4Qur3fvgd+EQ7JEgM7LnfTnPsme/L6Lrdd3isueyFCqyfFqGJ3RpJJWJlKJlF8BGMvIu0pTYy9Nhr1jfjaXBbBoGcwoFRe5veB5KSapteiI5rsAlM0TMvTwAfMcMP7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 3xvJxb/5qiUJCaOrkBXeuQVxfs7yoocYiQpF+lyW2JFan4UAS02cO3hdr5d523OXYq85mOTJGrliCKOTV88vIHYZm79M4vg8Q4AEMMWZXz1FLv41zna0Fh4w60TWWRr3USruJeiQjPEm/veyJ6nNO65D4WemS+GMDOGW0fCfr9ZfbmUrJMK2h3sRaOFaFrEpxFvSHXlDYKUCLOLdM7R95g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e3c2e7b-9acf-4154-95a1-08d7e9896646
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:43.6076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192745_457523_A2304D2C 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.73 listed in list.dnswl.org]
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

media_pipeline_stop can be called from both release and streamoff,
so make sure they're both protected under the streaming flag and
not just one of them.

This probably became noticeable after commit 2a2599c66368 ("[media] media:
entity: Catch unbalanced media_pipeline_stop calls") was merged as it
added a WARN.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-capture.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-capture.c b/drivers/media/platform/exynos4-is/fimc-capture.c
index 95d4a667bffb..d3ef1268da07 100644
--- a/drivers/media/platform/exynos4-is/fimc-capture.c
+++ b/drivers/media/platform/exynos4-is/fimc-capture.c
@@ -1232,8 +1232,11 @@ static int fimc_cap_streamoff(struct file *file, void *priv,
 	if (ret < 0)
 		return ret;
 
-	media_pipeline_stop(&vc->ve.vdev.entity);
-	vc->streaming = false;
+	if (vc->streaming) {
+		media_pipeline_stop(&vc->ve.vdev.entity);
+		vc->streaming = false;
+	}
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
