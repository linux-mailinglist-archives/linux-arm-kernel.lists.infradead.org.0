Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C2F46AEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRbSTrB9ag8Ook+WanWnmneQlmzRCRPeVARY2QiX9+w=; b=fchOWwkYsML+ZW
	8pMUpbenHC8eO51mTGWl+9eeeYQfQ16/j2zsB2bNlVGDA+5n4ZLOA7eraA5dCycYS8o1nLyCxtiR1
	1QrS5/aQM1I8nsIRTAYsk1HTi4LGkB2R9Tm/P1e6ArKr4flFEcWRa/7BYTzwZzQh/0n0mWiN1HM4T
	JJfFXsuB3FbBCEcf9OV3cr3AaSKl+x9Gju5dYiHp3h8xqkCD+CrMuqSW0T3XPB0nX+MiJYu6FsE6C
	lDi9CMS1SBrxPRyoUs4pnbc272uCA1k/ri50hwjYEwwxcZ++qUeTNI4ia270Ov5kdb//ZhlOGzWJ9
	mhQKcdGKozUsd8v/OzqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsyo-0005iZ-40; Fri, 14 Jun 2019 20:39:22 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswH-0003qt-NX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:47 +0000
Received: by mail-ed1-x542.google.com with SMTP id p15so5223879eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=CXxL23WkHoPS8FvxmcYzc83marqI3uVGsFjc3IQ/ZMYiBKkKvOmR2Nl+lPtk6z1ujn
 8tfiJ7fhwbrLDxeAGHwXMMhhYY7GhooqzEjzjluTqoOvazX1bAPFNYtRgXl1Wwf17bS2
 aJeIwhEJOlRANhkIYk1AGF6HQt4T5IbsUM4Ss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=dc4QF+Oj2PehtVjTFQ8JxBWREC9qjGJGH7fAbEl6W1Nfuptg1vfojURuaDMIqrsz8j
 nVlgbV9AKPNXvTRz09Lve9rJ5XTSk9jm5eOzOwqJ9lvFZZUJBXM3Mr9EvYnBgSEKq7nI
 vE24Gjh1XmegRNi8vHLKE+5rp+5YBi09IprnUWgDIJGTQr8XtbPdo5Ul3xGAoZRioYcm
 gtdQ/Wb9K8hgE1q7OPCEgRtgU/sdp43gsCR7cx4Ziyb6583O3ykUWMvjfFVQHHgeLo11
 3cG5CYKQNIYWAovCSk2/Wo/LnMHcVzKzAZQtMDxOkuUb/zEt6tlpkt93RaJag5dNmTz2
 SdUQ==
X-Gm-Message-State: APjAAAV+SJvvifIfijMVd4sFLs/9LUehJfWDssw0AUBEP7ld4bK5iuXy
 e+Zbvg2obyhnP7Xq0Kc34KWltA==
X-Google-Smtp-Source: APXvYqxXcEjEsf5PL/eYQ8qT2eKEKjLTNP3sB0Pc0ALolZp8KC6XEyq8xYSaNSLLcw3gUVflYk+w7w==
X-Received: by 2002:a50:c8c3:: with SMTP id k3mr30718637edh.189.1560544604548; 
 Fri, 14 Jun 2019 13:36:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 19/59] drm/mtk: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:35 +0200
Message-Id: <20190614203615.12639-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133645_876970_9F422E2B 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 1f8b8943b0c6..dd8dab562500 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -329,8 +329,6 @@ static struct drm_driver mtk_drm_driver = {
 
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
-	.gem_prime_export = drm_gem_prime_export,
-	.gem_prime_import = drm_gem_prime_import,
 	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
 	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
 	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
