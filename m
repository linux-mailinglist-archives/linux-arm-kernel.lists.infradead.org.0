Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D3E15888B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=L88bzNEIuqXDYxuov4UNvpZhjQo+cH/h8JvyJRLL7DM=; b=d22
	X2TIHFlrOn8vS0txMHyuDCo2m5wjaXsP5q1Hhw5TiuZkCF8oQSNeHbHzjG2B2WkmXrvguUaUuGXGw
	KPPFjNOOtc8EgIrWeg+LDEarpfthafuwFKEpbFgGF+kKv3rerhQinhUv761Iq+74SlZxuGri42P6v
	oD77JXpXGAdb6yns10hevP1y/qwRFh7mVqzC0Y0FmDhM/fTgCXX72iLbT3feqWamJshijTH0yLGyT
	81tGB+OxJRBvDTtMzr8kA7hvPeynFQw3qaEy58PJGEFE+XTroV2PiANXQVTyt5q7dwK74poxzHamw
	77/KTLjQdIGbvCEG1ENjtNbIQ2S0rDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Lux-0004D8-W7; Tue, 11 Feb 2020 03:08:56 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Lup-0004CI-GO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 03:08:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id c188so8781211qkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 19:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bg8WGWFiNlP/c2kLxlwNG4J49V1wsso+2muB3C1AW9c=;
 b=DKXZv/7ymzCe7lWR2nuYKaFhN0CvQPiBVLKdywBkaD9Mc8y06uZ7LJzBYeHcdwzRVu
 iTi/CblpfuDt4yDEOdzC25FAjjiBEzXy4ZGxj5vgZnFmr0ceomoPDDbRYxu8+ajFQJhN
 c/8n6HNrrCGpAhH12+/b592OXEtADYWx1nb6h9NEffFfGQLo1t4TdrQb1XFU0R/43cy1
 bqtTEWrP6gHNdCTqw78gtDKeTnPMKV8K0K7mD2ovYgzyLlYrLc2Oajazt7v3ZqRIHiD2
 50Z9w7Nks/TahzrHzejURNxveDbSQjFCzqa4zFD672Ks1pxdQj4uhoDM3YP1lRenHV9i
 pVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bg8WGWFiNlP/c2kLxlwNG4J49V1wsso+2muB3C1AW9c=;
 b=p0G6DFrYPnvjTkPTkJxhaow3hxqGVMQni0i7NgRjCOnvdvQ3ICsJLk3dl0mBZslXXN
 ySE6f7hyFZrjyDnf2EJ0cp0KO9I4w+vp8fgLgvfdc+60Plm5j7dDbBRYxG7ryVIl4LCZ
 7sSc8LrQOQ9OxK12Wq+e/2YVDXe4T3T4v50mMpCBMgxZF3ea7bbCLX5UFFGhSK0ZrgOM
 GiQHz0Ycaa5DOevQbi95vgdWotP/u/Tb95tRv047GZWWaLbqnl0GFm7g47ybbAL9/jwj
 xtckijfQhIPJNoCtgWaAT0oBUOX1dj9J7kpfXbKXNu7UoDCAUfwlha2o67WPxl26gEtd
 9dwQ==
X-Gm-Message-State: APjAAAUr8xFnIMzxQ2Y3DPEZKozUjPzeYiMQMBaVooJvIZUZU4u2IRPa
 3BPNu8RlxRxLBViA0ZEG5p8=
X-Google-Smtp-Source: APXvYqxmeoHuS2wt0ms22icYBK4flqPZxbg5eqglY/c3VTu6tZNOcrevbp3eEvJ/BLCsdPxpr0bzfg==
X-Received: by 2002:a37:4808:: with SMTP id v8mr4031673qka.263.1581390523759; 
 Mon, 10 Feb 2020 19:08:43 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::1])
 by smtp.gmail.com with ESMTPSA id x41sm1345893qtj.52.2020.02.10.19.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 19:08:42 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] clk: imx8mm: Fix the CLKO1 source select list
Date: Tue, 11 Feb 2020 00:08:12 -0300
Message-Id: <20200211030813.13992-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_190847_570769_E4E9AE32 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: sboyd@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CLKO1 clock source select list is the following as per the i.MX8MM
Reference Manual (put in increasing order):

000 - 24M_REF_CLK
001 - SYSTEM_PLL1_CLK
010 - None
011 - SYSTEM_PLL1_DIV4
100 - AUDIO_PLL2_CLK
101 - SYSTEM_PLL2_DIV2
110 - VPU_PLL_CLK
111 - SYSTEM_PLL1_DIV10

Fix it accordingly.

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/clk/imx/clk-imx8mm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2ed93fc25087..770cf2ae58aa 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -283,8 +283,8 @@ static const char *imx8mm_vpu_h1_sels[] = {"osc_24m", "vpu_pll_out", "sys_pll1_8
 
 static const char *imx8mm_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", };
 
-static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m", "sys_pll1_200m", "audio_pll2_out",
-					 "vpu_pll", "sys_pll1_80m", };
+static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "dummy", "sys_pll1_200m",
+					  "audio_pll2_out", "sys_pll2_500m", "vpu_pll", "sys_pll1_80m", };
 
 static struct clk_hw_onecell_data *clk_hw_data;
 static struct clk_hw **hws;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
