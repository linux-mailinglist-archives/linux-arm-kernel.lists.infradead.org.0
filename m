Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C78E69955
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6tcJkOfHwnHBVSyNmnJHr2f8RUcMNafUE40WcUj+cBA=; b=tep3o/xWe+2BZ9
	dDUY0+oUWpXF/JgNeHELcpWl2SDlrxuRWX+RjETmILp0vyNAYBq7jQAldV2lKoVW0ZYhjuPXvqZ5c
	ET0pc4uXj5EmNsTZy3J0/jd9q8cMZpjRKAOwzgR+ALte4HW+eXmxOmBRUPVofmfD1zCYyuNFMYjqH
	NvPCC09XsKXAPVEf2SwI766TRc5AVsipJJqyEF6d52iAFXFrB8zRjstJDLkDJK+9eWXRyU29aQ+l4
	HmzYOAvEh2O/89JQJTG7+fO6pRBFmGHtJowX7YbnhrZagL6DOIgZ1L4unVATW5vvA5J9/yMd0Dcw8
	j07Zwq5Yk7IJdP/K7VAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn48B-0008Sz-8i; Mon, 15 Jul 2019 16:47:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn47u-0008Qh-EG
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:46:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so16949158lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s01qK3uxx7mnUo5yTLfmogyNz5i6I9WLEPs8T+BH3IY=;
 b=DbhUu9uOoUXeWcINAdNW82uFlZSjjuoqo+bNaAllLINGwKFYGexLs8II3qAw1dKMK+
 xyX/Y201I9J391osgqyWs/NMFDYVC5S2T7EVWuHfWadUF4a8ymAWZkIbJUPyaOe1X0yL
 RYkaDlAk1yS1kCH/CgIcNSq37OBS26zLhe7kJUvcI7+xGsLiTBcVziXLUcAj8PbYyFuS
 ljo7KWGztLEXPGYufW0V6HNQYpj1WrLTrVEeyOQBZ4GT6BaqnMWD3dh2u3Vmw8Ql7p0p
 pABxV8osiA2OipTjuJnkqLJaThsdh2l3X7zm0t3JmT0w29F0Vb72bjYamF7ch5ajuk17
 v/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s01qK3uxx7mnUo5yTLfmogyNz5i6I9WLEPs8T+BH3IY=;
 b=VnP9r5IU0UIj2rVflVR6AlGazmnKf0A6/762vzIK+jsOySzrh5MwZID/Wpq6wPggZY
 ibkA3vASLTFdwQB4zjk4K1QbjpO0RT08uvxohIYbMw7jf3IucIROffQ8N3SueOTUdalQ
 4cZsVx6hYtKbW5TIumTSxMf9e2RQwTvnv+Na6DmojIkcJOUCukzcgeAmBZSbl1Vyouk4
 p8ZZ/wgRlywWfQrM40d7Pfz3BoJIOvWHYRq7/dEL2FBCmv9F7JjWXXzKwAKDU+Zkw3S/
 Z+pLmKryI2wD6D0DIdMflQ9Q5GP5nXk/ugiMbH11wqS+kSEdahdqAyMdzJWYwWf5x9/+
 6TJw==
X-Gm-Message-State: APjAAAUcBZziZsAeNb9F1XC3EgdVkG9cohxZsWCt147M4GBdRHQTCY0b
 uioednsWGBw+efTCPs6gjB+lA1W6J8o=
X-Google-Smtp-Source: APXvYqxN2EiRgDcHeNBBeImwb4enBRCl4pW/DzO31aUvfNg6C/CwfoGFxUZ5+Qo+zdYhRQpgXtpTYA==
X-Received: by 2002:a05:651c:95:: with SMTP id
 21mr14708819ljq.128.1563209215595; 
 Mon, 15 Jul 2019 09:46:55 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id e87sm3628329ljf.54.2019.07.15.09.46.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 09:46:54 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Subject: [PATCH 1/3] ARM: dts: gemini: Fix up confused pin settings
Date: Mon, 15 Jul 2019 18:46:48 +0200
Message-Id: <20190715164650.2883-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_094658_548613_FCE7B110 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SL93512r board has its pin muxing set up for the wrong
ASIC: SL3516 instead of SL3512 that it is using. Fix it
up and reference the right GPIO for the WPS button.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-sl93512r.dts | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index 2bb953440793..afe655593b28 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -36,8 +36,8 @@
 			wakeup-source;
 			linux,code = <KEY_WPS_BUTTON>;
 			label = "WPS";
-			/* Conflict with NAND flash */
-			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+			/* Conflicts with TVC and extended flash */
+			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
 		};
 
 		button-setup {
@@ -180,17 +180,20 @@
 		syscon: syscon@40000000 {
 			pinctrl {
 				/*
-				 * gpio0egrp cover line 16 used by HD LED
-				 * gpio0fgrp cover line 17, 18 used by wireless LED and reset button
-				 * gpio0hgrp cover line 21, 22 used by MDIO for Marvell PHY
-				 * gpio0kgrp cover line 31 used by USB LED
+				 * gpio0agrp cover line 0, used by WPS button
+				 * gpio0fgrp cover line 16 used by HD LED
+				 * gpio0ggrp cover line 17, 18 used by wireless LAN LED and
+				 * reset button OR USB ID select on 17 and USB VBUS select
+				 * on 18. (Confusing.)
+				 * gpio0igrp cover line 21, 22 used by MDIO for Marvell PHY
 				 */
 				gpio0_default_pins: pinctrl-gpio0 {
 					mux {
 						function = "gpio0";
-						groups = "gpio0egrp",
+						groups = "gpio0agrp",
 						"gpio0fgrp",
-						"gpio0hgrp";
+						"gpio0ggrp",
+						"gpio0igrp";
 					};
 				};
 				/*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
