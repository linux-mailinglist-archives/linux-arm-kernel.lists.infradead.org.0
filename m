Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B9015E2DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnOwg4WktcPQMBc96WIfiO8mCbcDL/pVjT3D9FsXesQ=; b=ZKmMXsUeqGQk4j
	PreAFWrnYaFwHKUJUEd4oIPOYlXJYL7ZFY0Y614AkJCkkn8WBVIKMdTtA3RqhyTFKY4k78L4w08vW
	cmkxt6wYnDLE+2SbbXH3MUjbMGvBayrh68nhjqWt0ZBFkgD1I0IKrRQqETkHRovOuzK9vOTuhzFot
	TIe9FXWm6TtM+8/ue3zXw6MHs8mNUasWsG4uRFlG9u9oiYiat4rCfIDp/9Uw0KFaMd2+5xqKbeqt1
	Ja0pbzLa7qp7qs7KCD3uT+9Dzshv6UKM9uketybrF7TLF0N3sTK7n3MPJxt/aVXLnEUSuFfqDhAjT
	R2yqn3VRQabNirZbd7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dmW-0001RA-Bp; Fri, 14 Feb 2020 16:25:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dTC-0005MB-EU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:05:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEA0C217F4;
 Fri, 14 Feb 2020 16:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696333;
 bh=D6q+W0uw71RZQXApkieYo4qW7HwpywQhRGI3KCCb+3o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uz9II/afRIVo1edRhrdnV5IyYU95iziYZ9Rqf3d7MHTbceiLp6H6dvE9HR0h8ykLb
 lhnS9o51TKz2DuoDogppBjobMvHPN+abyGBiDL6zMyjmNecUzFDyIPwXCXDmFpgdjq
 DwjERsYrBF6T4FZ2uCoQJIttOgeEKa7NT1rZDXIM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 171/459] clk: imx: Add correct failure handling
 for clk based helpers
Date: Fri, 14 Feb 2020 10:57:01 -0500
Message-Id: <20200214160149.11681-171-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080534_596754_307C1765 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Abel Vesa <abel.vesa@nxp.com>

[ Upstream commit f60f1c62c3188fcca945581e35e3440ee3fdcc95 ]

If the clk_hw based API returns an error, trying to return the clk from
hw will end up in a NULL pointer dereference. So adding the to_clk
checker and using it inside every clk based macro helper we handle that
case correctly.

This to_clk is also temporary and will go away along with the clk based
macro helpers once there is no user that need them anymore.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/imx/clk.h | 37 ++++++++++++++++++++++---------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f7a389a50401a..6fe64ff8ffa12 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -51,48 +51,48 @@ struct imx_pll14xx_clk {
 };
 
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
-	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
+	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
 
 #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
 				cgr_val, clk_gate_flags, lock, share_count) \
-	clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
-				cgr_val, clk_gate_flags, lock, share_count)->clk
+	to_clk(clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
+				cgr_val, clk_gate_flags, lock, share_count))
 
 #define imx_clk_pllv3(type, name, parent_name, base, div_mask) \
-	imx_clk_hw_pllv3(type, name, parent_name, base, div_mask)->clk
+	to_clk(imx_clk_hw_pllv3(type, name, parent_name, base, div_mask))
 
 #define imx_clk_pfd(name, parent_name, reg, idx) \
-	imx_clk_hw_pfd(name, parent_name, reg, idx)->clk
+	to_clk(imx_clk_hw_pfd(name, parent_name, reg, idx))
 
 #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
-	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
+	to_clk(imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask))
 
 #define imx_clk_fixed_factor(name, parent, mult, div) \
-	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
+	to_clk(imx_clk_hw_fixed_factor(name, parent, mult, div))
 
 #define imx_clk_divider2(name, parent, reg, shift, width) \
-	imx_clk_hw_divider2(name, parent, reg, shift, width)->clk
+	to_clk(imx_clk_hw_divider2(name, parent, reg, shift, width))
 
 #define imx_clk_gate_dis(name, parent, reg, shift) \
-	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate_dis(name, parent, reg, shift))
 
 #define imx_clk_gate2(name, parent, reg, shift) \
-	imx_clk_hw_gate2(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate2(name, parent, reg, shift))
 
 #define imx_clk_gate2_flags(name, parent, reg, shift, flags) \
-	imx_clk_hw_gate2_flags(name, parent, reg, shift, flags)->clk
+	to_clk(imx_clk_hw_gate2_flags(name, parent, reg, shift, flags))
 
 #define imx_clk_gate2_shared2(name, parent, reg, shift, share_count) \
-	imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count)->clk
+	to_clk(imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count))
 
 #define imx_clk_gate3(name, parent, reg, shift) \
-	imx_clk_hw_gate3(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate3(name, parent, reg, shift))
 
 #define imx_clk_gate4(name, parent, reg, shift) \
-	imx_clk_hw_gate4(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate4(name, parent, reg, shift))
 
 #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
-	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
+	to_clk(imx_clk_hw_mux(name, reg, shift, width, parents, num_parents))
 
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
@@ -195,6 +195,13 @@ struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
 			      u8 shift, u8 width, const char * const *parents,
 			      int num_parents, void (*fixup)(u32 *val));
 
+static inline struct clk *to_clk(struct clk_hw *hw)
+{
+	if (IS_ERR_OR_NULL(hw))
+		return ERR_CAST(hw);
+	return hw->clk;
+}
+
 static inline struct clk *imx_clk_fixed(const char *name, int rate)
 {
 	return clk_register_fixed_rate(NULL, name, NULL, 0, rate);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
