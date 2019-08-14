Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDCE8D63F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABi44ceL2TKxgShGgj/D4Ae/V6Hs43TM7+rZ9ZySpHE=; b=PkNlk0d1gVTH5F
	t3tMZ5jL+odx0QVoBCD3a4JkT1BdZq6I/q7MV9SAwGBakyvMk68G6VZlZD77xmW5pkqjdhQ7RZoYo
	sl3qGv0KA6XFi0hmHfp8rYvsn57zDFz8GNuh2JQCBywe6CPzr94zjGCjTR4q+qxtxr1VIHvIQmVVL
	vVYDNDKGbO5RG4Z6wycaRLRF7YgZifNBlShl6T7S7yEtDhv0nXLo+aRD0ueJy9YvZNqaXVZfuCx56
	OnlD6U6mU0X7JSngAhbiH/X159ZhuNuN12OGk6VhcIuehXayvV7EXF3lZqOhyg3xSbvLJPWMzWi/u
	DsXVoO+RheDaXxAtjH4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuLX-0007xy-AZ; Wed, 14 Aug 2019 14:33:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHS-0002mK-78
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so4658723wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YgaOioBZlXiCl+6+Qenig7yRj93M4S2LcZjul0tGl00=;
 b=JeIke4j2+vBHiU/gxigtg0yTHMObUZbzehCSiQXx94BkdSyCEhiTVNLTTLwxQ5Xmi4
 oCV3XX2zi2KfuiTrK+nQKZWgLwzvfPQC8D5WUBEkT2xPw6pC7HKqeEu3jSeqLuLlVo53
 DCa2pJhNATJuCheITjlk6httU8tTwqF6DT5oPzPzXRT4BruyZ6WDoBabNEhKqfpKlctc
 WW2JB7Ema7hWWv+J7ygbqyVKCKXgogSg8EDSSnQ6Hiqp2X9pZOChQzWi+LPbhrgdpKON
 dBzEG3aETyEudLoUfo/N5X42uAjAKlvYZfCF4BGUQ0lUGWykLHriXpj5uCArXW49psOT
 cIzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YgaOioBZlXiCl+6+Qenig7yRj93M4S2LcZjul0tGl00=;
 b=IkEPaFkAwzJAvshjGmKYRXU5bNUdGGuW4XFA7B7w9fVxRONRXyy+Qv5fohM7/vnmPc
 BwP6m1qHzK0K6++1nuL9hurOXeO31EjAjc19Hi4MBSWliQ9z7MfB+RhTar0llV0KIHjr
 i8p9uID/P5Fzn2rbapRtKrEeH+Q7PhEJxuLJ4craQe05VChAcohMF3UXKZcYlCKbyC9D
 XfyzjFN4jbD1VK/Ia47OU6mK6a0icquB12psABiTr3HMPjo00t6dxgqq0FIsd7RsvAD2
 ggfo+a9ez1vgHFAX9enHyb07aYglYqtfVjfjf1DZhUXALA/XWwBF5ZJ2+wTWaE/Kp7D6
 KyiQ==
X-Gm-Message-State: APjAAAWUwAcHm0SlneUkvXkYzl0wX+7z6iYy0Nr68zKPEk2AWM2d1qOT
 ox8x2fP4NLLB/LcAX/i7O7UHAg==
X-Google-Smtp-Source: APXvYqyzIAp/InEQpA/Ec2lH8RrkSyLE8Ef6LLXUs3RtFpmU1+uYke3b4NG0Ke/GRABR+kSETfNBLw==
X-Received: by 2002:a05:600c:224c:: with SMTP id
 a12mr8832448wmm.12.1565792976746; 
 Wed, 14 Aug 2019 07:29:36 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 13/14] arm64: dts: meson-gxbb-p201: fix snps,
 reset-delays-us format
Date: Wed, 14 Aug 2019 16:29:17 +0200
Message-Id: <20190814142918.11636-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072938_485717_3693536C 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-p201.dt.yaml: ethernet@c9410000: snps,reset-delays-us: [[0, 10000, 1000000]] is too short

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
index 56e0dd1ff55c..150a82f3b2d7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
@@ -21,6 +21,6 @@
 	phy-mode = "rmii";
 
 	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
+	snps,reset-delays-us = <0>, <10000>, <1000000>;
 	snps,reset-active-low;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
