Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823741FB3F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGrFx1QgZvVhZICCS/gaFiTsS5mmPYXugMmkM5rxQxo=; b=ZvHv1iq4Zh6UvD
	1KjWrFj72BJNC/xl9+Eyq9YOcAXRXvqT6a3tNdjU5Lqd2fAn3+U8PAB2T9b7eyDHtnCwUloVtSW5d
	q/2+QoxNfKn9Ae/mK/gIxAoc8vLOyy9dFkvPL5XJltLlvxl/XzTw27MOlv+Qm4Nhkt3RO02xUW/Iv
	650scjmc3i2m6G4/473HH0ac2I5uPljdwqDtArk+/ZIPyxLhILBWjjlOcWLZ88nu+9WOebCtwb16P
	i2QBAGkLtc5e7jgerU1Vr4mmWVCbWBnbcWoJ5v71t51W5lwlCnez3jBcwNIShrKdP3ZkYeox1HJjQ
	imqmpnUoTsydGh4AiPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCOQ-00057u-Cb; Tue, 16 Jun 2020 14:16:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3e-00056B-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id j198so2336168wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iIbYc6mjj2XC9sB0100ZE5S9+tg7Z6KcqIjSEJek5/A=;
 b=txZgLaXFOtb1TJEVVvNDNlwz12hfxlSWcBarAU9dyFlctbMWrhF2nzSBhF3LhePv1T
 Ww/TUO2Rdz4HLFnjRLPAnitwyWxCZkAIJ21GXL0VVzh73J/rF6mhbnRj1nyKPok/1RGc
 MBoBs6w6tnd95AkdiAIe8CSdnG3DC/A5NdJoaX67YhOWosNuv3w1qk089WMEdz5l1CZV
 PerrFUyuimQoHRrBX3J9AElj7uGBKpwag1GbftgmP1n3aL9rkAst0f3pg/1nQZMkumjy
 +/gSwYqxJfkadCa1iwh3V4QM5rRP5O1uUL+QOBzyoXho97Yw4DBdeeurN7vLI0BS1dP3
 1boQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iIbYc6mjj2XC9sB0100ZE5S9+tg7Z6KcqIjSEJek5/A=;
 b=S/ZG2tZSRH+Q+HB758YlBlZ9OWg6WcuEPGkkDIajF7b9YyuG45p3zsm0/WkazTOTeg
 rYSyrAyANZXuRAWBtDIWtmbjvQgvPztVP2Gv6A9dOp4A+tcR7deoEDahlXCyZRDKRJZH
 PAACh05kezfWgxTKMyzasR8TktOxkqS6pecY1GOocrg8HfsZdxzsjqJ0LD3146tE2Ywi
 v19H8A6B/m5l7GjVz+5NIq/OIezjMRlfpnrVpp7ghn8NORp0hggal9OJbz8qxHkQDujy
 tJs64hjCmbMmLhsmeFDpliZ5lcTPmW8VX4HN+9Nlzf2YnlaSsPAY9dSd0DmryL7E+DUo
 z4Jw==
X-Gm-Message-State: AOAM530S0H5y9QlWtJjJyn5QirEubOAy4h9BspmFY3M0bCbQt4T8CNRI
 gYHOFBa0+8QlQSpiuEkFNqqBF30T
X-Google-Smtp-Source: ABdhPJx+AEgax2zGOWrfqomo1JreetAMxNewvozhWQyn7Y2ngUxG6D9CWDLNNRWJtNNec19UjZ1t5g==
X-Received: by 2002:a1c:f204:: with SMTP id s4mr3548336wmc.159.1592315721268; 
 Tue, 16 Jun 2020 06:55:21 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id k14sm28337070wrq.97.2020.06.16.06.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:20 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 65/73] arm64: tegra: Do not mark display hub as simple bus
Date: Tue, 16 Jun 2020 15:52:30 +0200
Message-Id: <20200616135238.3001888-66-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065522_543983_EBDA91D7 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The display hub on Tegra186 and Tegra194 is not a simple bus, so drop
the corresponding compatible string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 2 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index a73050ec61a7..3a41203deba2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -990,7 +990,7 @@ i2c-bus {
 		};
 
 		display-hub@15200000 {
-			compatible = "nvidia,tegra186-display", "simple-bus";
+			compatible = "nvidia,tegra186-display";
 			reg = <0x15200000 0x00040000>;
 			resets = <&bpmp TEGRA186_RESET_NVDISPLAY0_MISC>,
 				 <&bpmp TEGRA186_RESET_NVDISPLAY0_WGRP0>,
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 4d6f2127dd4a..3089ebecfbef 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1055,7 +1055,7 @@ host1x@13e00000 {
 			interconnect-names = "dma-mem";
 
 			display-hub@15200000 {
-				compatible = "nvidia,tegra194-display", "simple-bus";
+				compatible = "nvidia,tegra194-display";
 				reg = <0x15200000 0x00040000>;
 				resets = <&bpmp TEGRA194_RESET_NVDISPLAY0_MISC>,
 					 <&bpmp TEGRA194_RESET_NVDISPLAY0_WGRP0>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
