Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C3F23A85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw+kwiJLRU4vdJpOtgcxhl/eVyu7pJi290NYWj1sEvU=; b=HW7Lisg4YOaPY+
	AuVxnNdT9o3QaaXbDH/qGfWZFLmT8N1U62KKT2MJ3goquVQMN8C9IPB9hbjdvfScTW+0K0K4IABR1
	TZbiWyJMPRXaPANiL+UBjg/95qKzmNdRP2N4tuYhNNSzVhC4n0SWVYZk3keEbPuKuZTQVOPfkKSZB
	KuMeADwz5VlicUdmSu4hOLOEDsVpXG8ql0PxMtwP0Gr/OBdME8j8uhja+cgZJclnpSJfZScnpDKyW
	iHDpcKaNGO+RNs2AMLhsq8hjNLxEby+uaZWaR2cVqbYIqDanhuF+ZPlTTW30V+E7vLsA2B3qf9zqz
	sTrK6LeWxrvW5PTfPQyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjUD-0003Fv-36; Mon, 20 May 2019 14:41:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTf-0002oa-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so1951311wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=30PJ+hCzDjQrVZsjGcZ/FXod6I84WDUG4kPyRzhauWE=;
 b=EeFetSQar48eOERqadrJy/r1TMYWe3tvZZ9D73uAfTEe7xVlG9kEpGi8cKF+fZimcE
 vm0msi4QvsnBhRfGIWhN5NNnIwMhd93/3iJtEhj5AL3iIQrATygF4+gQuTFsMqLYlFLN
 K8lCV0yr+e+dSMqXTPM60wWxKOFL0s5xNJRlB/AXELJESu2AnSF2NWxHl/PjfcHkluhC
 BRI320Yx0G12ddsNFsbrCxYlX3WgQFy9wj/vrNsVbEp4AfInuuV5cspNpMkKwhQHM4DR
 PcO6080P3WqMfMpZxg0SuTR/h8UMnUQRpCWASqneD6F01V0xT4DLrhqhv9+ip0oEoCqT
 OwLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=30PJ+hCzDjQrVZsjGcZ/FXod6I84WDUG4kPyRzhauWE=;
 b=ZboGJIZr8JxtdW/OQpDpGR0H3N7VGuTmy57BIAx45ipUePOOUp9dDr8U5iVYSe/zyJ
 K/TMYlm4vWkDbfHxPdYZ8dfymaubf/9XmGSw0LYl7QJu8ZSv2Je7chK9fBdXWhLdFH3U
 WWAi0BH9CMBe6S0k1ReXbikNmqP9K5mXtSLxEJAvEmCj2jAe2eQMAACF+DR1wxvN7QL/
 Y5RsZjGEtNc9hgc4dYaLIlJovBPzGMtEVjYY6Wbi0oN2QO9gGIUCtc+N+SDBaKVJoQgp
 a1VrT3Rv9toJXehjbgio1SXVOPU7C4pn7DWJ1AOEcz8Y1D/yf0CKhC+9OGsiCsN6L6Ew
 WQsA==
X-Gm-Message-State: APjAAAXf+nYw2xBvAIrRsGCWWMm8hUdp8ljucTJLwfkBmV7SbHLVoezi
 MWl+93vJ4oecbXw82COHkadfEQ==
X-Google-Smtp-Source: APXvYqwy0QdFmLf4P0q3Gllfwk9oesu78IlGZ97TtHhp2ZY2oBw/SZe5fTVEuzIPvAu1zn35uG6lRA==
X-Received: by 2002:adf:c60e:: with SMTP id n14mr14278140wrg.255.1558363281892; 
 Mon, 20 May 2019 07:41:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 2/5] dt-bindings: gpio: meson-gxbb-gpio: update with SPDX
 Licence identifier
Date: Mon, 20 May 2019 16:41:05 +0200
Message-Id: <20190520144108.3787-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
References: <20190520144108.3787-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074123_702192_E5831D9D 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/dt-bindings/gpio/meson-gxbb-gpio.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/dt-bindings/gpio/meson-gxbb-gpio.h b/include/dt-bindings/gpio/meson-gxbb-gpio.h
index 43a68a1110f0..c93274d7e108 100644
--- a/include/dt-bindings/gpio/meson-gxbb-gpio.h
+++ b/include/dt-bindings/gpio/meson-gxbb-gpio.h
@@ -1,15 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * GPIO definitions for Amlogic Meson GXBB SoCs
  *
  * Copyright (C) 2016 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef _DT_BINDINGS_MESON_GXBB_GPIO_H
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
