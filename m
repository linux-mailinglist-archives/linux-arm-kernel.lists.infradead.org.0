Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7548A163DC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqTNnVTzQ0Q3AwzBvFTA32hTL4czFO37HfI20hXKufo=; b=BWyRADxb1dBRoz
	EDiTXqynuTuq/U/6WLPmtsk0Yd1D92UAjJZgLvD/EUh3h9KZbcA5YDF0U1T16+s+BdB/godQp9zXZ
	takFcolTMAIsikS2pE20pC1TNzZeWcjE2b3IvfH0Vvwag6qr6G7uIb3OqOo/QLZH1+lYKCL8vGqN9
	I2obZKEXYHDFcp4HW4IEvfMf3DGaqarCiF9m/j9PvkVwqorIxjmPLwX/Waiszt/mCc/qZPTLCzR/a
	pG0hoZY/6AnXWPgZYfPhiBarh3I+4GpCs8cyDl0HRoPWbFZd37VpPUQn/amdpmnE8QXxXpjgi6bw1
	27Bk/1XiINUwvbuM0EEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JuH-0001mx-SW; Wed, 19 Feb 2020 07:36:29 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrx-0007PJ-S5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:09 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 375D1E005C;
 Wed, 19 Feb 2020 07:34:19 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ytSnHxQJ2Uja; Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 04B20E006F;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id VudPmGfcJW79; Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 64067DFCA2;
 Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 02/10] clk: mmp2: Constify some strings
Date: Wed, 19 Feb 2020 08:33:45 +0100
Message-Id: <20200219073353.184336-3-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233406_227461_869632B2 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the parent clock names for the muxes are constant. Add const.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/clk/mmp/clk-mix.c     |  2 +-
 drivers/clk/mmp/clk-of-mmp2.c | 13 +++++++------
 drivers/clk/mmp/clk.h         |  4 ++--
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/mmp/clk-mix.c b/drivers/clk/mmp/clk-mix.c
index d2cd36c54474f..7a351ec65564e 100644
--- a/drivers/clk/mmp/clk-mix.c
+++ b/drivers/clk/mmp/clk-mix.c
@@ -441,7 +441,7 @@ const struct clk_ops mmp_clk_mix_ops = {
 
 struct clk *mmp_clk_register_mix(struct device *dev,
 					const char *name,
-					const char **parent_names,
+					const char * const *parent_names,
 					u8 num_parents,
 					unsigned long flags,
 					struct mmp_clk_mix_config *config,
diff --git a/drivers/clk/mmp/clk-of-mmp2.c b/drivers/clk/mmp/clk-of-mmp2.c
index 6e71591e63a00..ee086d9714160 100644
--- a/drivers/clk/mmp/clk-of-mmp2.c
+++ b/drivers/clk/mmp/clk-of-mmp2.c
@@ -127,16 +127,16 @@ static void mmp2_pll_init(struct mmp2_clk_unit *pxa_unit)
 static DEFINE_SPINLOCK(uart0_lock);
 static DEFINE_SPINLOCK(uart1_lock);
 static DEFINE_SPINLOCK(uart2_lock);
-static const char *uart_parent_names[] = {"uart_pll", "vctcxo"};
+static const char * const uart_parent_names[] = {"uart_pll", "vctcxo"};
 
 static DEFINE_SPINLOCK(ssp0_lock);
 static DEFINE_SPINLOCK(ssp1_lock);
 static DEFINE_SPINLOCK(ssp2_lock);
 static DEFINE_SPINLOCK(ssp3_lock);
-static const char *ssp_parent_names[] = {"vctcxo_4", "vctcxo_2", "vctcxo", "pll1_16"};
+static const char * const ssp_parent_names[] = {"vctcxo_4", "vctcxo_2", "vctcxo", "pll1_16"};
 
 static DEFINE_SPINLOCK(timer_lock);
-static const char *timer_parent_names[] = {"clk32", "vctcxo_4", "vctcxo_2", "vctcxo"};
+static const char * const timer_parent_names[] = {"clk32", "vctcxo_4", "vctcxo_2", "vctcxo"};
 
 static DEFINE_SPINLOCK(reset_lock);
 
@@ -190,7 +190,7 @@ static void mmp2_apb_periph_clk_init(struct mmp2_clk_unit *pxa_unit)
 }
 
 static DEFINE_SPINLOCK(sdh_lock);
-static const char *sdh_parent_names[] = {"pll1_4", "pll2", "usb_pll", "pll1"};
+static const char * const sdh_parent_names[] = {"pll1_4", "pll2", "usb_pll", "pll1"};
 static struct mmp_clk_mix_config sdh_mix_config = {
 	.reg_info = DEFINE_MIX_REG_INFO(4, 10, 2, 8, 32),
 };
@@ -201,11 +201,12 @@ static DEFINE_SPINLOCK(usbhsic1_lock);
 
 static DEFINE_SPINLOCK(disp0_lock);
 static DEFINE_SPINLOCK(disp1_lock);
-static const char *disp_parent_names[] = {"pll1", "pll1_16", "pll2", "vctcxo"};
+static const char * const disp_parent_names[] = {"pll1", "pll1_16", "pll2", "vctcxo"};
 
 static DEFINE_SPINLOCK(ccic0_lock);
 static DEFINE_SPINLOCK(ccic1_lock);
-static const char *ccic_parent_names[] = {"pll1_2", "pll1_16", "vctcxo"};
+static const char * const ccic_parent_names[] = {"pll1_2", "pll1_16", "vctcxo"};
+
 static struct mmp_clk_mix_config ccic0_mix_config = {
 	.reg_info = DEFINE_MIX_REG_INFO(4, 17, 2, 6, 32),
 };
diff --git a/drivers/clk/mmp/clk.h b/drivers/clk/mmp/clk.h
index 5bcbced3f458e..37d1e1d7b664c 100644
--- a/drivers/clk/mmp/clk.h
+++ b/drivers/clk/mmp/clk.h
@@ -97,7 +97,7 @@ struct mmp_clk_mix {
 extern const struct clk_ops mmp_clk_mix_ops;
 extern struct clk *mmp_clk_register_mix(struct device *dev,
 					const char *name,
-					const char **parent_names,
+					const char * const *parent_names,
 					u8 num_parents,
 					unsigned long flags,
 					struct mmp_clk_mix_config *config,
@@ -193,7 +193,7 @@ void mmp_register_gate_clks(struct mmp_clk_unit *unit,
 struct mmp_param_mux_clk {
 	unsigned int id;
 	char *name;
-	const char **parent_name;
+	const char * const *parent_name;
 	u8 num_parents;
 	unsigned long flags;
 	unsigned long offset;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
