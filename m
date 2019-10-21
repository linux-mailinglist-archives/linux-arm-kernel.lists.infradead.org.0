Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5270DEFF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=45euUQCW0Bi1P+jlNfScHwWQ9QNopkANadioZb08rwU=; b=UH9AwTkd2WM6aKTjRR6u+SKW4y
	tV4aYrn8cnpJMnA1EktL/kGC04l4QFMzezeMvs0PBoGH5PPs3tngETdfl/ZXbWa6wM87XwGWMMRnV
	k7Uhy+4WGsEinissbBGxTt1cZsvalcEpjCgWXH4rko1rjkH7Mu32V8g4CxLUiLjgbmgCrEJMKGfRC
	80tlCmalEUiEB9ORPWzOCbQimV+Dgmh1PR7rIAOP1kbtRyxyE6WL9ygXP+Wb4xHnnmO1OUhr5PaCy
	G0FJL+wWjTagOHEeD42as2Vu15VssA5sflo/uxcYjjJOIpE4GKzw+34kXIDYNv4Tpa4wEtwk2W693
	rKvThyVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYp5-0004eR-Ie; Mon, 21 Oct 2019 14:38:15 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYor-0004an-Jx
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:38:03 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id GEdo2100C05gfCL06EdoBi; Mon, 21 Oct 2019 16:37:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0007d1-Dw; Mon, 21 Oct 2019 16:37:48 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0003mg-Ct; Mon, 21 Oct 2019 16:37:48 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 3/7] net: caif: Fix debugfs on 64-bit platforms
Date: Mon, 21 Oct 2019 16:37:38 +0200
Message-Id: <20191021143742.14487-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021143742.14487-1-geert+renesas@glider.be>
References: <20191021143742.14487-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073801_826886_7EDF74F9 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"ser_device.state" is "unsigned long", i.e. 32-bit or 64-bit, depending
on the platform.  Hence casting its address to "u32 *", and calling
debugfs_create_x32() breaks operation on 64-bit platforms.

Fix this by using the new debugfs_create_xul() helper instead.

Fixes: 9b27105b4a44c54b ("net-caif-driver: add CAIF serial driver (ldisc)")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/net/caif/caif_serial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/caif/caif_serial.c b/drivers/net/caif/caif_serial.c
index 40b079162804fb0c..bd40b114d6cd7214 100644
--- a/drivers/net/caif/caif_serial.c
+++ b/drivers/net/caif/caif_serial.c
@@ -102,8 +102,8 @@ static inline void debugfs_init(struct ser_device *ser, struct tty_struct *tty)
 	debugfs_create_blob("last_rx_msg", 0400, ser->debugfs_tty_dir,
 			    &ser->rx_blob);
 
-	debugfs_create_x32("ser_state", 0400, ser->debugfs_tty_dir,
-			   (u32 *)&ser->state);
+	debugfs_create_xul("ser_state", 0400, ser->debugfs_tty_dir,
+			   &ser->state);
 
 	debugfs_create_x8("tty_status", 0400, ser->debugfs_tty_dir,
 			  &ser->tty_status);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
