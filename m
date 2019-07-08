Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3876255A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7AeYjYasacNJXpyPtCXip76fdfyK6qrHHmzXvSWDtA4=; b=De60tBtvA/vIzbWJB29NZqs58q
	giUuycL4RT6eHOVv+RFYjmSVWxxFB4xAZ1SyFg6owv7DHVdJWTb1CrWRlRBPPKUsRnQJdYQ73S+nC
	JHFdTICRAjnAG84Dm6hyl9dAdNYbJOI9t0gjF7dCUTAVaYfAIvsN+XV9f3JnVNLufd9Gic2WHga3O
	kFGd1XEhxSmhvkVefUCEBrYnFQO/0yrlU4Lei2uzsBITCeEyuGcjuZ2x5/97P5Deb+tZ2usjh/cTB
	W8AsO4pG2HEF3c8Sgu83gqVvaVVeuz/F4WLwKBuxgSZ8Ma7Yxc4+b8M/dMZ2qgb7AFxvFLHBR5L1j
	foklDWTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVuw-0007s1-R6; Mon, 08 Jul 2019 15:51:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVru-00048A-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C12B360;
 Mon,  8 Jul 2019 08:47:54 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C750F3F59C;
 Mon,  8 Jul 2019 08:47:52 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/11] firmware: arm_scmi: Drop config flag in
 clk_ops->rate_set
Date: Mon,  8 Jul 2019 16:47:29 +0100
Message-Id: <20190708154730.16643-11-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084754_581780_A6CEC90D 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
number of pending asynchronous clock rate changes supported by the
platform. If it's non-zero, then we should be able to use asynchronous
clock rate set for any clocks until the maximum limit is reached.

In order to add that support, let's drop the config flag passed to
clk_ops->rate_set and handle the asynchronous requests dynamically.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/clk/clk-scmi.c            | 2 +-
 drivers/firmware/arm_scmi/clock.c | 4 ++--
 include/linux/scmi_protocol.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index a2287c770d5c..886f7c5df51a 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -69,7 +69,7 @@ static int scmi_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
 
-	return clk->handle->clk_ops->rate_set(clk->handle, clk->id, 0, rate);
+	return clk->handle->clk_ops->rate_set(clk->handle, clk->id, rate);
 }
 
 static int scmi_clk_enable(struct clk_hw *hw)
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 0a194af92438..dd215bd11a58 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -218,7 +218,7 @@ scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
 }
 
 static int scmi_clock_rate_set(const struct scmi_handle *handle, u32 clk_id,
-			       u32 config, u64 rate)
+			       u64 rate)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -230,7 +230,7 @@ static int scmi_clock_rate_set(const struct scmi_handle *handle, u32 clk_id,
 		return ret;
 
 	cfg = t->tx.buf;
-	cfg->flags = cpu_to_le32(config);
+	cfg->flags = cpu_to_le32(0);
 	cfg->id = cpu_to_le32(clk_id);
 	cfg->value_low = cpu_to_le32(rate & 0xffffffff);
 	cfg->value_high = cpu_to_le32(rate >> 32);
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 1be16d7730e2..1694ee1b410e 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -71,7 +71,7 @@ struct scmi_clk_ops {
 	int (*rate_get)(const struct scmi_handle *handle, u32 clk_id,
 			u64 *rate);
 	int (*rate_set)(const struct scmi_handle *handle, u32 clk_id,
-			u32 config, u64 rate);
+			u64 rate);
 	int (*enable)(const struct scmi_handle *handle, u32 clk_id);
 	int (*disable)(const struct scmi_handle *handle, u32 clk_id);
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
