Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E01E59CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bp8xTwWRg2MGUzluF4byISGS5NX2pth6KrWJIhbFcqk=; b=FBW3OyHiDwKK3E2AZldiotJjNt
	TldC5OOTcuOIhF8CFG51c0X5zbEKPnqTTuVOGUs9mpmmkhJMYAdyF/OfD8bY3jg7cFU4RU3KXAlB3
	p3rqV7sHmzEDvYQ6EJR8XCPDrs5Vrnc3pIGSzzAlzwvhyj+mHnmGUa9QvVEVlxe0Qyaekb/oDoJB8
	PLr7R2INuHY2uZD26hsI6n/+gIq60ato+Al53ZwRgtTPhamepHW4IlGJS4FU7/ovexxwyhIp1ktYG
	+UjW5nTbhZSb8CMaTOXIUjssk73tbYPFM5OMqeFkqhvZ9tTOkOJVDwDJ/5Pyjqhx8SbL5kOuPAPoz
	Fb60eRWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJrQ-00014p-5W; Sat, 26 Oct 2019 11:03:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJqi-0000n2-90
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:03:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id v5so2772986ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aiDt5t52KW99BwDzbhRa8ElOQ9bHTmHQCFgO82CwQAI=;
 b=lhhwxzA5ON8HMXgKQss/I3lq4Lc9V27b5/H3BBvPFcELrZtb9qy4H3N6UI7eSKeKIX
 In/UEkuOV3hpfrNWLFyNp1dTCo2a1KLy3NAEh5eET6QONjeWZ6mqK6HtmbjjL8hb7tsZ
 VZ2asUuZ3WiSVH2bww4e4jeLuRQoTcfm8LQjOuqiVEu5HahWqpBD0dCtcESGAR1VnWc3
 1cXt1ZkJIub2PohLo4isUuMjqrd/6W9U3+TyOBE1qCdU1RwgDd0hiIMQut+wd5swaukY
 Wz++RWEtd1yp9IswZYewA75Zk+XMCYBrNIgMkFHqHP+nKFUz105SHBu7/pCYQW9HdFrZ
 Xcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aiDt5t52KW99BwDzbhRa8ElOQ9bHTmHQCFgO82CwQAI=;
 b=Iaq3B/bR/lYpsHdZHH2IE2NpinxPoClWesZfFdGUYRcNkQWCJrfqHwLgg4MMng0Xhh
 QwE0/uXm95HXICn6sqn5KsWIiNt1CVbmMnY6KFWY5R8cg/4I2Fcw5wIb2d/oYTzRq/OS
 9+AosALIBjWYgwNjKoBzPFeq12YqobFAJ5tu5Lt104b0MgeeGwsygZKCFBHqISj15ThA
 /brTFbCIQqnxE+iVmh5j6zh2LoKqGK3v3yqXLcQrwKiGIk/hEYWr244NrVR2Fkm1Iyeg
 /sjssu4fmEuklQaan+JrP5tOvOUnoeCf0XpgABGUJzJNXw1YnjYzNN8fMJxy8n249Ig2
 HF3w==
X-Gm-Message-State: APjAAAWhC06B3YvdSNDKc+Id7XsKtYxZ1e4+C1sXtQ6o15B/Q5FQOTva
 WsfPy23pzZF/TTw4Cng+mjWz
X-Google-Smtp-Source: APXvYqy5lOHxmtjAkzaD//NL3VDOOFhb8OaOdL7tWFq+3BWdvYScN+oCkwKKPDOjYGufCzIb45jAuw==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr8848737plp.52.1572087791195; 
 Sat, 26 Oct 2019 04:03:11 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
 by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 04:03:10 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v6 1/7] clk: Zero init clk_init_data in helpers
Date: Sat, 26 Oct 2019 16:32:47 +0530
Message-Id: <20191026110253.18426-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_040312_317466_36FCA8F8 
X-CRM114-Status: GOOD (  12.22  )
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
