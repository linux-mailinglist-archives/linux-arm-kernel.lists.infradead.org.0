Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAF31F47C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oE0rY44u+NJrY5wxfWATC3649EnjC003c1z9VH+WY48=; b=OKsBI5r8lqiT2e
	Oz2WyeeeoBD59j5mioqGo9L7R6fgafepl/Wm4pXkZFOXMb6j92XzESQWkBuH8AQp1FJ6y+8JYrt4W
	6SxSs/VOUKWCQ0+vJ7aAqJ8jDslFbBtluE07sOZEgtzt6Gc2Xu6xZDpmopVWQp3T/TES/FGG+XE2S
	H9fT9ESkdICNZBN8u+jeD40hmmsWuWqxJEHfqeJGxSdoS52VfCPKYvIZncv+vHInv4VTRZZW9gdKW
	FNW6e0Oz8bBVNBWTAkHGCcLYDnGHczbTC56vmMwxwG/L95VMgUr2s1T+QQPCoGgnGevQBGEdiOMkb
	+d3sGR0GUhlI2DXZitTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikYN-0002BN-8D; Tue, 09 Jun 2020 20:08:59 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikXb-0001hR-Dq
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:08:12 +0000
Received: by mail-lf1-x141.google.com with SMTP id 202so76778lfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mxgPzGFEpIj0w655f2Gez82/rG51Vivc/8hTpLpCcS8=;
 b=QS/XZMVqk5N+EqlleKn/HR2AEg9MHYFjSHMestIwSdS40KUgpJZtbzvAu38feUuL+X
 g06rNQchEK0EXJpAtNK9J+lmVo/5fkF4Wzqx9kE1wyXjgxr4WpKd58pwVPAUOhRoa8oZ
 7YqtQpuU+rBeemzQkjN0fcsu51fAqKMrIRjpKiHand6svoftAjR1YJnVt1Z/Zlf1IQGi
 FdsUk38o0SuxrQTTlzK9JQpSNwT6ajyGWr3SbodDLUG3xPfLAJRG/ZKQqMmEKelW3UzD
 oCqjE28v5U4HUyqQn4OrMQPig6KnooC6wmO4sisXSQF9Xo3+fAQIk9iOwgjFPVM/3cMr
 d+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mxgPzGFEpIj0w655f2Gez82/rG51Vivc/8hTpLpCcS8=;
 b=kT5CY9IQBm6QzXMT9SnZvpW8klfsIP6+P/Jj1R8shQOouehe6kZw7vPLm5GbRfHkCd
 5IMcO0hqXDac/DnQRRJ6pHfj84etLtsyqxQlxY8JiHcwuisMxRbxg193hqtVAyZXcrFA
 8cXbdBFlH0einuXEYnog2++1MyttyHzVILvCZbMfIlYgj8/pT5Fel9N155NOJcR41Qh0
 41A/v84+Rmjmf2G8iLlx+pBBJFu0HvKtdJYHpwggDLNAba2BP5sKTnUtuNrYBEiUt6zJ
 I2d5MEzRB6VoCaPj4cNubk1681HZKiupoXpd0NBHJwuWpBDgDkDWGwuTTp8qvBzyOApN
 2WMg==
X-Gm-Message-State: AOAM531MH1XhYlmUaAR9vLf2JAJDtHjwtYsWy5ODoGovIVn1tLAtVsOj
 2BbxolK01VI7115ga5Wv8s4hVjZC6V0=
X-Google-Smtp-Source: ABdhPJx0B9LZJczm7E1med6jrxJJu1CwbVa0kzHkJ1YSSDTj3cYRpUyfdN5XSNfb232YlK0KOxQQWQ==
X-Received: by 2002:a19:356:: with SMTP id 83mr16413808lfd.179.1591733289625; 
 Tue, 09 Jun 2020 13:08:09 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id 66sm6038579lfk.54.2020.06.09.13.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 13:08:08 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 Eric Anholt <eric@anholt.net>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 4/4] drm: pl111: Update documentation
Date: Tue,  9 Jun 2020 22:04:46 +0200
Message-Id: <20200609200446.153209-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200609200446.153209-1-linus.walleij@linaro.org>
References: <20200609200446.153209-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_130811_463075_EE211594 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove notes about migrating from the old driver which is
retired as all users are now migrated.

Update the text to reflect that we support PL110 and PL111
alike.

Drop the bullet on memory bandwidth scaling: this has been
implemented.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/pl111/pl111_drv.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index 96e58fda75d8..46b0d1c4a16c 100644
--- a/drivers/gpu/drm/pl111/pl111_drv.c
+++ b/drivers/gpu/drm/pl111/pl111_drv.c
@@ -10,18 +10,11 @@
  */
 
 /**
- * DOC: ARM PrimeCell PL111 CLCD Driver
+ * DOC: ARM PrimeCell PL110 and PL111 CLCD Driver
  *
- * The PL111 is a simple LCD controller that can support TFT and STN
- * displays.  This driver exposes a standard KMS interface for them.
- *
- * This driver uses the same Device Tree binding as the fbdev CLCD
- * driver.  While the fbdev driver supports panels that may be
- * connected to the CLCD internally to the CLCD driver, in DRM the
- * panels get split out to drivers/gpu/drm/panels/.  This means that,
- * in converting from using fbdev to using DRM, you also need to write
- * a panel driver (which may be as simple as an entry in
- * panel-simple.c).
+ * The PL110/PL111 is a simple LCD controller that can support TFT
+ * and STN displays. This driver exposes a standard KMS interface
+ * for them.
  *
  * The driver currently doesn't expose the cursor.  The DRM API for
  * cursors requires support for 64x64 ARGB8888 cursor images, while
@@ -29,16 +22,13 @@
  * cursors.  While one could imagine trying to hack something together
  * to look at the ARGB8888 and program reasonable in monochrome, we
  * just don't expose the cursor at all instead, and leave cursor
- * support to the X11 software cursor layer.
+ * support to the application software cursor layer.
  *
  * TODO:
  *
  * - Fix race between setting plane base address and getting IRQ for
  *   vsync firing the pageflip completion.
  *
- * - Use the "max-memory-bandwidth" DT property to filter the
- *   supported formats.
- *
  * - Read back hardware state at boot to skip reprogramming the
  *   hardware when doing a no-op modeset.
  *
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
