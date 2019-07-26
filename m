Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE1C7662B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgsNTK8fg9joUKJ9oPv4JxT74yxZ4O73EMJO+cyvF8g=; b=onGuxsXUvvsUc+
	aKnjVTJQS+cp2ikRskOheBP6g+MVfyTb/aChSwaWQyPo6wanYQ1mT+7YAbxIQq74xfagxp40C32j4
	ETe3Mru0Jjs74PXa+JSvy1EdJSiuUM/tjaZwMoOYAQA5JTIS0JUVvkOKkBa1Zn44NlPTjHMZJFrPJ
	lFhWL3gPw+7b9JhkAqsEPrBt7wk8vC/NgAofvS9Wq8dxNyxUQdlKUYaspx2xKEzK9DUey78IGDghh
	X5FrQ3AiAs8TDIsQt6+Tw5yoo81O+8PpFnwa4qZrH2LVPgBFLil7/ASfBrkF7HfWdye1MvmZ7hvSe
	fvT7G+CvAfPom3OVnyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzdZ-00043y-82; Fri, 26 Jul 2019 12:47:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzca-0003OY-5J
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:46:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so54411731wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=20qFoI2zAcPj/2YkU+y26itShjeGgYjqahabkwiHIZo=;
 b=d8QZIZxg3qalk8cFoc3e6Svi1f1hjZPya7iD801QTZ6MeKg8ghkNFcSYyjgKo1/fyF
 2iUDoTmf7nkIXIeYwpgXuV6aWSBACiYoJKgOM7zwAuX5NJEJD7eh2RFTWcOLZSJY8db2
 /nun0C+jShXsTAOfFCkBO4v8xgSwa9c+Hc5i/kDmTZiOnjqm0U3qL1T44a1ZPqQORRDg
 lNXiiAjurl9dM+VmxMFWAZ7sKRBcocVAiNHj3U1yWCh5yMfP52f+zH1HUtfaZpDnw+Fq
 jEISIgjgDgCYC0YBVIehl/Q4KuzWnytfTwtRfQnfZYYH3Qg8odBhB+WqizrLnxpKRLT2
 EBcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=20qFoI2zAcPj/2YkU+y26itShjeGgYjqahabkwiHIZo=;
 b=ROTiWHLX4+Ah34nu9CU0tiJ4vlSCBdSsT4Wo8RBiiH20zcT/ufjY3tdZBajCPMQnEL
 chR9fnKhMlNhU+W6VASNJt0tG3awu6MVf4sHnRDlYaylFv8gVRtw8/Vtmvozp8tuG7QI
 CTc9wTCEcbBqFtZ/wKHyjT54xzSGPhRmhkeFjSJBaG2414IQmUKf+Bcf+Ki63j0PWE/E
 Y+bKCPoDu+S4iShUJMvp3j1jcutiWTID2drfZrepqGMHo4vOiM9bACIyUJfHqaI/UTJm
 p3w2sbwt3YuUq5XczSxkegVrOIIvjs6WGwjeJo1IgKXyEtim8yUXQcjVidm3ryuDpIk2
 s6wA==
X-Gm-Message-State: APjAAAULyTg9BGHdrPdNG9rB8gFMGNSiMgjjuK2QpQskiSzHwoWtpPK6
 LjC/7CLKG9afh2zMGBQko+W/vg==
X-Google-Smtp-Source: APXvYqzLBzFzlo7nLvJmt4fKbevNt+r1fN1E5ZFnZOsl8lhgIl0SZeLHq4xpPKRJt37hUlte8hZ+zA==
X-Received: by 2002:a5d:4ecc:: with SMTP id s12mr21563wrv.157.1564145211051;
 Fri, 26 Jul 2019 05:46:51 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 05:46:50 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 3/3] arm64: dts: meson: add video decoder entries
Date: Fri, 26 Jul 2019 14:46:39 +0200
Message-Id: <20190726124639.7713-4-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726124639.7713-1-mjourdan@baylibre.com>
References: <20190726124639.7713-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_054652_200028_FE01CDC8 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables the video decoder for GXBB, GXL and GXM chips

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi  |  4 ++++
 3 files changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index f734faaf7b78..0cb40326b0d3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -845,3 +845,14 @@
 	compatible = "amlogic,meson-gxbb-vpu", "amlogic,meson-gx-vpu";
 	power-domains = <&pwrc_vpu>;
 };
+
+&vdec {
+	compatible = "amlogic,gxbb-vdec", "amlogic,gx-vdec";
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index c959456bacc6..a09c53aaa0e8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -848,3 +848,14 @@
 	compatible = "amlogic,meson-gxl-vpu", "amlogic,meson-gx-vpu";
 	power-domains = <&pwrc_vpu>;
 };
+
+&vdec {
+	compatible = "amlogic,gxl-vdec", "amlogic,gx-vdec";
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index 7a85a82bf65d..a0e677d5a8f7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -144,3 +144,7 @@
 &dwc3 {
 	phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>, <&usb2_phy2>;
 };
+
+&vdec {
+	compatible = "amlogic,gxm-vdec", "amlogic,gx-vdec";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
