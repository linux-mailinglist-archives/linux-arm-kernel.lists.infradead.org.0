Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AE2128D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=irfgGuzHiq4borfztOr1bO6YPFTQ1LPfuIcNFEsybjI=; b=KlHFobH88hZKohsILuj6g6BRK4
	BVyRXTxrW4m8S/sDVM06YfyuzREweRNn95rirMohfVkOGyRL+CPsY/APkV/GxcICbjEqeOy6dE2WC
	NNm7fgzt7sujHkyaZDhiUZ7F63GLHoszo/OZ4M5Nv0h5rJiMKayC8Tj7hAOhjb0hT/Cou58zIhHml
	+1UTbn/V2k0LtZ37duzDk5FrbfwZyQXj4ed1qJPiPThtb/BFxXjCYlnuM/VKD2RN6CVlOD4/qS1UD
	FuiZAYfBvgW8UH+nxVF62UWra1z+/fqKjVNIn0ScEOjHl+0VNCYCxwxLQZe03I0Xz5IT5clnz8Dv0
	CnrjbR3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSdI-0007VB-V9; Fri, 03 May 2019 07:29:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScV-0006ZO-Db
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so2324912pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BG5vJhn6fxD2HS6uv5WOnrZXuoNwm2WEGnxC4AxOH3M=;
 b=jUoDZV+DCWUU3EUgYBvFKoREV8sJ6B/1Q75rQ5H9tc3KxBOWSt8/3gr1dnh4TFhdfQ
 ga2rbPD5nLju7YKiMQBEfRtUhF/oTwweozr78id4TLzAgpq+ngGV2y7R0vohC0bP7bCj
 zPR9I82nRFHCHKWtgxWam4lgKNnAoao2Tz1rdB0PD2MLrbzgara2d4o7nEcDumCc37AU
 dydBTDKK+loQH0eBRU7X4Iwz9vuolfYjqjDBzfJzTg1TJf11O5mSODS3OvZiYt8KHzpk
 DkK5NN+OTuuCunHlSWR7t4dha6OgAa9lDxf4OGTU6iGZjgN3ywf0L7p9YVaNpOmu982K
 xQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BG5vJhn6fxD2HS6uv5WOnrZXuoNwm2WEGnxC4AxOH3M=;
 b=YiQBp7UKBnnRk1z3S1hOG4lPBv2hoDEHMU4OsJbI980v4xRxIw/OY2mMA5Nri7ZtJG
 9b+1HmG5h5kU4ziOuMYph1x2z1D2lVzc4nXCO+Kq6Fe44RWPRPgKgVjXqsop49plMl4s
 4G52J7EXDfKE6UKAwehHzGPkZCOeHnu4H04ELlOUZRrNa+GfleuN01vEDmJO6204r+VC
 nc2wiP1vT8Yf3LvNyzKHLZQBLtRsGmbw40BqEtQUiCTVlodrMQq8IuxxW5fSLmD3zcGE
 XrnEOoCgkq+5NXjJsIxKbyQ7U5sNCJNc8J9Q9iLYN8kXd9AvbThnXrYYV8AA4bAVeQYH
 qZQA==
X-Gm-Message-State: APjAAAWDUAR/IO0hgrVlPld4ByaVt/e/LRqwpkSNranqYblAiS8ACF5g
 tVUMoxIVEcEC8ngLszLydqo=
X-Google-Smtp-Source: APXvYqyu8pnDxJZ7NAaHywwAUuyZaCgE1lEL2nntTbOQXneI+4QAq5jkWw32noMF6A8h1uKl77+3Bw==
X-Received: by 2002:a62:5a42:: with SMTP id o63mr9308857pfb.170.1556868514630; 
 Fri, 03 May 2019 00:28:34 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id x128sm1892707pfx.103.2019.05.03.00.28.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:34 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 5/7] dt-bindings: mfd: Add H6 GPADC binding
Date: Fri,  3 May 2019 03:28:11 -0400
Message-Id: <20190503072813.2719-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002836_190793_6A81D944 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for the H6 GPADC binding.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../devicetree/bindings/mfd/sun4i-gpadc.txt   | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt b/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
index 86dd8191b04c..eeaf27eb8abd 100644
--- a/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
+++ b/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
@@ -5,11 +5,22 @@ and sometimes as a touchscreen controller.
 
 Required properties:
   - compatible: "allwinner,sun8i-a33-ths",
+		"allwinner,sun50i-h6-ths",
   - reg: mmio address range of the chip,
-  - #thermal-sensor-cells: shall be 0,
+  - #thermal-sensor-cells: shall be 0 for sun8i-a33-ths,
+			   shall be 1 for sun50i-h6-ths,
   - #io-channel-cells: shall be 0,
 
-Example:
+Optional properties:
+  - clocks: Must contain an entry for each entry in clock-names.
+	    See common clock-bindings.txt for details.
+  - clock-names: A list of clock names. For sun50i-h6-ths, it must contain
+		 "bus".
+  - resets: Must contain an entry for each entry in reset-names.
+	    See ../reset/reset.txt for details.
+  - reset-names: For sun50i-h6-ths, it must contain "bus".
+
+Example1:
 	ths: ths@1c25000 {
 		compatible = "allwinner,sun8i-a33-ths";
 		reg = <0x01c25000 0x100>;
@@ -17,6 +28,18 @@ Example:
 		#io-channel-cells = <0>;
 	};
 
+Example2:
+	ths: ths@1c25000 {
+		compatible = "allwinner,sun50i-h6-ths";
+		reg = <0x05070400 0x100>;
+		clocks = <&ccu CLK_BUS_THS>;
+		clock-names = "bus";
+		resets = <&ccu RST_BUS_THS>;
+		reset-names = "bus";
+		#thermal-sensor-cells = <1>;
+		#io-channel-cells = <0>;
+       };
+
 sun4i, sun5i and sun6i SoCs are also supported via the older binding:
 
 sun4i resistive touchscreen controller
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
