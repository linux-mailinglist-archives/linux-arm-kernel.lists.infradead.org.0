Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73D1A3968
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LruBz8s/cBVa9bULjAufsTTTCWmsLLiJC+rtQwpXMXM=; b=X043Obg/oSZmYl
	/5A3dhcxz163a74CnzxFfmfZkuXdg2Akc0t87GxIIDqMLQHpbSf6GGY4QvJxFmhZSh2KxenZGTJHE
	+sT13zqyeLjRYavFBfLxvbiGE3Adx4XdTBv5LEqTYzjTcLK6XmOf34euC6guaRW2+xgsEUrWlNmzb
	K0IqEBg032K7OVTKKMYfsVoXvOim7o6aRlt2wpmsw3QhvLvAUeb/YvWeyNLji4owCu8bPBpgdB0Nr
	e1q3JqvVaVoDSd576gN1Xu0RlZoxvfMBmXTA3QyxKS/kW4kJXnxdM9JMLmzkU5KcpIW64f5BWXiP9
	E7H14fub0AOaBCEEztRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbPb-0002rq-Lg; Thu, 09 Apr 2020 17:56:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMY-0006BE-La
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so12955249wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fDFW17LWXFc/94mIfr99qe3Pgfej3YzVj6EQ4PJofks=;
 b=ZQg9DrpwZimQRjmcdrdaOBKmRP8ka2jN/MTap+6C2Z40SMdWAE6EEDvH+rjfmlY3Sv
 fGU7sjybDXwxub42UsTA3uiZ9LtX2gMgUXvEDb6VrQUI4+b6sdzUEts/fu5N+fZsiqWB
 v99YbzBGhWYNjm5pDy6qxGJFe5+Lw1+PW02JF6wqA/xCCgIlD+4KMnFRITgskztMy1rQ
 nD8Z6ibpjymE3JWFfEwkNYW16iXdQIgZxanr/6ED7gKRm81bbUoW+lODfbnEJRlxvvbF
 7smdq1zXAFf0oVNRZVv/NBvZBM6F64JI0AOmukqI80+G/JaTl6hRGUjPBbQhItOi5YA5
 gP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fDFW17LWXFc/94mIfr99qe3Pgfej3YzVj6EQ4PJofks=;
 b=oIMA/ZRgVHdj6vNyXOPUZShW7KrFfoOGUUZp7t5sRhCgzUFRltUl4AZDgawgC3/D3W
 pGXmL3EqFzBY+7FAETqXwJIw3zhzoAz7jA1ddD0/nZ3AGwyVt4FRNOpkJIW4uvORRK7O
 usV2xXOyKSlzwsqMczwWoGcbw+lKnQFBKP5qp9fWHgrk+qY74Ygc6EtxTdsvIzKZR7dJ
 sAAFzVX/jtPAzAi7LxikuBUhBinpsCL7QLSm4k3KaU9ndQTeXR6258d16FHOpgf1cHAv
 Most0ZZaxOoBDw1pUa0+KOWxxRO353y4T2vzNGlNPNDwK+X9yqk8umbJlWiXuql34K2t
 QY5Q==
X-Gm-Message-State: AGi0PuYzURfI1NIyz/n3AoMxqjpnJrN8fPRlUecxbyBLcZVfE8MRlSll
 xp/Kp5Me0OFXZWn8pnB0mzg=
X-Google-Smtp-Source: APiQypJ8M5w/KbN97Gv2Y1EF2Us8A4iAtlYtQsyDmJ6YsDXB6cP7fvFs5Sz1z0ZlYu9eeHqtXIBzuA==
X-Received: by 2002:adf:ef08:: with SMTP id e8mr386611wro.66.1586454793113;
 Thu, 09 Apr 2020 10:53:13 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id 145sm4849769wma.1.2020.04.09.10.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:53:12 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 13/14] arm64: tegra: Hook up EMC cooling device
Date: Thu,  9 Apr 2020 19:52:37 +0200
Message-Id: <20200409175238.3586487-14-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105314_794258_258CCE6F 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

From: Thierry Reding <treding@nvidia.com>

The external memory controller can be used as a cooling device for the
LPDDR chips. Hook it up to the "mem" thermal zone of the SOCTHERM block
so that temperature polling can be enabled on the EMC when a given
temperature is exceeded.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v6:
- new patch

 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 28 +++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 3fa92dd8350b..a550e7b828e6 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -895,7 +895,7 @@ mc: memory-controller@70019000 {
 		#iommu-cells = <1>;
 	};
 
-	external-memory-controller@7001b000 {
+	emc: external-memory-controller@7001b000 {
 		compatible = "nvidia,tegra210-emc";
 		reg = <0x0 0x7001b000 0x0 0x1000>,
 		      <0x0 0x7001e000 0x0 0x1000>,
@@ -904,6 +904,7 @@ external-memory-controller@7001b000 {
 		clock-names = "emc";
 		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
 		nvidia,memory-controller = <&mc>;
+		#cooling-cells = <2>;
 	};
 
 	sata@70020000 {
@@ -1561,6 +1562,18 @@ mem {
 				<&soctherm TEGRA124_SOCTHERM_SENSOR_MEM>;
 
 			trips {
+				dram_nominal: mem-nominal-trip {
+					temperature = <50000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				dram_throttle: mem-throttle-trip {
+					temperature = <70000>;
+					hysteresis = <1000>;
+					type = "active";
+				};
+
 				mem-shutdown-trip {
 					temperature = <103000>;
 					hysteresis = <0>;
@@ -1569,10 +1582,15 @@ mem-shutdown-trip {
 			};
 
 			cooling-maps {
-				/*
-				 * There are currently no cooling maps,
-				 * because there are no cooling devices.
-				 */
+				dram-passive {
+					cooling-device = <&emc 0 0>;
+					trip = <&dram_nominal>;
+				};
+
+				dram-active {
+					cooling-device = <&emc 1 1>;
+					trip = <&dram_throttle>;
+				};
 			};
 		};
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
