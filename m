Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B05B96FE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Mm7/NtgYFnjxNjISNNSmBKno0QtCLKjT+eMpvTpEoc=; b=FKw+0p+bo3ltXtJSE9GC3guadj
	FlA4sDAVrWYmUvizOxIyjwQGde3oNCL0Qd1/+8NyHTbdhlKxVDAon8uTnUJeLu0CaqBv8ENhfXHpk
	YExAAavkxgmmbYNyVb3Cqoq8mqlj0Q/WDQjKchb18ynaKHSzufdNWogRxBAaN3PfAo1dJtE0M9LQ7
	2Bw7vMJdb0fcEg5VyVMg1hWmVKgrWeoDTPwvyUG1tuKBmFFMnB0GsNHq7UNqhhA8TvsXz3OkRxpPf
	9TgjLuNUnuOmzb2wHvoSkJd9XqH1Z5SrHQ/QQHZEr0y00LrUzjpziUr5Gty9Xb/YtVDsBsxax3tEg
	Iq/7r9aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GoG-0004WR-23; Wed, 21 Aug 2019 02:57:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Gns-0004LF-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:56:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so485361pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
 b=aABCInNix2J6e7HF4fvEuYdfPtOj7yi3+jBRArEzJDf4aafZ2Ya4C+W1j2S5Md9TSx
 /yi/W6AgbXxfHF5mD/0/dFnswnFKNhOqDpclsLoqR8lEqTvp4MBGyFbeN8B4y7yp21qb
 MZXqFWO4v3gk1rdrKNogftXfbH4IRIJicTGZZllZJyuFr8Vy8lhtWIdzEkHq8WFS5V/J
 dQbnNm9Tt56q6SL4w9Hiw3pxtObzputeTinFIye4JGdn6LSaffY/LgIQG/2QyttgmpBc
 JzMXdRaGT9iay1Sn/hbgP0GZvVZDBdOXIjl5u1HN8gY3JUTYGnRnnruISYy9oaT4ATkb
 UyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
 b=HglB9/d7a/5R4ZDEBanv3j0fQPPBKvucWVU6EzUwoANSC5HrJ+azVLlLeOYcymFIgs
 1SOxU7Enk7xbX7fp5gXdoULLHR5qndfddB6geY9j1N3h4DnVDINIvFOP75dqcKOHwDV0
 sPRJm1O2+If92uBhSNgQYXg+dfNFkLJkNUvWz+5/aq1JicVIZyZCKyY7mo20gAt8IZ7Y
 WKLGR+qUhFRvxAVgrEHTB14aq8QShrFh9EI5haxjXnYLKxj/9ZPFXYSsTAIbtxiev5Dz
 KtLEwqQmPIgRtnOjLHXhzvgs6nRJdmzxChNwZaPWONTK61pXJRgXW2Oi6Io62YdixPoC
 bq1Q==
X-Gm-Message-State: APjAAAVmvPJuORwyjVev79KdukH/2h9XoVvKbgGOOFijAnB7OuXQcmCA
 7gefoIJRALD51NY3VXeuiIMT
X-Google-Smtp-Source: APXvYqz/D9TK9ocC2hxlw7TCgv5eGRysLPMZA6XeB/qEjTGNGia88h08J6CCNlGAEU6PX2oWTrC8nA==
X-Received: by 2002:a17:902:b588:: with SMTP id
 a8mr19709561pls.15.1566356211322; 
 Tue, 20 Aug 2019 19:56:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:56:50 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 1/7] clk: actions: Fix factor clk struct member access
Date: Wed, 21 Aug 2019 08:26:23 +0530
Message-Id: <20190821025629.15470-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195652_340720_0CACD8A8 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
