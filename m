Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D2229C40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+NffIFMphW65KezVk96QHW9ljiyvGzHRGbD/NipgAM=; b=DVQiODfKoP0xt9
	MuM9Wteh5bvLZsEVConBZrhcHVnRUAPjBjs5prgSnMw9BpcqHKlDmYnV3mDjnajVci8XcjG5FvagB
	nWI3LygyQcgRJ/h0L3+0OpFU5b1z5uvZ59cCjmhIUjBUQFm4V+FO53rHbFrKwftnr0nzhWQmFeVUe
	BZbbX7O8QFbx/FujNMRkM1SM+lEgR/WHzBSq/uK/c3vMlYZA3DsYiAk2A6E4p6syWsh4P//SSCVYX
	wFIq26DsAwueO/CP4YfiHbYlvK0g3lLHN0hDr3BoWuQmXMuad8pHBmyDy2RThv4yaMJyr4NpXzW1d
	VBMX7RS01le2WGGEPiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD3l-000293-7T; Fri, 24 May 2019 16:28:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2m-00014u-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so10601012wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BDVCH2sHIJOl3oTxOH2Xw8NSMYpE4DumvzxW/scZEI8=;
 b=xkOIhFq0XHfmFE1n3FRXs6JDt2lQu5s66J2ADnAbAa6G2kZ+fdlzQ6RAtv2nlGhsyM
 R1rf+nYHj8/njLWYLvOIXVxdniD8av3d/k/Pg2GCmUlhTOEeVlsr2y1JaK/4roNGmv8Q
 NxZ/oitIzGsyzysXL7SpXZWRuERubYmKXWV1S3WM1WxnKiqVxVODCo70sO5Gu3QvaDSX
 vFUPndyRzLKABkHMXXtWLuPUTiMH2UM5PqOREsziEIhZtW6wx12xwFyl3imoHDy5EFqg
 gM3CC7Te/YcQRp+VUJvX3mr3oZKOCbJF94ooJFH83CtwHuTJM1vKWOGqAttr+T3YCxoK
 UvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BDVCH2sHIJOl3oTxOH2Xw8NSMYpE4DumvzxW/scZEI8=;
 b=eTT6Kw2G679eD4hPryDwMvqJ/APUSmf1se3LDL1WoTDMr2eNi5bF2hKVwMlfKXUZ6q
 OWTNQemM5316vlpVeEBbyqM9uCfKl0qFMZ6VOYwMSGkc2bEUsz17xWSWe3QrvUcNDlBH
 aajv4mEP94CNe+JMJ468O/4jFPW4O+lrREzRjmG1O2zfmnre4pF7y0LUibBNU3Z5R2Qy
 4p5NwXKDy/B0EyvYHndsv4KSE1tXiZrdV3ug3LGtGYvTsvWls6KatrA2CWCIJJRu8aB6
 HkBcoR1+XS0fin27ywCwXDKhE3NcLvfJ3Yw9PX+UfmiqVwtZ6tL5uT9DhYC+0q+jdZ5B
 9m6Q==
X-Gm-Message-State: APjAAAUAjQaa41l/fx+05uvGU6Z7Xrj3ZhxQDdcEiY1dixHLqk2LG5qU
 aferDUTr1wwy/FYonq3R538SxA==
X-Google-Smtp-Source: APXvYqxUvB1wZ5HmkiCejCPEp/9BFe7k2AxZDdmzViyasNUYn8c87N7Yp9bXOdxE1FhkAFbci5NyWA==
X-Received: by 2002:a5d:61c4:: with SMTP id q4mr53273464wrv.295.1558715263199; 
 Fri, 24 May 2019 09:27:43 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:42 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 5/6] dt-bindings: add Atmel SHA204A I2C crypto processor
Date: Fri, 24 May 2019 18:26:50 +0200
Message-Id: <20190524162651.28189-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092745_080748_D74B4202 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Add a compatible string for the Atmel SHA204A I2C crypto processor.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 747fd3f689dc..a572c3468226 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -52,6 +52,8 @@ properties:
           - at,24c08
             # i2c trusted platform module (TPM)
           - atmel,at97sc3204t
+            # i2c h/w symmetric crypto module
+          - atmel,atsha204a
             # CM32181: Ambient Light Sensor
           - capella,cm32181
             # CM3232: Ambient Light Sensor
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
