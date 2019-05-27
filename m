Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123A12B650
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPpsPOcrR93TdxZF2lrMEqrISIJjSzC/OGXBQPs6rXA=; b=sd3vLJfFgxeu18
	DBJpiI69j68kyA3jngWCltt/eHCq0p5OR8ws+FPwZS+BooiUAIP1nwdLV4MuWmwj/WmShKnfQUrl7
	y5GRsEdgwxezzBXd5E94HMESW79zPpwueycPQ7WBjXuWQJc6Vh4bGSFLM5U3yz0s+gcWij6b+WOBE
	XblmkHRBsQtG7vLVTF+Yi7MTCZgI1lxKHFkHORJc/EHuvolUdoOFeLAeero65sLdDtSkYSiyRQYrU
	oNGUxOadug8FzkpPsIXvp543FG/98V4Oo7p5r/BKNgjsURr8TFyNXBCicOkJZ1noC3dz3ZJ2NFg7p
	+WpwZ9xiZIhlsZ0Yxtsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFbV-0003zz-Dn; Mon, 27 May 2019 13:23:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZp-0002C2-Qa
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so16177505wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DdDiX896+ezCVjE2omOCRKNF6RoJ/lx1xAP+K6/8hcI=;
 b=0taidlTmPCtCcB4JDbNmutRrOjR5sU3c+dVwtPaU9IRCQ0DyzKTGsFCl93SVFTE3Ro
 ccsPpDhPzt285NJdzFErdPt9OneOuVKy1/L1PDEl9dCYLm0T9UaLXGlEYyjhQtPCWriL
 zrhOYbgtmK1Ugz4k915t5pngUL2+4rnS2a7HqWAhcQ6+FaanvxOO4NFuH7GQon8VnL++
 Fhq50kZs28TwNur3YEFFbaU5B86p8vVGc7WGCryF0W1/ADPopbOehNDwlihgMmIZgIUc
 nGNegBj2pyTbz+GlzpmImgUv2alNedlx60dzK54mdtA4lBTFjNv4T0Y9NU68Lit/I6n1
 PaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DdDiX896+ezCVjE2omOCRKNF6RoJ/lx1xAP+K6/8hcI=;
 b=YhXKiVq8bLVv4ci/jL4MOCABuf/AO/pcemEsE9ddJmboAt5frn5hvNq2ba7uENUr0G
 B1YEUmYJ/eK01nj6Tpw38J+0MMPxYtsFipVoHwznjoQLD0IEXv1RPPbLYRZKHIq+wJGg
 OVLj9cW1lp58Qico9k+L5JEzcZMMUuD3QVXUPOSrhjxm8/16CiWB0NpPKzJKedxMYGnD
 +BTKRy2SfBk5J5YzqQxfc/yRPmeGqLMNTzq5daltCErVvhITAeZJTk53G2GfxJQ0I5xn
 oPo1b9bojeD+6nucd70IIncg4ae07Amce087nDufflexdUvGK9FHmbB9nQHgfKoAXMym
 bKnQ==
X-Gm-Message-State: APjAAAU/1aG3cNRvGbleWFxazdEocigpRyluOtMpx75FEVutxY/ufJaR
 2NoxCZZch+BPwoMvd00kPyoCTQ==
X-Google-Smtp-Source: APXvYqx9B1l8Wqo70PYjwXfiLcOmhOwoS7q8t+cSLTwJ7RDvTS2xOIFZIkC/7C8I34i8CtpyFtMlkg==
X-Received: by 2002:a1c:7a0d:: with SMTP id v13mr9696782wmc.44.1558963328167; 
 Mon, 27 May 2019 06:22:08 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 07/10] arm64: dts: meson-gxbb-vega-s95: enable CEC
Date: Mon, 27 May 2019 15:21:57 +0200
Message-Id: <20190527132200.17377-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062210_269234_BB041D89 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CEC nodes to support CEC communication on Vega S95

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 6738b2aac9a0..be8799653ad7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -93,6 +93,13 @@
 	};
 };
 
+&cec_AO {
+	status = "okay";
+	pinctrl-0 = <&ao_cec_pins>;
+	pinctrl-names = "default";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
 &ethmac {
 	status = "okay";
 	pinctrl-0 = <&eth_rgmii_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
