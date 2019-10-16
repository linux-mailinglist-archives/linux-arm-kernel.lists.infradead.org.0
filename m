Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEB5D91D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pY/YNzLKoOXAyu9s34ji8aEgUE5k20z6XvezDYDiOw=; b=VBddSGa2venPjF
	RXA9IJ/GXdruRHOcyoBm/+6jG7IzecNb2PUthGCfRs0wX24ZMBoQmKVB/8mSksVA032QGxWYIhx+a
	e2wKJgaUNMFf9v2DNdMIp4y/KKZdmeFvv7+1SoaufEmU+FeJTZAqU6DQX7hHKbKJK5rR/pna5II5Z
	/Z9U+YPbf0l3zbzPex2tYhYP8OqSVXpCyVpsuuYq4MHTMhVGahTs1vSvPs/Ag5mfXLKGvEl/8dWqf
	wRpsm6hl1mCc0ZOBRhxroJToKk2P5McGisF2drk0g+NWCGDg3yMe7+aiuJK6DTG0j9P9XuIAw9BJY
	0U6ioRKKFz2HJj70XdAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiuE-0004NA-Um; Wed, 16 Oct 2019 12:59:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKitj-0004AB-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so27983442wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=abGc2CSWjTlOkZ/qOD8jVoBxXH6yqwawEWK9EHJHevc=;
 b=qk4PanY+Zdp8HqSblcgOtxexMTnZ9eziJPAHTePPRv/ZCz2RLkCdgAyc/p6coscr/7
 3f1LRGqmyx07u02EP0X2nT76Z8/MKZ96GL86nbHzGSeVMme+6/54zFb27EgIsgCtPQ3B
 6O7mrsTo3w0pwvke9h3y6BDZ5UGsc1Pj+QJ2VQ7NgvdkPg4wd2+ubx95/6+KSwBk6OhV
 gs5GG/wiAgcOvM5GRakN1xOezl/SuMsW3wwZJSlNn+wPUkd72YdS7rYof6vOe62uzR5a
 LGT302bWsnWbLVCmaYceR/X35nlddv6ACILECSN7/PI82S5sw9NYj+y7IAmaR+6kOY3r
 P+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=abGc2CSWjTlOkZ/qOD8jVoBxXH6yqwawEWK9EHJHevc=;
 b=unZ9S18UOX6L/sJ+jb4r2wyPo0HL03/29bdNF7OUKlBDOK5OwIEUvkW8t0H1/eMo/N
 u+SacNKcKxaUVIn7MsL5Yo94tNnrSkjPkZyOcU4rea7aSEWNBlSrt9Q7TG+9OJ4QX2kx
 U+qRpPkTdzbgvs+zpwfrT4DCaCKWzalU6N63b2pjBPDHVrvr/iCaHh+lXWSn9TvJYSy7
 w/qgAJqOAQigaSsxB2yEk3bkXGkK44qoq06nDSvs9N80wWkOANUNVs8pol6HvyDNxcAb
 CV7JRIp9N7OFhG5Dir1bDu6aL8onqyig3N0RU6IgvlJXnenhZH3ZTuslGy//Uocmwnn9
 v1Gw==
X-Gm-Message-State: APjAAAWoL6q8eufnMwrxlI1l9QhLq0+QWRPzUzAfK6TONX9IB5QAZ/ap
 BcdOC7RnQEVdJR4+SYQ8p5k=
X-Google-Smtp-Source: APXvYqwK61+ZWts0PsXQ9pWHrCrawQg5bZT77gk8e1PC8UhIo+wMl/2EQpDF4mm2cguue2c2hRK7EA==
X-Received: by 2002:adf:dc42:: with SMTP id m2mr2753239wrj.314.1571230764008; 
 Wed, 16 Oct 2019 05:59:24 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id e9sm8010855wme.3.2019.10.16.05.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 1/5] clk: tegra: Remove last remains of TEGRA210_CLK_SOR1_SRC
Date: Wed, 16 Oct 2019 14:59:15 +0200
Message-Id: <20191016125919.1773898-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016125919.1773898-1-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055927_687229_4A079F62 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Later SoC generations implement this clock as SOR1_OUT. For consistency,
the Tegra210 implementation was adapted to match the same name in commit
4d1dc4018573 ("dt-bindings: clock: tegra: Add sor1_out clock").

Clean up the remaining pieces by adopting the new name for the internal
identifiers and remove the old alias. Note that since both SOR1_SRC and
SOR1_OUT were referring to the same device tree clock ID, this does not
break device tree ABI.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-id.h               | 2 +-
 drivers/clk/tegra/clk-tegra210.c         | 2 +-
 include/dt-bindings/clock/tegra210-car.h | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/tegra/clk-id.h b/drivers/clk/tegra/clk-id.h
index de466b4446da..ae02885c9475 100644
--- a/drivers/clk/tegra/clk-id.h
+++ b/drivers/clk/tegra/clk-id.h
@@ -238,7 +238,7 @@ enum clk_id {
 	tegra_clk_sor0,
 	tegra_clk_sor0_lvds,
 	tegra_clk_sor1,
-	tegra_clk_sor1_src,
+	tegra_clk_sor1_out,
 	tegra_clk_spdif,
 	tegra_clk_spdif_2x,
 	tegra_clk_spdif_in,
diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index df172d5772d7..019287df6c12 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -2353,7 +2353,7 @@ static struct tegra_clk tegra210_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_sor0] = { .dt_id = TEGRA210_CLK_SOR0, .present = true },
 	[tegra_clk_sor0_lvds] = { .dt_id = TEGRA210_CLK_SOR0_LVDS, .present = true },
 	[tegra_clk_sor1] = { .dt_id = TEGRA210_CLK_SOR1, .present = true },
-	[tegra_clk_sor1_src] = { .dt_id = TEGRA210_CLK_SOR1_SRC, .present = true },
+	[tegra_clk_sor1_out] = { .dt_id = TEGRA210_CLK_SOR1_OUT, .present = true },
 	[tegra_clk_gpu] = { .dt_id = TEGRA210_CLK_GPU, .present = true },
 	[tegra_clk_pll_g_ref] = { .dt_id = TEGRA210_CLK_PLL_G_REF, .present = true, },
 	[tegra_clk_uartb_8] = { .dt_id = TEGRA210_CLK_UARTB, .present = true },
diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
index 6b77e721f6b1..b43b9e84e62e 100644
--- a/include/dt-bindings/clock/tegra210-car.h
+++ b/include/dt-bindings/clock/tegra210-car.h
@@ -309,7 +309,6 @@
 #define TEGRA210_CLK_CLK_OUT_3 279
 #define TEGRA210_CLK_BLINK 280
 /* 281 */
-#define TEGRA210_CLK_SOR1_SRC 282
 #define TEGRA210_CLK_SOR1_OUT 282
 /* 283 */
 #define TEGRA210_CLK_XUSB_HOST_SRC 284
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
