Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7643929C42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgUtHteoaYKLzQKfJr3gOAgjHpSRo9+3XR7P990+4ck=; b=EDAe5cXUlahwBW
	+XgLgPJQhptPlwr0/Ce4F5nkfeqhYRXOYToP6TYLi5WHTSbpOTyXjdPixaqtp2gPiwC9swPyHceYr
	ejAIdfs3yWQShzf3MQUsSTDHkTPa/IjMfDIBvbmKkpqGgeO/xdUlguiL5dyRaOZR9kJb8pqgYt5H7
	m8+4oZcd6wCfEZvE+VTuJnlZLKqdXKs4CprJyiy6w2zKFY0oGw349/8nuW8nqW+IGq/fNpv12vThs
	sL1yA9C9h+ZFWY1zgKACt6DFl6XYWkrs2wj12dMpq+h2W/fwtWQMvQMiS5PDtupqWBoN8KOQSpsr9
	1AKRM9p348kXiRZMLmJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD3w-0002Nf-64; Fri, 24 May 2019 16:28:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2o-00016h-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id e2so1861656wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Alb5MD+7zgNY6i+eIAuzgu3fZmuChz+Dlfg+Rb4j+90=;
 b=QEepWdCASVfvEWNv6Rv1rxZy0HWeJ1GhFotAuxSfFkpLSXgru4BgCqy+hvOJbN/wmn
 yfi4O6JFqIdd+WyuL56/W884rUwiKE30mlFjThO9IEmN4CRW58h+T8BDkevBc+oRj7li
 nIY4Qq6T+tDprJ7XhtgRMKM6QLyEHUnc6iHkhPz/eFqzExHdY3ZiA/Iq7HpQHeqe4xkT
 Ugckq0St+ovwJmUVW1pyquLuVGEHcwtaB/U28C+1r+715+HEYsB3tz9RkYONPorS93Vl
 JWqgpaKZZrToEQJMJUJfY8yrjj8/+cXBlGGrc9YNO/1brrSp9CbYZoc83G5Yi1tHIUGt
 o2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Alb5MD+7zgNY6i+eIAuzgu3fZmuChz+Dlfg+Rb4j+90=;
 b=ch3oyAxJXG8zUb1kewlZLRXH7zEvAfbas4Ni/bXnYHsVWbqCGh5y4cenon3x5QKU+H
 gMRnRm4hJ28aRZry+Hpw1v3yr0R8xksUtfRyf/HeQf36u5YdWncxep+k+VFJpiSM+kcC
 QVdjh4azlqu+fPrlXzB0agbQrBnDl0VSl83C3XhgbAisXsJeR0lzWXV5h1fze1gbsl+d
 MT74h9rp83oG1e3ooaSFK+fgWSatWWmXmmTI3dFcG6f8SKXacuUuvRkJjLjbqiAPosdQ
 2Mqgz5GcQQlvEKzUHTNZFjqbotyQPUMiV4IqvLGAQrcwNJ6TQddauOvOenYTcd7J07dN
 JbDA==
X-Gm-Message-State: APjAAAWIuxgFxIKf6ACNZTCivQPS9669OgRpb6PMxGYWfiOXb66eDtpj
 7pNuc7hKpRJ830OKmgrXz9khWw==
X-Google-Smtp-Source: APXvYqx1pPfHAuutLd2yAz6r4sxF2ZwPOYA0wuuRKKtw9QN6hpkhYPA2NT8zlW4qBmk2A3EjHWSbkQ==
X-Received: by 2002:a5d:4a92:: with SMTP id o18mr8765887wrq.80.1558715264435; 
 Fri, 24 May 2019 09:27:44 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:43 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 6/6] dt-bindings: move Atmel ECC508A I2C crypto processor
 to trivial-devices
Date: Fri, 24 May 2019 18:26:51 +0200
Message-Id: <20190524162651.28189-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092746_704396_4EE3EB8A 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the binding for the discrete Atmel I2C Elliptic Curve h/w crypto
module to trivial-devices.yaml, as it doesn't belong in atmel-crypto
which describes unrelated on-SoC peripherals.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 -------------
 Documentation/devicetree/bindings/trivial-devices.yaml    |  2 ++
 2 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
index 6b458bb2440d..f2aab3dc2b52 100644
--- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
+++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
@@ -66,16 +66,3 @@ sha@f8034000 {
 	dmas = <&dma1 2 17>;
 	dma-names = "tx";
 };
-
-* Eliptic Curve Cryptography (I2C)
-
-Required properties:
-- compatible : must be "atmel,atecc508a".
-- reg: I2C bus address of the device.
-- clock-frequency: must be present in the i2c controller node.
-
-Example:
-atecc508a@c0 {
-	compatible = "atmel,atecc508a";
-	reg = <0xC0>;
-};
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a572c3468226..2e742d399e87 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -54,6 +54,8 @@ properties:
           - atmel,at97sc3204t
             # i2c h/w symmetric crypto module
           - atmel,atsha204a
+            # i2c h/w elliptic curve crypto module
+          - atmel,atecc508a
             # CM32181: Ambient Light Sensor
           - capella,cm32181
             # CM3232: Ambient Light Sensor
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
