Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CE51AE4F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVKQnRkWzlx1rWAADHcRVODb0RpschkSHuB4XZXhbhI=; b=nT1SnImL2RBxwY
	HyeYFtWd8u3lAZO+0jwMg7n22HD/w1nM8gDoEzPZRv2pNH9cOEKuEL9gMJEkkdlRCSpJvPaWRg+KS
	fCNJB6eNEEgF2mFDvi3oKrt4nm14MpqyIPF/Tex7VqOUX1vh9iA4x/2Hjm4xxbm88CwuZZu9Dfpm4
	iRQyLmULSMW6S9V+zlZhKhe+Mn5RLAEXpTnfeWbwvF0vgGBe1+YgZTgVJo5tjaQmOD4ezV8xRdygU
	idnrFiSXIRUgdSJkledQo+XAqGsFLb5GqFeT9TudwNki0cMK0lrcFqAowSy9IzKPGJdgQP2BIonQ7
	ehq6EgA1YXmf6rG5Nq7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVwO-0007G8-FT; Fri, 17 Apr 2020 18:42:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVvp-0006uu-Bj; Fri, 17 Apr 2020 18:41:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so4074192wmh.0;
 Fri, 17 Apr 2020 11:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pDfj/QraDSKRnuL+EP//h6wcVnH2S8rr57iQRcR8OO4=;
 b=tR8/oPjB9/ARC6Hww1D9hRyK/54LWHuBJ+pEdpKCepWwuReRyO2Nuab4w0rvaaHqK4
 u8layFvzbJh1hpiDg2tCv5gBb6ylIeBOmfJM5ixjUs+Jro8434qaruah3qBH8byFQcva
 Z8U2c/Fx3YrJu7x5fA58+yphQvt4/frOW6854zyDxZvbSvcu0aqEFeoUQMTTvSJT3jOm
 l+zq2hQBC94+pkeNQrCTKmRE4lPv1e3iTsWVlXmy4FwnDdPY65zHBIEQt12kJRRiCN7F
 0JAW3rLLWtskqYGDRpKtnZdseu5z5rLUSFUXpmvaxYbIc/w1yLBPrFcWTbeDsTCRw30i
 Ui4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pDfj/QraDSKRnuL+EP//h6wcVnH2S8rr57iQRcR8OO4=;
 b=CB2z0UbvtKBlW7sl0dx3w3pWcgUf99WRuLbt52lW6e28FAckXpe44R36x8EzMr89Js
 eoRcQcd/BrERqElXcrFGkkuJLSje5Y1OYA4Dpd96Bl/GI3ZPRBHuZJ4NPJ1/Y9jwNpDg
 +KHbnXC0t+OU2Pn2+PzpHJ2iWzlFowYo2NcrXQsq5C9nRS/X7inK25VGpFslH1Ftzhc0
 hSQg4HSvx9AEEZDtT0EdzOseclHpzXfLlMC26i4QhlS1Y65fI3N7Lj/YcFXHuHh9e6iT
 QA5Jom04Yukvj5T7cp5jUZwEt0zVGvLn9/rYVq8Rh21eb8kcMjXGQoppzxSOFOqurFf2
 svYA==
X-Gm-Message-State: AGi0PuYgSvAjBdJjdbAxu4rJllPCWxUE97vEa/h+bMZz2nMqHuJoTZ0u
 BarkA//FiPsAQIvXQbljrsg=
X-Google-Smtp-Source: APiQypK5zOAKZQ5Jv4qR6V0MqyvU1fbrwrOUGQZj8hr390Y8FhwQ0Ia7fSUa6KYL6mXnV95wrrnNkQ==
X-Received: by 2002:a7b:c20f:: with SMTP id x15mr4506759wmi.2.1587148900114;
 Fri, 17 Apr 2020 11:41:40 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c17sm33237391wrp.28.2020.04.17.11.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:41:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v2 1/4] clk: meson: meson8b: Fix the first parent of
 vid_pll_in_sel
Date: Fri, 17 Apr 2020 20:41:24 +0200
Message-Id: <20200417184127.1319871-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
References: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_114141_433312_7CBB2C11 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
 drivers/clk/meson/meson8b.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 7c55c695cbae..90d284ffc780 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1077,7 +1077,7 @@ static struct clk_regmap meson8b_vid_pll_in_sel = {
 		 * Meson8m2: vid2_pll
 		 */
 		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_hdmi_pll_dco.hw
+			&meson8b_hdmi_pll_lvds_out.hw
 		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
