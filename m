Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E9F1FB408
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Z+EFbZTpS7jQI+BIITvXS6/ERXDOg66neFRD1lR20c=; b=IhatdMZpsfKR5I
	NDdORLGJhAdK7NyVGY0KfnRuSQvUeC+8R/YHfB5ul6ciE7t8N+a5vb8EIYXGr/cKfZsp5h2WmQiF9
	yq2bWnoAO0vX4AZA8qRIYidmSm7aDk3EnTtrbfibCr+q84vvaD0b4JcKMJeagJvcNl+WeyVXfGsEG
	QwNnqAt4BAjBk/+NiUTGLTppO+/Nj7SmHfrYfx+IWY7RTehOpOg9dyO2vh+WxqjO3HwGjjsRt6CwX
	4m2ZtxcRXustG9KL0e/8rKb5vtjfaDoaNieykHhqaowOsDDeq/ysD9tgng5C7klSyQqLuDtNyEw1s
	Aa3OJLZynnQi/+t4njMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCQS-0006rf-BV; Tue, 16 Jun 2020 14:18:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3t-0005Fl-KY
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so3195788wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bBKWHGHQksDjrw0nOPTNv9iHoiSsRb/lXyTILUGktv8=;
 b=cCFX8dTs4e2OCDPmdaO7ATK7QjqsNpALC6hVhD1+AU/0ntNvIsvB3H8zBZ/uFFc75w
 qku6UeryqhZ0l6m9vJkXYH6H8Fy3GFX9gYh4TAjjdpd8fYNi7wlleDC8G8mjSLwFHVTR
 RcDxQ0hUaJ2F3L/V9d0q+z76moAjBU1HAnd7079TI0jC4DVjjDChdfkutJrmmKdQArLv
 njiZT/Cp4pJqyuw7gqRVMCqaOXPVAQZ49AI7OZVqlvUfQ2gGDCXyNXlV6kxA+5gMm4cG
 1O7LD/3NheGbLDFIMgAaOBHGduRGCXIa60MkotZ8cUiDC+n0hJyRiWdlKB0RRJT0YSl6
 g6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bBKWHGHQksDjrw0nOPTNv9iHoiSsRb/lXyTILUGktv8=;
 b=R0l3oQiefqaxTa4yg/LPas6c6RnNSeazl19LY/EJzD689ZKgfw7m6+/wKaeZwnOXU1
 +F1/tQ6CHA7U8T6S5MQYEkO4g14/8lr5znWWXdOcnOkYI32FFd04RE1FxJtkMnRcJcR2
 eQFskEhdBL3KklkNw76d0S9IRGf8k6qA/JkJ0HMPOZH7/v6VtC9FedtWuWF6twVD+P56
 iojVydcv07Z9XzaVFMlEJQx1lc6mRRBREput0CHVoLVkPqsS5Czqcp6mL9y5+vJNDc9D
 PAn73w9PaFnftPzQwn1pxCPIvFfhSSNjdz1qLLoqDdo5DMnUuiY3mkP4ba0W8M66H1DX
 ePtw==
X-Gm-Message-State: AOAM5303hx7NHlsJdGs2JN0jx/lkS8UXSnPPDXoT6l+QjQSpZvccr5/z
 hGlqhccZ0W6kiytS9Mj7B8Y=
X-Google-Smtp-Source: ABdhPJxNJ47IpunG6CRgQ89e+Pj8DyyvCKQ2Nj/c0UfBNFXO4AWnir4DfjDN/nN5xA50sIfOEkE1DA==
X-Received: by 2002:a1c:4887:: with SMTP id v129mr3206229wma.184.1592315736176; 
 Tue, 16 Jun 2020 06:55:36 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 67sm30309379wrk.49.2020.06.16.06.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:35 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 72/73] arm64: tegra: Rename cbb@0 to bus@0 on Tegra194
Date: Tue, 16 Jun 2020 15:52:37 +0200
Message-Id: <20200616135238.3001888-73-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065537_800816_B569477E 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The control backbone is a simple-bus and hence its device tree node
should be named "bus@<unit-address>" according to the bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 22 +++++++++----------
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 10 ++++-----
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  2 +-
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index 6f2c0754c870..cefbd0000357 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -8,18 +8,18 @@ / {
 	compatible = "nvidia,p2888", "nvidia,tegra194";
 
 	aliases {
-		ethernet0 = "/cbb@0/ethernet@2490000";
-		mmc0 = "/cbb@0/mmc@3460000";
-		mmc1 = "/cbb@0/mmc@3400000";
+		ethernet0 = "/bus@0/ethernet@2490000";
+		mmc0 = "/bus@0/mmc@3460000";
+		mmc1 = "/bus@0/mmc@3400000";
 		serial0 = &tcu;
 		i2c0 = "/bpmp/i2c";
-		i2c1 = "/cbb@0/i2c@3160000";
-		i2c2 = "/cbb@0/i2c@c240000";
-		i2c3 = "/cbb@0/i2c@3180000";
-		i2c4 = "/cbb@0/i2c@3190000";
-		i2c5 = "/cbb@0/i2c@31c0000";
-		i2c6 = "/cbb@0/i2c@c250000";
-		i2c7 = "/cbb@0/i2c@31e0000";
+		i2c1 = "/bus@0/i2c@3160000";
+		i2c2 = "/bus@0/i2c@c240000";
+		i2c3 = "/bus@0/i2c@3180000";
+		i2c4 = "/bus@0/i2c@3190000";
+		i2c5 = "/bus@0/i2c@31c0000";
+		i2c6 = "/bus@0/i2c@c250000";
+		i2c7 = "/bus@0/i2c@31e0000";
 	};
 
 	chosen {
@@ -27,7 +27,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	cbb@0 {
+	bus@0 {
 		ethernet@2490000 {
 			status = "okay";
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 0f9868b6fd6b..90b6ea5467fa 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -10,7 +10,7 @@ / {
 	model = "NVIDIA Jetson AGX Xavier Developer Kit";
 	compatible = "nvidia,p2972-0000", "nvidia,tegra194";
 
-	cbb@0 {
+	bus@0 {
 		aconnect@2900000 {
 			status = "okay";
 
@@ -93,10 +93,10 @@ usb3-3 {
 		usb@3610000 {
 			status = "okay";
 
-			phys =	<&{/cbb@0/padctl@3520000/pads/usb2/lanes/usb2-1}>,
-				<&{/cbb@0/padctl@3520000/pads/usb2/lanes/usb2-3}>,
-				<&{/cbb@0/padctl@3520000/pads/usb3/lanes/usb3-0}>,
-				<&{/cbb@0/padctl@3520000/pads/usb3/lanes/usb3-3}>;
+			phys =	<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-1}>,
+				<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-3}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-0}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-3}>;
 			phy-names = "usb2-1", "usb2-3", "usb3-0", "usb3-3";
 		};
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 307f999edbf9..ea629dae6880 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -16,7 +16,7 @@ / {
 	#size-cells = <2>;
 
 	/* control backbone */
-	cbb@0 {
+	bus@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
