Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A423A2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKRchIlG9GvTozdiaoQZeu0u6nPtKXSy7qyYZOaebkI=; b=BDW2+JltvswF0k
	rn34vAMstfEaPOmz0t8IPW3IGT3Dl4HbcX6+1jge3CUb6CY8vI0BZI6Y3kJxYf5Oe9VSKN2w70HK8
	f8IL+ibr0k7xtkSqpagh/wsmUbpisIqjnZ/bv7BedX6KYc1lvVStrxmeEe7/okP/cGapmFf+pK8r1
	nD0KXm1MMx7Dxgwc0jdBddzaxpr5kEYR8PZkCusCw5Rp4x5VMvjFvBHl/T9Nvbu/7lOWTME/SzR27
	LJTKawe0Gvpyfkb9mCITs2ec17VfNcRNyX7mVVwqAs5gWvHsqG0qSVjOJABFOx5sn3VAI773xFNE0
	1Eki+iyATHX2IyEbv7xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjOj-000410-7m; Mon, 20 May 2019 14:36:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjOP-0003lV-PQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:35:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so91439wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8Tp4igOWpLjFstT7mLomxyhxOJ4hU08I+JLwXX6vyLs=;
 b=JPqUrDoakqnlNXwLx1lJ/9ptBcMPzrsThemzcki3b6ofuygt+rMIhSe5H1Z9bNH8EH
 spSKD5ih854XSYq1hu23Yym7GTbY12olxkhbKtDv1xtJA+OZwcBSh3/1dMJ2WF5Wt7bz
 J7PqqbgIdPa11jK1gePhuUu7dLjcuP6/NMnaPTIBcazTKwf5GC67mptW5xRkZBDrpKth
 QP68/z8WoSfVUSHZ2kWt+Wqos7mjOjg8I1tYR1vSkPGQFLVUhWLGwK+sMqYonZQltBYc
 mlmX3p6qmt9C5eg5Bgqiud7GO5YFflDf8ARKF5FCHdHe+BbunJz6cIMdsSTHyXVlqRDX
 N4Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8Tp4igOWpLjFstT7mLomxyhxOJ4hU08I+JLwXX6vyLs=;
 b=nXJv90pDV8GpI1Y6Ze0lMbS/2USid0J8y7nZVHreiDGJDhUy0yFP3T4GyEVLF8nEze
 6osRmt/hXCyNZsyGpfekhrkpgI+7M2XB8XISkn8vIX/FZFQeoOWxXp650bTV++owYqUc
 7k3IvxN80a/wNm7afKCvdvaFKi70e2Ov3QY3Ssx8VAJquYwwrjGW8l9B+V1QtMD8PLkJ
 NUFVJ6Kju57mdecZbFCkAn93DPVEVpP73udz6EEoYdvjim9t38KEAT6YOpHljrDuIren
 NuonnfBreZNLAyImB9C3PwX6ALJf6AL8CGpjlQGK9+LJSgjfRYu3L60Fad5z8G0g5Gnq
 iatA==
X-Gm-Message-State: APjAAAVt6hCcAVFZS24XDA43DVVGyNcRVMrq2FCXSVCAq8ZZ7+QYmzXr
 97uHRU6Hegy24RsGBs+i23GyTQ==
X-Google-Smtp-Source: APXvYqx5u+oQO4+Xw6KSmmZolOHTKAmznD3CVkpwkb3h7EAzR6mYiwKcj9TbtCtuNa7vGpKGbovjFA==
X-Received: by 2002:a7b:ce83:: with SMTP id q3mr11793629wmj.32.1558362956333; 
 Mon, 20 May 2019 07:35:56 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j13sm14042591wru.78.2019.05.20.07.35.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:35:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com
Subject: [PATCH 1/2] phy: amlogic: phy-meson-gxl-usb2: update with SPDX
 Licence identifier
Date: Mon, 20 May 2019 16:35:50 +0200
Message-Id: <20190520143551.2330-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143551.2330-1-narmstrong@baylibre.com>
References: <20190520143551.2330-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073557_825384_B2D296E4 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson-gxl-usb2.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-gxl-usb2.c b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
index 4cbee412f2b0..c86255f28f1d 100644
--- a/drivers/phy/amlogic/phy-meson-gxl-usb2.c
+++ b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Meson GXL and GXM USB2 PHY driver
  *
  * Copyright (C) 2017 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
