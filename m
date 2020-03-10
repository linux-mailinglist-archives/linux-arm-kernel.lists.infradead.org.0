Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253361801AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBP9RCJ8mkOn0PhPZDfAvcaBWAttzBwLn9hQoxz5c9o=; b=ht9TM470Ezib4D
	Z9rPF4zRVQWKFR0vR3i9Z0TwDaLbODMrEjSy47bLaGylwvsNdZeTDdVTs1Ub9xD5CF8mT7aOxDfIy
	Y/UAclaWbfEaJeeMP5TMVo+DpMDinzXzNYQjX1Qr0ZsMhSV9eiRqsq3w0AEd2/iifa1zPADMhN3PK
	hw1ofzbGynwR1WaEwEeP2gBhXvwJVfQ1a+u3FVue18ArNkTtfz3rt6g3DoPeldBXSS4Y/GSkrh70t
	J2/1vM3cMV3krkHSjQFa2ooSAmxaOVGrLtu1QMwCq57x2dIRkibG1Cj9lqyUGlbkdiWGNnGZtPT8H
	0TqetEM5cY3YfYztZFAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgi0-0003pv-6X; Tue, 10 Mar 2020 15:22:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBggF-0002IM-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id g62so1812731wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejespMMiPzZHhFOGLxs6wv6JPThWUWz2rdaye1ZX1xE=;
 b=LnPycMi9mVpe4/wyAd0bNohxb10FTZG9jnzxFevxgCgHPfdCGIgnkkAxDD/um2OBiK
 AzWW4Am9+08wylaO5SWwDJuSXRAJEyZSoLidL4bPzg/a37sFEIHHzDYZKeYf09hnTISp
 XxZTs2yndfERean3v/j59OSa51pdh5kLj4mky9AWwgXyNEjsL9szWzfU5fCXCppaTFna
 KhkI7gGvJ/Eq8nrRxJiYiXWxJeoN5u6RGrm7lJ8hbRL2IRtTGYuoWLJiqIa5/ha8krZZ
 tIAh+vxhZpmYc2jIhwF/UxYk25hNb3xACzACIhIfUgbrtTacCaaN51CULObvwoV6Qt4w
 oz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejespMMiPzZHhFOGLxs6wv6JPThWUWz2rdaye1ZX1xE=;
 b=Snfs6yxCinCayR+Tw7w6lpzqeZdr3D9XP2aJoF2qdE+9qIKYKhE8O5SpjhCE7I/Hzj
 pEP4WtwcdUgfn/dC55wljornlB7gRqKMzhz1aKseMXE/gn/8bgUq3gJQz0of/SySZR4g
 sD2mxf53z4wxs3df9rLeV3b402ZqclEdTzzS/Kjta+FIHW/ytWo6WAbF9rMM/oiLaAyn
 1wPdiqzh99H7TKlmyGnHFnskrY9kI9L6xJIVWWoW0fbnmLXeOD2k3cRmTAyFW0obTLjt
 nyCutKk1Reb5XyLRvA2csEh8HAK9XTwBaP4KVuKQ4sApwU7dhmBeE2cKr48ldfq5skKK
 81MQ==
X-Gm-Message-State: ANhLgQ2+Yas6hWAEadE6dUeyhSnOVRjxSSwYSCcU75WUKLHd+W8uEM2f
 Ko5tH4wSOL5X/LoJ7DPcJ1A=
X-Google-Smtp-Source: ADFU+vunebyxLiVsdW9gdZAEwa9042/kxrT+tUmYqJglzEE5qNmB4sB0o7H1+jzA747X4EKITn6DEQ==
X-Received: by 2002:a05:600c:204a:: with SMTP id
 p10mr2630343wmg.55.1583853626226; 
 Tue, 10 Mar 2020 08:20:26 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id o3sm4778931wme.36.2020.03.10.08.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:25 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 7/8] arm64: tegra: Add external memory controller node for
 Tegra210
Date: Tue, 10 Mar 2020 16:20:02 +0100
Message-Id: <20200310152003.2945170-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082027_667295_F5F40E80 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

Add external memory controller (EMC) node for Tegra210

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v5:
- drop list of clocks because we need very strict ordering that DT can't
  guarantee
- drop hard-coded EMC table, bootloaders should add it dynamically

 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 64c46ce3849d..3fa92dd8350b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -895,6 +895,17 @@ mc: memory-controller@70019000 {
 		#iommu-cells = <1>;
 	};
 
+	external-memory-controller@7001b000 {
+		compatible = "nvidia,tegra210-emc";
+		reg = <0x0 0x7001b000 0x0 0x1000>,
+		      <0x0 0x7001e000 0x0 0x1000>,
+		      <0x0 0x7001f000 0x0 0x1000>;
+		clocks = <&tegra_car TEGRA210_CLK_EMC>;
+		clock-names = "emc";
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,memory-controller = <&mc>;
+	};
+
 	sata@70020000 {
 		compatible = "nvidia,tegra210-ahci";
 		reg = <0x0 0x70027000 0x0 0x2000>, /* AHCI */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
