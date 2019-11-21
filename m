Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B3C105313
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fgPwVcm8EJRJG8FnIZm+h0TnRK6XiicUi/x0eYJTy+M=; b=A7u
	8B+pD7lnw6eePD1tQoyW4hbZhI4B0uOlajrcElgoUZz2stIMKbv6bIAzsKtMKrfr1LxGg5l2l+R1Z
	A2OpFrUydvcSnJNjYIpw4KsHGyUg/0UmtmTZ6LzgWj4UIczyL0fN5VsIdESVapz4Wh2fMxUP00UKv
	yh7zbX8swTJtdvWzjeSbH5W7N6tIaKPV9qcbAdFlvhUOzwNxR3Bg/fl70p+kjTxuhUszsPXu1JPAX
	CoMmuTvBPiDcCKBdVI887Cg0UGeIFI2NZnTdQDaiq7ynix07wOpdG0F5yE5ejAKI+DR3PMUXu0dII
	zrH8bYV4QIGYSoERa0I/RoVIm803O/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmWj-0008LM-Tl; Thu, 21 Nov 2019 13:29:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmWY-0008L0-Qh
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:29:32 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78A5A2070B;
 Thu, 21 Nov 2019 13:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574342969;
 bh=yyXJzn+XyQztYsAFDd+jIydz3QhsmNmW5iErSayP8O0=;
 h=From:To:Cc:Subject:Date:From;
 b=vtPUseQuJskD7wyazERwtvJ8t1Sms7TRZTBm5ohv8JJ8fsTsXV88KKk53IZf0rgBe
 9pqHaek7jcNnWod6esgscEZ5OPINcLL6NgBnXRaDYZtO/ghn6gpIi/3YmF7LvqSOLs
 Du1HBnToU+wvA3Ho4ToPB/3auWhW1t7vz0InSOXE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/sun4i: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 21:29:24 +0800
Message-Id: <20191121132924.29485-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_052930_884018_A5264A0B 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/gpu/drm/sun4i/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
index 37e90e42943f..5755f0432e77 100644
--- a/drivers/gpu/drm/sun4i/Kconfig
+++ b/drivers/gpu/drm/sun4i/Kconfig
@@ -17,18 +17,18 @@ config DRM_SUN4I
 if DRM_SUN4I
 
 config DRM_SUN4I_HDMI
-       tristate "Allwinner A10 HDMI Controller Support"
-       default DRM_SUN4I
-       help
+	tristate "Allwinner A10 HDMI Controller Support"
+	default DRM_SUN4I
+	help
 	  Choose this option if you have an Allwinner SoC with an HDMI
 	  controller.
 
 config DRM_SUN4I_HDMI_CEC
-       bool "Allwinner A10 HDMI CEC Support"
-       depends on DRM_SUN4I_HDMI
-       select CEC_CORE
-       select CEC_PIN
-       help
+	bool "Allwinner A10 HDMI CEC Support"
+	depends on DRM_SUN4I_HDMI
+	select CEC_CORE
+	select CEC_PIN
+	help
 	  Choose this option if you have an Allwinner SoC with an HDMI
 	  controller and want to use CEC.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
