Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243CF2C0E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7+/hTCneNhr80OsdacQhdFo9hBdV7YAOIXhIhWMFA0=; b=uns32dgQSogBDy
	j9c/L7/zVTw4UVVTVBpU5Zy/ABx4NcRfYXu46fADTmp9MtVDOQ7tBCzm3Y8oIyIX6h5SupkLshcyo
	E7Wi88zUKAnjO1pmsQV0Ram+acXpuaWETWP76AMAk9Xy8AeVxmZrhNYnZvbn1jcRE44Nbh1LbHf+3
	IK0T459z13SO1jNxBN65kZJRa6c41HhUSjL1HPfW8jxmSujGcACM/X2RdCijWYR96VUrelhHDZu7j
	XQfxlDtes6XR8wi79dXwrnLta0gObqYlGLw1Jzv9TebhWEq0jqMIY3kl5vE2FZz3swQ1NEoeXoJrp
	1y70Pk5+o+2M9NWc6MyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVX9r-0002ZQ-PU; Tue, 28 May 2019 08:08:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVX9S-0002Dn-9v
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:08:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id v22so1719954wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rWm2X3Q1SHaRgDsfdal1fBD3D11iGm4q8VAE3tF/iqU=;
 b=ctHKr1LQXJ5vP+6axdeIJ+V9sZIoJ9v88fbLhQZM9CKzXmPKQkACV1zNcuL8tJ3IMJ
 Rr1DCS+lh5kGaXqFNvk4djnFFALMezxEZjRxbuIis5bBwJNUlvWtFRKK/uEn+zW4Zfac
 L/TZNlxszvAq6Jn66/fzhWOKX8AgMU/+O7Fg6qXA8O85/VeLQYdT23bxkLcEZqM9gH3Q
 YtpcVM/waV9YLR+yD5a9vPmygzJqf9NIxa0BxO6+esIKwmlSMws8naJIAxCgVGEko01O
 WuEoHz98UtI3LtPrzzfxG4Ka6p4Usy5odhD69vW4wg7uEuxnAa8uyOb+m3GqJDGe9saZ
 W8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rWm2X3Q1SHaRgDsfdal1fBD3D11iGm4q8VAE3tF/iqU=;
 b=G4NW50At4sl2EuPaHtrxn2uJALT0jZk6cJy4sqTIRgFPSQhoLdo7ScwkUxGTy5Cpie
 NkbuGTG5rAxscsvE22Ti8dx3guOqPBI1fPt+fTlR/Aru/Xy9q2DT7TCZPXmBRfJ2mXkM
 83+Hz9JHB+zEUnynvpQAR4UMlOqpOmx96oHZ2mLYr2TCMsGsuxuEUxNmc7utTN+GVt+3
 VBbjk8Ak55vXgIUsH035aZjNFr5aEXW2p1Rb0S4ka1cYnRFvHEx0gXfBfNYlVELmn1LO
 4Z0pQLEEiKxjipggwGnUamqTGKiiFOZWYXAelJ1wgFR0T7F/GqFbyGROnz8aaJBDjqa8
 Z87w==
X-Gm-Message-State: APjAAAW5elWrYF540IZx5SzPOyoMI9/xa4w5Lk4+XvYDKgMEEpFF3TAD
 W8f/293zg9mX98evVdi2PN3Vdw==
X-Google-Smtp-Source: APXvYqzCHJkvZAfJYctRLpCtxU9n2375PkWPEqPrqBU3t5zIM3N2tH7wsQ+C3uBM9n1nB4lMzlNv4A==
X-Received: by 2002:a1c:2109:: with SMTP id h9mr2249738wmh.68.1559030884486;
 Tue, 28 May 2019 01:08:04 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z74sm2456121wmc.2.2019.05.28.01.08.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 01:08:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: clk: meson: add g12b periph clock
 controller bindings
Date: Tue, 28 May 2019 10:07:56 +0200
Message-Id: <20190528080758.17079-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528080758.17079-1-narmstrong@baylibre.com>
References: <20190528080758.17079-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010806_338888_F36F3727 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to support clock driver for the Amlogic G12B SoC.

G12B clock driver is very close, the main differences are :
- the clock tree is duplicated for the both clusters, and the
  SYS_PLL are swapped between the clusters
- G12B has additional clocks like for CSI an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
index 5c8b105be4d6..6eaa52092313 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
@@ -10,6 +10,7 @@ Required Properties:
 		"amlogic,gxl-clkc" for GXL and GXM SoC,
 		"amlogic,axg-clkc" for AXG SoC.
 		"amlogic,g12a-clkc" for G12A SoC.
+		"amlogic,g12b-clkc" for G12B SoC.
 - clocks : list of clock phandle, one for each entry clock-names.
 - clock-names : should contain the following:
   * "xtal": the platform xtal
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
