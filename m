Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293D1CDE82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEDa469J8NqiLpAkZooC0NaOJCY8pAvcUwBi+q7OMnY=; b=ZwU5oJykV95osr
	cGLf1bOLbK3h3i2VLUScTUQBuVOB3Tvm0BUWONVjVP2NtgDnZPiuRfv7NlKjICCr4eTMh7Vxp3lmY
	R/m+K09PMs/39ACvKGCGOy/aEfkYv67nniHwVzYv9BscoLtRU88YXr0QChMb7J5E4XdxnWLRWm2su
	3MA6ABa/fTvl/EpJrPdjIaqrcpwJGmpK9XoLyIubpnZr5bxbhc5SwZxj/6ZFeDUl4OVuCqelEfirT
	BxKM4tPPGs6uXSixfEzWTAFuww430rad8zTLd9KMbxBTQjesDVUg08JEVbOpX0gnC4iKWNsXt+098
	gNzHQ6axVrCrdGC24Vmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA6d-0000CX-Bb; Mon, 11 May 2020 15:12:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2n-0002gP-AD
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so11439483wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=JIdJlCRVq/GMgbBOvi6/7vVciRUSXXPqqjgduOgvL6hA0KWWzhAvAc4R1L0GT4gHDf
 8IwpdH2Yu9XMwIwKiNXbtmKgEvK4I/GzELYFo8rR2E8gwlPB3G4Ci5J99YwzgjqqQ3mm
 tKGH8HwJEXN73O+tXJbA+hKlAPPmJxkYMDVJOuNh/sm37mW+SRwSnwEvlor8o9Rx9QEH
 hnJ+YkdjEzwA/2jbkn4zicFLDMTmRXu3oOOCdGkHMZqEr7X95rALqp2a1WUtMH+ozBxQ
 FHjKG0IMFQJ9PtkrWaR8RHbB4qXgsRrsjCCu27j+GJ5AhVxFQHMrjbOzvmhOeEw2l7cW
 +F2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=VVKotjM24D237K3zMGTjV3/WoQV/Umq7GcHqmB2T5+/aKua+A4F3z4KV8yOt+mELvF
 45SDO0jkX0lfHXCcn2leAsmyrfGsE99fpVAuLJ/J0KhvoDXU5hCL6CljDA3mOUnBfauw
 ocG5S6HL86jWw1iVP5QPbg2xOMUyJFJSmSbuhcYa/qF8eRTdi5GGEiqae9n4+zW5TSLH
 bmc1zjQTulvzhI+JRDn8iFC4U1ULKqQlwOsXmlpQeex2fBCz4FzpE0e5DtscHVxXAl0l
 ORJTK9/t94GgJfr1a6/fWvUVstkN3uO+P+IQ1AakY/9YsXa5qflJo1ygQJdWZRmsjEnv
 3PAw==
X-Gm-Message-State: AGi0PuYFtorcg2dimR0kW6+3qv1B6OaRrZwXYgg02zugkTHCe7jcoUl9
 aQJqE9cYXMzW4CRy56G5Bit06Q==
X-Google-Smtp-Source: APiQypKchqURWEOE156yp9c2Gtsg+rjBGU1OyYDs5zNKt1tBVinXwxb57TLkJavCyiOfPrG3uEzb7g==
X-Received: by 2002:adf:9264:: with SMTP id 91mr19344771wrj.362.1589209715886; 
 Mon, 11 May 2020 08:08:35 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 11/14] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Mon, 11 May 2020 17:07:56 +0200
Message-Id: <20200511150759.18766-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080837_469590_9A334F0E 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
