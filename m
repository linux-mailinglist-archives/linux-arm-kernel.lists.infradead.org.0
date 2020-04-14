Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C01A8BD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHNg6kMNvOlXff+Qtu801q3E4sDq7ZCVpXZOvtExYmg=; b=gcgvzeZ082g6nT
	8dsB69hnEF+UPA6sh96QHpg0is7CxtUQS6ZuXwW2MMrXItOYdTvJDuHZOExPL0l/PyZ5bV7qru0nG
	N6MwerAp8uUHPZ+2sBcR3QptHiEiBwvgmDUSpUs5JaBYjZKNB2wiFGnD5AF9DQhmMPR5xAkyn1IQC
	YVqoI3nubbH8r2CxtlEFZP7kmrrvkojqlptLmC6NsGr1f3N/o/UOvzVjkWuKjlJVCbYuggGckgjGw
	qDSz0wAMDeUPQcUGSf6tYzxaSRTFAF9p37oI/kr0f8g4j35VSe1kfWOwx8HXYvpespbaAjvnPZZF+
	ZJjvILYT0M564v8ZytKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORkb-0006Te-VX; Tue, 14 Apr 2020 20:01:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORjU-0005RQ-Ry; Tue, 14 Apr 2020 20:00:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id d27so6777984wra.1;
 Tue, 14 Apr 2020 13:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rMEhVF0vYBD5wEL6NVXMDI0N17NccWqgaXC2pKCnVTY=;
 b=QGvyIyBCuE1RTz/U2bQ3ayAHyY5uM3WTq9YDCxbzqblnL6UwourmXshcxDsVSQZtHN
 noCl7QW2a8NgAUiQnZZ9tVNP5WGR7eAa0mSPnM1e8tFW/AjlgrIQkx3AlvlfRu4D3RRA
 IQFkdT5fBmD5Faznxp29nqmCExvK0n4/xk/7/0I/FMIS4d0lKKtIqcAiSitEdSl6zz4b
 toKYQ3bk2IY9FmCs7QgU7XYQgNUhLU3B+hmcKTq9K5zAYbBmX8W67YBo/IGc8NGgc4jB
 CRv5Pubpy5g/WfFMpePTgTqcVwKFNfpQYtqh/FOEhhdF/9WEpt/LZlDwithUp2jy0hEg
 CkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rMEhVF0vYBD5wEL6NVXMDI0N17NccWqgaXC2pKCnVTY=;
 b=Nsq2CNAPR6HlLcsvivZix65k5equbPCpur4irb/var7mOUKJx3ezgDNZLKeuoMRK6L
 uFlF3/046Vm06XDpnzlbmJALgRam82JJLKzxuxsnHKGK5GNNi93CnRuEcoKFkYFc2QMs
 kt9v4aBVlPAu51t+C/4MCR0MipoZXZB2Z+YEdwsxB6oBlawxPWgZ6ziUblcyHmstSZIj
 ql6DK/TexLDdRW5bJH4D0fAHIr6iHONB3z2R/Bg3wZroNmCOunMS6paQBGjxqNF6kb97
 FZUZ8QRq2NLXe+nyXbPIoxK8nu+Dgs62e1MmCfC714z4SBZqVQ80Lkbz0rojaxHt/8GA
 EMiQ==
X-Gm-Message-State: AGi0Puaw7OWSGfkBV71z1KmQ3E6XOiHbbVG5zbBxaZYyLMv7eoFFtSK/
 ab9M6WpJuWIKr4OIyAUR+rLf73r9y08=
X-Google-Smtp-Source: APiQypIDfgPSiABD+zZrvfyDeW6rwHrqLmm2ir7R3dKYG4NUN9dAEXxs8UO3T2OO4wpxzPEm6gNQ7g==
X-Received: by 2002:a5d:544f:: with SMTP id w15mr27129849wrv.77.1586894430412; 
 Tue, 14 Apr 2020 13:00:30 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13717DF00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3717:df00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b4sm15540253wrv.42.2020.04.14.13.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:00:29 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 3/4] clk: meson: meson8b: Fix the vclk_div{1, 2, 4, 6,
 12}_en gate bits
Date: Tue, 14 Apr 2020 22:00:16 +0200
Message-Id: <20200414200017.226136-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
References: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_130032_928615_B49C945A 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DIV{1,2,4,6,12}_EN bits are actually located in HHI_VID_CLK_CNTL
register:
- HHI_VID_CLK_CNTL[0] = DIV1_EN
- HHI_VID_CLK_CNTL[1] = DIV2_EN
- HHI_VID_CLK_CNTL[2] = DIV4_EN
- HHI_VID_CLK_CNTL[3] = DIV6_EN
- HHI_VID_CLK_CNTL[4] = DIV12_EN

Update the bits accordingly so we will enable the bits in the correct
register once we switch these clocks to be mutable.

Fixes: 6cb57c678bb70e ("clk: meson: meson8b: add the read-only video clock trees")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index fa251e45e208..ed4b70c2d4bd 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1213,7 +1213,7 @@ static struct clk_regmap meson8b_vclk_in_en = {
 
 static struct clk_regmap meson8b_vclk_div1_gate = {
 	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_CLK_DIV,
+		.offset = HHI_VID_CLK_CNTL,
 		.bit_idx = 0,
 	},
 	.hw.init = &(struct clk_init_data){
@@ -1243,7 +1243,7 @@ static struct clk_fixed_factor meson8b_vclk_div2_div = {
 
 static struct clk_regmap meson8b_vclk_div2_div_gate = {
 	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_CLK_DIV,
+		.offset = HHI_VID_CLK_CNTL,
 		.bit_idx = 1,
 	},
 	.hw.init = &(struct clk_init_data){
@@ -1273,7 +1273,7 @@ static struct clk_fixed_factor meson8b_vclk_div4_div = {
 
 static struct clk_regmap meson8b_vclk_div4_div_gate = {
 	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_CLK_DIV,
+		.offset = HHI_VID_CLK_CNTL,
 		.bit_idx = 2,
 	},
 	.hw.init = &(struct clk_init_data){
@@ -1303,7 +1303,7 @@ static struct clk_fixed_factor meson8b_vclk_div6_div = {
 
 static struct clk_regmap meson8b_vclk_div6_div_gate = {
 	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_CLK_DIV,
+		.offset = HHI_VID_CLK_CNTL,
 		.bit_idx = 3,
 	},
 	.hw.init = &(struct clk_init_data){
@@ -1333,7 +1333,7 @@ static struct clk_fixed_factor meson8b_vclk_div12_div = {
 
 static struct clk_regmap meson8b_vclk_div12_div_gate = {
 	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_CLK_DIV,
+		.offset = HHI_VID_CLK_CNTL,
 		.bit_idx = 4,
 	},
 	.hw.init = &(struct clk_init_data){
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
