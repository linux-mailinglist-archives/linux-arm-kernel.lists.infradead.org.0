Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470B21AE01
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 21:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/p0IgV95bmZjYaftXBqBYvbWJS3ldxmy+3Gc9EX3cI=; b=BZetV0Y5EmfsgE
	MslYBPapahWucr1NnZAcKpGMI5dlubypA7clumG6DKbMJxG0TuxK+38FiuiSnylqKNL025fy+/ZMU
	KZnRLyrqa5djxItV3lTbI5i7PYpVJ2AD9AkpFrZIQJ8PTbdjjAUxFNA6QJHyLRSUCfBi4y0oi6y+l
	npJBNuWsnjm+cHqKY0hKy4DC3hGJkSGLx037nYso30WD+fVgenQG4jh8jpiO2z88ZLY0xYkYAPz+P
	gDGfIT1VDlviALW0cKjC/75KEyg5QboDXLmiK1Ib92pNEn3Hq8ZPgQFh5UQ6Z2rwecBfA3zcL1gdb
	nVcGhhmUeqE1afoogp3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPuNi-0003G3-PE; Sun, 12 May 2019 19:43:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPuNO-0002y5-Cu; Sun, 12 May 2019 19:43:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id f204so6316152wme.0;
 Sun, 12 May 2019 12:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AqfzzZgYh773xcVhaI6uUR4lAMlHwzAkWA/UkOzUZ64=;
 b=D7EZkZWpd252npUWFhFf2WXhLBZPNYbIIOokNB+eEc385EcmLuDkq/0rM76ytoIXDr
 /IK0+sF2f3Kq+kT3hmPV72GWZQcj3u0QMXdzOgIX3XpNA7ZQpALbltmFzMKv4XQiLK2H
 c1U3v4RL7KyYKkQrVi63+MaDyF9d1Fz60n5I45HUiwBAlRQbCJe8QXCmj7UX8GUzoFek
 daRr9vIwh/67yncmj95i022mp8xph+BoaQoYH3oG34oxJkM7tdK9/vnNfZxjwDCBMxJJ
 bhL2X2He7dHlJSZbLupQWgPQx1EHHRGMLuNJZG7HrF/DYnzx36uAHq5E0EnUvPeFyRCe
 e9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AqfzzZgYh773xcVhaI6uUR4lAMlHwzAkWA/UkOzUZ64=;
 b=UTzrI4IZdaxTUeb6XuPn7NhScei4YMLb7KMV+1NT6llNvOShvEzgsqvCajv1WOfSKw
 1bAUWyVTsTA7VC22DzW/cWS2a55SsOPZrgfbX+1FSSPhXa+Qz/XgGIDRzZUHLAadce2A
 9Fdt7iYPVamQ6x/FD8yPM4b5MCWDA/NjybwgQeOqly0/04yMgLVRETHGjTgC2NoHDlKG
 fPztxLpY/W1MU3F/bH34f+bIfzs9S1V1yZ3EUrqh/0V1Bhxh+vE6izW52aomn7nutjyA
 dqOeGlIDnv4nqBmfpYeoUQpajGR/sc7MecRXot6RN19o12a0gEJmjPHmuUiGBe0FwM5O
 pULA==
X-Gm-Message-State: APjAAAUp6tmu2quvaAK4XBUhjRIahRBkso+fC5UeQrDp2MYajWUyWfUk
 XnFc0tCUa2IjwllDKDVhDRk990/px4U=
X-Google-Smtp-Source: APXvYqxst1IMmq0aCd4wGUOWu4F2rwedBjwlTWWdXmF/1nnjuBDeUJsPP7ROf9mWcgMxqv5G7bnQ2g==
X-Received: by 2002:a1c:ba87:: with SMTP id k129mr1518472wmf.132.1557690192455; 
 Sun, 12 May 2019 12:43:12 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C8AD00ECBE9107EA8EB108.dip0.t-ipconnect.de.
 [2003:f1:33c8:ad00:ecbe:9107:ea8e:b108])
 by smtp.googlemail.com with ESMTPSA id r23sm13685178wmh.29.2019.05.12.12.43.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 12:43:11 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, narmstrong@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 1/1] clk: meson: meson8b: fix a typo in the VPU parent names
 array variable
Date: Sun, 12 May 2019 21:43:00 +0200
Message-Id: <20190512194300.7445-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190512194300.7445-1-martin.blumenstingl@googlemail.com>
References: <20190512194300.7445-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_124314_437279_45102758 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variable which holds the parent names for the VPU clocks has a typo
in it. Fix this typo to make the variable naming in the driver
consistent. No functional changes.

Fixes: 41785ce562491d ("clk: meson: meson8b: add the VPU clock trees")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 37cf0f01bb5d..62cd3a7f1f65 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1761,7 +1761,7 @@ static struct clk_regmap meson8m2_gp_pll = {
 	},
 };
 
-static const char * const mmeson8b_vpu_0_1_parent_names[] = {
+static const char * const meson8b_vpu_0_1_parent_names[] = {
 	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7"
 };
 
@@ -1778,8 +1778,8 @@ static struct clk_regmap meson8b_vpu_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = mmeson8b_vpu_0_1_parent_names,
-		.num_parents = ARRAY_SIZE(mmeson8b_vpu_0_1_parent_names),
+		.parent_names = meson8b_vpu_0_1_parent_names,
+		.num_parents = ARRAY_SIZE(meson8b_vpu_0_1_parent_names),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1837,8 +1837,8 @@ static struct clk_regmap meson8b_vpu_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = mmeson8b_vpu_0_1_parent_names,
-		.num_parents = ARRAY_SIZE(mmeson8b_vpu_0_1_parent_names),
+		.parent_names = meson8b_vpu_0_1_parent_names,
+		.num_parents = ARRAY_SIZE(meson8b_vpu_0_1_parent_names),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
