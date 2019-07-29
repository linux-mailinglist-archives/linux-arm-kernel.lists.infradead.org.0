Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4541479347
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beQwOlWYfZlPNVutWwB7OZTQe2gMab/3DIlk76i+4yE=; b=TI1fYVgIHD0J2r
	dki0/ZjNGX8kfIDCgbdNpeHrw7RrlPF7eMUEEIoxICAJHtwPIBg4LMxZQzXagS7MpSZU5Bm/kIg6t
	/dfXY110xwXgWZiYXV2GwSujaSbo6bnVx130JJYjvu8TQXIxQO1E+1ytWGcesyz4j637HlGxIUdJX
	6GzrUoWVTb/8aiptbDTH7iMWSlFKuJs8cGy4cxBIBzfaB3iDYeXOzFyLS5x78QaiIP/qZsCdGCdS1
	Ibetr1p7mi0GBiCLaNJzaz6i1DqjW7WgObMdci+TTD7HONAAoZlfh/pCG+oOeoVWTcLccXgzrAqQZ
	f2SXCqAYj531Hs7P8EQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAag-0004XB-PM; Mon, 29 Jul 2019 18:41:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAZR-0003hF-SR
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:40:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so62928592wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 11:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
 b=IUtiSH2p6Q+rkXQMIKL+C7RbvgRhr+Au5pFEpbqFZSUJUBITqHJ2GgKUwekeWKNQBb
 tzIM4u5q9Nb+RjiF/z0tmE4ehciXd++MXpGHh+pXgM2VCRW6NlT+dn7M12OZKo7oHJDt
 puMe2pUVAd5bCTRSvQDb+Wq+0EMkycajGM1c5/4xka//sLSv7P2aRF7BOgrTNbGyxENu
 Tdq8jqWjtuozujlB7RhEcbhlLECUv1n+qWtbAIOvllF6L4lY3vyApqbIDGoO683dIQf2
 ri9RqE145vPp8wvjVWVd0zW1ZEa9yz+oLt4WODkoFu2WlFQBKF6zHucfyGq/QMRwfEfG
 Rixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
 b=hU1o9YPKmauM53MZV8wuuGodxmbFYlY8kKIxlMmaQdmcjpCnw09T/yxBZ6zVav2vBP
 DpXpCwFYyKWBTydW1nZC71e4ohGPXwufQjt5Wv5izd0aYj0ICr3UJaZPMqjxw3sK+DOR
 m5qyv50YYS7siICNyFZ6yjzfEzLSKt73ucdhspfbmU/v/+k5tvkcwhnjIfSzIdax7SJX
 k9Bt2sWjw0OmekP5uLM6qloSOx/ALhwB0u8itP4DSZMknJoMJkWZ5mf/j+5vdjX+RqOO
 msq0lSOQbyIsWxu8Uck3d8eCuQgrs9oMnR6fy0xXQP504CqGRfeWkxlNs9EgaUmEn+KI
 xyWQ==
X-Gm-Message-State: APjAAAUFYFqmA2lgt3NhYZ0WjUvyeN8b46kW3l8DfUeLcyYUxi6Ftkeb
 pFpf+594f9Yttr2bb0eYllUU0A==
X-Google-Smtp-Source: APXvYqwj0l/3K4qV5AKD0pPi+Kb6XwRa+C6cY/Loh9vhUu6jSxLM/mptGrUUN2IdVBQYxoUBwyV6Kg==
X-Received: by 2002:adf:deca:: with SMTP id i10mr21091707wrn.313.1564425628321; 
 Mon, 29 Jul 2019 11:40:28 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/5] nvmem: meson-efuse: bindings: Add secure-monitor phandle
Date: Mon, 29 Jul 2019 19:39:39 +0100
Message-Id: <20190729183941.18164-4-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114030_078718_07FC4C6C 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new property to link the nvmem driver to the secure-monitor. The
nvmem driver needs to access the secure-monitor to be able to access the
fuses.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
index 2e0723ab3384..f7b3ed74db54 100644
--- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
+++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
@@ -4,6 +4,7 @@ Required properties:
 - compatible: should be "amlogic,meson-gxbb-efuse"
 - clocks: phandle to the efuse peripheral clock provided by the
 	  clock controller.
+- secure-monitor: phandle to the secure-monitor node
 
 = Data cells =
 Are child nodes of eFuse, bindings of which as described in
@@ -16,6 +17,7 @@ Example:
 		clocks = <&clkc CLKID_EFUSE>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+		secure-monitor = <&sm>;
 
 		sn: sn@14 {
 			reg = <0x14 0x10>;
@@ -30,6 +32,10 @@ Example:
 		};
 	};
 
+	sm: secure-monitor {
+		compatible = "amlogic,meson-gxbb-sm";
+	};
+
 = Data consumers =
 Are device nodes which consume nvmem data cells.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
