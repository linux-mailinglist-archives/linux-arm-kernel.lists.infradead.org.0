Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B1A1C9AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 15:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOyl7nIueBsZgyHRToyzPgMOhh1txgFSPfv+RpdBA/s=; b=FzDTAtmlxxkboH
	PX4w7nGltwyxefxXC/reUrOcMDqw8xGXSzEMMbrDP3s1DXHOBBy9bXzr3iBDpl/2nLC2F/QQiXvxL
	gxv6AdPdmlQ6FGsw+moUT2hJVgeW2KRCVHfvI+dnlpqN7iUjI+yXjOQ4KvyIEcnEbRhMtsS8Z9WQx
	C45BWXgspKNE8NERbvPXJUuP9lCO/hDqnW6hL8908IHqUn+7PRz8HMFtEtJAcYAYawCOxyqxxD3Ma
	vYInJIkgUS8b856NbpVJ1P6M3xnVx4Pz9/+Ewfur8Fp+m87xNsPNVa5pnLs3rDUQVUPDeH8IFGIo8
	ZPT8kQmIF0IG9nZ3gnvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXv9-00018G-Kr; Tue, 14 May 2019 13:56:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXul-0000r5-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 13:56:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id s17so2876161wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 06:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Z3XkroftFEOZ+oKRERn/ytHnCEs/zdgDA4cYGSY7DY=;
 b=srwoGdM2pi3FUKVWb1bVPrzv+PX1GFaTRXsw3dRT8fB5USvGoV1sYMg53QdODFcxno
 Q0dQocvYEG5gARTTaO4iSMlbRUw5ZFHdIjykqvm/sK+VgDNWhBLVYrpWGt/VpfiSU7L1
 feo74fD6wjwCBdVYIDgvTwfDVDbfS02dmUaA8PZUv2D2A5SxpCtrd2ZsTJlhZs0E71C4
 XjYy9KGfSI+p2m6BHcAB5HvvtmMu81IckC0kmMmOvOB7mANygS4KrcrekKkjs4bJjqyW
 agiikBfaeI4Ee70Qu7YqT5BhX02BPGcNvWkzxUtuRfIr5n9xl+YCHs4tWyp5Vv/xUCxJ
 uOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Z3XkroftFEOZ+oKRERn/ytHnCEs/zdgDA4cYGSY7DY=;
 b=NX4W/bTeYcx0mo6NOsTbqeMDI4m2INJHhV1XTH94LYtgsFCqh+NQqcfpOqRu3S8+2X
 +TFTLg45nrgYvZF1x6Kp/pNCVtjOc5QIib9WSWBmAS+0nDzmZtzv6Znj7DCpI3373Hu4
 NhO2UIqElr7iDzil4tjVN0ubR5+VnMATZU2XgmldCuG/29PJ1xcIYxdxSRnCXom0YeOK
 /VGIyqgj7j+wz6t69idKXkob1/uVS40xDMHM6bJ8I22GfsWMEp3JJXKUAuCS6ouPwO4I
 dS7YmjOw25YWFmjPJKCJNANyGr46HZHXic+J5IiyAOlA8LKa3dV3Z854pEbR6n8puDbc
 jHEg==
X-Gm-Message-State: APjAAAVOKXNpyB0d4z9zAFJDDUf9fSOnBZw9XdcaN/UI3MGQTcvcrFE0
 gzYdt/YC2mdldDRAmc5MhLQ/Ig==
X-Google-Smtp-Source: APXvYqyzK4kQnCJQWuc1QqSsGoqGq9pNNeIqQotMC679d3W+STr2oaNTyTLUAtjUp3koLKbf/YLfPA==
X-Received: by 2002:adf:ebd2:: with SMTP id v18mr3451395wrn.108.1557842177761; 
 Tue, 14 May 2019 06:56:17 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id d72sm1375764wmd.12.2019.05.14.06.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 06:56:17 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v6 1/4] dt-bindings: media: add Amlogic Video Decoder Bindings
Date: Tue, 14 May 2019 15:56:09 +0200
Message-Id: <20190514135612.30822-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514135612.30822-1-mjourdan@baylibre.com>
References: <20190514135612.30822-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_065619_341732_AD5755FB 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 linux-media@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the meson vdec dts node.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
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
