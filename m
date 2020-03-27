Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977981950B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 06:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KJnlH9j5sI6Mx1GHZN/kxRS5H/Jc8SqAvcnOvcjwkYc=; b=hYXDUDVauBhu3M
	V6X+bpDaClLC1y0qMtjLIgK/jQF2jn0tRs84sKD3pD7SER7Jfbw8af4YW6K2doKDEcYX6VT4ETdqI
	3J1DCRlfAd2rGI/B91X06oPIKMY1SBxZu0ZNfV/Cbi9tE74d5ow8xOg9bsLOevih5MJ33zll0ceob
	+0xEU2B5N/H4RKhv5G5McAeZgr5Dm5Zc6hGeopuggs/QZZ7BBXTTWSPJi0MlO9UmhZuizcDmCc5b7
	TMZs6vgdME98uKqJb4HReZX3b6AqqhuMFh9izDBgiqaYaHBAME+kaZaixmYRD0Vqw3Rlffr4oB9s/
	8SzxGL6KJbP3VRCS/jvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHhhv-0003DT-Nc; Fri, 27 Mar 2020 05:39:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHhho-0003Cs-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 05:38:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jHhhk-00085G-Qu; Fri, 27 Mar 2020 06:38:52 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jHhhj-0001QA-LF; Fri, 27 Mar 2020 06:38:51 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Bin Liu <b-liu@ti.com>
Subject: [PATCH v1] usb: musb: dsps: set MUSB_DA8XX quirk for AM335x
Date: Fri, 27 Mar 2020 06:38:49 +0100
Message-Id: <20200327053849.5348-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_223856_971147_36C70D4B 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>, fercerpav@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 russell@personaltelco.net, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Beagle Bone Black has different memory corruptions if kernel is
configured with USB_TI_CPPI41_DMA=y. This issue is reproducible with
ath9k-htc driver (ar9271 based wifi usb controller):

root@AccessBox:~ iw dev wlan0 set monitor  fcsfail otherbss
root@AccessBox:~ ip l s dev wlan0 up
kmemleak: Cannot insert 0xda577e40 into the object search tree (overlaps existing)
CPU: 0 PID: 176 Comm: ip Not tainted 5.5.0 #7
Hardware name: Generic AM33XX (Flattened Device Tree)
[<c0112c14>] (unwind_backtrace) from [<c010dc98>] (show_stack+0x18/0x1c)
[<c010dc98>] (show_stack) from [<c08c7c2c>] (dump_stack+0x84/0x98)
[<c08c7c2c>] (dump_stack) from [<c02c75a8>] (create_object+0x2f8/0x324)
[<c02c75a8>] (create_object) from [<c02b8928>] (kmem_cache_alloc+0x1a8/0x39c)
[<c02b8928>] (kmem_cache_alloc) from [<c072fb68>] (__alloc_skb+0x60/0x174)
[<c072fb68>] (__alloc_skb) from [<bf0c5c58>] (ath9k_wmi_cmd+0x50/0x184 [ath9k_htc])
[<bf0c5c58>] (ath9k_wmi_cmd [ath9k_htc]) from [<bf0cb410>] (ath9k_regwrite_multi+0x54/0x84 [ath9k_htc])
[<bf0cb410>] (ath9k_regwrite_multi [ath9k_htc]) from [<bf0cb7fc>] (ath9k_regwrite+0xf0/0xfc [ath9k_htc])
[<bf0cb7fc>] (ath9k_regwrite [ath9k_htc]) from [<bf1aca78>] (ar5008_hw_process_ini+0x280/0x6c0 [ath9k_hw])
[<bf1aca78>] (ar5008_hw_process_ini [ath9k_hw]) from [<bf1a66ac>] (ath9k_hw_reset+0x270/0x1458 [ath9k_hw])
[<bf1a66ac>] (ath9k_hw_reset [ath9k_hw]) from [<bf0c9588>] (ath9k_htc_start+0xb0/0x22c [ath9k_htc])
[<bf0c9588>] (ath9k_htc_start [ath9k_htc]) from [<bf0eb3c0>] (drv_start+0x4c/0x1e8 [mac80211])
[<bf0eb3c0>] (drv_start [mac80211]) from [<bf104a84>] (ieee80211_do_open+0x480/0x954 [mac80211])
[<bf104a84>] (ieee80211_do_open [mac80211]) from [<c075127c>] (__dev_open+0xdc/0x160)
[<c075127c>] (__dev_open) from [<c07516a8>] (__dev_change_flags+0x1a4/0x204)
[<c07516a8>] (__dev_change_flags) from [<c0751728>] (dev_change_flags+0x20/0x50)
[<c0751728>] (dev_change_flags) from [<c076971c>] (do_setlink+0x2ac/0x978)

After applying this patch, the system is running in monitor mode without
noticeable issues.

Suggested-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/musb/musb_dsps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 88923175f71e..c01f9e9e69f5 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -690,7 +690,7 @@ static void dsps_dma_controller_resume(struct dsps_glue *glue) {}
 #endif /* CONFIG_USB_TI_CPPI41_DMA */
 
 static struct musb_platform_ops dsps_ops = {
-	.quirks		= MUSB_DMA_CPPI41 | MUSB_INDEXED_EP,
+	.quirks		= MUSB_DMA_CPPI41 | MUSB_INDEXED_EP | MUSB_DA8XX,
 	.init		= dsps_musb_init,
 	.exit		= dsps_musb_exit,
 
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
