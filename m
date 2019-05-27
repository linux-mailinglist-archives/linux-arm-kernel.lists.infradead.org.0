Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761C02B64E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vl+asBVQZ4tHQIt98VFpP8NP6eSzc2qta/gcCz0Ffps=; b=EfHZ/ZEP4zB7W8
	wRWc51t1OllgSu6tisHQxcEDbm20BHL924qHHV0TRTShyHjRKomSBjQ7jvpK28+SvqUyu2mkF5jql
	ziefuqXCxHCZ9ZtOVgKroR5ijeFm43RKJyZ43MCpwcZY3yxFvUYY4Oi+EF4DR8iF6uze1BcvtTTsP
	zgkG+SS2qoYE8n9oMW6wKSRSh5a/BlgKCWVsxE9h7h9VbW/Df7rPxPAq81/dyM6f42aY/kTtXS/Lb
	ERE5htRPmJicO1Ka4A2SNvwZTlOf+ivTvThUnAc50woe/Gjz2Y6WtQt3Y+8VHW0riQ5/71pYPg6wT
	kBsn8i2MMgDmxe3n+i7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFbA-0003da-Pk; Mon, 27 May 2019 13:23:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZn-00029k-17
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so6492959wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=69AN6m6mgKCwdcDa48hHuHSqPDwANWv3gTQBvJBCe4E=;
 b=NKW1FoDM7+uCcjHpoXzZvu2le9mOkCrRwH38dVKrBJtVrYLf3/DDOj+jugAfySkByC
 9iwhNkqIDF7xpdcN6v13sSTt6HExdbrRXITzEjQ7UTLiR2YgAnqbv6OmZhuBZAy+Vf9e
 9+AzZiodLJvl4KpKAMZrP22JzCezBQm0FdG0propgvsvc1j8JlEHAysmFkr+p1BMeDuq
 47bZdGND8oUKUDewb1I83L7ef5Sdx2iyrctvyxuPx0Wiizwb+EFmcw351bbDX1sIcGfT
 Z2eTetqLRZUrUt3BEj6yvx7Z4TDl1qd0fBxaF0tRnLfkbEisnMvxbLOiJ8e6N07mRb6B
 3t2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=69AN6m6mgKCwdcDa48hHuHSqPDwANWv3gTQBvJBCe4E=;
 b=pcYKcqujQwUC3qaGCB1w85KKozVHLdIookLCY8mzYKLiyeaO4iaQR54+3S2jrRunXP
 nsgPvp4gKmt/bwl6n4aMSWyTaoSE02wM/LoVUTsC+/fJp9WN3y2yh3yBir9pCp0ctA3H
 cJmXhjuiZ/mnulWMouGqrpR1kyw+JZJJSXagImKfWvFInDKOBOUP5/LOK4nbNE7E3bx4
 O567SXnhX5UGB5GjNxBKZJmP5zLbfbLjyOsML7k4LrLVFcP0EUAhdbBZV042JCQcpUUo
 ULz16TBYzF9Hxb9wEFUPaO3gNnBun7e+QrnE7ZrO7LM6l9mSetuBfP8mzpohuzKKQxiq
 VyVw==
X-Gm-Message-State: APjAAAWOdXppHMZISgJWLZ/CFxM1ZRFEDZED+A1VOA22LUYFXV+VlBaG
 E2T+CIE6vKrVSzTvgHwK94btEwYYnpQitA==
X-Google-Smtp-Source: APXvYqzElmRUyLlTyruLYLsM/Nb7x3XAYbg7BArgQ0z8D76DZjUsgRdoF4S5RmrF1hmHCLqlPITFfQ==
X-Received: by 2002:a1c:8017:: with SMTP id b23mr1635231wmd.117.1558963325400; 
 Mon, 27 May 2019 06:22:05 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 03/10] arm64: dts: meson-gxbb-wetek: enable SARADC
Date: Mon, 27 May 2019 15:21:53 +0200
Message-Id: <20190527132200.17377-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062207_082648_6BDDED6A 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

Enable SARADC on Wetek Boards.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index b0d74ab619b0..45e306da2154 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
@@ -59,6 +59,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vddio_ao18: regulator-vddio_ao18 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO18";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
 	vcc_3v3: regulator-vcc_3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VCC_3V3";
@@ -172,6 +179,11 @@
 	clock-names = "clkin0";
 };
 
+&saradc {
+	status = "okay";
+	vref-supply = <&vddio_ao18>;
+};
+
 /* Wireless SDIO Module */
 &sd_emmc_a {
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
