Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86944CB6F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7C7Ob1roqolpaLaTytdSIjWsutNUkroHt4JxCa2ayTU=; b=sOMmFE9TBLpzAQ4j4qeO60Oj7c
	XOxi+BYJvJ8jVKjgyAM/uzzJMKNwFY6HjAC0dKHJL7dAnFonpeyFgsZpQq5tGzpTwTf0dMVi0nQpa
	c0Ty1Gsy8tOLQKDS+fzM38FatYBpn6FDPYQBZJfHLJIzJbppL/2yeRIDdJ3sebpM3RTj4Q6uXvpaZ
	34qJ5VLpkKPrmhCqW826kumjjEElQvAfmvuM6bZNpHkz8U77ObMWn1XISXPAV3x7xRzjaUl84EcFt
	WbwW8Ku1s4GKIWm1jgbfVCAE2qqBzIk0OmZsWipjWTaIIlexpOsQee+N0uJeHK9MyIMYzEGn9POou
	v1iNKiWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJUo-0002Yh-3X; Fri, 04 Oct 2019 09:03:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSo-0000l0-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so6158690wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
 b=Uuvu/VJSglYBjP4TqRtcqrbm88Z5R11mtl+miilq6RbbTApcuegQZtgcVbF3Z2l4xF
 fYOcVF57nVCXu11oNaPCMWpEB1Rzmx1qNlpeiMvvJ7Cm6fPMQ7qMKOwTbMF4qovVwWd+
 ZKdUW6DTje6WFZcUrBHlgODVyo/NIbyeABF/9oi8kzzB1DKbbNqbtzus/zj+6dZU2GAi
 5F/A6OQ15K8yih3MHAAFv2Pynsq3zqIk1KH4njoip/9rP5By7m7OUNjWXKMAtggu78Gi
 88rtqaVawgFfgePpOrUFfIM7psIQDOzBoVKfFg1nx93JDAEPRFboi+8lYlUDbZO/b0at
 NfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
 b=L5Xo40pnSlE95UpA5ryBDYjWhavRxPC99knz2K+xlGP9iR+vMASXOz30t8aDqwrH8o
 lMyH6splIlcKsAuoGm+Sq4yePLzFEo6+yxkpaeU3itAT1/gMbQaLgGKtS8IROYBD6OWN
 T3i8E8y+HoVP1qI6aZlf/SsBp4SKmJcKFQQtDs1VIh8WnEN/FHey0KcuQxKtCJvNtcNV
 k+kQSzsCjEYlJmigTSTvI7W1CXz7WgMfzULVFzaOj7EZIfoPIDgj3IJ65ZhUXM+XYYBm
 RI1loyuQ8FJqzw9oWx0uQkpvKKx4OTEGXJunELItuLNWLr3u1ds0ZKj7JuClVWc+KsDD
 tcDg==
X-Gm-Message-State: APjAAAVbcEcmNd+ED8CukK37Qx0gImtZ8gyx8pk2wC54+PxhnNqd/Hfm
 AYYpX+mUPB8TuHNgt7W4hTzNgw==
X-Google-Smtp-Source: APXvYqzeMc3UmkSHx6AOi3+gnVZS5BJKpJ4oVQO5L4qeV7tfoJzaVdQ0uB2B6KtLlKTAR1/xlZ4wKA==
X-Received: by 2002:a5d:4f8a:: with SMTP id d10mr11319014wru.276.1570179685339; 
 Fri, 04 Oct 2019 02:01:25 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:24 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 7/7] MAINTAINERS: add entry for Amlogic Thermal driver
Date: Fri,  4 Oct 2019 11:01:14 +0200
Message-Id: <20191004090114.30694-8-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020126_750164_2DBDDABE 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 390c3194ee93..bdc30d740342 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15932,6 +15932,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
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
