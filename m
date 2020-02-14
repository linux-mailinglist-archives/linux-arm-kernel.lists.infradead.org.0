Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6F415E1B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEquL/YIL+q9qjTkuCoyV3TiH7kvh89FJBRXiiNnoGk=; b=d8lSdvBkYhA4ZU
	iXuy19PiQYdS5EwdelmSbjofQUyfMNYpKXMzGL8h254RhXiAZq9mwfZO+MdmgvicWYPnNp2K8qtPG
	DAD2JRavsEL+mAZVi7GwQ8mDZUWEtBW1BAYy4FugFomlD6JFcIZkHHpCrtwVHfNbxGgpQCJCmtvz7
	AY45p9seEyZ7Ej9wCFZrdES/hOslsRogdR4/Si1SgibLkBMKMydWq6F2prBrQYKd32ijo0wau9359
	sMKyJw+16PuZObAI5C10omLKaVKZd8Np/WnaWu3GFJfLW4DP/L21mrI0meIM5hBxf7fB0utGMdKMT
	zflWkpBfAxE+J48oUCJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dhf-0004Ft-Aw; Fri, 14 Feb 2020 16:20:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dQX-00015C-64; Fri, 14 Feb 2020 16:02:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B980C2082F;
 Fri, 14 Feb 2020 16:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696168;
 bh=LNZd425aiv0ZyvHJC6f+H2IvIXnySvmj0POmQMGzmiw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MoodqutW6eXjNbsQaLHNyAxXySEy1Qlkcpud5eKmCtrt4eQRa4ZxEQPiT80q4cgxB
 y7x2GTh3TW+i0i6P1fn3NXS/itG2KdLeyCGI+hVnoC5ngV+pcPz0luJ/dN/W4zK5nk
 V2RZETq8c3UoxGnVJ+N1h8ozf8XX2HRFB88+jLOQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 043/459] clk: meson: meson8b: make the CCF use the
 glitch-free mali mux
Date: Fri, 14 Feb 2020 10:54:53 -0500
Message-Id: <20200214160149.11681-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080250_459583_529E0FFA 
X-CRM114-Status: GOOD (  13.15  )
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
Cc: Sasha Levin <sashal@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[ Upstream commit 8daeaea99caabe24a0929fac17977ebfb882fa86 ]

The "mali_0" or "mali_1" clock trees should not be updated while the
clock is running. Enforce this by setting CLK_SET_RATE_GATE on the
"mali_0" and "mali_1" gates. This makes the CCF switch to the "mali_1"
tree when "mali_0" is currently active and vice versa, which is exactly
what the vendor driver does when updating the frequency of the mali
clock.

This fixes a potential hang when changing the GPU frequency at runtime.

Fixes: 74e1f2521f16ff ("clk: meson: meson8b: add the GPU clock tree")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/meson/meson8b.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 67e6691e080c1..8856ce476ccfa 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1764,8 +1764,11 @@ static struct clk_regmap meson8b_hdmi_sys = {
 
 /*
  * The MALI IP is clocked by two identical clocks (mali_0 and mali_1)
- * muxed by a glitch-free switch on Meson8b and Meson8m2. Meson8 only
- * has mali_0 and no glitch-free mux.
+ * muxed by a glitch-free switch on Meson8b and Meson8m2. The CCF can
+ * actually manage this glitch-free mux because it does top-to-bottom
+ * updates the each clock tree and switches to the "inactive" one when
+ * CLK_SET_RATE_GATE is set.
+ * Meson8 only has mali_0 and no glitch-free mux.
  */
 static const struct clk_hw *meson8b_mali_0_1_parent_hws[] = {
 	&meson8b_xtal.hw,
@@ -1830,7 +1833,7 @@ static struct clk_regmap meson8b_mali_0 = {
 			&meson8b_mali_0_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1885,7 +1888,7 @@ static struct clk_regmap meson8b_mali_1 = {
 			&meson8b_mali_1_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
