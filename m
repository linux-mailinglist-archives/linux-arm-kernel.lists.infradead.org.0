Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F14B16A0A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sQYSBINoXaWpA8CXaF+AtOzymUIjok3I3ZudPyhbVs=; b=t9atelkSw89UEt
	bNh7Itzx/hRObO18QyG0mEJhF+yDlyhHsgxHILstYj3K6IJNvuTgUldSfvRvJeP2twGXOCXmiKyFF
	5zpX1pXKTnc4XYD9jS1Tckd1Ag1rfLl36Q/pMu0E+FNVcM60N8Toi3BZsEVxz9sKn8HfM29LipqKV
	dJglQxtrhqeVdPwecS+hi3hkRk7qdSsrma1TeAKpr7C1jNSwy/TFy2nquDj0/pJvKAjs1nENHwixO
	j7S5CoZrmDBDyLvu8w8exoVwFnhwvfgruUl6Cx061cA7ygmtjC5YdQ1bl09TWZ3whRWqkbY5R3HJL
	VRW++CAFll0tEz3V8jtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Wb-0001LE-91; Mon, 24 Feb 2020 08:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69Ud-00075N-3U; Mon, 24 Feb 2020 08:53:36 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAAD120873;
 Mon, 24 Feb 2020 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534414;
 bh=nrWXIO2cKt+l5f9n7vJSGmI71F6uR6BEZmicU0hhgmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=umtcPjqghGRrWjyBDZWqCTVgQvaugrUeKU6ih8xHkorjGHrOCzpVr1/mW+5cIs/Q3
 QxBVS9VdIqJ2xk++SJKbSsYbmf0G9A2ROOojB17KXqpERmHoK6gVpb5cV0D11KZCXv
 wlECjlsV1sUuwo7uQMvyaqFikBq0WO2AF+SoTpcA=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 05/18] net/aeroflex: Clean ethtool_info struct
 assignments
Date: Mon, 24 Feb 2020 10:52:58 +0200
Message-Id: <20200224085311.460338-6-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005335_213278_A3EF3DA9 
X-CRM114-Status: GOOD (  10.24  )
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

If FW version is not available, it is enough to leave that field as
empty, there is no need to write N/A.

The driver version is replaced in favor of generally available
in-tree variant.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/aeroflex/greth.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/aeroflex/greth.c b/drivers/net/ethernet/aeroflex/greth.c
index 2a9f8643629c..198f1544e271 100644
--- a/drivers/net/ethernet/aeroflex/greth.c
+++ b/drivers/net/ethernet/aeroflex/greth.c
@@ -1114,7 +1114,6 @@ static void greth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *in

 	strlcpy(info->driver, dev_driver_string(greth->dev),
 		sizeof(info->driver));
-	strlcpy(info->version, "revision: 1.0", sizeof(info->version));
 	strlcpy(info->bus_info, greth->dev->bus->name, sizeof(info->bus_info));
 	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
 }
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
