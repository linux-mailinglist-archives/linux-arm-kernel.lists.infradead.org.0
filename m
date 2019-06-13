Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B7943872
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BK/pii88r0tKhykLOrR4e6tBUA7kI6VClWpkh+FUcOU=; b=AKYjnC8FR4B/xA
	YaeE5kJZy0EouHhqeoGi8l5dJMX/JV0toteGY2G0t2tCEXLhf9rQR1/7C2tk8obpbhUFoRp8zWPNs
	bGXh3cq5sDDQaYpgmQXYYF4qMGf/U4pGl8NfSika1I2iEu72TRZljAw5BPVCxjg9OaUcPbogiGn33
	8n+E/SUToER8QdZA33JfsJGLKnbcy6OJBG1D1rYWscPdLXud9QZdJ+0dVSpuqCA5a7RIC9t3p2aH7
	0n9+K296mgXbGzLyJ3MpnpX194P0KSExu5mNMBOHBOk0hapk5ZWTJTtTOvRbbkbQbk5keNalL4RhW
	FF8srXj2As4cx7hP53/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRIh-0006HN-MN; Thu, 13 Jun 2019 15:06:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRG5-0002tk-MP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lF+gnhKsU2lh2tVvGjfDNXWZdZUkgpiY1GHVUhZ5kmo=; b=YyRNU/HkdGMzLmb5s+HpHYqLLo
 AViyJGP5Hfx2okMa4tuhHtFKoqkjKgOQidFuq/hTRMYWyXh8vJ7xBp/gfIh3Mt1JpQ5YSvJxoRr4Y
 Qg3jcCetuu2RWlhnZgN7ckYwOanqF6lTHxY2LaPp+ig0X6JxR2cyqbp4+glchKdYM7p8u8+asYPR6
 J8vC2DDCkCzvzyPGheLHJiixLR4h/KEwAoqCLR1g4/W7B0KmJFPHffNoLVXZNShknteI4dlnDOsWS
 w80UMA0QE3QOUYUjrZTQK2oJR7Cz8L17m59mS0wzdRitRbOy3PjKeNjPOpvfdEa/H9Seoe2nHC512
 UDIblghg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:45362 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFT-0003kV-1A; Thu, 13 Jun 2019 16:02:43 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFO-000084-Ry; Thu, 13 Jun 2019 16:02:38 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/18] drm/armada: add drm_atomic_helper_shutdown() call in
 tear-down
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFO-000084-Ry@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:38 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080321_845078_E39ECBAE 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

Ensure that the hardware is disabled prior to tearing down the modeset
support.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index e660c5ca52ae..e524bfff1c49 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -171,6 +171,8 @@ static void armada_drm_unbind(struct device *dev)
 
 	drm_dev_unregister(&priv->drm);
 
+	drm_atomic_helper_shutdown(&priv->drm);
+
 	component_unbind_all(dev, &priv->drm);
 
 	drm_mode_config_cleanup(&priv->drm);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
