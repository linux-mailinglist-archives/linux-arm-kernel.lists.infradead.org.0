Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB691C6934
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=av0PteSsoaZP+6OcmhQ9wE/Nv3jL4Q9ClGXClH5c7Kw=; b=FDFq7SLoLhJZqxAGsnWT25Xowz
	9WYYpqrV106mfHwBCpiUwT3O+HREyoN1KPlAlS0af75FginGpKiXzLcFo5XKLB+km4PbbE0ig9cn/
	MKntHL6s33NI9sTS61Ee7KWcvNPmSxXjPnqnOH1SvOrKz6LyDtz7AzSfmuk0U+bWn3nvH+FYrXRxY
	K7zdBEMRmSvkCfO4thIhzvBp+yRfmpvxJtJ55uLZT6tlXAyoj2sjDIBkqMWEU93dfiQaXh85SI4XY
	btYnEgehz/zhXqVKjsGZgeieKpUa2Aws5ZLxI/iQzI/6JugJcy3j6EalMfLysu+7DUMYxPXWk70Bm
	nnXMMLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDlq-0004wT-CL; Wed, 06 May 2020 06:43:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDlZ-0004o8-UJ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:42:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id s18so344870pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6OYAtQovas94oeU9iNU8MsCCycx+f76DGkCEYi2Qp+I=;
 b=l/A7OFjUswLmXEWx30U77o4/Wz7vsqghg9D/5bpCSueH68jULm3lmf58hL8+qMqpAJ
 i1747OQhv44vyaZ58GQ0UTYJmOp9034n+D9ebtjM6DSA82ofsmBaIhAWJIPk1YOzNvZj
 YewtH6m3zMLHZujXRq3dLBkfEXJAc/Xbe00F/UDNj/KbK0tPLv3jQq8IVf9E72uaZQ0M
 dboPrjM4njMwLoj/Wq+/bNOKAYaCvaC5uwF1GuX1EAA9Bl7OMz23N1S5/+cxbQVMrqS6
 jMPE6+Q3/ZdlMYlnh2fT25NXVSzpa+jRXnGqlPIL+UU5p4wYGne40lOXu5YdT7tNjxKw
 GxXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6OYAtQovas94oeU9iNU8MsCCycx+f76DGkCEYi2Qp+I=;
 b=odASXLGFK7UdkyrNvUWSYKhwHWL6z12Q9YEIXOv+XQ+3cUlqivlapKvO5hEKYTt1SW
 5AJQMab2py6vmNqCFjHqRfR1rMWUCWYrlnzQQqTylo9nDcyhM0Q1uf9cAiX3F9cuh+Ej
 XLfLR0c5xNA/CwVCTxbuvaUyxrl1lqZuY7gynVjeHNbDC0BDCPyoeVCRzCDx3/u4MvpX
 h0vTN+PDcz67dOfu9WvCsS4KgnS8hn7zn2MnXo1uSD3wqzRkohyx0cYLEbjDhiWfHse7
 2ZYoLKHDSMJpoKqA31s9+BGSr3J7mGnmRrYJb3+bFBB1og3k1a1zySA15/Wb1b5QnfT+
 Dbkg==
X-Gm-Message-State: AGi0PuYO9cUd3Wj1ykdrWxGTiNLhXodHJCoia/PnIbMuYYzE64vAUNJf
 bINVQjjmczUTxBqzmanVr5EMqoxLk9E=
X-Google-Smtp-Source: APiQypLjH1m7IH+Es3ImYbRw2ZMow3U5CDc3acH8t4Lng+3TAVYPSQ/UIQdCmjvWz6d0JGPABQhw/Q==
X-Received: by 2002:a65:6795:: with SMTP id e21mr928114pgr.171.1588747369351; 
 Tue, 05 May 2020 23:42:49 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id b75sm3793254pjc.23.2020.05.05.23.42.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 23:42:49 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mturquette@baylibre.com, sboyd@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, sam@ravnborg.org
Subject: [PATCH 4/4] clk: stm32f4: fix ltdc driver hang as clk set rate failed
Date: Wed,  6 May 2020 14:42:38 +0800
Message-Id: <1588747358-31306-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588747358-31306-1-git-send-email-dillon.minfei@gmail.com>
References: <1588747358-31306-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_234249_999102_383D4CF7 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

should use PLL_SAI offset of clks , not PLL_VCO_SAI
else can not get clk gate.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/clk/clk-stm32f4.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 18117ce..bdebe05 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,8 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
+	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div",
+		CLK_IGNORE_UNUSED },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -1754,10 +1755,10 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 	stm32f4_rcc_register_pll("vco_in", &data->pll_data[0],
 			&stm32f4_clk_lock);
 
-	clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
+	clks[PLL_I2S] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[1], &stm32f4_clk_lock);
 
-	clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
+	clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[2], &stm32f4_clk_lock);
 
 	for (n = 0; n < MAX_POST_DIV; n++) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
