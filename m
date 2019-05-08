Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF1216F09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZLpP2n/VOwl8FgBmgIvftu9YLI0Wbk4Vt+93EK+jqPo=; b=nG5gcXMTuN3K7Chx9mCdYNsycb
	Hh66leKWNHiIhqF9+tidQ1ABb7dsRXO/IuQnl1ym57GIKQXM8FMXiuHC4UcfVlONd8UfERGKEDubF
	AWB8qywk9HwAKUxlqY65PGknFCNg6LBl/H/uZa4tdKaDTGoAuCrxI/4rHXqIqdyAvqUgKB0uxpRak
	roGdxCskaUSvue2p9EnidQ4l2Nn12HR/E0GwxRDIkZq2CAGWc2qoE1heQyKGU2WqsIX81bQ9+Cr64
	0YasNJjcDmrsEGaR1r2POvvQoubieo/Ww2QdkM7PkUbGCZrQdSDnRkj8zevTnrxOGnmqZHlLQhiZ6
	V4cGY6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCDM-0006cd-V8; Wed, 08 May 2019 02:21:48 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCH-0005Ko-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:21:03 +0000
Received: by mail-yw1-xc41.google.com with SMTP id b74so14858360ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2Bpgr+A7spO4G6xG1o8X5Nj3Ve9xjSTX28GmWNncxVY=;
 b=SfmmCjcvk9Y21x1LfjHYxUkIQw9bgTk0QhnF1djSDcjZiSPGKSrTrTEYang4HBroMy
 YZ0P/Fgt4s5zBAK1hnyK711Cg9C31QbZumEGeaa5M5FsRv+Ce3e52h9uY+7qvJXmRkUC
 +0EX0xyuXES9oqa6ZHwewEAZAOBBLjBY0A3MS+VYMzbUAeWCOq2XyBRvoOOhpTMqqdHY
 2IE31whDVQpvwtquaQ2GitvxfbfvFT4wftJlhq8Y8ny2T2Hh8yQcVnO8aK3tPI1FDKaX
 xLWZ/SI2dO5J/MySmYLrCfc7WdjHgRqYLb9UJIrIzDcKzBA5jZlko5QuiVPNAdWAOWDy
 yvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2Bpgr+A7spO4G6xG1o8X5Nj3Ve9xjSTX28GmWNncxVY=;
 b=pI7yuCXS9BHSTpf6TEHv338hbddpvRoFrnNgXur2y76BMDub3l8IOl0yJveBEsJny8
 oFpA3HKaGVJM8W5RZ8T4EpUCFPDf2OZHHUvwh3qiR+1FcNW8HIrAWVzMWIn4IQdOyswn
 0uHQptBPb5wJY4DNSp14kEqJ2O8PV/+A0All8vtNlTV5kAFfymIeomJ5qHBvittqc1UW
 6n4ERyxtjP1qZ2867I5VZ4+QQUbxzMqVG0fahx7Z/PujoX/EENeBDBEn+nYMU5bDY1Mk
 u3980rZtbzuN8yVEkdpQd5t7vyKD7iNXDQ079Xz0/XVmTZ0Uo115XS6rQsPP/MBvHdxA
 tqPg==
X-Gm-Message-State: APjAAAXGhqHleGek/F5fybk2rnKKlrIsi0ILp44k7H/6wriaih1RgHHY
 MokdLyHLI3QFbCCSDC5OXPj0sw==
X-Google-Smtp-Source: APXvYqwW/sU9i8WFXuedix5B3visshOvwFzz/UJY//oEMVD5Ht2WeqcQvvFu6G9uzUT9ZYWujIRGvQ==
X-Received: by 2002:a0d:cd03:: with SMTP id p3mr22253182ywd.192.1557282040243; 
 Tue, 07 May 2019 19:20:40 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:39 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 08/11] arm64: dts: juno: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:59 +0800
Message-Id: <20190508021902.10358-9-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192041_774337_C95641CB 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel,
so can dismiss warning during initialisation.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi    | 6 +++---
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 7446e0dc154d..26a039a028b8 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -150,7 +150,7 @@
 
 	/* main funnel on Juno r0, cssys0 funnel on Juno r1/r2 as per TRM*/
 	main_funnel: funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -281,7 +281,7 @@
 	};
 
 	funnel@220c0000 { /* cluster0 funnel */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x220c0000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -366,7 +366,7 @@
 	};
 
 	funnel@230c0000 { /* cluster1 funnel */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x230c0000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
diff --git a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
index cf285152deab..eda3d9e18af6 100644
--- a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 / {
 	funnel@20130000 { /* cssys1 */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20130000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -47,7 +47,7 @@
 	};
 
 	funnel@20150000 { /* cssys2 */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20150000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
