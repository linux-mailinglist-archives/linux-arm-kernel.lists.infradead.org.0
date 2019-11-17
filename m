Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334CBFFA02
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddb2wlVvXpHSquO3J7C/Qzf3Nqm69jzxztyCFV4v7O0=; b=hEoOLqnHDEquJ9
	KRWNbyhsBUFFAIy9sNLYcngX3slQmv8FhjMOGkPqfmRCVDJTOGr5umDFzFt56PwoGpkPqvJWqxCZS
	/LJYraNf37akWe7dEzDGWXOs6vvbXp6HgqIlIV49M3h9Cu4AbYwPGH1nWSi/Pi05PJ8jhAN+dRYEw
	FgqqCl7NZQ8Q9pmXtKD4Xte9pAfV6jgC9Thn33hO4sy7XRrQg7VbPyMkPCrdnVDwf4UYY7iUFRUHn
	2j/SS/aGe8pxPxm5+fFu78tj5sMrhv7UVJrEFK6tlskUQ2bdkQ98McUbfkj5fuKj2hihEMAyRAxdS
	CmTarWSH+iRuMyQIy88w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWL6X-0002J2-9Z; Sun, 17 Nov 2019 14:00:41 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWL5q-0000mO-5e; Sun, 17 Nov 2019 13:59:59 +0000
Received: by mail-wr1-x42f.google.com with SMTP id e6so16394455wrw.1;
 Sun, 17 Nov 2019 05:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AI7oneBVr9Sh8KI/EU2QuzQzAJVjV4haI51WvzEvAjc=;
 b=DjU0C/ID1NfUiIWc88ECCm8hYmVDymKmODomd9NlTEsQA8kBmsbs9Yaj+kV6+S3A5Y
 cVEOSM45iyG8La96kCE9baDwHRe7utZmIwOLfBjEvaTeUIvE5zqLB02xRFbOfu2VCHU8
 dSreasOblG5NC6BNBkl60rb8ag1Et8+4ALPBseCMh438x6pL4cnq9B/li7a9Ss5gfygZ
 SgnQxzr7dY1oFI26nE4jTwDuvXdIyYdjNLcMhNr4pTdUXSMwE7IfUzkVgkjtKrLpscEL
 xeru+GS5Jn/GLwnLZdcdvCOH4y70Yvft70eW4Y1ZXWfkp5kmSZrEWNiLBHGLU6CyZMrG
 6OLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AI7oneBVr9Sh8KI/EU2QuzQzAJVjV4haI51WvzEvAjc=;
 b=cu8idhNe8mFqoXpt791qPz3kC2ISC1ibfAkjnFIbiJ50u9pFNA+3GtedtzOt3JGxyh
 ApV51YGj4iqs6GFvVlgYeg1jXWodUYdXrB7MyuNjR1OVfLqVa9ip8hjOsQ7ct7nlhF1L
 qqPBeWxbvqmXxs8Py7RWx2ca8EAHCJQl9LywJIe3nyXWvgp4oJ+zR2LcSRQFs8P6euv/
 R+2ztYLl6ZxK68lbas3NeKBrvEOybY+VS2Y4CY+WVI4HKS52iAe4H0//rnsBLu9++qLP
 XzlZGUaTTyr+W1RQpye7jntogZGbLHuM40tGy9UitFdPy+YXIQldDudCl4TlQLMpM7Wn
 WM3w==
X-Gm-Message-State: APjAAAWJqZ+JjGOh/gsjU0Grvx566BSir3sYDDN7IBr2SyODROZVz5gH
 hWcpKEG1DHEKOuP6sJzBB2ODdygw
X-Google-Smtp-Source: APXvYqxuh9+V3F0zaSkPtijZBTMVQwPp1ojlde26tDjEtxtx16d/NlKmKiJeZpZDN+YTugtSvMi/+A==
X-Received: by 2002:a5d:42c8:: with SMTP id t8mr20309817wrr.87.1573999196558; 
 Sun, 17 Nov 2019 05:59:56 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n65sm18004803wmf.28.2019.11.17.05.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 05:59:56 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 1/5] dt-bindings: clock: meson8b: add the clock inputs
Date: Sun, 17 Nov 2019 14:59:23 +0100
Message-Id: <20191117135927.135428-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
References: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_055958_206949_F3C0D428 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock controller on Meson8/Meson8b/Meson8m2 has three (known)
inputs:
- "xtal": the main 24MHz crystal
- "ddr_pll": some of the audio clocks use the output of the DDR PLL as
  input
- "clk_32k": an optional clock signal which can be connected to GPIOAO_6
  (which then has to be switched to the CLK_32K_IN function)

Add the inputs to the documentation so we can wire up these inputs in a
follow-up patch.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/clock/amlogic,meson8b-clkc.txt       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
index 4d94091c1d2d..cc51e4746b3b 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
@@ -11,6 +11,11 @@ Required Properties:
 	- "amlogic,meson8m2-clkc" for Meson8m2 (S812) SoCs
 - #clock-cells: should be 1.
 - #reset-cells: should be 1.
+- clocks: list of clock phandles, one for each entry in clock-names
+- clock-names: should contain the following:
+  * "xtal": the 24MHz system oscillator
+  * "ddr_pll": the DDR PLL clock
+  * "clk_32k": (if present) the 32kHz clock signal from GPIOAO_6 (CLK_32K_IN)
 
 Parent node should have the following properties :
 - compatible: "amlogic,meson-hhi-sysctrl", "simple-mfd", "syscon"
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
