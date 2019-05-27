Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362D22B659
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Go9O7/NkY2izuMXtGQoOOPNR55fW3uwe0xbR7xAdW+s=; b=OlSuG2cTeAhcUQ
	kqPn2kNTDxmyrhq3Azd9W5/yba1gJycUhec/VlnFYdF5HUjVzu3ifbkvnhCngrHXhHhS6Gvl5sPbA
	WS0Kf+AgCXjapn4mQJW28NMZvEGUkKZ8a3JkMCmnW0PMurf9MMQAAluqwGYzld24FktN5qqXE38TG
	OnmHpSwFDXy0x2+GFXb2ok6M+8yk+cBZ3LdoAWVp8pLWvahUEDFRZuo85BI3IBNcEfHGPkG06xmt3
	5ieZAEMvtMj8w8T8jpN91GfZU6FuoyiOo0Qg9pfekJeDlDroik93gYhwMygpiull0G104t76vn8nv
	LlXYqoVSfkk3KDd3TqQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFcX-00053c-Kk; Mon, 27 May 2019 13:24:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZs-0002Gw-P3
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so16943458wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1P5QlVaHw/qutd0fn2pg3sEjq4K4xykyak/BNOBt7EY=;
 b=MiJuoVo4XE9EvwCi1lJ/KTjNn5vkTGuOAboQ1357fR8CCKNsFMkHx7jbSvFLyf8nAK
 lT0K3rrLl7Udusvz9kAPZ2Am/rHTN8UJMd2sjIQeV0EUo007PCehoOLFxmjZNm5VZY4r
 DFPwp91uwX2GfPpY1/vvPH0Penf8j3IsYBnOJu3yTpXNEVMdNLFnyVeTf7xRpkTODG32
 hRFdP+VZyIPkWJaHaiWHkrWfTleo4gO1n1ozF1DlcemA7hAzh1FDoyJgGNELfPPNkog1
 pD9D6pirVHuUyUozIsY0z7VhmmegqBdW7iVCknjA9PIhemNQwpp0NhCCQwSQvOKlTabG
 +CqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1P5QlVaHw/qutd0fn2pg3sEjq4K4xykyak/BNOBt7EY=;
 b=KlLIiIp1kKNrQSUD6PkILfvTjK+3kqH0ACdsYYxrjKInjz1NP2oVpXHsOwPfGl/KTm
 3n4vCKahkWRYVkwnvOL3VU9YXSX3R+ctvWK4iaydZ2AFl6Gw3RhPfzOe+qFNDKlVNzMI
 v25rv9GLahpqdRh+kRrtbJDPrFiVpbXNzlq3R1YaiVfLjm4FWdLRCJ729kPwfDeZNJ2V
 qMQ35ms8t6YMRs3qsy6visZTn6nmV/xBJN2zLzt1L5HXs4DoFSx+se3VLJO06/8Yv53+
 TaF2lvVzr1XpOVZvAl5iVQAc9iIg18fFQ1FfFB96QIcCFs0D5TDhpWzjfz/Z4q7LfJAx
 Li7Q==
X-Gm-Message-State: APjAAAWgXtXwj08rdBJ4WvTnitFtRVJgw3PZgOLbxgx748BH1P6E8uac
 7gW1Ww8CgXRfKnSKAXevw92aEQ==
X-Google-Smtp-Source: APXvYqyWlquctEhMRszF7odvCHXFI0pvNktDwIVJZOgmAvW/p89BNtQ/h0utKRsS3NvmSJeu3FKaGQ==
X-Received: by 2002:a5d:680f:: with SMTP id w15mr7705835wru.349.1558963331213; 
 Mon, 27 May 2019 06:22:11 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 10/10] arm64: dts: meson-gxbb-vega-s95: add ethernet PHY
 interrupt
Date: Mon, 27 May 2019 15:22:00 +0200
Message-Id: <20190527132200.17377-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062213_578314_3D5A223C 
X-CRM114-Status: GOOD (  11.30  )
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

Add the external ethernet PHY interrupt on the Vega S95 board.

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 9b52f3dcdd49..18856f28fd60 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -128,6 +128,9 @@
 		eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
+			interrupt-parent = <&gpio_intc>;
+			/* MAC_INTR on GPIOZ_15 */
+			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
