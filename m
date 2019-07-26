Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386CF76353
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuf9mjHgxa46xQxmQ5q2PUHZmZ1h9XPRDOp+Zj6Hgsk=; b=TMyz2aygEpsdia
	VlGxeCDuC4RM4w9C7Q4oMgNNOBVtUnc0n+43axS4qcGhEESIea6QjkXQWsn6VC4oECrYd8qS26lgS
	DJJZl4cpA3UcBHflZhFlj+SgSv8BnCPel+wJGaGt/gMxDx3A5QEcWTppS30Pag8d9dzHaU7EqHI9G
	iWmzQznY5HNoW3wxH1eTXC+OR50aGpVEaNrsjftiWuJWL2t0IUB1KMmr3ZDN+p6Gg6BhKn5cPMmor
	kD0TVEGB918muxSG3jRpPpDqrvd/+x0ObcmKJEWTtG2wZ9qax5WMUmAAldj1f2ci1oD8ZtTtw3gbH
	gDZTFtMqm0JY7vr/NVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxHY-0000Ek-OI; Fri, 26 Jul 2019 10:17:00 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxGw-0008VE-PT
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:16:24 +0000
Received: by mail-ed1-x541.google.com with SMTP id k21so52833538edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F3d8K+IP7Z62EKI1ZjJ9rcL+LSug/j9TnHUjTaLFYOY=;
 b=ozHtnV42uI/pFK8boJa/OE3nZB/tZ629d7jUI4P9ngfaa0e+s+AJHL5509gN+z7KZh
 hLvYxWH7pdd1rd0mE+lBWzi49r3UQRzYFHxpZoqoBCITmUnyfDIbI6sI29mUFr18v29f
 spN76EwDxjQJEjclPX2FRGQUlSpiRnOttnlGMuVDyYYv6AvA8e7tROZVwa/+T96kAOow
 nX/2pcVWEbo8oDjamEH0cZj9tehZuD7D3PHG81tcxWV4E+FL5aUhJpVQ0rHMTBqCAVRy
 K3Y/g/UH7mAy3fPg3yjelAf6Shmrnrahle2j/fZjYCu5nffqoGKl3RGBdtl8/k2FwDtD
 tPBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F3d8K+IP7Z62EKI1ZjJ9rcL+LSug/j9TnHUjTaLFYOY=;
 b=YrODgkBUADo/1DXgBhn7vV9iHh1rYcVWmngqo99CbEadrcdYBLydMC17wcfzr9VJBv
 MWK5hGGeGTVFOcbJ3FXgX+3hmhgHHHT5n4ImKpKDCvFYXJ9hPq8fn/YwSbWiERPicZaX
 CGuioH4qmaIhoioVrGPisK+6ag3ej0NmON13GAolR3mzZwy1pNTvfCaEAmRL3cwUASl3
 uQWiMG8x9bPIbHZ7SL3RKfeywDt20E7sl4TTPXWeWIkUYkKwyCWx4T7kaYmETITR2cuN
 f3mE7C29yuP55KRtl1eTijD1KsF9UQAPbOVBBf0VSiyIQJepZFkYd+cThTlGLHt2Uoso
 OVwg==
X-Gm-Message-State: APjAAAX+W619+czuQO+bkBixpTOE3+Rb677uhIdhEpjJ/o3E9Lcpr5G1
 +tDYZg0IcfY07QDexGyyuuBZ4VG1
X-Google-Smtp-Source: APXvYqyKsM9F2qOnBdoZ6kxjChFZSQTUooFmd/W2XILTJVP936B/RF5aWf++WDglXdzQi56RsbKvRw==
X-Received: by 2002:a17:907:20bb:: with SMTP id
 pw27mr69989946ejb.93.1564136181254; 
 Fri, 26 Jul 2019 03:16:21 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id 34sm13960589eds.5.2019.07.26.03.16.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 03:16:20 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/3] arm64: tegra: Add unit-address for ACONNECT on Tegra194
Date: Fri, 26 Jul 2019 12:16:17 +0200
Message-Id: <20190726101618.26896-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726101618.26896-1-thierry.reding@gmail.com>
References: <20190726101618.26896-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_031622_823263_634C0286 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The ACONNECT complex starts at physical address 0x2900000, so give it a
unit-address to comply with standard naming practices checked for by the
device tree compiler.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts | 2 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 740aaf597115..fb0b9fd0b405 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -11,7 +11,7 @@
 	compatible = "nvidia,p2972-0000", "nvidia,tegra194";
 
 	cbb@0 {
-		aconnect {
+		aconnect@2900000 {
 			status = "okay";
 
 			dma-controller@2930000 {
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 2597eb7f747b..923415fd72a4 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -59,7 +59,7 @@
 			snps,rxpbl = <8>;
 		};
 
-		aconnect {
+		aconnect@2900000 {
 			compatible = "nvidia,tegra194-aconnect",
 				     "nvidia,tegra210-aconnect";
 			clocks = <&bpmp TEGRA194_CLK_APE>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
