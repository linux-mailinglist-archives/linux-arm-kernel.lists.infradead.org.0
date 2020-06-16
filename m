Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B2D1FB3CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFit/abuiAEs778qgmg7Kvuj1ckX6MX7CCN5cMM/yUQ=; b=u31UQtI1tFY/ld
	nKCA4swn++/ZhXeeyt34GvaG8c+OhKo9mhHTsUUcWkGSCsIVavrG4TDyLK8HXARN8tVB0RX4hagNX
	bcw9gG7MhOYnSCeHKQ/NILq2StQS/WTwxJFAb/FxLzYV8bgIcl/zvdfFLGYcJ72S8+J0tfuh+jDHF
	V5gUfCmSwR1sXob0CMZsy/262xVna3Jjak8FIFceJsMueuV6GzxKDggTa4yCfr11wUQUOKzNUye7M
	u/WCO5ZXKbVjaCtveqqVg5JCd1MMUBE/ua7tTPnVwVVGQuyN5FFxHfpt1V+le4ONEfc6lO1NIpkDZ
	BBZRCsvBC9JgFTidnv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCJS-0007Cf-OX; Tue, 16 Jun 2020 14:11:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC33-0002NT-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id q11so20893746wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=paV2/lzaaYtE0qLJUFbXRABKclhl9jvXwdX7NaIXuEY=;
 b=kiWhB3Q4vWX/BBoj1SOl0UWp8e/mjdevzaMdWYctfAjA3zuohZX0VrkR83/4exm3rC
 BH1ss/xgmEV9UhiDtEWqsdLmTAiCYat2tuYhpYea1Si3rINPtS5m9NeA+J9fr2MQ1zf5
 M2b1t/NWLz9KzAywd+Du3u2w8uIkm+lviwFK6qIMtCEjETZSI5FcZi/VaHZRml2NMVUE
 WzjuriJIcPgKfEt36K6sxp5SvNHzALjHAmVHUBx8ilPo1g//1rXJ4IUM5+0rihDcAPWo
 oswJQee/FPDNqs4iuwxF99ywlHJHlBGifAQXirL/cn1K3p+43Qg1E7zxVvBbbdf/C7DW
 /AzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=paV2/lzaaYtE0qLJUFbXRABKclhl9jvXwdX7NaIXuEY=;
 b=TvEh+6sYf+9L1xVp9sUWAPppDxMwr1bDYIXXccUZbuXHsITjDkZFAYgvyTkba+vbuz
 g7NuM4fzwk1Da8RMvX2sv78HcEoNSmhb0hLIsLTJQkPF5l3w3oEivosvHqY31U1VOYgN
 0XTMY6XHadHbuKX5zjzck8G3ggi3Jf5svsvH2Xf4167znZfDVGf4eRTlY/PkeY5rzU0J
 rcUrPGIHMkB0jGSwC/vdLIjvy1VZj5HV67NHt4D+cw8uncXwI/cAXGrVCGOdfCG6SjXp
 dotCOyoHxPN/A9AfrJ2YhnuY005lkBxk6ZY91cDPWcQYxt6f97m15d82wO80Kqr9gwRE
 4GLA==
X-Gm-Message-State: AOAM530QHGJZ95K/csSd/gboeqbNelZPmhTvvADZ4Iv6YZyBol7AHuzi
 f/NqyWEkT5MvkzQPoMJG/DY=
X-Google-Smtp-Source: ABdhPJyUVeHZpiYWbGSkTjpWrhvyad1M/+wRQ+DahRg2ImY9mhTq9slYjpdm09KuYe22r4Njr7xzmg==
X-Received: by 2002:adf:bb02:: with SMTP id r2mr3374038wrg.143.1592315684328; 
 Tue, 16 Jun 2020 06:54:44 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id n23sm4015644wmc.0.2020.06.16.06.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 48/73] arm64: tegra: Add unit-address to memory node
Date: Tue, 16 Jun 2020 15:52:13 +0200
Message-Id: <20200616135238.3001888-49-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065445_684646_30C10AA0 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

The memory node requires a unit-address. For some boards the bootloader,
which is usually locked down, uses a hard-coded name for the memory node
without a unit-address, so we can't fix it on those boards.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts     | 2 +-
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi     | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi     | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index 9f3206c63900..d0d03cc30197 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -18,7 +18,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0x80000000>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index de049d8d458a..7b5b9bb332cf 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -27,7 +27,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x2 0x00000000>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
index cc6ed45a2b48..751775357d51 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
@@ -17,7 +17,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
index d0dc03923723..9ace2d9ea085 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
@@ -14,7 +14,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0xc0000000>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
index 88a4b9333d84..615a8f5a6cf2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
@@ -16,7 +16,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0xc0000000>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index e7ebf1afeb7a..e6f4a36efa73 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -22,7 +22,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
