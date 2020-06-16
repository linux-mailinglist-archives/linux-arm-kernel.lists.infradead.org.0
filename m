Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4791E1FB3F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbfEBSide9ClPJG4VHfW6i3dMuCrf1cSyUAuwjzU5D8=; b=mqMSkhw+UdJ2+h
	tmdDoXVkw5TlXQjW3RIVtR83ZrTUIS84FRR6xpmslH3qs/j+etdmbP8gKeqB2I1JLyQXnhskH0kJx
	Au8PotG1w3WtNB6SHn6VKrndNlkAR+AxfLwtNEARJzHlycB/IRI56zFKgQIRPmkEYmcXAmBsZfaH5
	bxNix8k4XLiDScOWhJojsWoOtIm43aWh+5X73fkU7cATYmGUORmqgg8nNGFX6u7MIv1hRxnj2JSEg
	9rdhQZH8M8as4ussw1pzidaDiqWGAkwqyKceZqN7iwdF1CyDFis9gCR9DJrEXOim3PLBQ+XSvm3ui
	avRzcbFF4waxg5uSGC7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCNd-0004Pn-5Q; Tue, 16 Jun 2020 14:16:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3T-0003Uz-4e
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so2990841wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OICfzC5DNLWC8Mt/Hql2kszDs/lPys4EDGoOcxnuo0E=;
 b=ejfJqBK5B17ICN8HyRWo+casH8nlg9Up9/8htgKPkCd8aRnMre1x9N/B/gQ0sWK3T1
 bnWnGSaFnd1xS5jO4Fdk0JOTxkQgA7EUSGZamPQyABLoiIyXKpr3KAaovLLQK6R1JAr0
 3SOJ5QpW6xINrnsIOBiV7PSAz8/zvXGQVHZYgjNF5CHA2gkAjvLp+S0Nvl/MXGB6lKQZ
 ziddCKD9Lb1xR6EY+y+Vkg0WXy276udCubEHjZfZoqE47rKHWxJViy1U0wSdj50w6bbR
 wjjVFaRipO/uTWuWhLv6Zrw+BCRBWtNSHEa/AflX7tw++/b8eXeP08UAitNIUcYb676b
 IdgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OICfzC5DNLWC8Mt/Hql2kszDs/lPys4EDGoOcxnuo0E=;
 b=Ht+/dHl6fbHukA1lNXMaV36TwWd8WpzZ4ofObhZW83b0xt7RmNMYerEWwOQ4rjbaKC
 Ed/STkWKE5UbKIVAgHbpJI+BHS7I8Y4uLmiKtn8uCz3XE51ge4MRiihQ3z9EZ2+KCSlS
 elISdZ++JQZyFDCgRPnNxz21TW42Ug6hZmfe2E/PaT1VytaYEGJXN8UuPJKQt9F+wvVF
 4+3zFYVkmm36zsGdL1SK5i6JdLUu92peyThu9VXx/LmOIRAcbmOl0kFGq74NsuyQfiw7
 6vZA22AHTNA9romImAIZ/WpXbLK/lDDCvUnKrg+KQ4mx2kCUK8fC7tZ5X+3ouLNIa3KO
 Rr0A==
X-Gm-Message-State: AOAM530XcFWx7SBu6aSvcQdpD3gAbD9rh1Vm1gh5OqEvjnHLTfIptLSR
 AfcGFxPb7waDDvT9IXqMj7I=
X-Google-Smtp-Source: ABdhPJzOQCn/2tSUkdTXWMJYbll+3NsWiJc9+A2Xy3fZHYpJeayA9xv/Fk+mcpbj4ole1j/Zprj1qA==
X-Received: by 2002:a7b:c944:: with SMTP id i4mr3358571wml.22.1592315709317;
 Tue, 16 Jun 2020 06:55:09 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a10sm1096846wrm.21.2020.06.16.06.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:07 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 59/73] arm64: tegra: Add missing #phy-cells property to USB
 PHYs
Date: Tue, 16 Jun 2020 15:52:24 +0200
Message-Id: <20200616135238.3001888-60-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065511_325719_988C52EC 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

USB PHYs must have a #phy-cells property, so add one to the Tegra USB
PHYs which don't have one.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 0425e584791b..9d1dd021a2cb 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -1113,6 +1113,7 @@ phy1: usb-phy@7d000000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 22>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -1151,6 +1152,7 @@ phy2: usb-phy@7d004000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 58>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -1188,6 +1190,7 @@ phy3: usb-phy@7d008000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 59>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
