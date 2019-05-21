Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BCE2534F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYRD4+R7mkSyl2eS0MK5PbOwQ08LKtE+U+fIFtibPAk=; b=Htux4gwesLjK5Y
	ROvGrv26F6atDvTQI9GIXq2wukLw7ckPr3UdEw8HvFKNWVHOkaX6AGq125NJajw2sEtFSFf0zV3o/
	HyX7GdcCMK00Zlvv08OeBdiomA9NyGzfQVHWEihUnfM7A+NxiqxpUiqEe8ufsX9BAJwkkAQ94T9YN
	7zDVONm2+/shlxvrUsPmG/8ro8PN7t7tzHyGaF4nbczfp1auTG7BS3pvjgasPO2YSQYlIce/YTsnP
	KwRwnEvWqvfIm9Ew99GxNn5Xwl+47xZVcJloYRYWuSGWyumOub/CGpNjNfxd45yssjiG7C9CptyWC
	uQqNBA9tC6tMaHTy7GBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6HC-0007Pb-3C; Tue, 21 May 2019 15:02:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6Gm-0006y1-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:01:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id e15so19030345wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cOkHldzyBFH9X/HosQWb1+4hRM7Ru7GoP6WYL8SoxXY=;
 b=iLz1uYNNrP1wzBd0TtjfZdiiXyUgafCaZPWzdqW1C7AyvgRQwNgYlnaB2oVq1fgvGC
 zUJGOHNaStkp5rxJtlAiNrMXntlQnmnlSNVHbdeiXtMKsI1xEPZ3yFVAYaB2QsoMHTcF
 4ptUEp+iYLSvFypp9o1FJ+OcsMQyC7ODhArXmCmmoY+3uaCQMNAk8MQea/UiDncY2VT5
 Hc3i1oAruKqXtJMHCwrwwjIzxbeycv14H5cmoulfEKDUZAPLikUWDFGVYxFa7vndnoDU
 c7UISO884tWxdVq/zw4M0UAHznZmVPLLg9vjY0yKsdHQ1D4C39VeZj4WvM/X/kkHB+Jc
 s8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cOkHldzyBFH9X/HosQWb1+4hRM7Ru7GoP6WYL8SoxXY=;
 b=fDFRn21TpBogEw/8OjFmr38WMbAYZQatvqsdYs2CIhh7WWcR/3iZw8L7dgMlUP6Tr6
 W/VuJNUX/LtI7p2C1jBG8FjYXZ4B7jFnEdlO0q7vmfxL1PZ3DKV4xBI/RDIvKd2Wc4Ag
 TcdXlcvIbBEkoVLLD/Mm38y7d5USHY3mNH/ZYpuM8ys5Rrmaqgi3EdjvvedRbzqswMDJ
 bdbCVq7Jyr2HWwZbWrYdAnekgzDerp+UYoH52jy5R8tb+dFWU0fz4fn9mepX8k3Jlvlk
 OrQg9EjHa49RtXgrfll7UE+Q6gzds6558+XBhUoIYgJNKuPpdydkT+noPNEpL5EeiLAx
 2oqg==
X-Gm-Message-State: APjAAAWKW42O9EcvF6RcdUam+F1AZdBlP/HwWoLI+rvczP9m0POzhsFr
 p/M61UrCpaCjqfFRK7/OE9flLw==
X-Google-Smtp-Source: APXvYqyIk/qrN/n0dkOKQIYiCuXs1z6aYIvyyVnYqLMYI9XDoGTJxEnIDige/eKJnv1im9nxaSSdxQ==
X-Received: by 2002:adf:b611:: with SMTP id f17mr52412220wre.162.1558450895175; 
 Tue, 21 May 2019 08:01:35 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b194sm3407505wmb.23.2019.05.21.08.01.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 08:01:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: clk: meson: add g12b periph clock controller
 bindings
Date: Tue, 21 May 2019 17:01:28 +0200
Message-Id: <20190521150130.31684-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521150130.31684-1-narmstrong@baylibre.com>
References: <20190521150130.31684-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080136_691405_EF42177B 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
- G12A has additional clocks like for CSI an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
