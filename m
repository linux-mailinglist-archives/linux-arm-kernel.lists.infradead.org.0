Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877267C0F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5oBO5ruVeyYLa9nvYpcLL3BxMRDSTGQEl6IsfBvxYGY=; b=NOM8wuoVGvK4PCOHKjgOrwtVsL
	Ia7RrZWAEz0Y9YZMMyOKP+RNrR8Z1ajQkBOFtDzNlvfTZyX1hMDrOIEhsJIXh0ebLiUBH+a/2WAKC
	HnynXCGkcU8W4MIIvE1ooN2HrWmfyzqEBph7O9iVw2LhavjYudxHhPhrorWjDGPrf84tzF1zA5JGH
	efgGbwJUPvLXs/SGbCc2uED+C/PuWIpsEotONrrGSOO0wXtnMWC07JdAlqtD3Nzh0UP3ytBHhFLhA
	AF4AVnsAt72SbJP0EKNDR5djiahonYbqIVf5Z/BTlun61DBY21IeOnsCKjQx5fy/Kw/cq5Whqw4Pl
	u/ZI2qvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnWM-0008Qz-NU; Wed, 31 Jul 2019 12:15:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnUq-0005Rn-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:14:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so59590575wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
 b=kzR+HTfyhqOF5B0psynwHitDS5M5lgyvesQmRWyJVlV9jqMOaUnE+AVFRXp1M4H1Yu
 xn4FMMwB3LiyZTWnm4rZ0nOG2r4OZqBi18gRFUqxrC9weYcDY1E0FavjRHhW5pTtUjuu
 gxUa5C1VfZtk9MXIbl82EBNGyUinA5CXVo/4O4u9V33NHCjscxUt0eSYo2B6krLA3bk1
 vKc85SttiGAvhvj2dTxKNq2vUcVJzUvA8dKoZlBzDKrMIJZL7WArbqHaQSRLTi/lwxCi
 m7RAxchFhPRZBW/pEkGuLftOLhfeEP3DBP283XWvwLO7iAb1GllGbdMntPm9eOZWUx1o
 hrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
 b=NQutbrL/xmgNWpDJjd0QZsOCjN6k+LFG9s3zr1i5JbBulvzut1HNakIjxj2uGjDXTI
 HczxlMt6b71hy3Ulzr3n6lxrveP3XK9+1j8A8EmW1L/2PnGkiyCenxw5l4BWfhvQvh8g
 XXSP1AxY+fJ9JzLaKc68CGwfQHLAtZQi2PrOiX6kKzuuVhVnLogZwSReOSYDEZVx92tS
 SFIuR/J4oxwHskoB7iETqJcwktwF0f3hMl8RvxI9ixDJADwD+EXIMEDqaBWuzrHyEjQx
 zIFd6Xjy5FhxSqulwAtTUuj2nvUCHN8Arbobk57Ej6DXEdsBliI8w/VaQ6nAXWpUJsFP
 bfCA==
X-Gm-Message-State: APjAAAVMsti9QF+0OzDkGSaYZpqlhkI+My/jUojGdJz4hH2x4xBLsG+a
 D1b7O4Wjw9DKe7c+U4dowd2WBw==
X-Google-Smtp-Source: APXvYqwiXLefKrRh2int86J1ClmPTnKB6ds2eofOnlZxzgE2XsT6NJ7qlB851jUxzNz+12Fsd6Bh7w==
X-Received: by 2002:a1c:3587:: with SMTP id
 c129mr114572270wma.90.1564575259044; 
 Wed, 31 Jul 2019 05:14:19 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a64sm3613713wmf.1.2019.07.31.05.14.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:14:18 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH 6/6] MAINTAINERS: add entry for Amlogic Thermal driver
Date: Wed, 31 Jul 2019 14:14:09 +0200
Message-Id: <20190731121409.17285-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731121409.17285-1-glaroque@baylibre.com>
References: <20190731121409.17285-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_051420_612703_A7AE5711 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add myself as maintainer for Amlogic Thermal driver.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb2b12f75c37..299f27d11058 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15910,6 +15910,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL DRIVER FOR AMLOGIC SOCS
+M:	Guillaume La Roque <glaroque@baylibre.com>
+L:	linux-pm@vger.kernel.org
+L:	linux-amlogic@lists.infradead.org
+W:	http://linux-meson.com/
+S:	Supported
+F:	drivers/thermal/amlogic_thermal.c
+F:	Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+
 THINKPAD ACPI EXTRAS DRIVER
 M:	Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
 L:	ibm-acpi-devel@lists.sourceforge.net
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
