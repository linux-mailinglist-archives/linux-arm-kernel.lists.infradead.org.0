Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C441C5817
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEDa469J8NqiLpAkZooC0NaOJCY8pAvcUwBi+q7OMnY=; b=BYNRw/x54NTaNe
	ThA5kGxvKUxM/Nq4QwSMeo21UR2MeidPcMDxKMjJJW/QBpskrjqi+RmaTt3OTz7cjfXnM+BwQbVqH
	sOBzVJnXjbbcb0/wr079va9dtQUnu4Lt5u2LNNMVyN3dP3a07IcEjN0nFWlmNqmOSzWjjibGxg6Vt
	CC+LxfmvF267fb/r54RWrKvi+jn1El4xdNRmeq50HrIH8J6LLQ0WTBuCC/7eGcnB1jzB7qq4uFnVI
	eYAI93nsO1dmyAu+XTw1DCjAx6KT+4noFfi4eHZARmVoER+J9UWHOOhEwieA91iw+JXb/M6x2I2Mp
	U5YGR5FmBgSWDEHksv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyCg-0006v7-3Q; Tue, 05 May 2020 14:05:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAG-0002Nq-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so2907913wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=cVzH1dPGpMqAXPxKb2+d0LSY7/HTueVOi2Sdclc1d5WFXroNiTnCGax06ZRUzUzxBC
 BUh3y57hEA0QKHn0p8LMuwuIGxUcGlnDrT6dMvKvVo8CknIBmfP+WtMUK/RXkzf+hQAd
 CG7wMuCkKOANszSzqBn9jqXq1Ze5auYS7lGvNg5z+nbF8yG827NVgpPaFCp8YOAnKKI0
 h6VO7RNUL3pV+so74edRAnGDHHHcdwfPC6u++KxWTUZe+FCdgfTpNkF93LmwoywsYj/K
 gYxW4eQvxZ3fbG8FUAlWnbR/kU00rYU8f+Gn2FKmBkWJv/OV0h6bhhfiL4fJ8mrEn4a6
 vcng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=KOqmgmsgYL82u1X/jku+4O0qDEPJbCavFbEfRsMJsO7eIzase67SAW9ufP7sp0+bfP
 pbDJIkaIFBqRKzPNk8rf8ZhXHwRkfyhnBF9WwiQ4wiu8Qcj5WyhoIicJmrZflpaDg6Mk
 W1sNtHeiq6QU3Dp+aO+NzxUbIBNBGvosJGtBR9psGB1bikFeXA9MnzTKJ1NxLCUOU3Hh
 YArFRoL/9V2tOyNnNOUMhqqrfFoaaj17PrTZgH1AiFBqnfEGQe0MVhnbqGQTKDlIJIxR
 jw8aoXDbprfH4mrFeM7rzzC98SRMzJSe/W0KkOxOg3d7o7zEnmokPVBVE0/c1PbFaA/L
 cGQg==
X-Gm-Message-State: AGi0PuZMkaGlUz3oqDWmYXz6DAJHAPVzD1W61AdEsmAeIwWXdLNKeEOQ
 rd7YVMm8q7atpv7ZaFojDfr00g==
X-Google-Smtp-Source: APiQypLYiuxJLzQGcByYdRNRqjThYrVDv5Mb46r0e9HU0s7k3vsW2WSb3TSlR7LGVUwNfPWr1XlEkg==
X-Received: by 2002:a5d:4043:: with SMTP id w3mr3951385wrp.266.1588687395284; 
 Tue, 05 May 2020 07:03:15 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 08/11] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Tue,  5 May 2020 16:02:28 +0200
Message-Id: <20200505140231.16600-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070317_062019_4EB274B0 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
