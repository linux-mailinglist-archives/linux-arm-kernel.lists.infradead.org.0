Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C61C8698
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2f4OKWeHJYeT75mawQPCQsLDCqHkFMWOhVNNONiKKk=; b=d5S941viTEZXSY
	zRdHG2Vc6Ig01QWBScY9bmdwuk6bRRjHxpfDpYDQboJkNwRB691TGyDux8XBhkF/plE5vMeQYY7sU
	/QfnW76bghcyYeBWgkHZ9/QGnoIPM/f3VXMirl41GhinkLNNLthGw4okErmrhrnALmXVmTPqJTqSG
	80NEw1hje3W8SGu0Sdo8OPuTdPUQA9OloLLcl9wMnxXGYqpKzoSrDQ0n/02RKp8ZuIkpNU3f5LJe0
	SJUyoRfHQO40Obq8mpIJnYH5W0ZPleIy7LzjbkPzIkMxusxNihzZshNzLqRlM8rCwg6CNPIAKG39s
	D9VcXLOqcZLOLND/b3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdhw-0007lq-DE; Thu, 07 May 2020 10:24:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdhQ-0007c6-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:24:18 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a7so2436784pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 03:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oo1xnFJoKnJRPCb1k/kpUqpuervQpCi0IylZD35uCtU=;
 b=bFZX//5u1biNAhAdVXKnxlQhgXZg0E2/qIYtejPF3hTyPzdudv+Hhol6yhMhe+pLXR
 qi4+lJDJD7wqFhb1fbU2HQ7nJpMx8oxCrZRVXU3DeP/7FtrWOGlSHLeIoomLn/ZIuZt1
 UiMxHSLmOE2/9gbS6u8Dw1em28VAE3YDr4jx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oo1xnFJoKnJRPCb1k/kpUqpuervQpCi0IylZD35uCtU=;
 b=Q0887AuLbTi9NXGX4u5a9VtTj+INyGvAY6lYj/u6tzdH5fw1VBGifDgXCRCI9ITMR5
 TYNi52zc8FMvVd9Y1iRlc6aHo5mwDeYfATtdg4bAUVw8P2GYRz0Tzc0CIgF4D8CV4fPj
 jAOFE6/PAvdsY4o6ZElp6xAJLDbWaHFxcAiPtGYe7GdUGpWb/e3kMn671fxhxIFTKNtW
 7bQoNknXVzSzClzL6jfx7FsaYa8q4FaI4tsJtoi8K9d/UV3B7WJHDwqZ1V3SWSJw8rF/
 /vt8Mtywyxom7LrHn/35ytkNAQt8/ZzRZnHzD0sCc2W7swVNmKRlNUa4i/PiLLNAVcHw
 IwXg==
X-Gm-Message-State: AGi0PuZChuLy8zzYd9CrCM1oT5OhZml1vxzl8967An2owAXecXOuCV25
 0lfKWxAWFBvlem/gFP7Vgnb9NA==
X-Google-Smtp-Source: APiQypK0Yj463Sz55i7hlJ8Wfduxc6jBmzjwL3+Xbpt0RRZaW6Bed1aBCs2s4nzl9RneQvMrKQc2Lw==
X-Received: by 2002:a17:90a:24e6:: with SMTP id
 i93mr14512370pje.13.1588847055212; 
 Thu, 07 May 2020 03:24:15 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id i185sm4408872pfg.14.2020.05.07.03.24.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 03:24:14 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/5] [media] mtk-mdp: remove mtk_mdp_comp.regs from
 mtk_mdp_comp.h
Date: Thu,  7 May 2020 20:23:42 +1000
Message-Id: <20200507202337.v3.1.I0d52fd84fe481e254a10960b060f32c47ce0d202@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200507102345.81849-1-eizan@chromium.org>
References: <20200507102345.81849-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032416_382261_5455D6C3 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
 Enric Balletbo I Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These fields are not used and can be removed.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
Reviewed-by: Enric Balletbo I Serra <enric.balletbo@collabora.com>
---

Changes in v3: None
Changes in v2: None

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 1 -
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 58abfbdfb82d..c76cd61fb178 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -106,7 +106,6 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
 	comp->dev_node = of_node_get(node);
 	comp->id = comp_id;
 	comp->type = mtk_mdp_matches[comp_id].type;
-	comp->regs = of_iomap(node, 0);
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
 		comp->clk[i] = of_clk_get(node, i);
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
index 998a4b953025..3b83bd6e0d8b 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
@@ -38,7 +38,6 @@ enum mtk_mdp_comp_id {
  * struct mtk_mdp_comp - the MDP's function component data
  * @dev_node:	component device node
  * @clk:	clocks required for component
- * @regs:	Mapped address of component registers.
  * @larb_dev:	SMI device required for component
  * @type:	component type
  * @id:		component ID
@@ -46,7 +45,6 @@ enum mtk_mdp_comp_id {
 struct mtk_mdp_comp {
 	struct device_node	*dev_node;
 	struct clk		*clk[2];
-	void __iomem		*regs;
 	struct device		*larb_dev;
 	enum mtk_mdp_comp_type	type;
 	enum mtk_mdp_comp_id	id;
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
