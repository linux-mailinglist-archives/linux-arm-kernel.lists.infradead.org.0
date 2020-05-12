Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FB31D0049
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itj9RrUDLEbOwjJ7v1fTnK3iNFzsuI4ObZWcVOAvdQ8=; b=UYsW3IgM5WPt0p
	yA4LrknM9F/vyOT9UHf+DxPAj6gLMnO37YgmChOY+Xp4zOxlflZ+PMC5/g6a6DipVisY25kuj1xd5
	AIH7YNLOpZ5rrAlJ9fMucnQLkF6JskTQUmXGhoPPYan5Qv+qfDbejqYhZbPYpk14CN/wZq/32qST6
	J7vO6UVG2JO+BiDPyW/QEWA38zFyZNGweQ3sRs1oMOpVCSNtlbpMI3UxXHsqCubpuOp/uQGz468Zr
	qJ+EcVl4mNGx5EhSbQ0t9GlisUI8h/0IhAp/aLzd22ywez5oDKXwH/zrHud9CdFeoZKj68HvJlyct
	X5QY3051IE2y8MYjZATQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcCG-0005Qk-Fl; Tue, 12 May 2020 21:12:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBM-0004q4-36; Tue, 12 May 2020 21:11:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so17715091wrt.9;
 Tue, 12 May 2020 14:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/KGQVBeKYkVYbXvdSBspLFigDe6VZAF+Wx8YN9GDcNc=;
 b=LMZNpxE32rk8g0yplUvy4mvxgaadGMPFKXvoJds2A1GV8eft9FrgFGhZRXfQkivZ4l
 7LmM5yOK/Y6PoacpmcdrJCmxmueQlKLUzqEtvpAWg9ASeZEtUi9JPpk+Ni+1+PKYrpxP
 nCa+xG3RCo+xdPw/05n6gX18g70QhUgBDwqt6zNgQlhRbMpf0esPPJai3Tl4PSvzmMWD
 oVbfa+r3D5ysABf0T/td0xVDus7aC2gEujsc6/l/Vihcr9B2C9qwdsKm4Du5ilvPKc3X
 0/+3HTGlA59ZolkeWdQMc//4lDo/phW7a1lvnjQaXrMg5yaL1dvPhQZ61Xb1XuOKo20z
 yLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/KGQVBeKYkVYbXvdSBspLFigDe6VZAF+Wx8YN9GDcNc=;
 b=k204FKfX0hcx8Oz1lx2lCcJ+EIZhDXdlJKdLxP5c3z0XbwZjc7Fjz7zLuO4nVSNGHO
 iq4vKl2QDIcY4TRnmtui2gYcYkuxpfrikVhG/wJp/nESeA3qSsJ1Fjpsc5qiNSWxBLFq
 axW0PjMDpVYcwdcYoTZ8zsWx+zW+AImjx8b6OPvxKqR+BvUIn+s39XNgDhwfiojI+peo
 nsclY3XqNeJ4ozWOFMC/nF/XK1vcxKsb1IbQ0wJ8f05U5m0aySYZ1AMuEurr/mDTDlN0
 OD/qz4Qtlofvbu3BWGfHG+N2Z/b3FSUbLK/W/FfAGU8iFfVhl2ljgflZxF8svoS8JmZg
 zbUA==
X-Gm-Message-State: AGi0PubwwD3r22zixY1ZtcpnmPS0sHkkm7NbHhD46pzpM9UiIL6EjfWz
 9KsV7mkY3BTUhpMgA8cltnA=
X-Google-Smtp-Source: APiQypK7cfT9u0K0wRgKSWfrFo5+g3J3L9kW9wLiJwLr06ncTXRn0nQoT+QRUji8KiEu1VYA8lF92g==
X-Received: by 2002:adf:fac5:: with SMTP id a5mr28720107wrs.210.1589317878732; 
 Tue, 12 May 2020 14:11:18 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:18 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 2/8] dt-bindings: net: dwmac-meson: Document the
 "timing-adjustment" clock
Date: Tue, 12 May 2020 23:10:57 +0200
Message-Id: <20200512211103.530674-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141120_128498_A76A43AA 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRG_ETHERNET registers can add an RX delay in RGMII mode. This
requires an internal re-timing circuit whose input clock is called
"timing adjustment clock". Document this clock input so the clock can be
enabled as needed.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Rob, there is a soft dependency for this patch on commit f22531438ff42c
"dt-bindings: net: dwmac: increase 'maxItems' for 'clocks',
'clock-names' properties" which is currently in your dt-next branch.
That commit is needed to make the dt-bindings schema validation pass,
because it increases the maximum number allowed clocks for anything
that extends "snps,dwmac" from three to five (here I need four clocks).


 .../devicetree/bindings/net/amlogic,meson-dwmac.yaml   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index 66074314e57a..64c20c92c07d 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -40,18 +40,22 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 3
+          maxItems: 4
           items:
             - description: GMAC main clock
             - description: First parent clock of the internal mux
             - description: Second parent clock of the internal mux
+            - description: The clock which drives the timing adjustment logic
 
         clock-names:
           minItems: 3
-          maxItems: 3
+          maxItems: 4
           items:
             - const: stmmaceth
             - const: clkin0
             - const: clkin1
+            - const: timing-adjustment
 
         amlogic,tx-delay-ns:
           $ref: /schemas/types.yaml#definitions/uint32
@@ -120,7 +124,7 @@ examples:
          reg = <0xc9410000 0x10000>, <0xc8834540 0x8>;
          interrupts = <8>;
          interrupt-names = "macirq";
-         clocks = <&clk_eth>, <&clkc_fclk_div2>, <&clk_mpll2>;
-         clock-names = "stmmaceth", "clkin0", "clkin1";
+         clocks = <&clk_eth>, <&clk_fclk_div2>, <&clk_mpll2>, <&clk_fclk_div2>;
+         clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
          phy-mode = "rgmii";
     };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
