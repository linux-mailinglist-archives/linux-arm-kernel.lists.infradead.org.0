Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DB7108E6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xUQr7Hw2RFXpBmQ7Lo+ZwWE1mitGYKsh1pEJcXvPlUI=; b=D/xky8Z7O3MRya
	f79HlYuzrWx50ioSNK3ExAsipMpIPf7eDd3qeUIlXTedJ8fRs36CKEBmY2qwj3jkvN0K3OhF27YiU
	uGl7ZyY2JQN6MTw9n3UfpUCZZHWKuwx+GIImvxIpUI3ciw42kSjs78vIykU05Lhr07NHLu59s2aP7
	JT8TWK08wwnLOKU1ftyvVCN5h6r9e8cpXz69sPyyxOs5IN0sj/uau8egmqpiIriGgwlVCeXllssuq
	ILcPJ2M2sV9mn0lqhApJJn1+LBiHffuDuO915+yOIePsI0gTvqwcqfFWk6OavstvSHlr6hQ5km8EV
	wxpHsgAHoCnVXfYP5DCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZE4i-0007jn-3S; Mon, 25 Nov 2019 13:06:44 +0000
Received: from [106.39.41.192] (helo=buaa.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZE4V-0007jP-0z
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=buaa.edu.cn; s=buaa; h=Received:From:To:Cc:Subject:Date:
 Message-Id:MIME-Version:Content-Transfer-Encoding; bh=UP7iGuZyWy
 7rUnb0BqANyOczNI15OI3BvmT6wTeNlTs=; b=eXZ2QhdAr0Eyh94pU+Rqp9+x7t
 2zeecmS/wKv+KbWTbb8a6UEeVVp4jNp9wE8FTl18CWzy8edd0vItJ3seI6IeoUhO
 MN1Fklnl1NIFUTPZGekVfxgQsWOdRnLnpwos6+z8CecGCwKsKRRq+nbdQK+Thai5
 hZCVHNE/da2va4hEI=
Received: from localhost.localdomain (unknown [10.136.208.163])
 by coremail-app1 (Coremail) with SMTP id RYCowACXebb6z9tdwLfmAQ--.36688S2;
 Mon, 25 Nov 2019 20:58:37 +0800 (CST)
From: Yunhao Tian <18373444@buaa.edu.cn>
To: 
Subject: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Date: Mon, 25 Nov 2019 20:58:32 +0800
Message-Id: <20191125125833.8023-1-18373444@buaa.edu.cn>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CM-TRANSID: RYCowACXebb6z9tdwLfmAQ--.36688S2
X-Coremail-Antispam: 1UD129KBjvJXoWrZr1xZFy7Ar4fKFWxWr43Awb_yoW8Jr47pF
 W7J34FqF1rJ3Wagay3Ar1xCFy5ua4Y9FyUCrWUA3y5Zrn7JF1rt3Wjy34DAFykCrWfZr1Y
 yrnrZry8CF4DZa7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
 w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
 IY67AKxVW7JVWDJwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
 z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2vYz4IE04k24V
 AvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
 McIj6xIIjxv20xvE14v26r126r1DMcIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
 v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVCm
 -wCF04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26F1DJr1UJwCFx2IqxVCFs4IE7x
 kEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E
 67AF67kF1VAFwI0_Jw0_GFylx4CE04Ijxs4lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67
 AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IY
 s7xG6Fyj6rWUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
 4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjTRCg4fUUUUU
X-CM-SenderInfo: yrytljauuuquxxddhvlgxou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_050632_659672_3D3C0676 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Yunhao Tian <18373444@buaa.edu.cn>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hws field of sun8i_v3s_hw_clks has only 74
members. However, the number specified by CLK_NUMBER
is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
fault that is not always reproducible.

This patch fixes the problem by specifying correct clock number.

Signed-off-by: Yunhao Tian <18373444@buaa.edu.cn>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
index 5c779eec454b..0e36ca3bf3d5 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
@@ -618,7 +618,7 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
 	},
-	.num	= CLK_NUMBER,
+	.num	= CLK_PLL_DDR1 + 1,
 };
 
 static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
@@ -700,7 +700,7 @@ static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
 	},
-	.num	= CLK_NUMBER,
+	.num	= CLK_I2S0 + 1,
 };
 
 static struct ccu_reset_map sun8i_v3s_ccu_resets[] = {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
