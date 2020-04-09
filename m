Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123FF1A3966
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBP9RCJ8mkOn0PhPZDfAvcaBWAttzBwLn9hQoxz5c9o=; b=lr7cNOI92UV2mG
	BB2cbbT+nbK6799B059ITlchwmrqgbgZJ4ntMXwHVYseQDMMCR/5cL5n/GH1hM+4AEXm/mfzOGByw
	81blTErtzE+sJkavqjArWukXbwOtxgC4jDsIIs46mzWptuSRx4JbdDR9naUNGjAKyLGJUwx1ENbFI
	lNpiL9el/cvWj9C44aJAuAYpH8bvCqyNcRneSGTzhvEW/jkPVsIHVfD3wXhiN7OPRjAH/njxhSddd
	KyONturaeWZwFshkEPIcJCq1oAOR4DPA/AXjywrayvwyu2n4WNy8D2egjefUsVhuKgp0s4Ez+pZPX
	xtZRihDLRiV7+oPQ+y+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbPJ-0002fH-Nf; Thu, 09 Apr 2020 17:56:05 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMX-00069n-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:18 +0000
Received: by mail-wm1-x333.google.com with SMTP id x4so666431wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejespMMiPzZHhFOGLxs6wv6JPThWUWz2rdaye1ZX1xE=;
 b=na/nJGjgFezO8e/vI8YJvG17CZDC1pJR3wDAwHVN0Kg6zg3WJuuVg+ZtBXEV9gXEhu
 1hVIkpbsQz2h7BqycBWxaVmdWltbSoLHYyWEAkoYGXK9/KW0eBljif+28LpIyCBotil8
 urLBLTYl/PTUz5aTuighqc+9M/DVMPrd5HwWRUMHNbOnjbDCD9encsjzXiD3ErlPc70o
 zL+C/3fTFg+dr7Rihy6P4rfG0VtdeGVW3LqD7pqTIrmosdtjOxxnLai1z5aWNYqIk/Mm
 cjuiLQwvmHkQlWBEhEE4XnJ60+dfOAEohvIv3fVFGE0PrpyFfwlFX5ILGtlEpNmCsmKq
 SBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejespMMiPzZHhFOGLxs6wv6JPThWUWz2rdaye1ZX1xE=;
 b=Km5fUWUZ8RVBpWOQlLYVVK+J+XBBvmUoRDSJGYF3KxWWgd33qKD3nuqP/clBRoRh1Z
 d/T1ZYoYO0XJCazCesQMNyNW8muBY7S0lMSk9V7wzaEaawDnH5wC03qb80hJA2svkhP/
 NNnVqosvz5Uf2KJE4SwKwFIrolSQwvrOZ5HNE75luGezonzsC/mG+AcRI2pbboVXBV9Y
 /qNGVmYVxb7SfILxFS2/OVHuu4W7cYKFtwOrgN72RpHOYMBozlaJt8bgLSBD+jOSdbC3
 1cu2uQuoQXMy3VLk4bJhfHmz1nihY+l2/6bykAj2g03o2CngYbULrK6D3gmRwb2eJKLf
 vKhA==
X-Gm-Message-State: AGi0PuYZb366MBexj0PAaD4xe9uJqgkTdIsaP2NbtjsTPYX18eCT445b
 PYbeypMGD0ItoG2c6ykkNWM=
X-Google-Smtp-Source: APiQypL3dKnOO7FXsoV/3e3npn5r/roD4WenYMVwtUGfeoyUcdQ+9jTvwDH338TVj4Ni9rYVIlOWUA==
X-Received: by 2002:a1c:9658:: with SMTP id y85mr977190wmd.63.1586454790974;
 Thu, 09 Apr 2020 10:53:10 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id q9sm23295986wrp.61.2020.04.09.10.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:53:09 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 12/14] arm64: tegra: Add external memory controller node
 for Tegra210
Date: Thu,  9 Apr 2020 19:52:36 +0200
Message-Id: <20200409175238.3586487-13-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105313_291802_D32336C1 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
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
