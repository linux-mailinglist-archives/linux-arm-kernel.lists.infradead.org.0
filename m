Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C6A1C4CD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNvRpgLhkRFycQEvj+5NkBHL33P9L/3O6y7vtKLzqTY=; b=bDWmzivnKCy/Du
	bkb+LnBB7/4HDcNp5msn2C54+mnXgefsnikG6kloq89mTaHorBlgYHZ3vneh08NQnE5w8QyfTmK7z
	kdPscjvwQY9NTmxpIh0J9SRpa+ui4CfwzTdqPwYCz2LudNmYaF52SwzMP5xafCARzFLdyCMHuagvv
	2OBBWxz2xE2BQrpfirE/Y/dJgv/+luuZE9VigsgNYo8A/7i0pRgs4ktUmhzuGxpf5O4D208w+m3zP
	KNwmgunCl2YZfNSWVpT284vxGWYsSpu3Wz2X2aFs8u06Cg+PmxGPUitSvkip8avkqWJr4NG3EhB4o
	Q8G1nkTKZMMwT8WvwDGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVolt-0003Dn-LB; Tue, 05 May 2020 04:01:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVole-0003B9-AL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:01:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id u22so254605plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DcuOwTL7vWeGU4BHEEgCAhZYtrZvgsB0gLbKKMhZqVM=;
 b=GiPNnuzUK9FnG/VS1XegNdexL4Voi0zdwNKKzBwte2k3acVUCL9EDxBGjFfpHnwGM9
 U3HUEPcRukJqgs/g4K3X1ytfDAtPMZ+zsuhuv2WLphAXSTkov9EC7OsdRqoHK/Q3bYwr
 mwEsCzhKWmouicpjYsefvdkcrfumYNZx1glZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DcuOwTL7vWeGU4BHEEgCAhZYtrZvgsB0gLbKKMhZqVM=;
 b=rkuCWzTFtyK/ZqZ2x8MjdwfJ1r5vVsDGaTdyqPBA/4X/a/XEf7DUu4wfZmPqkfhzyp
 dnU2/I8NFZo7L175C/LpGOWWMRucwBPG7nYNgg4nKyrGBbI/oz4JkGc5HesagBZXfP6K
 JjdK6WLUn9vFUGDqNoo4kjSZfo2lu4DPRYDaIxNfumXlDAz/+1TaKcpGmHQ3N8KphkDv
 Ndvc6Nj0I8YOzczvOjccmJ0dN8ysmPXKGK390e/BefoT1RdFUzlCJIQYNswNqetOnXyU
 H68cpBguifizJaVNKzFOCb97cbhn5DQ3YZk7T5QfpOKU3axxnuF4m+WyaMS/iVLvdilC
 o6NQ==
X-Gm-Message-State: AGi0PuZx1hvlqE/CYglAPGEaloEbH5K/qae4Rxtx01F9x8bp0nyv6zxA
 0vrAYYrWqTEFO4DkkGGd0Dv87A==
X-Google-Smtp-Source: APiQypL9b1gOcDXoI9Aau8wQwRN9YSmxnUKqOC75g2zmvbguz1b03VlXqH1TYxFDmN7LQ4AbJ86ZJw==
X-Received: by 2002:a17:90a:9f8a:: with SMTP id
 o10mr489319pjp.118.1588651272798; 
 Mon, 04 May 2020 21:01:12 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id c10sm629631pfm.50.2020.05.04.21.01.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:12 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/5] [media] mtk-mdp: remove mtk_mdp_comp.regs from
 mtk_mdp_comp.h
Date: Tue,  5 May 2020 14:00:44 +1000
Message-Id: <20200505125042.v1.1.If0cdd88c5399a38cff7163298cc8794f8c40a401@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210114_368632_B4F0EA4F 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

These fields are not used and can be removed.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 1 -
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 14991685adb7..facc6104b91f 100644
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
