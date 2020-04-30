Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115ED1BF45E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TXZSayHiCZSAtdzO8q1AGIK6js3fz+Yrh/VU1x4rmYQ=; b=eJo
	y0Gof6WlWzav3KeRiIHi1lGq5M2lPV8wdmzJ2MV+fCsyqZeeRm3ElSLXML7VOe0nRZpSwnaBIAyGZ
	KpWxUNNE4wegSKofWWwfftTs4YhJTl2j2xD+jV6a+y/RAGn8wdjGbx/4VKyM3Y3aRlqlz3RgraNXI
	44nhqR+RadTQ2K+7R2Df+HOJPQcDTD4fUn36xnazUOEJOC2BQoYCzPgRWsZQpn/PMnjyx3t1er1dm
	v46g3b1lQLH62otVjvxJFCmx+LDcc3pg6maw14p1MeIML+saUlylv3lHM7zQYWjx9498tRemk21vA
	NJhKNd1JmivjaiSPrR5NjbNageNTrmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5jf-0006Gf-Fu; Thu, 30 Apr 2020 09:44:03 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5jS-0006Fn-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:43:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id d24so2050581pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PMlWSW6ttnanNb8wF0bobaava2tVkjYUTBjAcm/ZuJs=;
 b=MFlPir4vo3tEZYxlusrpRQF5dV+NyqZ+15+TQFJLozgqv+/HoDTTsM9j5hQMDFgyI5
 /QPcVzxBAlfOI5DCpUcUmQPdN3BpfO5ImVwMShy5sFSa6XAqvb/69oqZIgApPKizVlib
 p2Z0OeoLvAPyMWpI5Ah+svBEvUfQfakzUXEWT/g36h6Imiwt2O/UwWeaWFpu/U2RrjI8
 3wJaz9cELshAdY2rUcOq4Q8NiaBW2R2EJQf6dkyPNvxcT1dhz+tVp3WI+UXFDtZDEpRH
 Wr4vCgcociS8CmaTZYdyDFNKYLMNQFgpCQEMJo3OzPjoQ7AR/utuwMPMTdoKeZSmF0M1
 NbeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PMlWSW6ttnanNb8wF0bobaava2tVkjYUTBjAcm/ZuJs=;
 b=ZHoWuTR9euzuEyYFP4jQm+uTby2tlZAL3fnRcfc5MSkTK1BtdUAEqGZSg+N//3YiIT
 NF9TF0mQCLOUytFMiSlxnlzeQi6TunNd7Ro5F6lifoKRzkVYiBcwIaBiZmpVc6amiDbw
 M4YdcFQBy/h3Zz4vjWRTY00k6UMyFedPnhC7A0iF9w3YImu4+y1WVAE+IB4puyyrshz1
 luAuzSrM3QKsG8uRpifXD5S600j80FEQA3ZXj3LGeeLz7G2Ij1YOaMPpmnmg8weGWOe3
 U24Cv8Sbb+cP2ntxlZ1D0iMJRkXC96SwNDUNExSyyz/si9uU2n7VwT7MkhaJOITW/1ci
 Ux1A==
X-Gm-Message-State: AGi0PubvcjR2Gw6MlLFS7TJq3IX0uw120tGZ/yTWtfZwkMTGNwyYjd9l
 TdpQzItJqlnNA6fpwlaccEs=
X-Google-Smtp-Source: APiQypLKUFlZg0CytxNp74nTXeWU2B/WRcjEZ8j8XaaORn8LkrMUWInRi+XbgmfA/ZJJ++4rjGTf1Q==
X-Received: by 2002:a17:902:a586:: with SMTP id
 az6mr2779889plb.201.1588239829729; 
 Thu, 30 Apr 2020 02:43:49 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.101.138])
 by smtp.gmail.com with ESMTPSA id 5sm1307138pjf.19.2020.04.30.02.43.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Apr 2020 02:43:49 -0700 (PDT)
From: dillon.minfei@gmail.com
To: alexandre.torgue@st.com
Subject: [PATCH 2/4] fix hang in ltdc driver loading bug,
 add CLK_IGNORE_UNUSED for ltdc
Date: Thu, 30 Apr 2020 17:43:44 +0800
Message-Id: <1588239824-11491-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_024350_279920_00DF865D 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

1) in clk-stm32f4.c set clk_hw to the wrong offset PLL_VCO_SAI, PLL_VCO_I2S
   of clks array, should change to PLL_SAI, PLL_I2S, otherwise get null from
   to_clk_gate

2) add CLK_IGNORE_UNUSED for ltdc, otherwise system will close ltdc clk
   before filesystem mount

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
