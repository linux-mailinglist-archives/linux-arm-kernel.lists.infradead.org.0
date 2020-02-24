Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3462E16A0E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOdPOT6c0sfu84KL4A5Ig2VvagZwEPRFwML9+6lDgFg=; b=uPZCsd5xJMx/9A
	5kvVBbctF3vVJCE11miYXCJALnwgnNIkPAtiM2CGPbCjY8vzkyK09tYJwCf8Mn91Feph/8wPfen3x
	KkfofBfU0XlF01nNS0D6YDhViBVs3vrJzdR6sFGODzXOSHqgUKso2mF3o0Tkhp9i8f9I333Mx2smR
	lWG2d0Le0RorAX2kwsmv+L1tXtOhiCpXWRh/airO/iT5zWKJl7HUBXqEIUlXhYVC/SnjVJbNiL1Xd
	3xelL1HTKTt08Ju+ZAh1d5SJ1pAswShWgMVY83r6UgzVx5QhzTeCQu7njJ6YTRLJl5wpcGzSX2bAI
	ea+n1/EkiVDA3JqvOXLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Z7-0004Cf-EI; Mon, 24 Feb 2020 08:58:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69V8-0007TW-GI; Mon, 24 Feb 2020 08:54:07 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDE072086A;
 Mon, 24 Feb 2020 08:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534445;
 bh=jyTuYbkOx/qFl/ghU7khrY1Sboh+eGIbH2DRwV3peeI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vGsg7GJZqiMJzCQGqK+jMAi+LsSkpS3MURNIW/WgjCKtog/6l1dfEP1AtfQ5va1rI
 eO4f8QZaTdQZLZpQKKKIVDWIZued0dVu8tIgk66RRxFsmwXSeLBLqFhwfAVNKN3Lk/
 mR6zaw20ZjTWclTRqVC16mxvJNd7N2ycZtZc3HAU=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 15/18] net/apm: Properly mark absence of FW
Date: Mon, 24 Feb 2020 10:53:08 +0200
Message-Id: <20200224085311.460338-16-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005406_649647_3AA1CB7F 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Leon Romanovsky <leonro@mellanox.com>,
 Don Fry <pcnet32@frontier.com>, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ion Badulescu <ionut@badula.org>,
 Netanel Belgazal <netanel@amazon.com>, Mark Einon <mark.einon@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

There is no need to set "N/A" if FW is not available.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/apm/xgene-v2/ethtool.c         | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/apm/xgene-v2/ethtool.c b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
index da748beb7047..b78d1a99fe81 100644
--- a/drivers/net/ethernet/apm/xgene-v2/ethtool.c
+++ b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
@@ -89,7 +89,6 @@ static void xge_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene-enet-v2");
-	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }

diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
index 4e7a95bd83d7..ada70425b48c 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
@@ -103,7 +103,6 @@ static void xgene_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene_enet");
-	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }

--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
