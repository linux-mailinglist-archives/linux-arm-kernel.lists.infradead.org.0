Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5EC7BB84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beQwOlWYfZlPNVutWwB7OZTQe2gMab/3DIlk76i+4yE=; b=IeowVf7FQP4Otj
	2ttJOJRb2bd2pPy/p/m/3UBvWpMembU2BseFNK7L01A6ia5Djqw9beEtUHiYH4bz8gtF0MMmtMqYh
	lC3IBY7SSFXwNCsIlhwzeQc8TLC2BeYBRh6m3h/SSEpQeQJUKuh9DPq0DRBhn7HQGQFkXN2NtG+LV
	Gs31/dMBNLoL/AiYIdP6upzwmb8nKGlcNsKD1ADQi9e6ar1hDmsuNnqAZaXQEb1YKUq/D3W0kDgOi
	7Z5A3c/Dd9Lk1T5aglSdRd0wDoqfTzSHt4SoU3xA1k+JCVBO3ppl8NvQJGPIneH1/lOpFxdqYDid9
	oFEzMCRU2kO5x+6Us5qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjvQ-0006YQ-DZ; Wed, 31 Jul 2019 08:25:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjuE-0004kx-5L
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:24:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id y4so68644565wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
 b=xZm4C9KuemF121oZYX71PekVcKNALimIsM5iA+ReoIanj2ggYuqCKHrqSzNuhutcnp
 6Ntf4rUAPimGfHSHRrmDqmnBDoWja3cWFFXUHCBMAzY7OptGRNboirrVqs2gTcfBUvqO
 7fxw49aI5n0VEE2OcPdobQ8mSK08a5VMs1zdlnk9JASqtqyzQoAlC7IONrZs8R8YP5a9
 RcC/H77yhdEo0D7Y+NKsjxOXTXHpMxj1CRGrM9X8Y13e9If08+bCEe0cBDCJ0uleuJAN
 u/qZKwQmTUmPy1Klowd4MDCWn8vRwZDBKm8+wx7x2dB9wg/CCaA5+hFVu4vcRqtQZd92
 lxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
 b=ryIwAgJcM7Z8sklUVodyvEinAug5H0cltYQ/JoL0ZDfIa91w6f6rhPWAAlNxqdfj/P
 IUSjt4lhMQoM7vDib3NsIdrnUR9Mv8AdijGAK9IlluFSHJhzyef9bs/cxTM9UQr49O1q
 b3FD1JgQSKwNqWoaPZaiDTmjvLG9r8n7UJP6bavlwk5KJdNRYVIU8ziR5ek5jrON2plt
 rir46FPq/C4TnHsTE8/q77HLBoipZJEVpTkQzNX4mV6xOUrLHHqnTdk9uevihHxgYHPE
 iHgs2ccsVJERFGLpHQ2pnFJ3LC5vnVWJ04FFg4KUn6LCawEIZN35Q5JHfANURD3Klg5Y
 g9og==
X-Gm-Message-State: APjAAAXNEkh3wgYaN49WFDXC56pLd3AZ/49T4CRglfLHL94ucZtWAjKe
 GcH3yNYW3DwW3oRh/7bciCvFMw==
X-Google-Smtp-Source: APXvYqxV4LXo0Q/ciRHoeBah7/cvjuKoFsI9WzOIaLUC6uv6UEqeN10lcTotCmKAcCfQWbaN7ZNFcg==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr43348176wrn.316.1564561457019; 
 Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
 by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
Date: Wed, 31 Jul 2019 09:23:37 +0100
Message-Id: <20190731082339.20163-3-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_012418_355009_DD8F4DFE 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
