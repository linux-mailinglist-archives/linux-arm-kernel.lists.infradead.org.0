Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD493610D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8BGbpbtIUpKP8dpahyimHJB+kcuXsvSxJYzHOjT4mU=; b=ammg+M7MjNGlsR
	xzsm2xz6/kCkCzf19sn8or7d3DXOH6P7hgo//I/pp12DrijDtTYA1qu6eNCbR09uMUtObyDJkgefO
	KznRE9xj+Lve5tR7tOM8Q0DFSZVxsOw5+IutB8+ER5fbweR21wjnEW4e2EFckoSZfwm6TcEIouMd3
	HZkwHYk/QJeu9sEi0xanD9MSJ7Pcib6qiiuhgUWP8rDUr4ES23XkOk8UA0P+MyFq5hv2BIkt58ac9
	4o72DYH1EWG7ZD2kCX10Uu7QHYeEICUWnrdGOdH6tDVvLX5c6RetoccpSd2GJ1ok326uuiZNQBLF4
	75okalHnpgsjmPRiB8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYdk-0005on-CF; Wed, 05 Jun 2019 16:19:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYda-0005mk-Pf
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:19:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so2914110wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 09:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
 b=I6iYtRyHkalxDasmwHTdxIbaUYx8OfE1WKuOCK2uL3QagvAB9yZIe6HMa5tvN5XsKT
 As6+duPxxJm3c2Q2nsfdJOGlLxJ0ydJ9jDa+Ct6VYzHKmXaqObbRZYRgB9mh0xRMkhXb
 HMBFRwsRYKkMe5vhIXC9pq9x7WDsBvgJI/PWEZx+PLhE1G12JZGWx8ZB4lR59JwVk0QL
 uhmJ03bX50kVC0zfqS+0kgBNYuQWzOqLojgde1tokB1BH2hcmoZaC621q2mnQ/nHMKaA
 kEn0pbZoGkvqwtD40Ti7cr4enuhs7K2bpq39yahHvTEiVFOTUGGJY4eHA1VDXpV8BeZh
 CDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
 b=EmzxRVV7m67x/C3WAnF8WZfQT7dcfleQxlYvUoXOA+BrXGhmOYQ76KN/XdsVsi961B
 eybYrP6Vh6+NKuB2Epn4yaUYZk5av4zO434gFAvxhgCU2B4Snzp9l7ry6n5PkPdbRsp1
 6D0tUiZXyoEfDOQ/Z7Qf1Rapim/28faD+yVITUaVPe9HnOur/16Hp4CAtk3Py/NXD2Pz
 66Ndloy7K0STuqfORVk+MTEpeJG1G3POuqb4zYIhHYXoPrcE1WkebUzgmHhmllYdN971
 sRaFtiz2RACHOLWRttS05DAY3o5AwI6XoRl5teUkETmpuZMozsQc1jizb8qMZbUcE6bC
 lR2w==
X-Gm-Message-State: APjAAAVeAJCxRbMejPNztaYheB43NZLlserwoXWggA9vbVhB1HkXEwgP
 QfuXKD/03mmM3dSF2t9h3S0D6Q==
X-Google-Smtp-Source: APXvYqzNN46ciP4tkUC+7w5n/SiNmnbfs0fixCv7UV8/x5/Fyd3IoKD7kC2MipfY04SoR8aerHOa8A==
X-Received: by 2002:a05:600c:2116:: with SMTP id
 u22mr10861468wml.58.1559751580910; 
 Wed, 05 Jun 2019 09:19:40 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id 95sm40062336wrk.70.2019.06.05.09.19.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 09:19:40 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v8 1/3] dt-bindings: media: add Amlogic Video Decoder Bindings
Date: Wed,  5 Jun 2019 18:18:56 +0200
Message-Id: <20190605161858.29372-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605161858.29372-1-mjourdan@baylibre.com>
References: <20190605161858.29372-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_091942_837780_52302DBD 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
