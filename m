Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5FE1F1541
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOCslv+Sww/J/q9BDye840CuMKme5TBKFnLOTFMN/Ig=; b=kXAoO7JQ9X5IcX
	uYjkjSimLClZXJrh7mNdzyuyQIl33mXwsA9teoP/KtM0PG884mLHCJ6kVUxnT2gNghLi8Snr2Lqrz
	FEN9MIi4Dx8Oz6pb/sDxdNmbWzVuN5+aMBMfw6tLKCItkniaMG+JBWJ9hjllR3CCZ+TUUMZfNgkzZ
	aHzYDl0Myk4U/6Sx2alWDpgqDg5UUYVXUaDal5KlzoF/WItEqckApiVs6hQbWq9MV2oQKfPCqADQs
	PGuyf6buMOLCUzahBqLj4zbCB2wXAucLmyVWivZMdxwmeM5e6qxAfdQmWeyVYWTuRh93Qwf6nLISe
	de3Or+5WoGMKfMk8R6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDvn-00038Q-OP; Mon, 08 Jun 2020 09:18:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDug-0002Lb-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id g10so14582115wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=80rN4Yy/llOMe52Inz2Rf3Vg/VV/GbMwITSO8biBc4M=;
 b=VKp1v8JkbAxrUOZSvdERfeYsryZbG4ZALZU7H3E+o+6qhK0KqmrwmQfvLQLKo1lxT9
 geGP1GMMeDqB7Di3ltJnV1K7KMH2gzn2kIpY+gx+PlSRNsgyXsFHllVad/i+cGbo4CsS
 27YFviT9Pmq465c4nDOupAAw+2KBKbTKPxWxipemlZfAEqrpsEAwTZbxJ+3bO/tzk72B
 5AmZlWcI/UfSCYy3xhoexs9q34DQdcb0JO7LwJT8qSKtHMDjH9D2KqJ20XT74/wpZrlN
 W2ofL5I7munj2PmfKNFVxEmI+WqmdvjHx4gsUc+FQtiawDrWNi90aEXAnvwKn5M+H1KB
 AWuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=80rN4Yy/llOMe52Inz2Rf3Vg/VV/GbMwITSO8biBc4M=;
 b=pJaBNn0PLYnBtNodNZ66iuNQeRTyZw3hIP31IFMGDE/Es81hvuKgEKMI0TDK9H4jCi
 d2XPNmvvZiX4rP+UEENew15dRoDLALrjumUBvUYP7c5YUrLK/vJS7Fk7aJGbhaMtDblB
 1v58Y4MCG5W8Ld2as7zjTrzC/IEZzbEUtQF0syMxNEhWeQIaRQNiVp0d/iGP4kfXCAk0
 ab2bONkf1P1NfFcf0ONNg/B+yMuUshy7WMEfJqJo0pj+LphKp9Ou4cYrc8r4Vn1F7Dx5
 qBMEaJePRe8VBDdSPl0FpX3ohYyp22xVyDL/eMo1qylfXlgKtaSuKo5vww+SKy5UH7yf
 Caag==
X-Gm-Message-State: AOAM533CNOuTFt0w0ObJ4tfdB3I78CGSmLL/55/ItjvhpfV/au29ZUF8
 8PZx9QFBcyFOgMr4hQubeTxsDw==
X-Google-Smtp-Source: ABdhPJwJa9Vo9lkGfwDogiFZQ0nVGFlp0w7rxsYeJta8zYKqW8uewQsscYdWko6YwfV9ExZreI/2qg==
X-Received: by 2002:a1c:5411:: with SMTP id i17mr16162838wmb.137.1591607868962; 
 Mon, 08 Jun 2020 02:17:48 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:48 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com
Subject: [PATCH v3 4/5] MAINTAINERS: add myself as maintainer for Khadas MCU
 drivers
Date: Mon,  8 Jun 2020 11:17:38 +0200
Message-Id: <20200608091739.2368-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021750_546077_D6D5485C 
X-CRM114-Status: UNSURE (   9.47  )
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Thermal driver along the MFD drivers and header as Maintained
by myself.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 50659d76976b..29d35fe0f886 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9436,6 +9436,15 @@ F:	include/linux/kdb.h
 F:	include/linux/kgdb.h
 F:	kernel/debug/
 
+KHADAS MCU MFD DRIVER
+M:	Neil Armstrong <narmstrong@baylibre.com>
+L:	linux-amlogic@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+F:	drivers/mfd/khadas-mcu.c
+F:	include/linux/mfd/khadas-mcu.h
+F:	drivers/thermal/khadas_mcu_fan.c
+
 KMEMLEAK
 M:	Catalin Marinas <catalin.marinas@arm.com>
 S:	Maintained
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
