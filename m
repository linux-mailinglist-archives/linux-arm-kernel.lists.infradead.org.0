Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401284383D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZyn387rLtY37/5nJmpsjJsyCbPYTX2Z8eCpID5U3Cg=; b=Kr5bHni1fdO/TY
	295dTV4inuHkE8wjoCC8TEc4PmkzLPyjqCqdnFKjchRz2uosVrrL5vpRthnYFBx7Zb929hV8i7LS+
	++HXmHeH08LkrLqlC2bZ54mozd8yYsQmUUE21iTYUP8+EkbXM4FUu7f5Dk1bSJUlg/2yE+g/ZK9cK
	lFDpwf3W0syOhc5pnPsJMqkzSg/ZkqitOxJdByYaLjR1TEvSglsTvJzl8pALsxMkBUV7HCTa7NG2h
	Qg29l3VigUkQiXo5igmmkD/sLx0svBNmEfV2cXZ8SYIF+syuX+ysjrpPq6LhLcWlt1GIyGUiSE08r
	fFsQ6b5Vl20hpFvAqlRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRHb-00046d-7m; Thu, 13 Jun 2019 15:04:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFh-0002aQ-93
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t/YRdgsgfrdYB46CJhogo5+pu4hXbPL6fB+Lr+vl+R8=; b=jLItS/QnABHU2T6uCrUPhLzLhe
 v09FAyrsiSMGmTZXb4zdzdslsBcIqa7bVzJHhM0+qH+O2vP9g9Sd7yvdyLXuNB0DPQTLs3HmYNy8n
 HnIOHpvpdJZSoPOuBVAn6YhBEU+SYZclKh/V5dox2DgEfbsE/9BI9Bx/T+MRlxU8UNRk2aEFPQcFj
 2SXYLxnromhvRA3TSoABoZkz/U0b0/DfVHYGzrZPYmZ/X9M5/CNgHXyBdt+pzcyo8l4M7wdmJCbwE
 V7u/ZAyqkIBZ1oCwu/KN9Ha8shhpK33YlkL7wFqtRX2kZ4UcB47b5C642IA1PvUQmguauppQrgkhd
 F9fOZr3g==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44838 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFC-0003k6-C6; Thu, 13 Jun 2019 16:02:26 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRF8-00007Z-WE; Thu, 13 Jun 2019 16:02:23 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/18] drm/armada: add comments about HWC32 cursor colour
 format
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRF8-00007Z-WE@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:22 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080257_645258_7CB91FA8 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add some comments about the format of the HWC32 cursor colour format.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index 5991feb1bcc9..e81e57823b66 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -515,6 +515,13 @@ static void armada_load_cursor_argb(void __iomem *base, uint32_t *pix,
 		for (x = 0; x < width; x++, p++) {
 			uint32_t val = *p;
 
+			/*
+			 * In "ARGB888" (HWC32) mode, writing to the SRAM
+			 * requires these bits to contain:
+			 * 31:24 = alpha 23:16 = blue 15:8 = green 7:0 = red
+			 * So, it's actually ABGR8888.  This is independent
+			 * of the SWAPRB bits in DMA control register 0.
+			 */
 			val = (val & 0xff00ff00) |
 			      (val & 0x000000ff) << 16 |
 			      (val & 0x00ff0000) >> 16;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
