Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61D518E87D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+4Txw1vCvx79rELRib90NP/YZ2t24LFcNcFDhV47tD0=; b=i2XZ7tg3MiYuSf
	YCLpa32MgmRLJz1+Op1vHNp4uhG3wJCgY6/kE29I22EflzjP8yRsORcA2kK4PfKFvNNhDxhHEiu+I
	yX/1ZMBH7CePhKY7mDfpclVYrdXJ50/brX2LwfRWgaRXajcJkpYEkuDeZoC4TlaEvdpEoGlaGTP8w
	KgCmRuAExCdFzdi+aA/Mg/5zBqZlMhR7X+v+WI1qDzqOB071V/4nDMiF4dl/F3ubzXT9yZdfM19o9
	JLoRbNRxdui2aWqfryhFkkib6dFs7NE+jNZyp3RmShtT7NZhHb79lLGaBak1rXmkKdF3Ef8xpdl/G
	qMsiVaqdVuH9yVbeyD9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFzFu-0002fv-In; Sun, 22 Mar 2020 11:59:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFzFl-0002fR-ON
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:58:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id m15so7989011lfp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 04:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zlYMO1xg3/FP6UANfiFZiZoAOK1/Mwd8+kH78AXytAY=;
 b=c2hk0cZcg9aSjSoDaf0TSMngXGHHQ+e9awBT1j8al/sXEXj8kDTs0Mps7S+MhSXNbh
 bJmuZKoi7YDqs15WXfYVPKBmINCOtKYizAMg5a6EuVvzH4QpzjT4uEu7wXEtB+et6BUx
 7WDdFoAGXxsxnPdr14NYNwfi70IKH13wW2kxTz+t+r/TzUr3lZWElU/8bhj+jTSXmRR4
 HNlQBBkD/V8CZ5OntEj25dbptMyGnlhUjlFvgBHNlD6G9r9dj8vp3kpcdZzmlvp2ffnH
 5FqkJovVbN/Le14aqtOMP/iBlxvYnGYyO22fciN7ABIQluShSVvRmK56mVdVaT3zjLxY
 MhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zlYMO1xg3/FP6UANfiFZiZoAOK1/Mwd8+kH78AXytAY=;
 b=ksutni5HfSpal9zlrICuFIquBAz3ADQ44gW2m/7l2nWJH1685RyWQOeDt3Uwg1v2JZ
 u1Kxo8rovCOeAIBz5ZAiC63uuDQ74P65rztG/kBUJy1zdS9e3CY6ut5apYHB8kEa4iXI
 3ALSrSby34QheitPlG0eoUpZo+g1DWut/E902cSsAhWVcy+GHxVoelmKHT80SDh3BNHT
 py6Nnsejy6z4jnlh/rwpBxRoXvhXYmCjzlSJu6rPwVFV+v8EBunm0ORxejHYWS/9n0qA
 hkC3qfXAT/O/anzLGGHyKis79UA5sTjDhGb4tG48017FiDbYFKqRh4gn2NOjz9c9MglD
 EQKg==
X-Gm-Message-State: ANhLgQ01aAIsuQPowgReNVx2rLszsKyUxhZeU+O2F0nAJbf1JD7cfL+l
 kTReD5OAohg0QgdMHx8j7h7mfA==
X-Google-Smtp-Source: ADFU+vsbo+I0cwJSttrp+F4Le4/cYfQWd7EZ+BVDhmXKGu+GhUSjZ5LIojHRv6wF8Iaf6tD6xgSmcg==
X-Received: by 2002:ac2:42d9:: with SMTP id n25mr10085351lfl.97.1584878332293; 
 Sun, 22 Mar 2020 04:58:52 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id c22sm2509006lja.86.2020.03.22.04.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 04:58:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH v2] arm64: dts: Fix leftover entry-methods for PSCI
Date: Sun, 22 Mar 2020 12:58:46 +0100
Message-Id: <20200322115846.16265-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_045853_809553_45501428 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These two device trees were either missed or added after
the commit correcting the "entry-method" from
"arm,psci" to just "psci" as per the binding.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: if this is fine just apply it to the
tree where appropriate please.
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 arch/arm64/boot/dts/sprd/sc9863a.dtsi          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 0bf375ec959b..55b71bb4baf8 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -53,7 +53,7 @@
 		 * PSCI node is not added default, U-boot will add missing
 		 * parts if it determines to use PSCI.
 		 */
-		entry-method = "arm,psci";
+		entry-method = "psci";
 
 		CPU_PW20: cpu-pw20 {
 			  compatible = "arm,idle-state";
diff --git a/arch/arm64/boot/dts/sprd/sc9863a.dtsi b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
index cd80756c888d..2c590ca1d079 100644
--- a/arch/arm64/boot/dts/sprd/sc9863a.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
@@ -108,7 +108,7 @@
 	};
 
 	idle-states {
-		entry-method = "arm,psci";
+		entry-method = "psci";
 		CORE_PD: core-pd {
 			compatible = "arm,idle-state";
 			entry-latency-us = <4000>;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
