Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6F0B3E9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GzcP66efJhZfoMphK3p+IkaCcUpjhVnsuJxSVVyfI4I=; b=soszK7jd38GeS6Gu9TexWSsEQq
	CeycX4qWqYsrzl2qACHBumq3SeK4j+neF1lnctaMfAraXzNV6v+mpu+x1A2YT24nqvvxABA39OnJr
	OzrwihQKn8wHPSEe+D/yG1it+2+xK6P49FgPDdXcQg2I8ue46YG6fgdLXQK2s8sR2sCH+7Xj1DAY9
	ZT0kwzhkqtiyitf6EWiwMjNt7VsE4pz/qjjxFXgBvXjEpyW1vN1I2jlVgIyg/HcdzM1K2GE254VjD
	WNyOKQ0hy88/wGuXKC8foC4nAZS3GC1c4HeZUlgNf5z4e+5G1nxM+1AxPvFEaq7ZK0KJ+Z1e98iLv
	gTzVjDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tfF-0003i9-1l; Mon, 16 Sep 2019 16:15:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tec-0002wp-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so265118pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=70nxwZafCYlFjcUnZixCqBC0Lk3FuIHCQ+uw4WwvqpE=;
 b=A1ugiOOPB7IojLFg9zG7Z22Pk5Hy1X6F1BvfvZbhB4LvJPypy+NTg/ATLcqMSTnN29
 cvS5V6/R4wanwOaOkFhUCdel4TZ/BNMZSNfWvTHyUtWJwqprpL/CXF1cbtGl6P5Ijj1f
 FHctexMt1/Bo9pShonbRxtdHV3xU0Lahg4ss4Xufa7DfP1GfsKtHF0CAUK6TcXS7LOBl
 tHZEDtDJcffi/YKAr5jdQXuCIia6TqGCeFAzAwh2R9lXiq8rdjJ0I1cwH/E86NMPEj/r
 PFSYcus9YyaJVpMdVPF4T60PAWtBxTdiN73uiyQOGe1IDLySZX7+7PnOFxraTdxunT75
 ctoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=70nxwZafCYlFjcUnZixCqBC0Lk3FuIHCQ+uw4WwvqpE=;
 b=Rni9u7kdPfmMCL8AdjbqPohB27UPX0MMeJTD+h1PUFhvHAMNRFbjk0OvAEhL12VxSr
 bjdvo1KrP8Uhw/IA55EqpR54w8FSv2rQMJS1U1dhi16B26YnZAoLtTcDur8JCTLUBWvO
 z5sBRDPHtpl88l2q3FzYYyWnG8uMkBvmVqILqurRWhVmxwfKluSQTNHCeFdyGR8P9lH3
 v1WonPYqkvvDEN8JgQBqyY2bwlEYFx7usjjXAKJwG+Nd5mCByXGVvK4zj3m22DW73dZk
 1WnXytXfDL2w6QRmUfKU68n98ieyUBTwi0m1nUNr9r9bWmzbZUihgImCxthiXv/0jOUX
 +iGg==
X-Gm-Message-State: APjAAAVBfungeOtqY6PHr6OXp0locUrvdDbFlnvGXF0ELhfv3UqYUcbd
 GkdC7mItFNH8C0rDcJZeo/AA
X-Google-Smtp-Source: APXvYqxSax50pawR6i4u56ziysZ9sLdFtdyKBhaZ6zTz4KztldaLEtes3ldaJLB33hc0GcJBWrSOkQ==
X-Received: by 2002:a17:90a:db04:: with SMTP id g4mr502843pjv.51.1568650506251; 
 Mon, 16 Sep 2019 09:15:06 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:05 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 1/8] clk: Zero init clk_init_data in helpers
Date: Mon, 16 Sep 2019 21:44:40 +0530
Message-Id: <20190916161447.32715-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091507_029278_E43E8AB8 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clk_init_data struct needs to be initialized to zero for the new
parent_map implementation to work correctly. Otherwise, the member which
is available first will get processed.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c  | 2 +-
 drivers/clk/clk-divider.c    | 2 +-
 drivers/clk/clk-fixed-rate.c | 2 +-
 drivers/clk/clk-gate.c       | 2 +-
 drivers/clk/clk-mux.c        | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index b06038b8f658..4d579f9d20f6 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -208,7 +208,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
 			unsigned long flags)
 {
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	struct clk_composite *composite;
 	struct clk_ops *clk_composite_ops;
 	int ret;
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 3f9ff78c4a2a..65dd8137f9ec 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -471,7 +471,7 @@ static struct clk_hw *_register_divider(struct device *dev, const char *name,
 {
 	struct clk_divider *div;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
index a7e4aef7a376..746c3ecdc5b3 100644
--- a/drivers/clk/clk-fixed-rate.c
+++ b/drivers/clk/clk-fixed-rate.c
@@ -58,7 +58,7 @@ struct clk_hw *clk_hw_register_fixed_rate_with_accuracy(struct device *dev,
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	/* allocate fixed-rate clock */
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 1b99fc962745..8ed83ec730cb 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -141,7 +141,7 @@ struct clk_hw *clk_hw_register_gate(struct device *dev, const char *name,
 {
 	struct clk_gate *gate;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	if (clk_gate_flags & CLK_GATE_HIWORD_MASK) {
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 66e91f740508..2caa6b2a9ee5 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -153,7 +153,7 @@ struct clk_hw *clk_hw_register_mux_table(struct device *dev, const char *name,
 {
 	struct clk_mux *mux;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	u8 width = 0;
 	int ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
