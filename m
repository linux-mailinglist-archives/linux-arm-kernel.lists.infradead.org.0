Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C151C4CDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3ibY82bT4+7CiVIlESF3kCcI+MndaczKJ4ZqO0Dr1s=; b=JIaeQ7fRM2CEdb
	a66EiXO5kHdWp/aM/hxycnzE5cF9JxgfSH8x8DGUR6ygj0xIPoBkL++AzI0dm3ZxKiU7s3g4eHHJg
	KmPHSMVuyar6pkIu8NweDqJUJNlzcUH8lHBockVV4ueJ8jMHkYxjx/Q7SfdPUMjiTUGti5pkncKrU
	kmYl4DLzJV2AeUy1Y6cvHHkRiHci79Xrjvlnejx7SgQbVkjvc2lkijxCmWgUv3ynkCFJ7LCCGUXFm
	v7vhCYH4jdwZETTgT9UcZlZIxiqxYp2oz57FoWFqoUzNsPRDcVTARYmGxaVAl9xukm70zhI080BdM
	cyfitm6xf2Q5CFrtykjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVomT-0003ow-Be; Tue, 05 May 2020 04:02:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVolv-0003U9-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:01:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id a4so510559pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fX+wHjDnbtvEkbbVe2K/ppkZQlF0JTMhhwiYwZiHruM=;
 b=doZmY9XxEuZl1yzo+blKvEuGksayzqeE2OAKNN0mF76DL6R0CrL75vtszNR4kDzPyW
 4GEREd5uYoerxfbJSi4kbGiHtp9dKhMwE3I7zjjEorWnm8Dj/vrkXc1V8tlEWlX3YY9P
 Qb6DJuLF66dcjaD/xB/cOn7IqyTVNpGm/HaVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fX+wHjDnbtvEkbbVe2K/ppkZQlF0JTMhhwiYwZiHruM=;
 b=YSpEhUxbcdkUK+x52z+TlK5aelkms0a/Jet+Z4aC1YkUQy67cZktIUYRHZVnv/GSSD
 6NGVwpKy6xq2C4zdBWwX+DWSeuD3NAsKnA/hoV+zO7QdyEd/ORVnpBzQ6hK/m1hT4pgl
 biwjog5NrRHS1+uEf8wLTJy0ZTy9jJ+DntLNfvxVipjXPir94Z/mW3E2Oqs23zZbBZ9P
 NsElwGAXkeGXaILnvpUOlY8J6glc6qDvYimNROCI4ERqRjNGxGOfgvxqlQNa11bL8o4l
 E0xbDX2M1e0hMyG/vd2l4A1YB9TmFda4mK3UVWD7Z7N+FFHOXOU8td9mZ3aqzaSAQCT7
 o+Kg==
X-Gm-Message-State: AGi0PuaP2sKAApFVJQ/ONL9Rk+9uFmbNCYTTFaYAhX1z9BMYmvQEcSBq
 C6E+E4fIiKIFVO9eFuKR0uoQ1w==
X-Google-Smtp-Source: APiQypKM9NF4PxwZF3k6P93G5Qq80LCDj9yb7AloapK0ymyBsN163/1s0pe5MmUpsS7vgZq1MO+WEw==
X-Received: by 2002:aa7:9683:: with SMTP id f3mr1280844pfk.278.1588651291099; 
 Mon, 04 May 2020 21:01:31 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id s44sm481696pjc.28.2020.05.04.21.01.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:30 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler() errors
 during probe
Date: Tue,  5 May 2020 14:00:46 +1000
Message-Id: <20200505125042.v1.3.Ieebc5dcb6dcc116119a570f14786ba47c9007ec8@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210131_914769_2F190CC5 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 eizan@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index c20ac7681c6f..f974242663dc 100644
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
+		goto err_wdt_reg;
+	}
 
 	platform_set_drvdata(pdev, mdp);
 
@@ -206,6 +210,8 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 
 err_set_max_seg_size:
 
+err_wdt_reg:
+
 err_m2m_register:
 	v4l2_device_unregister(&mdp->v4l2_dev);
 
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
