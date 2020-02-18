Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55E81635DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 23:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+4D7lPkBgoF0Z8RhHhkf+6YiRlOFtsQK5zgjNp0svA=; b=tHDTNqoVJOUCUG
	ZqEguQc/wvUEJB1PHqnzslSmTXsH73f+1kVSnpYaXtnOQAt045o8hz1NJjSV2cgc2jbbcewHBM232
	LAuhTSCeQKW5WSIRw7iscvALFFXvP8vfqsZYuyK6Q6Y+9Qga3ulxqUNRVnvGbZprHNprUg9gGjey3
	jPxiOwsLypOayU2dU5sNhCmw2hKhJ/7RiI8mEm9T6GShc+YgHjJmzW3L5TPoQeKw+9W0GtyCD6cC0
	vUUTewNWPW2AJ0Aa4AAvCoalfKhwi6cpZXrlIgQSayF5vlwDDyM+vaLFulmzAAWd0G4zZez0ZJFVU
	lKXO+W4/7VjWt0NPFcSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4B5r-0007WU-D4; Tue, 18 Feb 2020 22:11:51 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4B5i-0007Uy-Ix; Tue, 18 Feb 2020 22:11:44 +0000
Received: by mail-qk1-f194.google.com with SMTP id t83so4183075qke.3;
 Tue, 18 Feb 2020 14:11:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SexCyhtG++Ew70oYHNDjxWHTtm2YNgcLBPVDPrQlosM=;
 b=S5V0OxPU/14TdYJXnKyfAzhcqZd/qAEzuECw4PXHkS0lg/1U36PhYiT7tgzDjOTvYv
 dSEwn5iQ0AUZjQBBORUGrJmCiH0R7RaU/ADDcQxNC9vL0A6tC6DpA2E0fJMYSb0/OQZs
 12LaF9FM/uJyyDqCYpg6x/sHHKXuXUKW7pa6x0w8OGPZSXTgn9kLebZgYLDXbaT8KsK/
 tzLU+bJOXO4UnmMDTowp0fWLy7zP6kqg0D/k4EksYd54c6u+AlWhdNbUIrmqqOAncZja
 ZHlzcCEJivY51zxZ4o6DOQ2ilQ2Cdnu9reI9uU4disOyTv5DGdzyPKkU0Y2uVWRSuc8A
 VaVg==
X-Gm-Message-State: APjAAAW3le3esc8KN6ucXpuA8unaIGHymdFfkock1+QI/TRdBCMJbCaa
 jt0+GI/4+0ha53TywEtJ0jQ=
X-Google-Smtp-Source: APXvYqxAuVhE9JWncGZiB96oj6NDqmFr+ATZc2mDIOV3mzx6dygSFAZoH1yla2lHQqbOeZ0xxJtJAQ==
X-Received: by 2002:a37:6197:: with SMTP id
 v145mr20336585qkb.443.1582063895017; 
 Tue, 18 Feb 2020 14:11:35 -0800 (PST)
Received: from localhost.localdomain (189-18-27-64.dsl.telesp.net.br.
 [189.18.27.64])
 by smtp.googlemail.com with ESMTPSA id 85sm5415qko.49.2020.02.18.14.11.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:11:34 -0800 (PST)
From: Carlos de Paula <me@carlosedp.com>
To: 
Subject: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
Date: Tue, 18 Feb 2020 17:10:37 -0500
Message-Id: <20200218221040.10955-1-me@carlosedp.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_141142_629262_72EDED47 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [carlosedp[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: jose.abreu@synopsys.com, Mark Rutland <mark.rutland@arm.com>,
 Carlos de Paula <me@carlosedp.com>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Robin Murphy <robin.murphy@arm.com>, papadakospan@gmail.com,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some rockchip SoCs like the RK3399 and RK3328 exhibit an issue
where tx checksumming does not work with packets larger than 1498.

The default Programmable Buffer Length for TX in these GMAC's is
not suitable for MTUs higher than 1498. The workaround is to disable
TX offloading with 'ethtool -K eth0 tx off rx off' causing performance
impacts as it disables hardware checksumming.

This patch sets snps,txpbl to 0x4 which is a safe number tested ok for
the most popular MTU value of 1500.

For reference, see https://lkml.org/lkml/2019/4/1/1382.

Signed-off-by: Carlos de Paula <me@carlosedp.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 1f53ead52c7f..b7f1de4b7fd0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -906,6 +906,7 @@
 		resets = <&cru SRST_GMAC2IO_A>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
 
@@ -913,6 +914,7 @@
 		compatible = "rockchip,rk3328-gmac";
 		reg = <0x0 0xff550000 0x0 0x10000>;
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "macirq";
 		clocks = <&cru SCLK_MAC2PHY_SRC>, <&cru SCLK_MAC2PHY_RXTX>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf4c1..cd5415d7e559 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -288,6 +288,7 @@
 		resets = <&cru SRST_A_GMAC>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
