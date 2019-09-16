Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D734B3DF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Mm7/NtgYFnjxNjISNNSmBKno0QtCLKjT+eMpvTpEoc=; b=ku7Ao9QyEq/3xzugdps/d42SbX
	6Ndfk63uAXl6U556EdyDgacZCJlQW/5/n3w7FItkTD1fAJ8GW+0aToZ7gwlZA2ySlATreNySMaTH8
	fJ0GZ5It514c7W3cF1DxlNA1uh47jnuU7ik96HPL04recW7301H4IIELKhxcNPoLIIi0JPyZBqcp+
	swRdR7GtUYAyEaCkuSlGMRD3MFcD33AySdinmsHJhyFL/DwSFqWMTssObynD5Qx/7+a9SSlOhNP7P
	GMtccESR9yuYIAogDz1lIZ9qwhxYkA1NnNslh+GVQ8resch2KrPpKsiXtfQFZv87dsUO8+Vp0DceX
	ZY6ZBAGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tDX-0006xT-GO; Mon, 16 Sep 2019 15:47:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tCp-0006dX-5r
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id x10so230955pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
 b=M5RVRQtcNRNLU3Ce3wJub13vbJguuHeWcsX6869rW9uUNvO3oDGO+dG4akmpsUmnwS
 25PYYsfU3gW6VKNqgZ1lkVtZ6xaOgA7rp1CpRc9TWjzr/nuXjljUOcreI2mbqzeauhzz
 USnKKVodkIcVBGx4qlAdeCd9A4x8ZMPhwmRo5jrJb0F9b3pDX98q88l31hVbaCa2xMbX
 8BFGpiisTg6Crzk14UeBSg6OwTc4CmsWyFtRQgoMJKg7PSdET2OQMWt2e26dsJ/7Sv2Y
 uoYrIwt1W6o1JBINl4aLs1OcGbc0Q0LrcxvUFE09NT/VFnTL/69tctyPGnxzz6oIJT9y
 XhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
 b=VqDuMaHhzPNu+1iYCol7XtP9N1KczJCfZHQbzWFA25kPg9Scnao37xgpMWaHlSOMnD
 nvlF4bNW+XRknWCDv/A4E3jtSTmvvQ0a9qaVgOPl9QiLrpZ5bBUd01XfiNZKwYbdOeKv
 c/kWVI74+XCLdhdDauTRoDcHQ9A26yzUhFaQjv3Js8VRFFEE85qP7OypZHx+WFQV3JCy
 hkYAiwCPxLxTn7LO9+xITqh5HyFUnWia8G9d8jqsc7H7RBODp4JYsMV2S9Bmpqp5nmU6
 lVW8Ve9EynQZ+0gs3+wHkWOJVEEjrS1u6ztnXE8covxseeytsgSxOcEZBC0S3Jb26xMg
 pfqg==
X-Gm-Message-State: APjAAAWAct0y498dzsjbE6n344JKIsl5lrZaQAu/Ur5HoCarDgTHpDmU
 xszFJKp8462+5a5z4xkJvVy2
X-Google-Smtp-Source: APXvYqysfDcCptETjMW/S/qMH4c/coJa64VGrwt2nMp6xw1D34MZvm+EGbIcXKxRSbmamm8V0sqSHw==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr55987727pgc.20.1568648782559; 
 Mon, 16 Sep 2019 08:46:22 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:22 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 1/7] clk: actions: Fix factor clk struct member access
Date: Mon, 16 Sep 2019 21:15:40 +0530
Message-Id: <20190916154546.24982-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084623_282975_B1C62B6E 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

While we are at it, let's rename the "clk_val_best" function to
"owl_clk_val_best" since this is an owl SoCs specific helper.

Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/actions/owl-factor.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/actions/owl-factor.c b/drivers/clk/actions/owl-factor.c
index 317d4a9e112e..f15e2621fa18 100644
--- a/drivers/clk/actions/owl-factor.c
+++ b/drivers/clk/actions/owl-factor.c
@@ -64,11 +64,10 @@ static unsigned int _get_table_val(const struct clk_factor_table *table,
 	return val;
 }
 
-static int clk_val_best(struct clk_hw *hw, unsigned long rate,
+static int owl_clk_val_best(const struct owl_factor_hw *factor_hw,
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
+	val = owl_clk_val_best(factor_hw, &common->hw, rate, parent_rate);
 	_get_table_div_mul(clkt, val, &mul, &div);
 
 	return *parent_rate * mul / div;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
