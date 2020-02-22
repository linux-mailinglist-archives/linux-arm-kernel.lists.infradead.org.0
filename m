Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48624169264
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PlWgJPC/+tE5OmRNXtOCuMSDYYMRreTXoGULoDjzeqA=; b=a1LXD6X17Hh4ga
	v4thrxCpoRQXx+x3WI76zs1Mphj6bWn82RBveUeTibV/imhznP6sLZRmJ7Ix1RCn6cWMn0QHVm85M
	pgyDZ3W2YyzYz2OkJXAULqgfU8/53Y1Txz6Ey4gL3hSHTRjKnXk4IaYfzPSJDeYUO5czkDs6OFgQQ
	gBUEE5BeVuxT4jdAnr5eukgudD8p08jV6zqY3hw+PkbbpnhxOswN1IccErrP2ZvweVnll67ndz4kU
	cRtw7DW9LPVJytzzN0oZdeLM/QvGRPOwfdg3qeawqe6gyhpE9OBJkognurtbxLlaOEOT0xUT6t1IB
	IADUL2eADWtFGKvYPXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5eZH-0005tX-9N; Sat, 22 Feb 2020 23:52:19 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5eYt-0005i9-QD
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582415514; bh=1rcpmynqM7XOcznUMag08uGqQJH2xF0Ib2wJScD9GqI=;
 h=From:To:Cc:Subject:Date:From;
 b=NxCqPrLepYANmyQmbImPr18oCLahsuqGsJptFoegS9suts6yf1pU9ZTLEr8mWAmX6
 HjBRc9FYbdfsLeqmH/8S6pjkLvuvg30Oni/6kgIR089nqzWsx8PrXfTkvAXpBouB9v
 CR6Igj9KNu7iD0emEIBOwagzXelNw5Y9dFlA68Fc=
From: Ondrej Jirman <megous@megous.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm: aspeed: Fix GENMASK misuse
Date: Sun, 23 Feb 2020 00:51:52 +0100
Message-Id: <20200222235152.242816-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_155156_026110_477CF949 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:DRM DRIVER FOR ASPEED BMC GFX" <linux-aspeed@lists.ozlabs.org>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arguments to GENMASK should be msb >= lsb.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
I just grepped the whole kernel tree for GENMASK argument order issues,
and this is one of the three that popped up. No testing was done.

 drivers/gpu/drm/aspeed/aspeed_gfx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx.h b/drivers/gpu/drm/aspeed/aspeed_gfx.h
index a10358bb61ec4..095ea03e5833c 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx.h
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx.h
@@ -74,7 +74,7 @@ int aspeed_gfx_create_output(struct drm_device *drm);
 /* CTRL2 */
 #define CRT_CTRL_DAC_EN			BIT(0)
 #define CRT_CTRL_VBLANK_LINE(x)		(((x) << 20) & CRT_CTRL_VBLANK_LINE_MASK)
-#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(20, 31)
+#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(31, 20)
 
 /* CRT_HORIZ0 */
 #define CRT_H_TOTAL(x)			(x)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
