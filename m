Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5419404F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rf1YF78MBAFJp0jV6UtGnvFDgzyDFImLpoIFikPbYXs=; b=Z9BkbsE9khF8L4
	44C766pflNUPJEP6WwVPMcAfrgF9vb/DXe1UslbEGbbMwnsDPKhhRejaMUdeFuk8gaw4XQpaTEUOk
	bT6lcuG441RETi5nEJos1g3p6OgQ+vAfLNroNUgveN+D4DcqY5w7ue4nBWCufleex68wL1RL0NWHD
	wDHnfF3u6HDuV9NOwrsylRgbTQ3fuHANQx9IFtPrPYwrTsjXEjmEuAoNaFVT5q5cU21rVvez5mIpD
	qQXuRkMgaGtk0U8FM1qXTAdcF/989DRwtahYc+71AkaJhfa9zVfGviBJyVKrL/RjEJUff/FKe/9EE
	P+TffLdGopPAYssYZSnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHStF-0001Sm-Sq; Thu, 26 Mar 2020 13:49:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSp8-0005qb-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id z18so6531917wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FYmBKvDX2uegk8HiuHznpAIvR/lIVMa/DD0ivvJWoKc=;
 b=WFIzC18kvsFjgIJ4FAaGh/U0e0VcyLOupRhUbB4tyLL65yxfgasTs/rTmfpo/K+C8r
 PfCapoDbaqg61p+hAHE7MW7uwGmcPNN0d3wQ/3UWumCMIsY4I5Gu0s4TQqOEeflO4HDm
 Ttxvoii4MFFwJXu1wNm5hk7cnRzqx10VF998dfGBf81edsilQuIw7ybIwSV1XlVG32Wx
 rp9uaoLg/EeTOZni35QERf+9CqXseJQnfGe8h5UtBa65ktyqDSGuejQiF+iGS9Vdm4Ve
 GSEu8/QXFsKWm4phRr9YycLomXzQvo9aVbJTThCeKu3Hvs+yExIEH5hDMK0Tvf21dSaZ
 O4Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FYmBKvDX2uegk8HiuHznpAIvR/lIVMa/DD0ivvJWoKc=;
 b=RcoJI67Lcg7ZA/US4Cza4orDub3NrHQMEGE+70gDu7cCjXIv6jEvNOcIzWE7+O+dkq
 6tYlCU0+vpGCNe6GuL4wp+colhefa2MnkHxZkKpH/rBuM6AKfwjjQTVsa/GHZMge0ZIY
 wZzWdxh7xxD7k0pVJIHexcvzOn5pBUyFam3ItlFIpjQRKKIB4YMMMTVPwEzB8B1hFGhh
 BcscoP4vyasLeLeFuxKt5UEjihxzdyGcJle8/612fl8eI+BhVDDbEfGshSCtutebfjXg
 4BXoKskn2sBKl+2oY/Mklz96IJVJiCK3Snab9NDvv7QNXSgUPnlDCeqUHunRGsmpRus4
 38sg==
X-Gm-Message-State: ANhLgQ2WRyRbYQ6hNldAKy3nOsg1XzjLwRXUkEoNL53ojMoTjadEu+wd
 5EDIVYeLaeLQ9TSQf4D1zfJlkg==
X-Google-Smtp-Source: ADFU+vtDec2EyGWkeh0RHipBALtSpkGygZ/tofT3qFJR5rH8aahV1B9w9HjqJoFyqKyUoc7AtWokQg==
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr70540wmj.12.1585230328275;
 Thu, 26 Mar 2020 06:45:28 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Subject: [PATCH v2 13/14] doc: dt: bindings: usb: dwc3: remove amlogic
 compatible entries
Date: Thu, 26 Mar 2020 14:45:05 +0100
Message-Id: <20200326134507.4808-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064530_477083_87381C6C 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/usb/dwc3.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 66780a47ad85..2ef0bcc30648 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -14,8 +14,6 @@ Required properties:
 Exception for clocks:
   clocks are optional if the parent node (i.e. glue-layer) is compatible to
   one of the following:
-    "amlogic,meson-axg-dwc3"
-    "amlogic,meson-gxl-dwc3"
     "cavium,octeon-7130-usb-uctl"
     "qcom,dwc3"
     "samsung,exynos5250-dwusb3"
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
