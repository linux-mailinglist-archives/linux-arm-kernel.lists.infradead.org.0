Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1AA46B18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34Q2TjtCQmk270Ner75HU99B87pMt/M6nPDd6OLPPAc=; b=Dhce6QEgLa0Nmv
	Arp44yduJuM9QwBbDM4P4h6VZhJv6Zg/HemAerbkc/K0Ju/SSeFITyAUirtJAOQwofhbYQs6uwfhL
	KJUSJ42dF7xWslpG9cgJF+X6QX/8CH7pNPAjwgWKbKRg27GO77/UJMAxiGuD4Tl6E+OHu9t9OHON0
	watZiu+r0sVkXiVw6iPR0U+bCheIZjk0Z6MPEpxJ+XUhjNT9y9bO7X6bR5gVRHCasNsT5uh5Yirdm
	o0GIWogph66O2+Bi4M3iIhaMkLY6Jj8Ay+XKFrTU+W8nLvlfr4j/l0auZ0XwZnqNhzS3yBsXAe3GK
	zXxUHWzKDCWccyXmrtRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbszO-0006bN-QU; Fri, 14 Jun 2019 20:39:58 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswL-0003uM-9Z
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id e3so5195021edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pr5q7QV2elAcZCzmzM0VfoAt4G7mao5fX9tH/FDb9m4=;
 b=dMM6E72fM2rUDYc72h6nD/GqDTDBoZKTLLy8gEjQwmF6M/1I05zppiZx50PlOUN4rJ
 SO0CwCP5SkZKa+ZErhdksUANrVBGmfKwxOHUFgSFgYX4GGWEfD6akK5FYHHaquhkhV18
 bS1n6H0Ry54A8RIAmoVMAkYfC2esO9xDqMnuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pr5q7QV2elAcZCzmzM0VfoAt4G7mao5fX9tH/FDb9m4=;
 b=neoH8IAFQuGk8SX5s++XmV9fleOuUlVVmrAmZEzkds7lA3XTpBiPfKi5gxy50YT3La
 Xukpfo5D7vKeO0XnUDmFHZlx15bJf9xV+4NoKGZsUVQfR4x5lKYl6HMJhI5667CFZtJh
 SKFiNOkq026KpFMCeid3+GJMH9fumFsVmQSTmdqmjRY5e2VPnh4CMKD0invbiCfQSd0Y
 5V93wgpQjU+rMZfsQRznioUi+rJ4Y2GgoMIyJUAY2tVmjM5rwnQCUuYsdECwZUmQKAS7
 Ha2PlqFomgA6KFFfjkkN3iXpqdJ8dxJlvuAg7ASNqEg+pDy0pn/SpeKY49IHDA9I4fUZ
 YExA==
X-Gm-Message-State: APjAAAVJBcAKzEqe2hkeu/eD05VUccQ1+eMaaN3KUh2qrHOqHadRySQi
 RMpCvhyodVbgwu2RyqSdr6uDyg==
X-Google-Smtp-Source: APXvYqxKNgpvKrvg0ZF7hg0uhhNKa6ROI9OanGs/OlZrPXeX05ZzZZdABMqSbE5rM3adzY414EiXHQ==
X-Received: by 2002:a05:6402:1507:: with SMTP id
 f7mr42611712edw.94.1560544607930; 
 Fri, 14 Jun 2019 13:36:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 22/59] drm/mxsfb: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:38 +0200
Message-Id: <20190614203615.12639-23-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133649_473220_C0012939 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index b5bcaf4036bd..6d6a0b3e2bb0 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -322,8 +322,6 @@ static struct drm_driver mxsfb_driver = {
 	.dumb_create		= drm_gem_cma_dumb_create,
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
-	.gem_prime_export	= drm_gem_prime_export,
-	.gem_prime_import	= drm_gem_prime_import,
 	.gem_prime_get_sg_table	= drm_gem_cma_prime_get_sg_table,
 	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
 	.gem_prime_vmap		= drm_gem_cma_prime_vmap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
