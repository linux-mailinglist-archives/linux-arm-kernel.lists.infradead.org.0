Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D68F35933
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w5m+gjgz9LBd/c23QThDh9P87jHU0CTdi0jaJg8GXvU=; b=DRmH1n7gFZjJGr
	AWXGb/x33VF3kIAcZGhZx6k8jIINtHJ6ZLfJNQVHByr/7iaHug8JsafTV2GzXe0buzkmT9tacXWdw
	bBZOERiA2h9Vx/Ix3HH14JeXAFCctr3tpddcSDMVJTd83lyo/7IxddaYxfPpewNvpF5IGR8ivv07L
	uER5t4xt7zUthWo0VkBiy8jwpy5mnRkNLp5ZCtNGp+E4EjPnX7lIKPdRX4lR0iMP7tKggOmrx6lGp
	6NZ4QF9499GeyNSiJgcub6H+LqEDPTcYCRlS3yfOoJrszZodzMebmA01ds27dAVgnb3SVgLo8OHmg
	w0pKK/7twYBSRUc7pIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRoT-0005iu-Bq; Wed, 05 Jun 2019 09:02:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRoI-0005ec-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:02:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so572721wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 02:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W0UkzujEUwohNcf3VeH5h/qlE6pjw3A5B8Q608W8mEU=;
 b=XKoGucDRE59ctdALi55KnuMB2pfY4g1Lt2zBA4dvnGGpwv8Z5gwHb05HCPJDTYlsbv
 5TEfJkhJycV628Z7tr8w84ThBaNxy//SPoHYuGOJ0VhosZmyjqvffKiCo1uNMfH2phSz
 4/Z+AWW56a/f6ql6qLBNzuywl75gEeAD102Rkce3ha+JURcmzY76hw5YCbVZat/ARTKv
 VjXv0W9LPviK5+3e65+wQ/+9r0PD/i6Wmq0HNSuHy4K90cwTLPxRfj32qo9BRccs76SB
 tVQbQBCNFgicGamR/5EkDT2QMolDsY0paIHmFUR1OewGP2Mvn3M1z7hZlsdU5/d8O5hX
 WKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W0UkzujEUwohNcf3VeH5h/qlE6pjw3A5B8Q608W8mEU=;
 b=lgKnN8Sql5yjrlvd4QXbgsktMueME+o80r3XpnfuSep5P8ruKGqebFFB/hvmJ+jQT7
 bNbPp/0doZmMvcWTsO8+cdGWr9rN6bco3Iz/M0WGbPEr404WgbAxUU7s6puWVQxlZiHV
 fWu9I1ZPvHLfB4u80NFWk8JwNqan9qt57nrkRBkjPJ8S/J5ANucFq2s/WPkziqluEE9g
 PwLKKIC5RJQKLRB6pUQGoiGQnJxC+eUivnitaNUBTG1axwRy3RkkYE6jwFsEbTLAGIv6
 tityZGfFOhoxBLGkXndbyNF1Z46o79l0gzGR5Dnkq6VLuI3H0WUNU+Y+atd9ej7hdnyR
 xqJw==
X-Gm-Message-State: APjAAAVXfW81tPrwGj447bVqpPY93O1JJioVMlQ73nmTRs7B8nHPg9Ai
 hyDydg5NiKiMt9+YFFHTFXSMMg==
X-Google-Smtp-Source: APXvYqwa2RNAJJwxMJ6JTg0mjevN5vtgAE668gbRTlJwHBOWetytUnE20xaQcYxq0qE3ERpFLm+yug==
X-Received: by 2002:adf:fc87:: with SMTP id g7mr20918125wrr.229.1559725337237; 
 Wed, 05 Jun 2019 02:02:17 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c129sm2697842wma.27.2019.06.05.02.02.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 02:02:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com
Subject: [PATCH v2] phy: meson-g12a-usb3-pcie: disable locking for cr_regmap
Date: Wed,  5 Jun 2019 11:02:15 +0200
Message-Id: <20190605090215.29905-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_020218_935988_73843F53 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Locking is not needed for the phy_g12a_usb3_pcie_cr_bus_read/write() and
currently it causes the following BUG because of the usage of the
regmap_read_poll_timeout() running in spinlock_irq, configured by regmap fast_io.

Simply disable locking in the cr_regmap config since it's only used from the
PHY init callback function.

BUG: sleeping function called from invalid context at drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c:85
in_atomic(): 1, irqs_disabled(): 128, pid: 60, name: kworker/3:1
[snip]
Workqueue: events deferred_probe_work_func
Call trace:
 dump_backtrace+0x0/0x190
 show_stack+0x14/0x20
 dump_stack+0x90/0xb4
 ___might_sleep+0xec/0x110
 __might_sleep+0x50/0x88
 phy_g12a_usb3_pcie_cr_bus_addr.isra.0+0x80/0x1a8
 phy_g12a_usb3_pcie_cr_bus_read+0x34/0x1d8
 _regmap_read+0x60/0xe0
 _regmap_update_bits+0xc4/0x110
 regmap_update_bits_base+0x60/0x90
 phy_g12a_usb3_pcie_init+0xdc/0x210
 phy_init+0x74/0xd0
 dwc3_meson_g12a_probe+0x2cc/0x4d0
 platform_drv_probe+0x50/0xa0
 really_probe+0x20c/0x3b8
 driver_probe_device+0x68/0x150
 __device_attach_driver+0xa8/0x170
 bus_for_each_drv+0x64/0xc8
 __device_attach+0xd8/0x158
 device_initial_probe+0x10/0x18
 bus_probe_device+0x90/0x98
 deferred_probe_work_func+0x94/0xe8
 process_one_work+0x1e0/0x338
 worker_thread+0x230/0x458
 kthread+0x134/0x138
 ret_from_fork+0x10/0x1c

Fixes: 36077e16c050 ("phy: amlogic: Add Amlogic G12A USB3 + PCIE Combo PHY Driver")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
index 6233a7979a93..ac322d643c7a 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
@@ -188,7 +188,7 @@ static const struct regmap_config phy_g12a_usb3_pcie_cr_regmap_conf = {
 	.reg_read = phy_g12a_usb3_pcie_cr_bus_read,
 	.reg_write = phy_g12a_usb3_pcie_cr_bus_write,
 	.max_register = 0xffff,
-	.fast_io = true,
+	.disable_locking = true,
 };
 
 static int phy_g12a_usb3_init(struct phy *phy)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
