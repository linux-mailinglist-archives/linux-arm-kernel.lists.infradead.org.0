Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B41DE66B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEDa469J8NqiLpAkZooC0NaOJCY8pAvcUwBi+q7OMnY=; b=BoMm8fKgqhIJUU
	wcSt9mhkH4ui/xKlCosskalCqrRztLqVY3lDypIRDnMCRQAYP/AGYIgtVjr8Wd+Ky5kmRMM/SJxSp
	h23CEMXotHgNgjRJHd+uCOR5vnirSIqIAJKQHv6IIfQxOgGDxEi40Y89XGkcml2RYTOgPOQR0a14a
	AWmRwAbxv/OUgDLMkpfKT+lBTNv2PJQq5v7dTLUOjuDmUo4dDJo0FJe2sGMeDZ/jcXm9kLBUoduFU
	9P+Bdlky5GaMZdOATNNAGCu8cfHEm41ZapOBDi0Of3Pjb3wWFD1YILM4cS85vTtp8wVq6CMzdcrNf
	0NcpG1+zIDiapwneUqcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Wq-0001Hi-1A; Fri, 22 May 2020 12:11:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sc-0003Ry-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id n18so9588576wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=Sn/1CrJlRf1gaXAt7BzExoLU8RuOHChRbTQLpaUrzwFYqGsov68ZYpiUu778e1h74U
 EG8H1AkAkI/Dvmx5QKB9iXaqQh4CeJTf3KZiOAOTno9BIiFgfkjQQ3V4IRkEH4GAPrLA
 maiOekJ94V3I7H6hUXcjbEOxaDc55leACFe7VuKpdTyg7O80elge/QfPQjJeWku+bhMk
 /BOFybbSX0X7y3Qvi81k2fAIAzdXkIexmNVingkHUbHWITInUkDyAjfPXgMuJPMXVerx
 QZT3djIizjK6MVClkQM2eCBMIBdSWPweS9uJyC7sYma38spotFpi6WHBHlfhEvvRmcPV
 FXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=M37VTkzlUFe83O8l6RXuBGstdZ0V+ZtQZ1E8fKGJjrNCKLPFNkZCuoGaGMvwSlLBqj
 4LdJPwCky7Qe/oRFO+7b7kG0+BH79JELiANcyBnLhJ/CQONd6Py4mAnaxe7g816BMuML
 spJxJbpbU0x3gLNO0/IR4f1OtuVb2k0xo91ycQa61R+v8Ykgn/C7c+PRVBasGAqJ9TjW
 5DIJoqz4/+IfCom9fQt9+Gkvr17BCEH8uMXWreU1v0esfp6Hyxfk9uR9GDnpZsegFgRM
 WO1dEJ7yG7R+13ulT9IrVbRM2AY+veUZw/qh99tMq1c1MMPD88DOG79mdSNwLbAoLoeq
 +Z+w==
X-Gm-Message-State: AOAM532Q5vr0WuONcDWEHtK5x8MMBWRGPQ4257P3AAuoaRlGBZT4x4NL
 OiNOY63hj7tdwUcUOQc8B8w2DA==
X-Google-Smtp-Source: ABdhPJy2DwWygp0CZukF1c5MDhWbG3suEHoLEk61djOMVZnj0q+0DRdXHTp94SuAfm6DtS52JEtM4Q==
X-Received: by 2002:a1c:4857:: with SMTP id v84mr13962835wma.106.1590149252025; 
 Fri, 22 May 2020 05:07:32 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:31 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 08/11] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Fri, 22 May 2020 14:06:57 +0200
Message-Id: <20200522120700.838-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050734_302319_0B36E3EE 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the Ethernet MAC node to mt8516.dtsi. This defines parameters common
to all the boards based on this SoC.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 8cedaf74ae86..89af661e7f63 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -406,6 +406,18 @@ mmc2: mmc@11170000 {
 			status = "disabled";
 		};
 
+		ethernet: ethernet@11180000 {
+			compatible = "mediatek,mt8516-eth";
+			reg = <0 0x11180000 0 0x1000>;
+			mediatek,pericfg = <&pericfg>;
+			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_RG_ETH>,
+				 <&topckgen CLK_TOP_66M_ETH>,
+				 <&topckgen CLK_TOP_133M_ETH>;
+			clock-names = "core", "reg", "trans";
+			status = "disabled";
+		};
+
 		rng: rng@1020c000 {
 			compatible = "mediatek,mt8516-rng",
 				     "mediatek,mt7623-rng";
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
