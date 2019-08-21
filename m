Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A4D9875F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 00:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhctMB5RNmijqfqXKhDyopLck+7PdAjF10D6Dv+wD40=; b=Wsk9/2B9/GU3hPMC9f9kCKTX3o
	fdn6oI9QKyA2V6yFTLrd/i30sA9uZcmB7FA7fFTKHdoGLSrbs59TRrZn84krKo8IHOry9qVpXxTtF
	Emp3u62oWaEs4cHFBdUyCmHa7t6yjNcinBLhTo+W+8bMvjX9weAuBQ//eAuELz8IvQEgoCXTkoAiG
	JJefmZFcft42ZTrbY+iJT0PF/gkN2oQXoRCiiU9I0m+nkFTjOHU6jPLz+6FZuJNqhxYD0rjpGACt9
	l6WBC7+AQK/nq92feVKLqMfJ0cMRJ7cX4OdKncTQ5NfzD2lrQX3nUh4qOQTXQ6HUuvzZTd4xpnD7C
	ghnRyz1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Z3P-0005Bu-W3; Wed, 21 Aug 2019 22:26:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Z1r-0002Dj-K2
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 22:24:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id k2so3504145wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=60yWYtJLk0Xp9SLelz+MaI60GmV6Utt18fBkUyG2qxM=;
 b=KJG2eemyCR3ZMbuekyI3MbIiJ81wrfp8NRjrwX0zZ7oMU2Tkk8yLrW3jJTGbAl/5k2
 Sm69ZxmQP0OqEps0eURzAy9Ian/sT322RExh+edk4NxWuBzMSUuwcDptsNtfsEKgPk2d
 ZB2R9eUNlO7qSm0ZNdV48+p/qivyjeW6rkY9LpWv0xsGpo01wPiPsRkkuO5xobtg9rHm
 qw7P00OFPIldzDSTTMtWryFtEyScZ0a276vYE+SqPzFM82tubBrakI/AYpizDrZcN2Fh
 tfGTvH+0bZEtkvXH3H7B9OYgmcs9pieyPM1aTXPJos47Imcr1a94Ze4xHd4liyWt35u9
 5qSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=60yWYtJLk0Xp9SLelz+MaI60GmV6Utt18fBkUyG2qxM=;
 b=q5uEjNTeVkcM85U08Vq9m6C9bvbl55MZ8NZsn1Ol6XqNrw0q3x3CMGmWwxNYmv9Qkw
 Q9B4O/Hrzu4rSzrFzIsH3YPWUMX2oCpZc7Y1KtVE94lvkfTwT1az981LlwUMAWnzAGhW
 A8zfdpd4RF4cpiiF9PoS8EIbFUsOanYQXRWz8GKjImt6CqS4NSYuuiBEiRKkJqQZ5yWA
 HuwSI/R0bGFPKkTnm/nJHWiRIkjt2wMrdzb0OSA7M5SSyI1gS1EcH9Z5/rEBChM5f1lU
 aXTnmkbu6wCTlF9cr70BO50bHnm0sCas3XW6JOQ94D4Aeagyu+D2hD6txYgUdCh/Pung
 1aFw==
X-Gm-Message-State: APjAAAUqszKS5LnGSvE7SOXjCF8KPobekltcyg/PqeAH24RDxxWDWOuk
 mWjCcq0WYOAdPxwR1sRZfTxXRQ==
X-Google-Smtp-Source: APXvYqwht9LxVlp9IlMJVSETg91KaKJdV8dNDW+36WtFIIU2sF1g0DYgdyCLqNQoYIb7xJh8BnZBXg==
X-Received: by 2002:adf:c7cb:: with SMTP id y11mr36896014wrg.281.1566426270465; 
 Wed, 21 Aug 2019 15:24:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id f197sm3548549wme.22.2019.08.21.15.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 15:24:30 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: rui.zhang@intel.com,
	edubezval@gmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v4 6/6] MAINTAINERS: add entry for Amlogic Thermal driver
Date: Thu, 22 Aug 2019 00:24:21 +0200
Message-Id: <20190821222421.30242-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821222421.30242-1-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_152431_695885_A04F535D 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
