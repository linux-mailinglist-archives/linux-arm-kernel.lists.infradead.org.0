Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1618AD79BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X8mYByztKeq0hQceDMa5HM9QD3KlDxI9fl7ILVi2s1E=; b=Xw1QmpwH9WYD2i
	TCOeP1SlVhof28z/jzNEgkiOgSqdsn85Au3Z79bMXZUbCc/XE6VapdKiXB325u1lI5EnYOQ+o1L6f
	UpTkQsauWW05cywLVBasrE71RNSxk5DDTPWEmd3BvCT/xR/Isa/g9R8Q20KPtmU2x0NbdcrWhVKm8
	zmnjnz/6TT+57RuX1WwJ2yPEDVNfAg4xV23GmXAQ+KKzVlmGH7wG4/VgV54xmhEEGzL4C9m2tlMya
	c66hwWoVk3pUfsS1llKYHZIDa4c+2ffDCeV7W77kN9aM8UTqzvMq49u3mxfi4/3mDKGu7pdiI51O0
	cQSBb8iPSVjqSK+LkYOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOjU-0000iD-CX; Tue, 15 Oct 2019 15:27:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOjK-0000hh-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:27:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so9756965pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iOSSt4ZhUqn3ehxuv6bc7loSFHikhOWJ0dAyz4sll8g=;
 b=UrOKiVhNAQeoJvHpoi0Qbb7juPxHCpk6MK7GPbyRY7CM8W2h1E6U6K0AHft/5i1si4
 1c3xu1P6ckiPJtwjd7g1f1BjQYmCTqvFyixDZwQXvYslLtHW2SYJtebHe6Yl3C7ovWI9
 N6Z/SPO6iIIqHzwzQoVJA4Y01H6sEj5zMNwjO9vrGbzeryT6zdXeS2JS+FGIygwxX/yq
 izR23UE0ZHSzG57+w7OSVOpxj2nH9cmLTJswxv19PCWDvJv7Adm4ROD6qZLjnlfxaQFb
 kxDO3TeqkZzm5Q/u+zCmcyWjKv/Vd+m4ZYLa5Ph27LOb8IayU/jGoneh/c8kb28OdEEQ
 lwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iOSSt4ZhUqn3ehxuv6bc7loSFHikhOWJ0dAyz4sll8g=;
 b=U/lGcoCXTlg/LMD8wsVun3npYQd8gR5PoN61gYZ4pydm6vDHsyxGoaYix1rFOLUexK
 x4Wb1l7/Z9dkdl/S4y2Na6MgRA8k6k4fYxwWNE+HWxelzsXD8faRKpUiJG9gFdSvJwQu
 69RR3oVyy9E+erxuZePTt1zB/J20x3Uu8t6i0YBzxYmmMaDsICeMW86VEtD1aK8NY7Am
 qSUr7moYdBt8cho2p58yrbQjIqJlkyVCjHiXrm0gk/+0CvbK/IKCjl1j77/PfEfGqHS7
 BExfgPRzIqekvPQFpTQJbiCljIx/Ow9fh3fbVWFprnmiz3cR6S536tEQ6BfBRVibb+yt
 nFAg==
X-Gm-Message-State: APjAAAVsObLIVIKH2HDLOoZAfUB02Sy2YIPHg1EIpAeK8xOvdqmjWct8
 x48IBhiNOSXeg9St7CNN0QRCPqEWIXs=
X-Google-Smtp-Source: APXvYqxQECFXLF9zIPAzcU/sO8NG6/rUwytKyF12X2GxxvG6X2ZqfA2seJgRQAk7NJUp9UI+6jx+TA==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr35969820pls.23.1571153241170; 
 Tue, 15 Oct 2019 08:27:21 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id w11sm21158957pgl.82.2019.10.15.08.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:27:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] arm64: dts: zii-ultra: Fix regulator-vsd-3v3's vin-supply
Date: Tue, 15 Oct 2019 08:26:51 -0700
Message-Id: <20191015152654.26726-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_082723_051980_11A54A0D 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Regulator-vsd-3v3 is supplied via GEN_3V3 rail which is an output of
an "always on" load switch supplied by 3V3_MAIN. GEN_3V3 is also used
as vin-supply by a number of peripherals, so adding it also allows us
to follow the schematic more closely.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 087b5b6ebe89..5d7a8f09f1ab 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -68,11 +68,20 @@
 		regulator-always-on;
 	};
 
+	reg_gen_3p3: regulator-gen-3p3 {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_3p3_main>;
+		regulator-name = "GEN_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usdhc2>;
 		compatible = "regulator-fixed";
-		vin-supply = <&reg_3p3_main>;
+		vin-supply = <&reg_gen_3p3>;
 		regulator-name = "3V3_SD";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
