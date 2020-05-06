Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351CC1C67AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5btWRutC7jvcN+GNLd3Upa3mn4Bq2UbQZ2toQmsO8CU=; b=Cay7LWnit9MBuM
	bq4WVOSRBTGAopl8WJzf5SdV9+8Mwj+ueUJvpPEfNIbMHbtWbweBM2xIwewT2g2o4BChBqMzpcrVK
	fx0P/hEdfx/p2hfsCeDKx2pn+zLiMcqN7Dl02DWE0KGSy07WFFntINq3g44kqz/9QyVBRovvHro2C
	gQdXF0L+T1tWeTqPe2VYy65gjIZs3B7rUS++hfBgABU8aamrYTmlNSxhTcDwhQK14PJQMmDBKtLta
	gPfmaGZ4DlTPHJ3oUxIHhuJnxsIfwc7qbiCQm7CRduaxRNs1D2A94r7IRPMoUb0f2p2jgnMkYBenQ
	R5FZTXzF6CVVoCuAHVsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCxe-0007oj-5s; Wed, 06 May 2020 05:51:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCwv-0007He-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:50:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so461938pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xNX2Jw3bggOqG+5nYPa2uqxysBzOfcRV74MkeaFU514=;
 b=M5y8/s3SulY3lzBKvRMnyiCfcyROkGDnu1LS8AmOMndWRhfVrQGhKS1f75nwyUlj2m
 LN9x9SSQFlx2M59Jjjbiskhq82qGNXgQ7DfVz/16fbK5RjlBzmk+aiEDlZlLafSVsv5o
 rtfjRNWfhaukA4aRZlleZGCroUu8cDGqfkUn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xNX2Jw3bggOqG+5nYPa2uqxysBzOfcRV74MkeaFU514=;
 b=gUSjuhEy5yrt8ueK0vyp1mu59Dfh29aslG/8IoPnKFcPrniDH5qEWAYo1jbHBlPZNE
 oQiVIIx2f4WX/0OCkJEt2x0IQgVSRzfuZh3cVwXSaLvNoM754BlBJuKeWfwKk71+OCms
 FrcKO1LiMEIwDsUbOqi45L5EKfcUTIO8e/g9cRi6AiYmYvePlUFRod1WcsRCHmKdZfED
 tRVH9cLIhk921lliV9UYOxkWQUhOBMB2W16mIKtddyXy9AxJQExhzz2y1HHFoizLHS5n
 iPq++YaDRAj4fxQkD3isLcfORxbMnYB0wWqWT6nJhzLrw28n4BIYFmV00/FgfwI+bx33
 4OLQ==
X-Gm-Message-State: AGi0PubBNacA5/D9nXxbYe3PQZCCoWgt1cAsWgeWSGxPnIwbNkaxTvZv
 nuL09Ykb/1fIwKMNY1DPffKhZw==
X-Google-Smtp-Source: APiQypKlc/nYndVnKIEUfEb5mcot4tPrbEozcvijAAg8qzicqRQLv80bi22dUdsqMQmRh5vI0S6icA==
X-Received: by 2002:a63:7214:: with SMTP id n20mr5863410pgc.437.1588744227993; 
 Tue, 05 May 2020 22:50:27 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id r31sm730629pgl.86.2020.05.05.22.50.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:50:27 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler() errors
 during probe
Date: Wed,  6 May 2020 15:49:18 +1000
Message-Id: <20200506154832.v2.3.Ia8efd7905e2fcfc81f547e27a51f06373624b3da@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200506054920.109738-1-eizan@chromium.org>
References: <20200506054920.109738-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225029_491621_84D27C9D 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

Changes in v1:
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
