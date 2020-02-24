Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544AE16A0C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjpkWzrpgrKY6vzVnyIx02+Rs4QMm3EtbH66fn8YIEY=; b=BIPQw+ZXd2elsA
	r/eZMF6WwrH/Lh2ahJyyWfPO3fTjdYeazXiGWF0YqQPMIe8o1OrHhmadNxKQ6Qyg475pn0ASo05nh
	vFkSN9hAQcGYVHTox7BGZEXnIm0INYV1j2wL+VaD73skr8ALK2qq/R2WCimvPwOY9yi+0J0dXMTYz
	FDSxhGesrV3VdY+tupW8AMoYrKEZ86nMa7uIjau6msWsd2BCKZV4LlL2AQYKOhW2jNB5Juy/kPNIo
	+Dwqbunc4KAYM8YgpKUUrSonNZjbuBQQNuEd0q0UGMePvnFJgrjboGY1npnkSJz+NVKlYOvgqgsE0
	CjRXJ9cAEGStS8ffmK4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Xd-0002ZO-LG; Mon, 24 Feb 2020 08:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69Ur-0007FH-Cc; Mon, 24 Feb 2020 08:53:51 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 937492187F;
 Mon, 24 Feb 2020 08:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534428;
 bh=LUxYTwwdwf6SHIjajoLDNPMJKCyZMEOBchMPulk8V+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xf6bxCQVjrbPD1yNAqNMJxDdwz23WBF6fa9g7Ckp6zWe+GxeC0iSpZYdMccNPNm7E
 M4Xq4O3XW/jHdWxMaXt+dXlhJ4MlVsDUlntN4Kvc0eD5Fo/E5bDY4Lx3fOUBb4gIX+
 WsPc+pfW9mph/3bgGuTnd6NS8B3GDoYjYYxZoZ1A=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 10/18] net/alteon: Properly report FW version
Date: Mon, 24 Feb 2020 10:53:03 +0200
Message-Id: <20200224085311.460338-11-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005349_550591_255807F3 
X-CRM114-Status: UNSURE (   9.61  )
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

The acenic driver assigns FW version in driver version field,
as part of cleanup driver version, set FW version properly.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/alteon/acenic.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/alteon/acenic.c b/drivers/net/ethernet/alteon/acenic.c
index f366faf88eee..5d192d551623 100644
--- a/drivers/net/ethernet/alteon/acenic.c
+++ b/drivers/net/ethernet/alteon/acenic.c
@@ -2699,9 +2699,8 @@ static void ace_get_drvinfo(struct net_device *dev,
 	struct ace_private *ap = netdev_priv(dev);

 	strlcpy(info->driver, "acenic", sizeof(info->driver));
-	snprintf(info->version, sizeof(info->version), "%i.%i.%i",
-		 ap->firmware_major, ap->firmware_minor,
-		 ap->firmware_fix);
+	snprintf(info->fw_version, sizeof(info->version), "%i.%i.%i",
+		 ap->firmware_major, ap->firmware_minor, ap->firmware_fix);

 	if (ap->pdev)
 		strlcpy(info->bus_info, pci_name(ap->pdev),
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
