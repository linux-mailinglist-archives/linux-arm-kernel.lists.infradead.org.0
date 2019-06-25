Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AA955518
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTI7nfTVjy1D4XrZIscwq6k3GfdoFgkuOqiJzprNEDk=; b=EIAvyuuruQOXft
	0V0zEIvmuntsvVGGVej4Y3t5ifJjdIwMfC9vJ0QtLOIM000f7e60lik6S+WtlAfKC3ts7v48kymA5
	STqqmjS88Hg6YRKAmqcfOwDn8Z3uE06GQVTpslSAKQjzUoUaoMPiIdDzatQWUheM/akOSJdy2Tgb3
	DfJJKiFPaHGkFFiH1D+hiWc2BkLlGQmPHIKxVdGMrhNpWyBKcwZHfVR3utpbS4atBgH/7z83RT8QE
	ZFukOVZpt/xNZtemh2E5vZQSpGBFyEyZbYipA7lLRGwRBmskG7ItS6SGYm1aj6ezCxioGw5+6T6pR
	0AuqJ/UC61euLiVFhv1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfodP-0003eX-6e; Tue, 25 Jun 2019 16:49:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobc-0002Cs-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id w9so2699109wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xx1EmDNUL6NrJs1zybeQYATP7BtRS3ZxfHrchYlbb1w=;
 b=ehQo1iJYS9sB9JFN2Xa22OZs9vsDho+0SpTjnu+gLJrGOR91YDeDq/PPd81moyZ2sY
 0FyU9t0jreva8jyV04sH4pWQ70l6pRHZJbBWvSULWQngBX+Z9EdPpp8VUtNT8LxcsAHh
 vDjKzTSGbPyFTth0SxzDdo/EeN3U2FXuXRuyJ3TxRvy0pEcSXC+KKU2wL+Z5fIRO2H+P
 d9Vits6jzByP971MXaDurZbFM8FOV/kvXPKitcFxzyjSvvlNu2YsdbbzQjdSN7vX566V
 qamvc45X6PPKW9gW0tctAb3tSHNSMZYpqHHqaWFj/NT0HYHWhFqZhwRFbJsoHe1X8UJn
 kUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xx1EmDNUL6NrJs1zybeQYATP7BtRS3ZxfHrchYlbb1w=;
 b=ns59s1oqP5nHkRS+AoH3I9dITE/SV1WwdmBlthtvNXcbvGyuVLCZPWzYhPMjAf2Gms
 sGssPVifyWmqmIqfRFSC6R1QaTeOX008kG38DroSFedUnEWWQvdNHPWBTBaWZbRKE+Lr
 aWPqcKXwCmsKO9w6qIV9FlimMwwNqmlemFW2IncB7GMQ+QqkJ6jqJsUNOflM1NXrqeVg
 081KmWAwdlPRVucRYIasL9MaJ704GmWwOQHmkniqSir9ij4Y9hXeA687afrQZy8ki+xM
 +so9Cqi6P3RYG88gL87wjRYLzqOlMKEynKb3oLJ9QR5x3Ks2uzHFjlpqIiSht2W7+1uM
 V2ew==
X-Gm-Message-State: APjAAAX4fVnfoo+E7W/fa6JTOPRk9MKk5ea+lU/J17yYkvReYlro0hkL
 N/XI9YwoiSyWqfdB0jI3KtFuXw==
X-Google-Smtp-Source: APXvYqzQegDiAysGwbSCaeJGZtZMZeEuUAmigshcMMK0ThMtUBYljkK/qXsHQTpNJjJTMGnl9rKg9w==
X-Received: by 2002:a1c:cfc3:: with SMTP id
 f186mr19048286wmg.134.1561481259356; 
 Tue, 25 Jun 2019 09:47:39 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:38 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 01/14] clk: qcom: gcc: limit GPLL0_AO_OUT operating
 frequency
Date: Tue, 25 Jun 2019 18:47:20 +0200
Message-Id: <20190625164733.11091-2-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094740_836071_8FFE14CD 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Limit the GPLL0_AO_OUT_MAIN operating frequency as per its hardware
specifications.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Acked-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/qcom/clk-alpha-pll.c | 8 ++++++++
 drivers/clk/qcom/clk-alpha-pll.h | 1 +
 drivers/clk/qcom/gcc-qcs404.c    | 2 +-
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index 0ced4a5a9a17..ef51f302bdf0 100644
--- a/drivers/clk/qcom/clk-alpha-pll.c
+++ b/drivers/clk/qcom/clk-alpha-pll.c
@@ -730,6 +730,14 @@ static long alpha_pll_huayra_round_rate(struct clk_hw *hw, unsigned long rate,
 	return alpha_huayra_pll_round_rate(rate, *prate, &l, &a);
 }
 
+const struct clk_ops clk_alpha_pll_fixed_ops = {
+	.enable = clk_alpha_pll_enable,
+	.disable = clk_alpha_pll_disable,
+	.is_enabled = clk_alpha_pll_is_enabled,
+	.recalc_rate = clk_alpha_pll_recalc_rate,
+};
+EXPORT_SYMBOL_GPL(clk_alpha_pll_fixed_ops);
+
 const struct clk_ops clk_alpha_pll_ops = {
 	.enable = clk_alpha_pll_enable,
 	.disable = clk_alpha_pll_disable,
diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index 66755f0f84fc..6b4eb74706b4 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -104,6 +104,7 @@ struct alpha_pll_config {
 };
 
 extern const struct clk_ops clk_alpha_pll_ops;
+extern const struct clk_ops clk_alpha_pll_fixed_ops;
 extern const struct clk_ops clk_alpha_pll_hwfsm_ops;
 extern const struct clk_ops clk_alpha_pll_postdiv_ops;
 extern const struct clk_ops clk_alpha_pll_huayra_ops;
diff --git a/drivers/clk/qcom/gcc-qcs404.c b/drivers/clk/qcom/gcc-qcs404.c
index 29cf464dd2c8..18c6563889f3 100644
--- a/drivers/clk/qcom/gcc-qcs404.c
+++ b/drivers/clk/qcom/gcc-qcs404.c
@@ -330,7 +330,7 @@ static struct clk_alpha_pll gpll0_ao_out_main = {
 			.parent_names = (const char *[]){ "cxo" },
 			.num_parents = 1,
 			.flags = CLK_IS_CRITICAL,
-			.ops = &clk_alpha_pll_ops,
+			.ops = &clk_alpha_pll_fixed_ops,
 		},
 	},
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
