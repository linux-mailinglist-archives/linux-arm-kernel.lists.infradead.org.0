Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C5D1C86A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJDfNw82u/Kk0Y8LpBOweatsK99pv7krWZssaZAs6dU=; b=YlgFeOGtHLVzS6
	zgziTF+pQaX56hsoE6umQBS3yUGdOgxeIAfRlGfmfADpfDmnyljZKpPnC9sBSw/XOnsmxyVCtV4Ei
	F2Xpk3J4aXU++z7ssSG0m/gQwvJ4cX5L2rm5Ti1V9d798DHzKEpZjl3jwgGeRew/IV+2vFZTxzST5
	EZalw6iUixU7ppDRaqoaV2EZx0indmCJwLGP1CbVnII+7rQFUWi7hZ8u5RJ8fa1EIoGa6DBS+ChwJ
	XnXy/+MUL6nmxUw98Ds110M4Rq/kghiohoQ2E8ofXWCObnIDaNCJ8ff24YRlOjnFHmzjBK+IC8ojZ
	AwyjONybnWzH70YM814w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdil-0002Sl-39; Thu, 07 May 2020 10:25:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdhw-00084W-Nz
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:24:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id z6so1889953plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 03:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B/Mk9PnpQZ4xKWEBXlLMDvhktcZ9bgwGO85pTWBmd1Q=;
 b=Uw9tkn4tmqYAbTMf70CLe39oO9q1CC6aVjLT1Rme6khxLYX4hxUID3ZnvBSZGakv5P
 cGKuKJqk2HPHbQ4P1iQd69NwgL2xHQejKzAHF3MGaRFbXyURliEk1oHrAxQepDxSyXed
 VFbE4tH2UIH74TV9w+cRWY5I37BG/H1vO1EhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B/Mk9PnpQZ4xKWEBXlLMDvhktcZ9bgwGO85pTWBmd1Q=;
 b=SrYP3TAi9gICob/Ydl0taqFqY5Ct0m5Ejv8YLNYm4N+n3zV40gT3Y2sErAwUoXE1fF
 rb8xr9MmoAq5SLmbgWDRVRjxjQwd8+LBYqPkyu59+tQcY/69Un0PS5KgSiuLMpFFvuas
 +ll9/UBCff8yaPdZZTZ1B6Nn8pvNZgt9aOHdSdjRFcGMZbb22q/FC36Styk/U6yOj5nL
 tq2eMkOOk2u0p7nMNP4xBrXnnd04soy+FPQ4TsE20zCHJ6roSYsD+IswB90vzzAmKsFn
 s9X6vwIxTxzv+0ILhgC/cZDSb8zs8DaMlvIFh5+4SB/pBNUjh5f5imYvqUzA1CX+F4Eh
 L8JA==
X-Gm-Message-State: AGi0PuZiy3umNgdD88Dh6rsbT20ObEYC/ijVc/J3dnOGnK8LjsLoU/bm
 5Vlp6dbS6dy/xjPQr6CkTvXqcw==
X-Google-Smtp-Source: APiQypIfdyYf1DVe2NADcLWJNyPuVcmkF60Nyz26uFMfQ6Htik4/hMklktg3MMP3+ePUbdo+ebw1vA==
X-Received: by 2002:a17:90a:b78e:: with SMTP id
 m14mr2742862pjr.114.1588847088130; 
 Thu, 07 May 2020 03:24:48 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id a138sm4514903pfd.32.2020.05.07.03.24.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 03:24:47 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler() errors
 during probe
Date: Thu,  7 May 2020 20:23:46 +1000
Message-Id: <20200507202337.v3.3.Ia8efd7905e2fcfc81f547e27a51f06373624b3da@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200507102345.81849-1-eizan@chromium.org>
References: <20200507102345.81849-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032448_784695_E5C25566 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v3: None
Changes in v2:
- remove unnecessary error handling labels in favor of err_m2m_register

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index 9b24b8d46eb7..17d155219ba2 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -188,8 +188,12 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 	}
 
 	mdp->vpu_dev = vpu_get_plat_device(pdev);
-	vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
-			    VPU_RST_MDP);
+	ret = vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
+				  VPU_RST_MDP);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register reset handler\n");
+		goto err_m2m_register;
+	}
 
 	platform_set_drvdata(pdev, mdp);
 
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
