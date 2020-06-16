Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0827F1FB403
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=123YQSLLcvM9fpclnqVk7Hd4gNbFxtK1MoItQlErMdw=; b=ouh6WZlf7eGMN5
	YBvlIM9z4GmNVaraZpBwzGYGWmYQTvB+bFRfQyWEn5hFzCqXqJg2gRbfMsg0+1c4bYuxA22cKYudb
	Mg6NNcHM861NYmWeEYLx/AEiKHyI1J3iuY4qI4KPW4FNWq9u1Z+K9/LeFA7ljtWDL5alvXnn1HTUY
	/0LMjXGzh+nyDoCVsUNc4lf+CfTl13CJMoui6d+Y7C/n3eYzWBiu/EaaccpX4v9rDx1vMD9M9XZh/
	yIVkdbq0yqEp36/5ByoqAKDmvtr6n+rGyZNikRpH6/mpmE+cb5nU57jZA1lDMI3APFKh9k+tFqdWD
	ykXyywnDFd2Hcfh/SguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCPb-00067p-9E; Tue, 16 Jun 2020 14:18:03 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3n-0005Ai-O9
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:41 +0000
Received: by mail-wr1-x434.google.com with SMTP id p5so20852162wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bn1siE7j5QgVJ2P/0HXryBjQl66K/xnjGvXsbTL+kqQ=;
 b=NlQD9HdswI3+kQ0ylBD+r/kCIVPm0kyt8CDC9V5C+kEtu3MKMuyiLKNAQlkaxW3lyw
 z+3zO4MC3JUBUkirt2pbgdz/gMbbqJPOTPjZ4H1ALdXWQEzRXhG5TEal9HHNf24S4Hd9
 V/8QwDkws7bw0J9Pdti3SZqpgqyMXuE7QjIuNa5reGYRX3raaHucCeLd0snInrK5rVTC
 lP5NUp3GoNVAQH3iJQ7K/FTPDnMeEwrrzHQt71NCoAIPdp93WrZMLGYkK97D0C4MJmln
 s9RVho2hrwEQ+LM5ibDu5vILl8sHkzin/rVoMYmFfhPVGadWu2n4q4L7hxwC8dcX9q7J
 8qSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bn1siE7j5QgVJ2P/0HXryBjQl66K/xnjGvXsbTL+kqQ=;
 b=j4Sw5pA6XCVPQBTwP44OOIb+dSu5Ph5xvirpZsyccRP+HG7Nb9XHoss/xnX4F8WuPR
 IVRGeKdsOV/9HtpTFJQi/ejQjz74jAyFlceKO1HN7UlZcED76OpM785bRwFpvGLCa1KQ
 rAc/Onp+1vI6YSmZ1nnRKJQsalWcoiywMEs4nnPqJE6MS1sw2tAG2sDlXpKdsH3Lwgz+
 Ea08TAYJCG3LcOWxhd5zvMHCLdd4tB91utTNCGKCiVoG3JZyEx6Zb0FSlPeMzvVWc8Mk
 BeUGfLDD0LvrwyUS5z1xlH0jYJ1D4hNMUd2XV+ahl1Xg8GeFZpzU2XafrbJuF8JPI4ly
 DUbQ==
X-Gm-Message-State: AOAM533Z1FwOJ2s8Kyl/qxxLgS1fQlz95D5WBTqRwudCk6zDJ3wLZdJZ
 1yTDp7JNVaMeA/g8y9TKCKU=
X-Google-Smtp-Source: ABdhPJxCMHFkReSqDHQAMRCTmOevakodwkUPBhsFcNJTNyIT7KpTWMGsc2hvmCJ4YGTlnfQsXAWsrQ==
X-Received: by 2002:a05:6000:104f:: with SMTP id
 c15mr3178128wrx.391.1592315730029; 
 Tue, 16 Jun 2020 06:55:30 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a16sm29260858wrx.8.2020.06.16.06.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:29 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 69/73] arm64: tegra: Rename agic -> interrupt-controller
Date: Tue, 16 Jun 2020 15:52:34 +0200
Message-Id: <20200616135238.3001888-70-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065532_027039_D551B0B8 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
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

Device tree nodes for interrupt controllers should be named "interrupt-
controller", so rename the AGIC accordingly.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts      | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
index 0c0d51c23975..0ccb62606bef 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
@@ -119,7 +119,7 @@ dma@702e2000 {
 			status = "okay";
 		};
 
-		agic@702f9000 {
+		interrupt-controller@702f9000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index cc0d7b4a5834..f7840e5e069a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1717,7 +1717,7 @@ dma@702e2000 {
 			status = "okay";
 		};
 
-		agic@702f9000 {
+		interrupt-controller@702f9000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 02a02ed1b264..c265211f8a84 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -1355,7 +1355,7 @@ adma: dma@702e2000 {
 			status = "disabled";
 		};
 
-		agic: agic@702f9000 {
+		agic: interrupt-controller@702f9000 {
 			compatible = "nvidia,tegra210-agic";
 			#interrupt-cells = <3>;
 			interrupt-controller;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
