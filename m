Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CB11FDFDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDlIHEkyl3n1FoUF+Toqaf9dO0w7JHZVu62KYwi+O38=; b=ZuQ5uSaGRjrnut
	iTuav0PSHPYS/V4gj5mqpYyRbgwBJVbMpZbHO7jTIXevB/enBuf8svYgcwHX+dIYF3R9FmfZyCKV2
	ytCACnlP6Qkn/Barn1mkvtrtq8z2HdRIPC/xZj9INH/WaMOohrLGjW7e30V0ErEk+36Q/wZi+zoCH
	JinDtMNqkOeM/8c4UqR7T6R6z4chHFyw+iTx6/XFLf8+9Bzql0zMfYJqQTOhU1Q1qy3obDVJfBrwn
	AivY5z9x4E1FSRYtZvJ9dyAkop2UKqRhK5b9WKtlsVt8eUMdCEgQsCIRG35wUVjarmeNG+U/QRfYZ
	rbRVvfV5i43Q5dFecFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljbF-0008Ae-Vo; Thu, 18 Jun 2020 01:44:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljCi-0000pS-Gb; Thu, 18 Jun 2020 01:18:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2010E21D82;
 Thu, 18 Jun 2020 01:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443136;
 bh=Zemdb6Gh2fXWhmsy+EqLLEiMhrL7ra6MUS3oNMd/tFg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wW9R581mLc0DMX2tpetIRPlyU+oOJChb4KY0JP8o34n7le3BOUPpzAZzcVjFg0BB2
 3pyDyU/SLIlvXyazAgRRgmbbrJCbnw07GPHB/8898g4ae/Xrh+EEmxZmLNkJZfx4C9
 UlpQo0L3G23CCQfjVtBhR4y8frqseGE7fF8aLCLk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 107/266] clk: meson: meson8b: Fix the first parent
 of vid_pll_in_sel
Date: Wed, 17 Jun 2020 21:13:52 -0400
Message-Id: <20200618011631.604574-107-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181856_610624_E25AD4D1 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[ Upstream commit da1978ac3d6cf278dedf5edbf350445a0fff2f08 ]

Use hdmi_pll_lvds_out as parent of the vid_pll_in_sel clock. It's not
easy to see that the vendor kernel does the same, but it actually does.
meson_clk_pll_ops in mainline still cannot fully recalculate all rates
from the HDMI PLL registers because some register bits (at the time of
writing it's unknown which bits are used for this) double the HDMI PLL
output rate (compared to simply considering M, N and FRAC) for some (but
not all) PLL settings.

Update the vid_pll_in_sel parent so our clock calculation works for
simple clock settings like the CVBS output (where no rate doubling is
going on). The PLL ops need to be fixed later on for more complex clock
settings (all HDMI rates).

Fixes: 6cb57c678bb70 ("clk: meson: meson8b: add the read-only video clock trees")
Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Link: https://lore.kernel.org/r/20200417184127.1319871-2-martin.blumenstingl@googlemail.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/meson/meson8b.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 8856ce476ccf..ab0b56daec54 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1071,7 +1071,7 @@ static struct clk_regmap meson8b_vid_pll_in_sel = {
 		 * Meson8m2: vid2_pll
 		 */
 		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_hdmi_pll_dco.hw
+			&meson8b_hdmi_pll_lvds_out.hw
 		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
