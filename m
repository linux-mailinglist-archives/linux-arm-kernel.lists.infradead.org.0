Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B17DEF8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9HIWIQIvSdzXsoq3OC8PYsr0ZHCGx0/bAJPU1Dr/gc=; b=DQxsSbKuci0VNH
	FlLWyTZYUfif8hF0iUFTZ0vum0GPBQz1FfaRp/ud845kqoajPwqEiv/0KFt1py6RZP0m6H8QXg6eR
	NGxitJrYP0NdbsVAMXV0HssYcUic3oydop9dDPORgf/jucb6+XHYwmSR/nzKKSZwqXsEkKjczmVvO
	YZw1CZA9fBm+Cog/SGvx2UYKp62fffnTpx+FVAbzKH0rVcxcr33kdesbf5EKBsP7eHDYJLJzsIPlQ
	fUIsesUJU9xuOtXvfj14xU82/BhEPUB7l6kKuPTEgCrKWCb0Tqryz4jLo9D+wmWpPhHGpYCbCtRTF
	4fJVuOB8iXnLiSJ3UnbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYhR-0007qs-Hy; Mon, 21 Oct 2019 14:30:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgI-00071c-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so13601990wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xl8dby32+WRQvYjST6zEPeGq6+V7I2trjy7FQBP1swo=;
 b=qEsVLyo5NG4gK+9ZmATJ8Y72nvHsOzQW/2XXX8HNL5FxWQ8st+Y6iNew+jhz761Aov
 AxFlS+rK7VL2UPuhfT8sGgJ93LZRlMMrES0Yg38y2tCJKtDtdepO/Q4pkDDl7CUnkFMd
 J0tCDLlqfOk9N2PIYHsisU7W/g4Xq33numuOSiZ42WKTbs/aQ431RB03tXMXGT4oAwq6
 2kS9hIYWpnDZyEYYAbPG0GDvCiKAs8q7OLUC1QeE1kSnkMQ8AFHLHuJabqmXyK1HzohU
 Utds4GE7aucsrDlURY5boNivbcp6m5FJ/NmSOoucp6ULMVqaQ50Kzif73tl2lCUUORtY
 MyNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xl8dby32+WRQvYjST6zEPeGq6+V7I2trjy7FQBP1swo=;
 b=Et5PZCGRtrIZN7GDp8tCY33/pj+YHrdAgRvscZs1xRhvFyRE6yraj8VcZc3+wnkAZ2
 Wa/F9TnBT/tAobJhz4uqxwFpyrsB6TNDbv4MDHT0CIpuyQWgLYdYFtwkSsAUikhrwM8g
 hZpCQIAgf4oR35o1miaoQEPIMWEitrQquMy/O7pAYXbzTXMIK96k05Erja0+Cb91p2EJ
 U9Ce0JwTJwjYk6BkWLNbClv4DYiDBXr5kp93GrR/0VX9DKg/cFkyKnqHHF4gYlNT/QXh
 5TIJyamlXnZBV3qWh9/G+MkYii4qHPsrc8RBr2o6otG7a9LEz3o4OcZGpzoP3whqZ+G6
 Q7IQ==
X-Gm-Message-State: APjAAAXPvk5pm0BU8IzcLAgE+dKa1ZZ/ySDFFtNYz4bGHt9pYsa8ruda
 ZdgaXKX6x189Wu3N04SimPdtlA==
X-Google-Smtp-Source: APXvYqx3WVElzku2QZ1szzxkfQy8cYhynmJ0ewftEjT+hqo8LlK3Xt1bRuLtHgfsKsTpIcl6iOakzQ==
X-Received: by 2002:a1c:39d7:: with SMTP id g206mr20289925wma.7.1571668149171; 
 Mon, 21 Oct 2019 07:29:09 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:08 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/5] arm64: dts: meson-g12b-odroid-n2: add missing amlogic,
 s922x compatible
Date: Mon, 21 Oct 2019 16:29:02 +0200
Message-Id: <20191021142904.12401-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072910_629287_8F2D8B03 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12b-odroid-n2.dt.yaml: /: compatible: ['hardkernel,odroid-n2', 'amlogic,g12b'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 42f15405750c..0e54c1dc2842 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -12,7 +12,7 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "hardkernel,odroid-n2", "amlogic,g12b";
+	compatible = "hardkernel,odroid-n2", "amlogic,s922x", "amlogic,g12b";
 	model = "Hardkernel ODROID-N2";
 
 	aliases {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
