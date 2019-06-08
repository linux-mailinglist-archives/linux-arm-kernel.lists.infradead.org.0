Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56BE3A1B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zZpIkroFMx/K6OJZcpZroZxM5JKMVwMZqjjMThX+K3M=; b=K6ES6UDjaDMHoWe3xCaEEtxMNc
	sCqqCuQL5aSzMm3mXaZQ0pvdEwEu/MqSWbRxVOL8wv2+cQaVH+dtOY+kSXJDAI67wmODEgBqJl98z
	NW5LQOIYmv3hyPRzbYoW7zRDcaF5gsYy0sQaxE2G+bzj+ndbi36ePDEV7l2yb35me1pmtsjnzqFUr
	ZGrwFhwQp3kDZJiW2K1T4Q8gIjNj0NQoTaRRHY5LPVjS0bc8oseCHGbDHPh1bW6N5RMmjLKVkwTvM
	pTxgDvOx7/x5GFzZKm3Vf8/XKbx93djRYkFWDBT1/xgaT2el0fXiCmamwGIEsYtb3tYC7wvK7mbFy
	J45/KrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhPm-0007XZ-Sm; Sat, 08 Jun 2019 19:54:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhPP-0007S0-6u
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:53:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so2080072pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=83a8MoLcEJiG177cdK9PZRkYinryGGyKPXFycKJosaY=;
 b=WaL7D/rJC7D65LYWj8NEGexxrwXKI6tDAcL/sPB5lIlAPrDTQq/rJPqVXrqxsuQO/5
 s5LYiCX3KAJImUAWhIcUtCQvKmhSvwjvfsYKV7629GpfDEqN+O7gnSyjKWdoEAm3WAoo
 hSns9rM0WAhBvFiH1yqncIKN+kITrQB9h+g1vrzvS37cz/RZ1eRsgTv+fKqt1rPuz0Jl
 yMMNINDh8FHhcVGvkcMBO8aXn9Vdv9+QXPkpUwSaYm68BbAVZfpkJr1/Ok9DnQOfYus1
 k5IdIjOE86acO7FP3iSBBWsTcFl/0JQaD5GBDET/1PkxBFMMRzSbUSDzslILD3iH7iwD
 Sp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=83a8MoLcEJiG177cdK9PZRkYinryGGyKPXFycKJosaY=;
 b=YMZxpoDn3olEioKG5yqESOZHSVqgK+lRwfvZEOQcKvNbcK2F0ZMyQ0g9ppq8TL/3B0
 c53whQY98ddIjDCVCCeP5BNH2bsLGRnWtRcqGP3eN5ZRY/2Ex6HB+b9fxkT/ibXAdI5A
 S+scy6Wktli11AjscWAf99ajx6n+GuaIRsI+X2re6mvzEBETyPwIqiOBBF3GD+9DkXL7
 e9Xv+WwqXLCuIWzimPlKXKVrf91h6TeZjP3JWpASVHH5SIIzRilqULvpU26Hj0uE8YVY
 vehvy/0WaviPGdqmG7qnRzCIl1BQ7yS18/BPjUYy5bKAFm7tDv5zx33aS+1VnXOX6wBi
 N1RA==
X-Gm-Message-State: APjAAAVqyn91zQgTs8cbwnAqSwtvSK17efmC29vTyIS4jBV1kJM9T2xx
 B2tB5W8aGJ96eOWp3ZN4Q1e8
X-Google-Smtp-Source: APXvYqwPmW4XJFkm7kpSpG6iMAz/zpA/DnzV/RQNKln8On0igjyTQEQS6Gz7hejp40XFUOdg8C0OMw==
X-Received: by 2002:a17:902:bc3:: with SMTP id
 61mr4289938plr.324.1560023625983; 
 Sat, 08 Jun 2019 12:53:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:53:45 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 1/7] clk: actions: Fix factor clk struct member access
Date: Sun,  9 Jun 2019 01:23:11 +0530
Message-Id: <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125347_329371_C79713FE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the helper "owl_factor_helper_round_rate" is shared between factor
and composite clocks, using the factor clk specific helper function
like "hw_to_owl_factor" to access its members will create issues when
called from composite clk specific code. Hence, pass the "factor_hw"
struct pointer directly instead of fetching it using factor clk specific
helpers.

This issue has been observed when a composite clock like "sd0_clk" tried
to call "owl_factor_helper_round_rate" resulting in pointer dereferencing
error.

Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/actions/owl-factor.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/actions/owl-factor.c b/drivers/clk/actions/owl-factor.c
index 317d4a9e112e..f419dfdd334f 100644
--- a/drivers/clk/actions/owl-factor.c
+++ b/drivers/clk/actions/owl-factor.c
@@ -64,11 +64,10 @@ static unsigned int _get_table_val(const struct clk_factor_table *table,
 	return val;
 }
 
-static int clk_val_best(struct clk_hw *hw, unsigned long rate,
+static int clk_val_best(const struct owl_factor_hw *factor_hw,
+			struct clk_hw *hw, unsigned long rate,
 			unsigned long *best_parent_rate)
 {
-	struct owl_factor *factor = hw_to_owl_factor(hw);
-	struct owl_factor_hw *factor_hw = &factor->factor_hw;
 	const struct clk_factor_table *clkt = factor_hw->table;
 	unsigned long parent_rate, try_parent_rate, best = 0, cur_rate;
 	unsigned long parent_rate_saved = *best_parent_rate;
@@ -126,7 +125,7 @@ long owl_factor_helper_round_rate(struct owl_clk_common *common,
 	const struct clk_factor_table *clkt = factor_hw->table;
 	unsigned int val, mul = 0, div = 1;
 
-	val = clk_val_best(&common->hw, rate, parent_rate);
+	val = clk_val_best(factor_hw, &common->hw, rate, parent_rate);
 	_get_table_div_mul(clkt, val, &mul, &div);
 
 	return *parent_rate * mul / div;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
