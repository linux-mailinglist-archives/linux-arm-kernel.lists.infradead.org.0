Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F59B99672
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oC50plEHu5UoYdPbSR/XN2gc6Qwhmn2s6CdxgG3mdw8=; b=C7waVb1ykiCVUu
	MxGmMZvRYi4FC1Vy1B2XdF+sEl3sSNXuM77rDEWewbh+2B1OTQxMXFPALI3LqkYMATdsJHYCmFgVg
	mxaGLGDPWGDalTtESMngHiV9hSOX13YwEh4Pd6KXU4xGxObOqlmt6IpDOPKKFdBLjY65meih5KNTR
	4VKzB76IdZndXZtGX2epJGKav9YDTx644l9SEQ66APIKEYDRH1XXOS4R7p3fZLKjS+DyK7MqQPHYB
	u2wINuWgzyXXc+8vVa9gg2PZn8blwze4pVH1uxalTH8eAYcA8mtTi7a9xQUzdKtYXHRSiJkhORQdJ
	ybmT8WGIiKvgxT2e/JIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o24-0002oY-14; Thu, 22 Aug 2019 14:25:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o1N-0001G9-6c
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:25:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id u16so5657446wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 07:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=532R/ZWuiDeQURoM9QVstK3VNVhlUb1b5wMTdcD1y6g=;
 b=bLOp1aL7F9THqfOV7Xme5zs7Clfg5QY4THoC3eh0rpK44IWqhwMShz0XtR/iqKv8kc
 NcQFoFY3MPRkiYgSRInPWeijRXC5S5f1rqLaSjPnKUoRSjG+eI/aOj7CvEefd4KmH/g8
 UDbf+h2tWFy8sjTBM8VbqE7RXx9e/19Xz+PxO7P48ixBT665fCzijh+eVYDnKaQUAXbp
 boZg+ini8cDQ9V7X9MhxT/SQPvbX6PZ3XuTgdtOJXKKwfG2+F7UZUNv78y7T6ckNRVMn
 H3BTICzwaKMl8djlpygj5xvQ9ogRv12RtOHsHbmYkOisf7LLjUix1ka3IbRQAxM9GhbO
 SDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=532R/ZWuiDeQURoM9QVstK3VNVhlUb1b5wMTdcD1y6g=;
 b=bSIXD4pjQdbR+kmwjAMQhs4C7V28b3MlgnSNTtu4KhW0Rhq6weD6a6yPXtLPl2f7ec
 /6JnBrdCyOC1ezzpWv3BNx4noWCP6AX0B1Xm0cEU6h2TJsQeXKXN0LDzHN8AiOS6rNwo
 XM/Cy1At94aow+9VtHL8IQ2TAN+PS9uyKP2OOHvfYOVZr+qAy/FzW4+lz3cc9jDn4m8Z
 SPAj1aQAJl+VKE01nG89jxrpfd0bySNRFIzwfDph7jEbfc0GhDc8LFA7GFphrd1WAMIr
 fdiwThHd80oI+oV7YAjVIi0F+wwWfvOvcHSAPHedMylOi2xGiOa2zccBMsPTMsYsjun6
 ivaA==
X-Gm-Message-State: APjAAAXOb//8ZUcBF/w/2DXCMiyZWZf7Gyzq00hIeRcSvBG9YlIqISLY
 C7DgxywzCXj6AFI1q9vTOZc4IA==
X-Google-Smtp-Source: APXvYqxNvQfiW+pmE3LmlxBbVlKlHM6v/pU91KToTSnslnmLS0Z+eHTKFQz+xNljPf3GF3C7gC2pJQ==
X-Received: by 2002:adf:cd84:: with SMTP id q4mr25260602wrj.232.1566483899812; 
 Thu, 22 Aug 2019 07:24:59 -0700 (PDT)
Received: from bender.baylibre.local (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d17sm25806547wrm.52.2019.08.22.07.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 07:24:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: clk: meson: add sm1 periph clock controller
 bindings
Date: Thu, 22 Aug 2019 16:24:50 +0200
Message-Id: <20190822142455.12506-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190822142455.12506-1-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072501_239109_6580FB3C 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to support clock driver for the Amlogic SM1 SoC.

SM1 clock tree is very close, the main differences are :
- each CPU core can achieve a different frequency, albeit a common PLL
- a similar tree as the clock tree has been added for the DynamIQ Shared Unit
- has a new GP1 PLL used for the DynamIQ Shared Unit
- SM1 has additional clocks like for CSI, NanoQ an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
index 6eaa52092313..7ccecd5c02c1 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
@@ -11,6 +11,7 @@ Required Properties:
 		"amlogic,axg-clkc" for AXG SoC.
 		"amlogic,g12a-clkc" for G12A SoC.
 		"amlogic,g12b-clkc" for G12B SoC.
+		"amlogic,sm1-clkc" for SM1 SoC.
 - clocks : list of clock phandle, one for each entry clock-names.
 - clock-names : should contain the following:
   * "xtal": the platform xtal
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
