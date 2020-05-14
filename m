Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D41D2997
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEDa469J8NqiLpAkZooC0NaOJCY8pAvcUwBi+q7OMnY=; b=jUR+jZHiWilptS
	TzhRL+FVDQ8FRc3yhKR8DflrNiDjoqG4ZwgsGLjbAitX6d4+UViE4o8iIeyVslYubbP01V5PhlfG0
	LQ9JY289VQ6d/NAzYEyjlTBZ0d/X59cYNRraAOw1d4x3cWaVrfgNOlknfYgNMZSz4V69tF1bnQv8d
	k3dqT0BuyEx+1ipRqmtO4noHPBppmhdRZVWFaK3HCp5cgZlhvjwbjbb/eA/L9LB+1C4C0dlfgsuHQ
	V6Y5No6I3jyyo1cuuo7XfHOmArqprLVGq/pvPrmin4Ck/pWiiTBThtziEnc/4Ta9DR6OaOJCEkXq+
	sjNOjHCkHvrQnxi3b5HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8qM-00071F-OP; Thu, 14 May 2020 08:03:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n2-0003zm-OL
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id f134so16975067wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=HEmrcvM1MOsX04VShtRQfw8wX95eDldjdaz2ns3Yi89VAbdiUxlVX87C6nzdephlup
 xHJMCz6e0Z5r01RY+lzPy4wHor8E2bIsMkvwpFAKFaBcg96Yv1a32HR47oaX+TXsTmxa
 tZ7BQztG8IQr3XPcRIMaWryF7+6ihgGVZH91ZuakknnofVFjDvamLmrgqsjevIBTIecd
 D//XX+ZSlcunyYyK8Qs563ju1w+pRSmKcL46Gx+DIpsLzRGBl4u61KIqVfRWAeiKOdzK
 G1WrNxSeiQ3W4YBBAZ1ChwL/wg09tzntcjmSjs7CEdvDYc5GX+643Ls0LEsYi8J2650b
 emRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=WtTzfyCg21WTr3W4Xi1qKfWjh7hCardqklQtEpVV2fv6gsHSrUSahTWbznKvSrGUiA
 Mjh3VojcfjW20PBz+kO45tZ2Dw6i0kYQFX00MnqDhpgqvQvxN+V0a7ZqQACJThbxTYxV
 XetOQEdzboLE711DIl4sEMXtym/yn+J0HypCNYJJ9SAcDl1F6BRobG+efN3fFmerNYAt
 WQyWvphFiaoaOQwibVeDVL+eGYeB5kN4o0WJmdcFIjg8qcS19tqQZv0ZBBS91MpfrhS8
 gFQXp3NpvEYJr8LWy7AmcXFOP/8i2hHZVuYCmwvIpX0uu4xhcap426ovci+7llJzMlDU
 cqDA==
X-Gm-Message-State: AOAM532P3PuTqn5fxQZxSI5Ayu1jiwcM+nfwLSgUcB9OyoejDOHASjCt
 1Bjv0zdI67+/LuiqjtxLoBBezA==
X-Google-Smtp-Source: ABdhPJyVjd4+wt6kvtuaiL+tPilOBT+IL6rIp/TSm7VviUo+tkETpkHnlzpF7kAbFINWELiacsGnAA==
X-Received: by 2002:a1c:3206:: with SMTP id y6mr10610900wmy.12.1589443223305; 
 Thu, 14 May 2020 01:00:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:22 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 12/15] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Thu, 14 May 2020 09:59:39 +0200
Message-Id: <20200514075942.10136-13-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010024_846843_81008F05 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
