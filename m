Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9281FB3CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDuHb8KCoAGePYXxtuCyyzAufNRk0N1hDj/P5wtvdBw=; b=JvjrOGVJIHYsn+
	0IW1H8OBOCCq/6VqNk/PkttKil6oK5TuyG2QwpMZc0BqPX9/zn+S9rqpd5a41H66sm879BkB0actD
	zmu2psiNpJVKnWMmvi1VXU85jfYieSPBkXLHH+zzS97vr0/tOcsBoNnf0Qx+4TZ5E0LRGvVZ5c49h
	mfCRWdIAQ3JOOuRgBD0IPaRKlNnMPI75UyzTcq1WdOSDIviS2QxDcNKukwQZeTE6UejwlI8QhecBc
	xzQzivPhCqlJpPU86l6MAjSB/0Lp2vRDUxFRVFA2q6hqFTtx7bPFft+fZf+Sj9IEJJHaev6SHgKLV
	Mn9Txgdag6WO9xdltVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCJ9-0006xm-Eg; Tue, 16 Jun 2020 14:11:23 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC32-0002MC-CQ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:46 +0000
Received: by mail-wm1-x32f.google.com with SMTP id l17so2989300wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ytqTh+kTWlnZfJuxwwVWTJACCDgvempJvvH6tFFOXFU=;
 b=bXdMiZu03lvE9CltL5rSgPkeBoPYNH1oGzT5yOyLppp3YSHydBwL/oHK5sdi8rmhHX
 kAblZ+PC4o4iJYED9XUmlzwT3NpL/qIDml83AuR8xPXKzr4347NhMQGA8TcNp2V6sUwW
 R7gj6djhkiC1v3zs54D4PwTrWs4H4OYx8T67mOL9aOzxJIFkw9wGaCgy4YLNNQ80odP/
 mJUK5ejQ0UH8I8+vxaQAQoe9qK6uxpc3yWx5H8xGRed+lyLdXrLtpcrro9UQz+ZH80WQ
 T1fRixVLUGC5SsL6x4LFJ07w9AYTA0frLsCD1x9yybwES8bZm7v1SfDoQGBuSrcxrgwy
 QYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ytqTh+kTWlnZfJuxwwVWTJACCDgvempJvvH6tFFOXFU=;
 b=koGVP66bk3aTdNni8NOyx0ZGP7D1V94kGtcI1gjdGaYmH+iZkfrJRHbID6DdaLksXp
 RUQwb61HiOVhBrPV9dgX/Xj6TxqwuXQDE+4lwi/eJi5A2UxUNm2eZ/+nER2AABJU79eO
 WCq0OlWYVyALHVQJ+uNuXNxajoMRt2/BKh/lca1WO7szzDKmtv5aYrlnSHZrsgw6G85R
 33EL7GOFd44eKM1fZONehTmlWa9Yjcq8bn25Wwvzog20xwOIqLrP5ZFNCEWr2jUMrxpb
 3T1og9My7rlVBT41qqZjZFO3Vg2ypp8Y7s5vhXzhFytsQg65QdT89yTNfqlZIaLQVRHc
 k0Pg==
X-Gm-Message-State: AOAM531KQU/j+1kEQvkrieQvyr68soUOwR2lSGlA3u+GXuAFJvgouJCa
 CnXG6vpe75PV8nJsg3QPiJM=
X-Google-Smtp-Source: ABdhPJx5sy9FeRaCYCdCy87CmtWJBYzYrzYImO8BWe9FQBtUFDP1l/dI/aHIBKwsomhHi69hQxBHog==
X-Received: by 2002:a1c:a1c5:: with SMTP id k188mr3518096wme.41.1592315682262; 
 Tue, 16 Jun 2020 06:54:42 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id r12sm30954918wrc.22.2020.06.16.06.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:41 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 47/73] arm64: tegra: Fixup I/O and PLL supply names for HDMI/DP
Date: Tue, 16 Jun 2020 15:52:12 +0200
Message-Id: <20200616135238.3001888-48-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065444_454214_96D1C971 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The I/O and PLL supplies used for HDMI/DP have alternative names. Use
the names that are given in the hardware documentation for consistency.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 1af7f9ffb7b6..f35b0ba29cb5 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -286,8 +286,8 @@ sor@15540000 {
 		sor@15580000 {
 			status = "okay";
 
-			avdd-io-supply = <&vdd_hdmi_1v05>;
-			vdd-pll-supply = <&vdd_1v8_ap>;
+			avdd-io-hdmi-dp-supply = <&vdd_hdmi_1v05>;
+			vdd-hdmi-dp-pll-supply = <&vdd_1v8_ap>;
 			hdmi-supply = <&vdd_hdmi>;
 
 			nvidia,ddc-i2c-bus = <&ddc>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index e15d1eac05f5..9a7d136b467f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -145,8 +145,8 @@ sor@15b40000 {
 			sor@15b80000 {
 				status = "okay";
 
-				avdd-io-supply = <&vdd_1v0>;
-				vdd-pll-supply = <&vdd_1v8hs>;
+				avdd-io-hdmi-dp-supply = <&vdd_1v0>;
+				vdd-hdmi-dp-pll-supply = <&vdd_1v8hs>;
 				hdmi-supply = <&vdd_hdmi>;
 
 				nvidia,ddc-i2c-bus = <&ddc>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
index 5c3771e8d683..f72afdf547ee 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
@@ -27,8 +27,8 @@ csi@838 {
 		sor@54580000 {
 			status = "okay";
 
-			avdd-io-supply = <&avdd_1v05>;
-			vdd-pll-supply = <&vdd_1v8>;
+			avdd-io-hdmi-dp-supply = <&avdd_1v05>;
+			vdd-hdmi-dp-pll-supply = <&vdd_1v8>;
 			hdmi-supply = <&vdd_hdmi>;
 
 			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index ced01d15e457..e7ebf1afeb7a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -74,8 +74,8 @@ sor@54540000 {
 		sor@54580000 {
 			status = "okay";
 
-			avdd-io-supply = <&avdd_1v05>;
-			vdd-pll-supply = <&vdd_1v8>;
+			avdd-io-hdmi-dp-supply = <&avdd_1v05>;
+			vdd-hdmi-dp-pll-supply = <&vdd_1v8>;
 			hdmi-supply = <&vdd_hdmi>;
 
 			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
