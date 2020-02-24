Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4226016A099
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBoNuKyvzAMUdHUUEHiWyjzp/qeVcV/rd2lL+ca4KUQ=; b=af0HNhLAOioKhe
	oilu+q6/nhCfyO/oWjUGkWUtQ71t/7MbqquiGxkulKuNuwaFnaYTGkiF4TPt9Waj1wwdcKEpbBN8B
	AFxVxI/EWyG5kCZ4dSLldaUTiQL0QlwVT7AIAyNYi+IBvc4ctpMfrS/iNMCKMp6rGb+EdmHs1pMDy
	RtekmBwlTHEPhKyrLUdcit0NIDi2NRdIIcMRkLrhD3oDSgJNvOPWMlmyNd2EcjyT/XHThLiM+zCCs
	PmmNnqkmDbPf18TIcVgzLGKAHNBObI6ufDC/dC8rPPiEzjn7HyOB2b/QggggyKQen3htvEG0xhOrI
	3mjo1IZHe1aSus76ixFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Va-0007fX-1d; Mon, 24 Feb 2020 08:54:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69US-0006xH-Rs; Mon, 24 Feb 2020 08:53:26 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CE692082E;
 Mon, 24 Feb 2020 08:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534404;
 bh=u4B7Vto/10BbegPDSJEemPSvyjrazEXATWOFgauUrqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e63QLvxyXaIDOP1R9CuGFUDzaQ1ji5kYXsnE+JQZiUXwNcRRPfVvaAc85BnTjPTZs
 UKQ+ZacCVO+gPjOWVMV9PctUgl6HXLEz9MKtUyD5LG3otHlH0n+2vB+HMZWlyqoPxg
 CIj2dThM7kbJ431fBpp0Jf8g9pZ8Iij5XPnJLwQ0=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 02/18] net/dummy: Ditch driver and module versions
Date: Mon, 24 Feb 2020 10:52:55 +0200
Message-Id: <20200224085311.460338-3-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005324_962883_1442C4E6 
X-CRM114-Status: UNSURE (   9.15  )
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

Delete constant driver and module versions in favor of
standard global version which is unique to whole kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/dummy.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/dummy.c b/drivers/net/dummy.c
index 3031a5fc5427..bab3a9bb5e6f 100644
--- a/drivers/net/dummy.c
+++ b/drivers/net/dummy.c
@@ -42,7 +42,6 @@
 #include <linux/u64_stats_sync.h>

 #define DRV_NAME	"dummy"
-#define DRV_VERSION	"1.0"

 static int numdummies = 1;

@@ -104,7 +103,6 @@ static void dummy_get_drvinfo(struct net_device *dev,
 			      struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 }

 static const struct ethtool_ops dummy_ethtool_ops = {
@@ -212,4 +210,3 @@ module_init(dummy_init_module);
 module_exit(dummy_cleanup_module);
 MODULE_LICENSE("GPL");
 MODULE_ALIAS_RTNL_LINK(DRV_NAME);
-MODULE_VERSION(DRV_VERSION);
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
