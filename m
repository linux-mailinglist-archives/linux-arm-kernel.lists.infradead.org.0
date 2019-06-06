Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A7C37916
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8BGbpbtIUpKP8dpahyimHJB+kcuXsvSxJYzHOjT4mU=; b=b/b8n8X8PqAAS+
	LQd4VSkGbwttMcPeHmnPVqwnvBwapB+kRcytsFT2va/OrI0fZ+dVQBXlNCLpuCzAg1glnOwa8ITMu
	gKokuVYQDTae3EIMWQ6xkId050C6+UdRUIzvHpxflubQUsDOrKgxaVzEzmom4Q9B6PAcCqM1ok3bX
	uIUQoTnwtzSyL/7PR659I8ON6dTQQFqOdcwySOCebRPFiXJHDlkvyorbelGThgqXQHMJ6UrB2jHpq
	Gb9iv6q8EGAwbl9g7ZcVIJNz2+I/zvPyZUtBbVMWEZCcAtJTGSjQ//p6Tb/IcLkHGnvO9gtgCiCS2
	/5iUtZpHLJz8QO5gfNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYutV-0002f7-Oo; Thu, 06 Jun 2019 16:05:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYutJ-0002cW-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:05:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id b17so1921812wrq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
 b=jKS+eKDSrusvE4fOXgbjaJYnOOETrRi8VDvLbQHjv286fcyfl1Jf+Dr3KZBo+AkUmN
 CzhAyGvFq6wMJdudlZ9GsKjKC5gvSsb1VWIlmL+pu8EqaUFgpkjf/A3hKMxM5llDvqeo
 wBjOK5BtC1cnsPxiMa+ZkdHVsdiPVTzLR4Gh0ph3sKKClCmrsyRkEFCoQKkY+PhgLCie
 SkCKG7mzDiOfbwTbG7EprK5XtMgY9clnWQvagYN8hQcNydQkgNptpecVhxu3v6ai+S6x
 vrVHoMlGhkNoDL4c8hghYVxK2lqpZwRwYxdhd4AAkHVHBL710v0rUHAmnHc7IEsRAmTe
 4ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
 b=qBiTVHD+H7oSn6wWjozT2iWBPRjbLT0VICc4TFI6++fZA32IzRN+hTYjqED1qwI70m
 u1TYTnTlbudX1+Lyg7JiNwbVMSFoArnCBcUzQN67kDsnUF3vFLm4Sto137buaNzTSCo+
 uVUbxh0qMw52CTk3sSywZg4GT1XhrzPB1Z530LLaxloeK0G9mIyBSyFCBgvZ9TLfyUBs
 n77y9hW9cf5gGFUU1coMH3MeiAqxopCQ7gNtKmhTc5QYe9iQ2MV4XtqsJ+PXdjUVY4x8
 oQOTrxNFH0njYz2m1FbB7u4zyLiFJefXBKe7kHyFGXuhhDX4wF6+Vh5M2brmoLKk5+sE
 shQg==
X-Gm-Message-State: APjAAAW6nEvcp5g8m1bK2WVJMQeVko2Q6zQHdiU7eSxTSAqkxct5Saal
 QgozzTSliUfCdyVWy/P53t1iVg==
X-Google-Smtp-Source: APXvYqwbFTvVJ2mShvZcluhdtrxZgL7Kyql6aeeQer/SjwvHzghqH6eDov9BoMhTRE3IsuKn5vGagg==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr15184445wrv.89.1559837123457; 
 Thu, 06 Jun 2019 09:05:23 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id t140sm2180901wmt.0.2019.06.06.09.05.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 09:05:22 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v10 1/3] dt-bindings: media: add Amlogic Video Decoder Bindings
Date: Thu,  6 Jun 2019 18:05:10 +0200
Message-Id: <20190606160512.26211-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606160512.26211-1-mjourdan@baylibre.com>
References: <20190606160512.26211-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_090525_113947_4FD956B1 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the meson vdec dts node.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/media/amlogic,vdec.txt           | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,vdec.txt

diff --git a/Documentation/devicetree/bindings/media/amlogic,vdec.txt b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
new file mode 100644
index 000000000000..aabdd01bcf32
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
@@ -0,0 +1,71 @@
+Amlogic Video Decoder
+================================
+
+The video decoding IP lies within the DOS memory region,
+except for the hardware bitstream parser that makes use of an undocumented
+region.
+
+It makes use of the following blocks:
+
+- ESPARSER is a bitstream parser that outputs to a VIFIFO. Further VDEC blocks
+then feed from this VIFIFO.
+- VDEC_1 can decode MPEG-1, MPEG-2, MPEG-4 part 2, MJPEG, H.263, H.264, VC-1.
+- VDEC_HEVC can decode HEVC and VP9.
+
+Both VDEC_1 and VDEC_HEVC share the "vdec" IRQ and as such cannot run
+concurrently.
+
+Device Tree Bindings:
+---------------------
+
+VDEC: Video Decoder
+--------------------------
+
+Required properties:
+- compatible: value should be different for each SoC family as :
+	- GXBB (S905) : "amlogic,gxbb-vdec"
+	- GXL (S905X, S905D) : "amlogic,gxl-vdec"
+	- GXM (S912) : "amlogic,gxm-vdec"
+- reg: base address and size of he following memory-mapped regions :
+	- dos
+	- esparser
+- reg-names: should contain the names of the previous memory regions
+- interrupts: should contain the following IRQs:
+	- vdec
+	- esparser
+- interrupt-names: should contain the names of the previous interrupts
+- amlogic,ao-sysctrl: should point to the AOBUS sysctrl node
+- amlogic,canvas: should point to a canvas provider node
+- clocks: should contain the following clocks :
+	- dos_parser
+	- dos
+	- vdec_1
+	- vdec_hevc
+- clock-names: should contain the names of the previous clocks
+- resets: should contain the parser reset
+- reset-names: should be "esparser"
+
+Example:
+
+vdec: video-decoder@c8820000 {
+	compatible = "amlogic,gxbb-vdec";
+	reg = <0x0 0xc8820000 0x0 0x10000>,
+	      <0x0 0xc110a580 0x0 0xe4>;
+	reg-names = "dos", "esparser";
+
+	interrupts = <GIC_SPI 44 IRQ_TYPE_EDGE_RISING>,
+		     <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+	interrupt-names = "vdec", "esparser";
+
+	amlogic,ao-sysctrl = <&sysctrl_AO>;
+	amlogic,canvas = <&canvas>;
+
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
