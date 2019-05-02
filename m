Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1913119D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2k4KAlE0KwyaxTwPdLRxX5TxDJrth84EBvp6YhnDEW0=; b=SPJyfJnY1SzDlH
	K80RPHBm9Vec96GPRE4XY0vcaGdm46LYgaVCmpty+T/9p8+X3qeGRLu6zt3AikUw2pyWSw/fAnl+N
	y7XHj6sDhqpm+sJDx27zQXVDkSwYOm82wBtpGgbx4/BkyZ1MSpM1bG3C18YKdami460PTHu5H09MJ
	7aqu45nfBz2GOPaB00n3Gt6Vq/79IfZDyJe0Z7qDIX4OS9fBKhq6wRbxIih6XDR2GTdjWdDaInH8h
	HcHfy/bnGuO9dnO4EZAAsiyLJ2PtwR71RebxBWUkgfSQdq9KUjJIdTAS5QShxePXAHoZFeUGj3y3R
	PNrCC4RF9MItm4PBQclw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBVk-0002Jr-B2; Thu, 02 May 2019 13:12:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBVc-0002IN-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:12:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id p16so2575530wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 06:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+eKIBFVCyfU3z9K0Nkrbe4x8CjJi0tFioNqDYhFc5R0=;
 b=dr5NFFsHzVONa3dE3FwJEUNK3jJWutA5uirz+FdNEsOKyW9jtLLjOprjU7P5Dd/0rg
 2eWQ1QAm/Edl/2pyCcl5BwSZvKFykMHnrZlBmf58HKiOVkhrGLrubYLoZlHrnkWRQBgQ
 8CE2/0KNaS4NvFw8Fw3kypj1SKzhH8ilkPjtYzjiUsYZ9GIA08s4+U8kkP3LJGdcFxCc
 DfNYfE6omUGxYetreHAXNTxWjIGfvwdjqaxBmPS9txbdThNiFnKk/Z69050gYJcAIYda
 jWXPINAK5gn7kg4xzcbEHfmz0UWNK61kgKVY03AgBUMFosoIu8AMxw1VRicxiuNfPoUM
 AEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+eKIBFVCyfU3z9K0Nkrbe4x8CjJi0tFioNqDYhFc5R0=;
 b=HKmyRKD1vpnl6EMROiNIVMcPjIkVnCNcmdmo/CFG37rPZLcOf17ELIOYSL5aFurZDl
 giotl33sMbmlv5dpC1RVbOZfNWtnJzT7RehJ+kFKlXt7lemmqyGfA2qIfHvOO3AIAdTc
 CVXdk9nbxkvTJ1Frtk3ZCt1c5Y7vEutdLYrRV5OkMtavV8PRly9ScEFrKZkReS6SBy++
 zDE197eVsbtfSpqfBcmVKJFZV1sHvxhPFcN3pkN+Dm4R409qG8a7wbBS1JWMtPEsUW9U
 FPRD1D1CppCxmOYsg1tXV2W3pajHHAgcuQUjQ42y34l8CcYgnDPWNON77vk+W2KtkqDS
 Ps0g==
X-Gm-Message-State: APjAAAWXY5dED7t53schDiiAzXC72tEhb8yO5CGHFhyLPFquQ6qpwz8v
 MavxnfB8a7fZI7VHxehHLYm+Lw==
X-Google-Smtp-Source: APXvYqzZgK/pMDB9Xf3fEjr0tmm3/b9kba6qmyNpc31/HAcsxLdTuDfW/bsw/tKB5/jGsEYL+pWpdw==
X-Received: by 2002:a7b:c00e:: with SMTP id c14mr2286133wmb.110.1556802737876; 
 Thu, 02 May 2019 06:12:17 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id n6sm8713956wmn.48.2019.05.02.06.12.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 06:12:17 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 matthias.bgg@gmail.com
Subject: [PATCH v2] ASoC: mediatek: mt8516: register ADDA DAI
Date: Thu,  2 May 2019 15:12:14 +0200
Message-Id: <20190502131214.24009-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_061220_944198_4C853689 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabien Parent <fparent@baylibre.com>, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register the ADDA DAI driver into the MT8516 PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

This patch depends on patch serie:
	[PATCH 0/5] ASoC: mediatek: Add basic PCM driver for MT8516

v2:
	* Register ADDA before memif to fix ordering issue.

---
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
index 84fbb5dbbd14..dea9221c67aa 100644
--- a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 
+#include "mt8516-afe-common.h"
 #include "mt8516-afe-regs.h"
 
 #include "../common/mtk-afe-platform-driver.h"
@@ -669,6 +670,7 @@ static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
 
 typedef int (*dai_register_cb)(struct mtk_base_afe *);
 static const dai_register_cb dai_register_cbs[] = {
+	mt8516_dai_adda_register,
 	mt8516_dai_memif_register,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
