Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04381FB4BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8198sgYmFt7SZ+7pM0BZfWP/BZ23UHxjbNFGudx1bZU=; b=GHzsQOlh0EKzCk
	4uPnXOgri/kXJri5lMT+S5bDb9htOASRQMCpQ7QxE6RTanJ9Ck41XkJaw58BGpwDp3rEa2rXGq6bO
	1NRHt4BZTu/cUFEEfsOSJeOxLrCv/b9yYnEj9EJJf/gg+FctnF1TPZXpOgPqe3Lc7jbZD9Zn8/ucY
	OzZ3twTygcLXdLpVjFY3AvFKSTHINOgi+2MOc6dQ6bTfboh9dNPgnPRK3sOKd2r9d7DY4Yh5YWvvY
	Hf+zRW5XNNm4f7afHj932gzG2EaVJdHGPqRIqyYMxUGqamOHS5hBUYm9VtrEAB6I3aH0Ii3TgsMas
	LF4p8njU5ckrOLElFJAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCnr-0001zm-Jb; Tue, 16 Jun 2020 14:43:07 +0000
Received: from mail-eopbgr80082.outbound.protection.outlook.com ([40.107.8.82]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCnN-0001s0-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:42:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlmFNHGzSqWX7oBS/bxe1dV2JlBMgIrd9bz/7AAuJmo9dCYXZlmuJF55CwVo7RcfSaYN4G+/jNiVP9Qwgcff7RdF7FktbZ3w+t+we6WCtF/l9qaYhNHB/sNCwmlcxt9fl4hXPgdeCFEdHqyLbDQbPQkLf4g/eFyR6p6tW7CLabSm2aIQlWDeG52Odneka47shKMa90xCzT2Zy+pCg9JIow/oG5m95tGCqKhDr+lIYp6YM7ytWuh9H6NRzco7E0wtN1hZU5QOxBnEl8+tMLz2N1PlbUwKjCZ9UEyWiq4E6QQatiajTYWoo7jIto6qMzdCswrCZNuIZJEx5N/7mcwwmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17dvcY0r/ZsFIaXwxfsn27sP1RMFkAc2DpDYVfQOo98=;
 b=eF4AwZ/RpeWr0xBZfiI5LXAeBtpIT7P2Z9ZEEOqDBwMtcH9k0tEmCp0GoBScZgctAnASlx3SraU/npseJcCn7PFNDk01cqHRYQ/UNT8/20fTVkH8MEpN+loNb763I71OlBVtshns111sqMalEcAepK0uuesdtLpMUHjx80PIbg/YHwIIz+TT+CLAEN8yfkGhJhpcGubbZUhxObbD4tXmv++S6jf0NlcvZnRBNfi7/9Dt7c43Mp0KrON21dT0uidEYQaB7wBcfOtetoumzg094bajaVBAhISyImCk9LVrBuolXZBZ4Xpqlj5H7M0Su0NQ7IaChwQD9dlhaOuCnIszqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17dvcY0r/ZsFIaXwxfsn27sP1RMFkAc2DpDYVfQOo98=;
 b=Z8d38Kvsnt3ru2/2lLm/ZOJ9xtItNUnm89MFKCCKAqd0fLxnBe6hAcZD7YRLB9cpptifelZPWDp/CNqCFpQg6DqUFWBe4t6HbCH+5ezdRpyk7QD4bN4a3HcVHe5UwvH6dDpTx8tw4fg9jVuRjT9A+9OT2kj4g0ESCJmFZXq/+JU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6623.eurprd04.prod.outlook.com (2603:10a6:803:125::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Tue, 16 Jun
 2020 14:42:32 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 14:42:32 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: broonie@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, robin.murphy@arm.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v2 0/2] introduce fallback to pio in spi core
Date: Wed, 17 Jun 2020 06:42:07 +0800
Message-Id: <1592347329-28363-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0163.apcprd06.prod.outlook.com
 (2603:1096:1:1e::17) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0163.apcprd06.prod.outlook.com (2603:1096:1:1e::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3109.21 via Frontend Transport; Tue, 16 Jun 2020 14:42:29 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 236bf7bb-3f86-4d4f-9959-08d812038075
X-MS-TrafficTypeDiagnostic: VE1PR04MB6623:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB66234124DB067EE515B1F883899D0@VE1PR04MB6623.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 03lEwRyYE+gOP7ATnFM9qz5ZNF1rdq9oeVMtdEje4WNtXWNXjFJj7PKbunSLeONwssg0o9VtJca7XNB719JniHxz0OJebeg+O9F/5g1NbTDsol0ZHW38DS4rTi1cA1mywestBJ+ceAWw+23JBg+xjXgP7bJ57otlP9aRq75nXii1aEnR+UzXQ+8nfDKrFTPq0DFQ9hpWem1S4tZTH8m/RLrvfCtzivEPaQr1gPtfbULSx3Lu6Dc+HyYZVleFls1BG0+QPAxG7IE7HZzHuJCS+UUsjyUtDS0xfZiZ5QL/qBP7c2mwKP94iSG1W3MKWqXTKNKhdO8b6+NpUnwehvDm5ctU/dX/0OCMXFPfUYTridK+RhMEFtt+q+gWPwrRb1qEEEsvOUmVaX2UnVrFwrNU/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8936002)(6512007)(6506007)(66946007)(66556008)(966005)(8676002)(4326008)(66476007)(498600001)(186003)(16526019)(86362001)(2906002)(83380400001)(6486002)(26005)(52116002)(36756003)(5660300002)(7416002)(2616005)(6666004)(956004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: tM3bi+xCXwkBe7fgrfqhX1bPvTyY1HwbcQpGKrk1mFihDo6y19XuGvFe8MrkpnU1vrRQZOWbCXmdz+l39YRiqjKGP/mZUaSnq0AdFkYouAf7vlfKG/+/Ka8NgcHufVxqiJUo6OutMoHdvkAdpR0kNlB2Y3ZxNjINqUsYFhP+rw58PAmHAa8t1UvcB9xj0ANcedtuO1omFS/NVtfOPXEPwIgx8JdKACZ5ESnVxMq128m5nei9p84pCW5givy5jCzqjaS4+pyFBPKBwoNp+O8aONgC6MVMtKHS0+wKYPWoL/raaU2kuzcEFveOURmJeDafRSBAKCAWeAmn2u3ii9BVcvD+CoN8JmRb/ZnY+GcDaoCWtMEVQwYelSag5N6c0ogFqVxfu8xZkvFWEmofSnyusuAq0AttmBm/RvglH+iQkAoxoYj/Wdm8JbwFXsW0yTSkFiQI2S/9jDxYFDIOX88wDqWf2yeKr6BgtZDrcvFCXwA=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 236bf7bb-3f86-4d4f-9959-08d812038075
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 14:42:32.6365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ysybf4oCANqVzedESP0nVvEttCFEXWx8JgB3DC+C3NGmKIgA4uX7bQhYES9PL3D9CjJJZpwZqowFfZxrDqXxiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6623
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_074237_692181_08D5ADC1 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.82 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introudce fallback pio way at spi core level so that the tx/rx buffer
mapped by spi core for dma could be unmap and fallback pio again. Hence no
need the below patch where 'dma_sync_sg_for_devic' to sync fresh data back
into 'device' memory and sync to 'cpu' again in spi core.
https://www.spinics.net/lists/arm-kernel/msg812236.html

If you want to use this fallback feature, please set xfer->error with
SPI_TRANS_FAIL_NO_START in case dma transfer failed(but no any data push
into spi bus yet) in spi client driver and add 'master->fallback' checking
in your can_dma() to ensure spi core can fallback to pio next time.

change from:
v2: 
  1. Add error flag in stuct spi_transfer and fallback to pio if spi client
     return SPI_TRANS_FAIL_NO_START failure before dma transfer start.
  2. Remove SPI_MASTER_FALLBACK set on master->flags since the above error
     flag could ensure no any impact for other spi client drivers which don't
     need this feature.

Robin Gong (2):
  spi: introduce fallback to pio
  spi: imx: add fallback feature

 drivers/spi/spi-imx.c   | 23 +++++------------------
 drivers/spi/spi.c       | 11 +++++++++++
 include/linux/spi/spi.h |  4 ++++
 3 files changed, 20 insertions(+), 18 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
