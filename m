Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4511FB373
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5N7pq7cutGV8C29DWu9+BdUb9JkVoihp1YRiGiYX1Q=; b=McrkpDwouBsgJ5
	5Sj064KBf3VPGe/iduCv/cRGue/Tu1hX8x8w/BDfuADx3X6nRIDlqf3hdgQ2nAucHtcpuhhrN8O47
	h59Q8b7x60JHGb6PglFjb20nvNMsZQ8P4y9eTjQVQIikPBsBJfwRf/K9KSu1At0ihaifUK5WZ2euk
	OZxu9XG9kmPtw2uvT45XIViHVezXQWn5c0ZpJgrOmUh/cQW32/SQE6kbfzi+cglB30d4ej8Bvd3Bb
	sg4AB5ShePYcmiBhhwjAes3sv5msX9MoSVchCwI8RXuuubS0KTt9l8woZMy/no/E1r8RIgF7eeS5d
	PuUDTo2HSbMbEckbNm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCEE-0000ON-Mk; Tue, 16 Jun 2020 14:06:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2S-0001yy-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so3178274wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K0bJaWiGAhJszD2fhBZ2xH/S+esEu46q901tkT6Dtu8=;
 b=L5+uZE3I+wdjwilJ4x8jBjK4vDzKX8qay5GzTqiUDGgf9h/nLUrS/watMlAxNvXgiV
 zu7IegCNJivLmqqIxYGYVi6/0xg6yc4vuPoK4/SrLqD9RuS6S6YRhLtdR5i5K6RaqhBK
 ltzEqBV8OjWReIh2AhKXFoIBPDojWJDscg5KkB3PpKxefx8PspmLwSQn2rAxxy+Y3F7t
 nd6Gy804clL96GDsdPFV05n6fDhNt00XkRRG+P+btYYYSWtLDYFFnVpKS3wnZRP5Gvje
 59ULsigYEGHAoTjEDYdZ4e7l2skUd41bShmAUoqYcfMNH//0oLUj9CexSX5+8IsMICeW
 TNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K0bJaWiGAhJszD2fhBZ2xH/S+esEu46q901tkT6Dtu8=;
 b=Baea0vhVa68ridDfXXq2g7HGTsRNj2kkXVy1GfVCsp2Sgdebuv3Lc0BLpiaIc/LWMm
 pZxwMZ3eFM4PgxJZ0gdUeZ6P39onJ9NMDz2NAbBNPfiYDI1VUqzw4hY5vwN4aZe2eJoz
 18TZWjt63/kggPhCac0ru3M9HGDoQJem4BEB58r6NuwrizKJhJGSrgAIOxqwnJGngkMe
 zkKpzyApGVhkJSYdYEdJ2udzYI16nxxiOW6BoPMMqq6yi7YTOJI02qe9N6t10OQtzlUv
 wqgAhcc7EbYlEGeRHssGlmoj8dE+5F/J+6pQ1wvez4hCtWJmqh6SfAM7xVGirfTDENpw
 DKPA==
X-Gm-Message-State: AOAM533B6XtBWMTNRLDSPWaaKZ0dMkWJ5Funa6/n7raoOl6Yl8RM5Zk8
 TUM9g3eX8JV5Y6t7L6I6Mv4=
X-Google-Smtp-Source: ABdhPJzCcs5yosf+6VumZWXzFFZs0nXLbY90G2PWiQYes4KMg/vzkl4qcvOh7mRMNLDG5bnCH5j8Yg==
X-Received: by 2002:a1c:3c08:: with SMTP id j8mr3216264wma.23.1592315647234;
 Tue, 16 Jun 2020 06:54:07 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id e5sm30870819wrw.19.2020.06.16.06.54.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:05 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 32/73] ARM: tegra: Remove spurious comma from node name
Date: Tue, 16 Jun 2020 15:51:57 +0200
Message-Id: <20200616135238.3001888-33-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065408_749315_C785E717 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This was probably left there by mistake or perhaps was a typo in the
first place. Remove it.

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra30-colibri.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra30-colibri.dtsi b/arch/arm/boot/dts/tegra30-colibri.dtsi
index c209020e13fd..811c06599bfa 100644
--- a/arch/arm/boot/dts/tegra30-colibri.dtsi
+++ b/arch/arm/boot/dts/tegra30-colibri.dtsi
@@ -527,7 +527,7 @@ spi2-cs1-n-pw2 {
 			};
 
 			/* Colibri USBH_OC */
-			spi2-cs2-n-pw3, {
+			spi2-cs2-n-pw3 {
 				nvidia,pins = "spi2_cs2_n_pw3";
 				nvidia,function = "spi2_alt";
 				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
