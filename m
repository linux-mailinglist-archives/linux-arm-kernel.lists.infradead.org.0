Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EFFFDF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOSXMiJrSL7gbdYBXTnzNdlKRDNRyZX4fm/foiHcyxM=; b=ZMpZ2Dq3pn6U9x
	OpPYhaV6FwCvEx/4YOHEBp1WP6My+MDYd+xHStM1JQc+oLNfoI5LKW996Ivt1Ld7/V9y/wBcNgXNm
	+Q7yrFz3KSwoP5adPcs5BKzzZn6PhCv9JmtKVNnrvKA9FBY9mS+yWzRaE7BP3T9/QfV4Z56QKRMgP
	hMTvYTVI/im8wQyb5jz2gkM4qFgEji6WZ/LoixnB9E+1BO5YoL9YfnqUnWzlAIB1xkKVGUSVmc6f9
	lyTzgnNROq/8wXIszotyxmIodOmry77uJ4leP0ZzV2EbfJc6/hEg7Zmsq7JpH1U6K6xDXnrc/nB5n
	BxoHFRxQcZ08BaqPQ1Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVem-0005pY-NK; Tue, 30 Apr 2019 16:31:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVdg-0003Vg-AU
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:29:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id s18so21842478wrp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OZdMMD/d049PgXvrPSeOT8GlS+Kf7F/BVLM3iDmEjB8=;
 b=x32olgjIsDKXQnqTef0bHOIbkN+qEu+CC1h3ZDHczaZ96TaV8ivC5H1+nU6friSHZR
 wvWou7IHHUYvYPgeSYtMofzMQQeH2lxl/8AJ3iA94pZrovItQazLuZ82zMyR7JqCjOc/
 ulrgiyFNbu7uMkBSwNGBG7fDhaCIhoQ5gLtIzbb45epmrY6iDxAjYQJnXfMmcALo+HmV
 3yozRVBYQHAaI9LbtC2/ctgCLyKsAUzUJPm+psF4gR/4rIYBalStPMNzQr1h1aYlbnP5
 16enTDW5eA/jlVqVTTNKetDNNrYfoWYOssu7Hciu0sJd7QWFDFdoF9dYbHpCLsGKnYYq
 1WSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OZdMMD/d049PgXvrPSeOT8GlS+Kf7F/BVLM3iDmEjB8=;
 b=Hy1rWQ92TS1iXbWV4t62qrghmZydcL722BIFo/t6vIe7qHlK0nwknToa9yXtvwY8lX
 sGN2nKam8zUqJ6QBwSrunUbS9/AJG9ywnQr88TVPtpGGtv5aEKaYJ9j6TdGtROLck8RQ
 CI3Mf+AgjA46ypxp3puiGd9grJ6q/Mx4YmKRGurQrdXn3LnteTIEKR1yozoSNK4gVR6D
 TuSOG6ujpCXh3pHSL4AaBKOYwGV7aHAFVbl8Yb8ixON1wyoPt6pXT/LI8dUNL1w5jA2v
 Z7XW0M7dQJP90HKXrBWgzsAAo+sOgWx7ZT587fATtCcOkZUDwY5NoYm1ykHc3zB+kfXN
 t/YQ==
X-Gm-Message-State: APjAAAWbX4TaO28N+1nRURscdRJmZgNpFVepuEmbhsslESuDurTr2K20
 4l+iZasUWX1wXwxlVG/lwgC8lTCHNv91Zg==
X-Google-Smtp-Source: APXvYqw3NRFWUcmKzt4tqocuhkSBoEawVFKii/IxnIPTo2/dCKgJdIaHgwPYMyDFehYGMUXKEN/4uw==
X-Received: by 2002:adf:e486:: with SMTP id i6mr7676077wrm.42.1556641790585;
 Tue, 30 Apr 2019 09:29:50 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:1ca3:6afc:30c:1068])
 by smtp.gmail.com with ESMTPSA id t67sm5848890wmg.0.2019.04.30.09.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 09:29:49 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
Date: Tue, 30 Apr 2019 18:29:09 +0200
Message-Id: <20190430162910.16771-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092952_754939_F030195A 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linus.walleij@linaro.org,
 Rob Herring <robh+dt@kernel.org>, joakim.bech@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a compatible string for the Atmel SHA204A I2C crypto processor.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
index 6b458bb2440d..a93d4b024d0e 100644
--- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
+++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
@@ -79,3 +79,16 @@ atecc508a@c0 {
 	compatible = "atmel,atecc508a";
 	reg = <0xC0>;
 };
+
+* Symmetric Cryptography (I2C)
+
+Required properties:
+- compatible : must be "atmel,atsha204a".
+- reg: I2C bus address of the device.
+- clock-frequency: must be present in the i2c controller node.
+
+Example:
+atsha204a@c0 {
+	compatible = "atmel,atsha204a";
+	reg = <0xC0>;
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
