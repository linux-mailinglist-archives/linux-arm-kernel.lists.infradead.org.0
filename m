Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C24D94E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPjh4S7YL29ATI8TbCle6rCWz7Z1afKs/da039xzEAo=; b=QMwEcxkW0z9W7c
	Km8GibGQZ9jJcLc6MqtcrjwQX8SAHAdX05T6H0m80OTYAGa384i5TGpuu0aC2/gJcmYXujZBUeAsr
	Dr/r268+zmQ3bRhHE2S241Bfmv7T9sX3WRg6IZKBp0nFZMgzwRI5BFdpNKNhddG85XclBOXQGHkTm
	nS00CBa/ALPP5QU0KNIpK/Qr/Yq62V46NQ7lF3nasI2RY/rUmWLl0JngPxcAMGhwok2cOcyFCkejd
	3s7/fgGV4JJG4c6WKAIB78esTkqzaz+PcgbeXQT31hDy/1knngc4DxjB/21qs3HXltXmDTvvMfg91
	IxyhCn6qz+O6TeldqMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkr7-0002hD-D1; Wed, 16 Oct 2019 15:04:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKko9-0000FA-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so3313921wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=qAuaa7ZSjn0FhJ00uXag5V81k2j4Jd8wB3mlHyQMAOmseqw6EhNJ8BC2g7O+/gpJT0
 AKHLSx/YhDsRflFs6PfgQ0DbQPo9jkyYQg7zMZ0eMTGS9WkCPvY774POUrzSJkebbp4Z
 NmKFTj4ZFuku85+S/jOGzuoEZYoA2+nJ3i4lrs+uenKplwZ9WN3BcFpQLSZV5wX9pcZg
 UWfDhZmF/MG4FqIGd64FhvJ8EMp2GNS+7+3FxYLPXOxa6EGjbxbAjChZU5+ZcWuuJaDK
 YAaI6H5jMk7+hk6rb2Gzw6rMT4e5y6Z+2Lrs4KBWwyTX0PJQjj4u3nmgy4nMaLVa2JTE
 4PTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=BzmF0/6uOoQwn+ZO4dFEW8E3fblg/UIlwQt0do2i4L5o8Rz+5I/6LegTRgKTGPnBN6
 RXEsfenbnv6W/hzFx7he//hvzzNf7EZuzudNCvkCI9k6Ncggpr7j6Eo3mGRlbGXWMuAa
 7fS5X8K6UT0cy6PJbYwPPWzWg+h44ZboVCwAbA3t/j+OfJIQRhaRcXPBk5WUp29To/Tf
 NRtrqkP8IEXm8RlLFGfHLc2i0ZJSUYH/maFcYYAf/doxhCTAKhZTs03lBImu4/s7pb2u
 QAU7oh+whB4tnM4z0kDMVAEEX3rOXumCseCQQy07X2JudGnUn4C487jS2kHzLetvA1zg
 aPEQ==
X-Gm-Message-State: APjAAAVVchJurDewvCkhJ45+qbaHFocRNxS1axWbFNsDEdEijG1O8Cht
 IXWroEjKRYEaOnO2N+T+9To=
X-Google-Smtp-Source: APXvYqyNHc0RjhVWHeqLrSGbq0CGiXXruOOIi8EuUr/Eh09bdBgr0c8S1gBOy4aPvU+bHsSf/Gguqg==
X-Received: by 2002:a05:600c:22d7:: with SMTP id
 23mr3765323wmg.31.1571238108577; 
 Wed, 16 Oct 2019 08:01:48 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:47 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 08/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on H6
Date: Wed, 16 Oct 2019 17:01:28 +0200
Message-Id: <20191016150131.15430-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080150_300073_723BF40C 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 5d7ab540b950..89d09b441abc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		syscon: syscon@3000000 {
 			compatible = "allwinner,sun50i-h6-system-control",
 				     "allwinner,sun50i-a64-system-control";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
