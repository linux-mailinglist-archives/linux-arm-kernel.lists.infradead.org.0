Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4725B1A7180
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 05:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjYydDLvOn6aoXUUvlNnF249n1y0xzgkhQh1cDePW40=; b=XIqcQ23K4S6bRZ
	WNgMyaaOL0t8BxMBb5sNpgX/T9Ro1H+YNY+oYToVWjr+T+/6G+kfgWM5wdNfi4PcAFoU43PinV3c9
	HQva+9mGyPZ5r2cNg3GCgG+mSN0jqm5qfhtPmV8exxCBuxrJVU9WzrvbKNIFQci1C+DH1rPrcfvHH
	YPveUuAqCD84cnrpEueUPIcDV1CKnnWeJp4Oe+G3Htxdl29lC/wGl3w/Lj6iGe5lKRFf7g+MxaVPS
	9AY+RW2eF2uco5Es6BcdJndVz45K+qWpQKH+Kd9+BsX5w5BrCQqXrIxaRD3CE+xpl7zqx/tZA1rvd
	krD/DuZAA4sS37lUzL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBwS-0000Cu-EF; Tue, 14 Apr 2020 03:08:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBw3-0008R9-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 03:08:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id w11so5377580pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 20:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5zRLvY/lFyVA8CmcHxoztfhLeB6Hcp8Rb9myeLFGE2Y=;
 b=n2G/G4BdsXylPAXJFcQRTVHOuqsJKdpWbXtgpE0vRfTZ6zqn5UOIvHQK/E6B09RbBb
 LDa0XYcYzYD5v7gjcGLOmaVvkxWAgoIi8UKyC9Xpli+XMHphDtBdltPVBndKpUx5BNVR
 iPSvizo2wr2JHDiXX3MwqKvyQJlQ25Ua8hL7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5zRLvY/lFyVA8CmcHxoztfhLeB6Hcp8Rb9myeLFGE2Y=;
 b=RjQJ6FMVQVlIksz0l6zv8XKUbfkyTJkh8qbxwAILI1R8J5Cau5kjuUy93Dfvg/fZ8J
 32as9ILAOSNPoEpB9fRL3yvNZtW9Ar9lcHc1kwyOnF1o60biJvjCtMEiRLdHKqA1aI2W
 yLPAVAgSYkYa0HmY7DsramK15QE6fLFAEwUcfjT3FQ5/GD3dUmG50FMYWbgfREnX5Q2t
 o1xLpF+mDOJsIFEyACZMRw8nnmFYuh1dN5NP3jy98Jxz78CysbC14EfhP0PNA+RuXe2K
 7027y6b6DSvQqWG0cuqn3siUAU9eFY1uf9xxURCrYlzb5LtbxDjG9yExlk1gQeN3YxCo
 Zhvg==
X-Gm-Message-State: AGi0PuZ56VArQneaOu0OXoynpW1SmyAvHKHa//1b3nsz2qMjhbZditFD
 kYzuQConSCCddsEhbttJ73X2bHG5jiQ=
X-Google-Smtp-Source: APiQypLDqSi+uJwrfXUjYacymxQYaq/+/Ey0TiNm/1+jCiQfoIEMLFJm77pkr/oXOdsSGluRuYv5UA==
X-Received: by 2002:a62:1a4e:: with SMTP id a75mr8921678pfa.235.1586833706151; 
 Mon, 13 Apr 2020 20:08:26 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id z23sm3610897pfr.136.2020.04.13.20.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 20:08:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] media: mtk-mdp: Use correct aliases name
Date: Tue, 14 Apr 2020 11:08:15 +0800
Message-Id: <20200414030815.192104-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
In-Reply-To: <20200414030815.192104-1-hsinyi@chromium.org>
References: <20200414030815.192104-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200827_654657_B944CB81 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aliases property name must include only lowercase and '-'. Fix in dts
and driver.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 14991685adb7..58abfbdfb82d 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -15,10 +15,10 @@
 
 
 static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
-	"mdp_rdma",
-	"mdp_rsz",
-	"mdp_wdma",
-	"mdp_wrot",
+	"mdp-rdma",
+	"mdp-rsz",
+	"mdp-wdma",
+	"mdp-wrot",
 };
 
 struct mtk_mdp_comp_match {
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
