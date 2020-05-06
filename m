Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8311C67A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+d0BYyvJkhKkNrBHZIIKEDppu4GP4KT7qz2gAsV9EI=; b=mFnxfNb2uYq3hu
	GbwXyh20fy6CwrNlI1vJ44A/7K8pYxwojHRGSV6jgGtUr1eLpKuQRDmxNC2BgF2yRWKbP0Z4Gy7Kz
	ferWogwdqWeuKDicYH3LUu/veBrUvbg5MQd/EW7QQbTekqfxJCpLqEk4FdnISdBG3IKt+LQ0EVnue
	7cyDcBZ81OxrzQPw3Zq1oHBKYBcTsCTT3SyoRoRJjT1XFNSE+NB5ef0wh3SgzEUJhauixpWQJ3GAy
	MFN76lKZL/dDvKiE9YIsvJhwgel9/Ga/PCysY/+AfHutMXxWZSDjXxVzav5Sgqv44h0FGwNaBLEVs
	d7Bsj5///+YcXedBrqFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCx9-0007Fc-GL; Wed, 06 May 2020 05:50:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCwg-0006fc-9t
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:50:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id w65so447849pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ldWprC6/gJRy30f4qI0sd87+jEX+5JVD2qRmLKUKSuY=;
 b=kRWBWqQa6ecU6mj/tDkQ5CyX0eu1M74l2wFd/sa8roAbVsA16hSvJ0poORwNmLvTWq
 uUnZcYIowQQ867FiKUZFFwcagHQ8pwFgab6F8bfGIY0UHVI/XB5+RtdjqE+5r7ujhQYu
 t/DgPgoT6wGvpRRdCG/kerbjz/d5Ojyd45T24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ldWprC6/gJRy30f4qI0sd87+jEX+5JVD2qRmLKUKSuY=;
 b=LJltM1r7GX1nFg8Dh4sALgslzD3nO4BEwtwugWxOAD4PuDh5ycqFh1SNL4wxa4W4Gd
 xjWeOchrkQTB67nbzwuM9k8HRr4kTCGlHQx9KBsjNgns2FEVEVlwB+e815RSejnKo7aq
 1xWkY1bHxaOsgkwYKeJh6qAiMLlM1kPP3KBytx8xB6N6N65AFviRxn7bbZWRvYQ+E6YG
 qMR5dlo1RKxDIK5QLQ+0MFjELzLqQJU7N+QgXieoa74ez/KwlVN5ovWVcDFDiLg0lSxc
 Q+EfOxHQ7g1CelhnzX4w9HXFvBoDMVNRp20g0dg3hraW4p+vc8FQC4nJSLMnVK/j36ev
 KPOw==
X-Gm-Message-State: AGi0PuZcD/9qUj2XIj9N9i2sg3b2V7OCWx50PKqu5N/sZNtOO7M/5JDn
 Ba9KzJloCfM3/PTqVCxWaDmKzA==
X-Google-Smtp-Source: APiQypLBf6Z7OsDBx417Ig2iNo0B8it48czxeprZK9XxePTpiPqDkOB4YpcOD4sdhh224rDHgW0Hsg==
X-Received: by 2002:aa7:9a43:: with SMTP id x3mr6662861pfj.266.1588744213491; 
 Tue, 05 May 2020 22:50:13 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id z13sm3734853pjz.42.2020.05.05.22.50.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:50:13 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/5] [media] mtk-mdp: remove mtk_mdp_comp.regs from
 mtk_mdp_comp.h
Date: Wed,  6 May 2020 15:49:16 +1000
Message-Id: <20200506154832.v2.1.I0d52fd84fe481e254a10960b060f32c47ce0d202@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200506054920.109738-1-eizan@chromium.org>
References: <20200506054920.109738-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225014_408480_AA2B30A4 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 Matthias Brugger <matthias.bgg@gmail.com>,
 Enric Balletbo I Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These fields are not used and can be removed.

Signed-off-by: eizan@chromium.org
Reviewed-by: Enric Balletbo I Serra <enric.balletbo@collabora.com>
Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

Changes in v1: None

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
