Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74D46ACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVzJ2VigQLmTNXQjR8GhU0VfhqlFMiiThHFMroaTKAY=; b=AaDPG/717D6Pt1
	JiTGeZ7XVSibXl9+SuBBtlcRV/eJrELQY7X54C9gha4vhuf6v91ueXEVS+IRpW+D9vU4tS7+qWd3M
	sqx7nuBcVba9430v+lcOocQ7XEFm3EQO7troCjdgCYfk7SmgvxprZa5t2T+1g+B+9T3L/EvInxUcB
	W6LyCgMLINBdRlMIv5QidVDmkYAsaJlZf6h9lRoJ52IbRQvnRszpPP37hbmaY5yOCRFAbjVyrWVMk
	GU8WPoNjEN1GrMSGaDbQDdhq9giVzDkwOwgJebNZd8rqBhBq0QcgDEOiHdkIvJv8IBqRXisKBykng
	QLnrqTP7XMGiolB2fz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsyT-0005SB-H1; Fri, 14 Jun 2019 20:39:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswF-0003pK-NW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:45 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so5227458eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o8YdFWVByQQw2kbSJYvwAZvYSJINdZejGEAnfoP7ABg=;
 b=GSn4hAepYp7l8Zag1Wrp0xw+BaqUJOm6anR2s/xF4nndXpLX3J6Kjnplw5zMk6e6lD
 ojbORjD+kuhJ6cyADOcu76xekQFuS3sECJuJfr2pBSQEesehzd43aaDx1PFS5bAD0VC3
 DLoayOM2mOlRU80J1Vk3EH/rWgDsVxg89dVr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o8YdFWVByQQw2kbSJYvwAZvYSJINdZejGEAnfoP7ABg=;
 b=Jf0cVUhIPjeb/yqjV4X+ArUFrPlNHEuH2IApQau5FONy9wbge1joFS4/1Le5zPbl4T
 ZWdeIgZdBbUQBl9AcWKA9cm1eCSIjs/WTo+bSvITFGFdXwp6+ec9tBrHUWbLeRm5yj+H
 sx8U/IGTrVhhhUK4ZvPg2FLJDTAJhJjtyfP1j3vazto0t5tkJQaLPVoVInPXSBgDW0aI
 5V/dye1XqjJfKBIwQrn7bx4uQieTKS5FEiXkRaOGkn0aUo8o+KXaKsSDAyJqaigdWllJ
 yU8QDvm5BWX1Rk2OZiN06wDvh+tQ+Os8M3H64MyOc4oy5hVrel1Lb7SgMV+v6PKidLOm
 SbAQ==
X-Gm-Message-State: APjAAAWXJVxu3xjr2TzQjIqbTN94ZCnMnfMBTxJjuBZS3bFJNPo04+nx
 QxVDVLmvtT5hgeZyyvV6xUq0Kw==
X-Google-Smtp-Source: APXvYqy7z4kiBN4emSD4oafwbU4mewi9L5k+GGEEe6ueq+gxtqpbzG8TsVVCDKj05DPRTamXAjPZWQ==
X-Received: by 2002:a17:906:1813:: with SMTP id
 v19mr69648291eje.109.1560544602512; 
 Fri, 14 Jun 2019 13:36:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 17/59] drm/imx: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:33 +0200
Message-Id: <20190614203615.12639-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133643_825253_6EBA1299 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/imx-drm-core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index 384db6d86da0..bdefaa1635eb 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -154,8 +154,6 @@ static struct drm_driver imx_drm_driver = {
 
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
-	.gem_prime_import	= drm_gem_prime_import,
-	.gem_prime_export	= drm_gem_prime_export,
 	.gem_prime_get_sg_table	= drm_gem_cma_prime_get_sg_table,
 	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
 	.gem_prime_vmap		= drm_gem_cma_prime_vmap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
