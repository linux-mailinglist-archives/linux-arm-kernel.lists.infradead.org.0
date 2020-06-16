Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324491FB371
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqnFvSH1qRKVFCb7TCq//rxVZSQ3RXszjv4VbwDT/DA=; b=ifSZs0bnku/yYI
	uc6efceCy/GEMGmLm+myLZyqr/nCx8XLiLRxTZGiapjf9Sze92FlTvhoenx5HvIbVmHh+S2UR+Z5t
	wvLEjggEZQWYcdi08tCMdjV9/SdPzOOESu1qbptsZL2sX3YRumV200Et5q2rOzrkyGOmiMI1XzclV
	r6Kk0FkNDCRkXI2a9cvSC/E/WZnTTStQhSj9bXS6FKUNTjDnYCui5b8UhUannH8ZzJ15j3Zh3ncip
	QYgcFfW9a0HaeqZibRbwe1h2ySrk+74sZxudcaJG5lsCEhBptcZWZxNLYgnQUIfBrZaz/4kR8QCpT
	5pEyWUAS6bFDmktBPi2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCDu-00008O-QV; Tue, 16 Jun 2020 14:05:58 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2Q-0001xZ-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:09 +0000
Received: by mail-wm1-x32c.google.com with SMTP id r15so3158590wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IvqY4q4DC8wmUVG9y7FJtCDdIsu08hGHLIyN1vg73Fs=;
 b=jttMGiL+Q4csJzhn2Ol/uy4X7sitxf1eDThGniOc/UH4rb9cWVc06eGU39cshmzywX
 e7a35YM/GlXBsx9duIUGYpkKT5p9VSzPJVOLm9AgftiqpZJSYtvTqfnrdg+VXsBmRpuj
 TydYsw+KL5pQYq2+BEr51C2ZBKk3qgMEVgcsBKcCQAQGowzJ/iTtYdfqWo2UKm0az3XG
 OVzwYHQeWQrMg1tlsn7IGxlGLlQAbHvycxqeHxTVubEt8b6BDrgYrf1CzDC5c72ESTh5
 F7Vxv62d3A7Z4g/Kief8YhVTumcWJLxv3Mgu9HI/R9nYxe4drTpt/2TW1pU9KVhSvMvo
 GXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IvqY4q4DC8wmUVG9y7FJtCDdIsu08hGHLIyN1vg73Fs=;
 b=lUlQRNMGVv1HBwM/1n0KZz1gAKY3UYw1SJifzOAQOIxiLP9ihRbJDpV51NFIEGduhh
 tiiBURDk+1MbCxbm9lAh1nPOc3dn1NEE6UZB+GwsCEUM2Igauqd8qQbUjzd2s2CyEObk
 3O3K7pzp2DAt2D2CKgtji8IicqOhpDhn88B0KMADJeGMs1bM6AoCyaJY2R0A25JZaUY+
 w6NsRzgRNpX0kiDdy13eRxE+U6OdDABu0VRqr1aJE7tIiKzG3dSuYbMY38kMfQJwSWzA
 dfEENsuFhaY8bXpHDMiYep6zkMjwF8FgdlK+1YgXlnnmcbWCXhogYyu7cC9DLrJyzb5l
 dcvw==
X-Gm-Message-State: AOAM531AcsxD937Eh4RAguSGb4/rDVOnzT6l2QL67k3RIqBxltDAyn07
 jaoWvjCze3mctZKbPLmCV7s=
X-Google-Smtp-Source: ABdhPJwC1XcwS+3qA7bwc+eN4nmKzW+jEOyXH+9PsT2cd4xYAYa247dLNBU+WaNY1N3vWnpdjwvRrQ==
X-Received: by 2002:a05:600c:4102:: with SMTP id
 j2mr3328009wmi.48.1592315644736; 
 Tue, 16 Jun 2020 06:54:04 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a16sm29256154wrx.8.2020.06.16.06.54.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:03 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 31/73] ARM: tegra: Add parent clock to DSI output
Date: Tue, 16 Jun 2020 15:51:56 +0200
Message-Id: <20200616135238.3001888-32-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065406_802190_C342A56D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
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

The DSI output needs to specify a parent clock that will be used to
drive both the output and the display controller.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20.dtsi | 4 +++-
 arch/arm/boot/dts/tegra30.dtsi | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 2568236284ad..19d5d4b8692b 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -154,7 +154,9 @@ tvo@542c0000 {
 		dsi@54300000 {
 			compatible = "nvidia,tegra20-dsi";
 			reg = <0x54300000 0x00040000>;
-			clocks = <&tegra_car TEGRA20_CLK_DSI>;
+			clocks = <&tegra_car TEGRA20_CLK_DSI>,
+				 <&tegra_car TEGRA20_CLK_PLL_D_OUT0>;
+			clock-names = "dsi", "parent";
 			resets = <&tegra_car 48>;
 			reset-names = "dsi";
 			status = "disabled";
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 690e1628860f..d80f9d3d2d18 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -255,7 +255,9 @@ tvo@542c0000 {
 		dsi@54300000 {
 			compatible = "nvidia,tegra30-dsi";
 			reg = <0x54300000 0x00040000>;
-			clocks = <&tegra_car TEGRA30_CLK_DSIA>;
+			clocks = <&tegra_car TEGRA30_CLK_DSIA>,
+				 <&tegra_car TEGRA30_CLK_PLL_D_OUT0>;
+			clock-names = "dsi", "parent";
 			resets = <&tegra_car 48>;
 			reset-names = "dsi";
 			status = "disabled";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
