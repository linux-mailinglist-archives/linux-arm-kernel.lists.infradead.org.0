Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9E1F85AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 00:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeFBQGToJryqUZaJk3k1ToKDh/D35zeuC0OHWE7ZUNI=; b=sLFMC7Xo8X8IAL
	1w1DjiX6wjwE3fsMJb/0OWmcEuqf8yxTma1bdUSrdFc6gdaKBXi9GQbq2ssXe7a13Ewqcw+Uv1d6N
	LO8HJqLZAkz2QgdLDMDZa6QrNv0un7OV6KRnR9vtUvgVTaNXstiGBtK3zZ5LC5wvi8JkLZhaXWaaT
	PzH36KBE29XuHnohINHtfqIqRszkHWr+2+J4VvM61vqdrT2pOP1VBGYPeejPZTeOU+WrLvPl/sNv9
	1xa1i13WVHMd8HKG/2zgSacPmmBRSLHbX+jJch1xy7fvVr0CpSU/LGz9P2hsiwps+/dzBztpU/Ene
	X19RHlIvIF4h92r+1zAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkEg2-0005yR-Cz; Sat, 13 Jun 2020 22:31:02 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkEfe-0005rh-92
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 22:30:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id z9so14953296ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 15:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FzAJhGZfJiBSb9p+is0pbxXE5BziQFr+Nhe+PHcOYR4=;
 b=TjwCM6P1n68Q47GQjOq65qJkd1Ay81L7arLF7RCzt0hiMckHCmqN3WZ9XlAERRnzFl
 +RHLK08gCF7pYL7er8z7x5gA2HR4Bhdj1HmhVKDhkf0ZEIFXoth4ZcVnAXtMz1jk/a4B
 bxi+r6EeDH+w3NgzwB4OI7u0YcjBrTMZjB8PcS/tH6S+vW6pCI6BwV1aCj11TewuwoKp
 XRNOeRLToLWfA2PM/+L5zwJw02r8+E8+YC5CmQGneDEvX+6SiGiIEjdguXFRSgXqeuBJ
 6PJVgc9L0MUG6NJBbwMtnvJIbpSHz19WIsaTkqjXor1GF4wuOZEC9QcLcaYJaUIMdtVb
 kOBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FzAJhGZfJiBSb9p+is0pbxXE5BziQFr+Nhe+PHcOYR4=;
 b=ZGWk3SrqyDc0Xedg/v0NOpZdlM50jmYMcaRokmCqHOzUTzZXhbpHlCFjqmRq2ZVYTK
 iBXVwt/naGqsq6iavl0lV2W+E5on6zRTHPZb35/LeJ3V2z6Q4b2gAuqFppC9ijGUM1Zj
 SIOXiCOvC0ttko32S3Tv0vR6KIDvI0euUZqqYcMuCB5IIiXJt/Y2KDrQ/pDiVdPOij9x
 a2G8majdh1X3uRQaUYB87SNZo+IWBgUMG68AiKSAbh19suR4G5Ftd0r7xyeZp0ELTR7A
 2rhche/qAcDQVnyg7Q4QS2gd7wjGCBo3Ugtajc3folbrKOJfjdodsLqyPIUSSprKQ2pv
 9BgQ==
X-Gm-Message-State: AOAM5314/+1jQU1b5FiFQdjRBE7jsPAZt48espa085c7qwKc3o5mGLfT
 Ew22C8xnlsCIhyg5w0SyhhsHCA==
X-Google-Smtp-Source: ABdhPJzauTuCb/B4dM7ikR/2Hs1ksRVcmYgu1KxjqMiw8W6wcGUWxBWOxzvTay2o0MTZztb7CcRydw==
X-Received: by 2002:a2e:860f:: with SMTP id a15mr10231173lji.127.1592087436933; 
 Sat, 13 Jun 2020 15:30:36 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id 15sm2888027ljw.46.2020.06.13.15.30.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 15:30:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>
Subject: [PATCH 2/2] drm: mcde: Fix forgotten user of drm->dev_private
Date: Sun, 14 Jun 2020 00:30:27 +0200
Message-Id: <20200613223027.4189309-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200613223027.4189309-1-linus.walleij@linaro.org>
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_153038_315678_7B6918DD 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We forgot one call site directly using drm->dev_private.
This leads to a crash like this:

8<--- cut here ---
Unable to handle kernel NULL pointer dereference at virtual address 00000918
pgd = (ptrval)
[00000918] *pgd=00000000
Internal error: Oops: 5 [#1] SMP ARM
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0-15001-gfa384b50b96b-dirty #514
Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
PC is at mcde_display_enable+0x78/0x7c0
LR is at mcde_display_enable+0x78/0x7c0

Fix this by using to_mcde() as in other functions.

Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Fixes: fd7ee85cfe7b ("drm/mcde: Don't use drm_device->dev_private")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mcde/mcde_display.c b/drivers/gpu/drm/mcde/mcde_display.c
index b319a474f801..212aee60cf61 100644
--- a/drivers/gpu/drm/mcde/mcde_display.c
+++ b/drivers/gpu/drm/mcde/mcde_display.c
@@ -838,7 +838,7 @@ static void mcde_display_enable(struct drm_simple_display_pipe *pipe,
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_plane *plane = &pipe->plane;
 	struct drm_device *drm = crtc->dev;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	const struct drm_display_mode *mode = &cstate->mode;
 	struct drm_framebuffer *fb = plane->state->fb;
 	u32 format = fb->format->format;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
