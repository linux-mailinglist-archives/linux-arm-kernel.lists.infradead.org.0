Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552FEFE2C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 17:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bp8xTwWRg2MGUzluF4byISGS5NX2pth6KrWJIhbFcqk=; b=FNWwVrAhlwwZoZLWTwUAX21Cik
	dfcDOVyhFwReAuj7Buih5AHZPJ7he/SyX81U5gg9zzDl7DgaBjy9pJfUoLQcYH06fVB8H1Ceb/uEy
	g6dftVRsl95LNVDCfdLKeGl2TpBsniZDPi9j40MvcGIvNdJk/Bu/iUMLtaVPFtuNqnilCLhl4sAhS
	JglKOMhY8O/mAosswqGK9yw6ep+p89tReIZ5zBYySMpu7kVM0fBsA9v9SyjoMzJJiG0w00Q0J6cNW
	Ou7lLStgN21tc5KbLbBodgAjwPgIcl5tj5S/BDe30/YPbr2Uol6wLRAurnycKVbdO5aoab8ZejbIY
	GKq5QJqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeTe-0006T1-Li; Fri, 15 Nov 2019 16:29:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeTH-0006NI-O9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 16:29:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id h27so6261724pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 08:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aiDt5t52KW99BwDzbhRa8ElOQ9bHTmHQCFgO82CwQAI=;
 b=Oy/O4BqGl/cYIaUeSeBVIA1VgGxIh5tfnMB5Dwc+UgTdmMx7bk64U5C+VRdzu/xN95
 3EQUhetkGTfikrqkG9rHFqi96AH6DcTeIhL1orxGmc+OXRnALWOr8RncE5relrzlVDOm
 o9qjzgh/PzuJX4wVCSBe4bHyeDLrXb5ziLfUma/W3NuXJ2oogiYo0m0i55JuNdE8B/3r
 USdzAfy00rL79N9/btkoxDonDHjFh/KKeQ8zywbDrwRaAPfvMxo7VtBBEUo7arH1ejUk
 wZsocSxzPXkK0U3FEv0WNjgv0k5kiR3Zx8cwu2b+ZojKAWNcdXQt9bha5j8vZkILVim2
 x2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aiDt5t52KW99BwDzbhRa8ElOQ9bHTmHQCFgO82CwQAI=;
 b=XsVM/qFtb1FlWB+xtWO8zWYAZu6sfaVzcMsDveqDr6gKDo+uIA+8y6DI08+Z1uLRR6
 +4Xe7rsnzc1A/nLvU7m/nfb1/4Rb4WgLbzPXpJuAl4aT2623fbxyhAP/bnELaHQ5ZJj7
 IHFze51t/feyXrrzdmIMcBxVRdO5Eo9UGghRN8GbqdlXRdtj+QUGCXJh5NboNA1M9e9q
 tVC7pL4kdZwHjgmma1VoubgPY/r7iC2BAlxt+tsoGn5FDuOtWvRV+yukYndCnMQiMUth
 EFQMkRPf+SHi0k9dgkrGXDW7YUp7OnNzTDVS1KiEm7EY7xvLoIzjmQgY+aR27rUbXnjh
 q35A==
X-Gm-Message-State: APjAAAXRXRPWZlya5VPmyq407YXLVzv4W0cCE0MXaP3i9soc9KM4F+YI
 eknq6WP6Zdoy5+Z8Cg+TeDle
X-Google-Smtp-Source: APXvYqwH7MWs5hSnZfDuOau27gTdOifRG82hxWJYo6xozoqDnyQa+H79g7hPxhqMk00goHcrqEY5XA==
X-Received: by 2002:aa7:9aea:: with SMTP id y10mr17998100pfp.16.1573835358376; 
 Fri, 15 Nov 2019 08:29:18 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6183:6d55:8418:2bbc:e6d8:2b4])
 by smtp.gmail.com with ESMTPSA id y24sm12295288pfr.116.2019.11.15.08.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:29:17 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v7 1/7] clk: Zero init clk_init_data in helpers
Date: Fri, 15 Nov 2019 21:58:55 +0530
Message-Id: <20191115162901.17456-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_082919_819445_59483B8B 
X-CRM114-Status: GOOD (  12.53  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 4f13a681ddfc..28aaf4a3b28a 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -207,7 +207,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
 			unsigned long flags)
 {
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	struct clk_composite *composite;
 	struct clk_ops *clk_composite_ops;
 	int ret;
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 3f9ff78c4a2a..098b2b01f0af 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -471,7 +471,7 @@ static struct clk_hw *_register_divider(struct device *dev, const char *name,
 {
 	struct clk_divider *div;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	int ret;
 
 	if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
index a7e4aef7a376..2c4486c09040 100644
--- a/drivers/clk/clk-fixed-rate.c
+++ b/drivers/clk/clk-fixed-rate.c
@@ -58,7 +58,7 @@ struct clk_hw *clk_hw_register_fixed_rate_with_accuracy(struct device *dev,
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	int ret;
 
 	/* allocate fixed-rate clock */
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 1b99fc962745..670053c58c1a 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -141,7 +141,7 @@ struct clk_hw *clk_hw_register_gate(struct device *dev, const char *name,
 {
 	struct clk_gate *gate;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	int ret;
 
 	if (clk_gate_flags & CLK_GATE_HIWORD_MASK) {
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 66e91f740508..570b6e5b603b 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -153,7 +153,7 @@ struct clk_hw *clk_hw_register_mux_table(struct device *dev, const char *name,
 {
 	struct clk_mux *mux;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	u8 width = 0;
 	int ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
