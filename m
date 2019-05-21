Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFA253BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZDx8mJd7sMxpxRryBGoTo1J0kJGZpBKQ/zDZlQEhao=; b=a1TsIgBm8UmUtM
	VB6rXGh9QTpA2xIJvjMppstzjabrvkFeUpFTnAU9JcED393ad68VIBFM05evAvTDkpf953y7xOyt6
	+v+cNV0BBqbOjb2rREZ4BcGkhkrT0yFUxA5xgScVBhx+p8Jrky0YcArihnsYqhGpa/iVzBaBUO9jQ
	DbMW1RUfglJsFzwmpTujoJWZaScf7m3ZF+K4lgRC3kD/U/83+8Izb4ClKwEGaSlJRoIi8ZNOACE+R
	zY/O4muk2LKwF3OQD2YLBw03dqI3JIfEMkuvtJ7bl1YcfEKXQSObbwyzp/R1e1Lbqq/+r+XlwpcW6
	8r2A5sEZtyYul7wechNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6ZG-0007RL-Hz; Tue, 21 May 2019 15:20:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6YY-0005RD-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:20:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id i3so3401986wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2UEmu+PQTJMEzkzxShtce1PUS0kwGjqD32xVaKXEq8k=;
 b=m4gDvS+OKNfl4tPhdhYIPSGwDI5QUMCD0qa2ChEKnlS1dVhLQFGx+t+skeULPeKIKK
 va6KX7ohP5NII4ATmVhU8vtjZUELDtjDNotPuBJ3nHzves6U656GVJdsKOkZd0eHJorR
 Jj/RLpv3ksfacmK2rjHOhbG4J/ioBy0yNuvKQh8d0JZQGO6D2cRj7SMUmGfa4AnOHEAf
 swr/rdaEmrXl6s+NHLTg1RMS48bUJOD8eSBGFyQ/gAuF08dEdG9ns6/8nsTW/BH3GFq3
 Bqs9KuArvqeZRBuCVhg9axNdwF6RNS94r1Mz1Ha2E+EJl5HqB+a/ovi7zDRdOTsma/Pe
 EkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2UEmu+PQTJMEzkzxShtce1PUS0kwGjqD32xVaKXEq8k=;
 b=JzqduZJuD93FOsEoNHb9zfNPjcHHjYdp66VrAeRqLQcqXBPqc/pJe2BZ8Qfx9Wd9X0
 Chvctdc0jWDjKwYjwcaD5I+HydYcK54MmQ/oKGepddiZjWo6qSgjQ70DtP6645i4w8q5
 IXc5BLfOHhCrT1cLt6qlvvbZ27fBa0ef1k/a13xnHmjiwMPFRa7RAOWlllfh9+KQSK+I
 SKBcCcyKDh73pWRstTp8DGm0iwhkfW1co32B3daih4q1pidQ2i0YGlTPGw2HhSEip0O7
 58hVm6uAL6gty/bx5D6aSprEjmLKVcqoENlQw0yib98jcWBPMfMkd8fOqJk+sK/WCJNN
 oEAA==
X-Gm-Message-State: APjAAAU5sq2CZhIqHZlf9XI3pCoO2FGSpXNwlBPDqoEkoRtEvCPUtZ5z
 fGzrecTcer66yAheMowVDKjaeA==
X-Google-Smtp-Source: APXvYqwk2IBY1kdDxl8FarpdDrMnx6sRXqje8GLIZs5Bg3e9TU58EJrEreRIcvDw7cnoTqyedCYF8A==
X-Received: by 2002:a1c:ba87:: with SMTP id k129mr3900600wmf.132.1558451996629; 
 Tue, 21 May 2019 08:19:56 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p17sm3945677wrq.95.2019.05.21.08.19.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 08:19:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
Date: Tue, 21 May 2019 17:19:51 +0200
Message-Id: <20190521151952.2779-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521151952.2779-1-narmstrong@baylibre.com>
References: <20190521151952.2779-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_081958_850561_8BFBC418 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for the Amlogic G12B (S922X) SoC based Odroid-N2 SBC
from HardKernel.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Rob, Martin,

I converted the patch you acked in yaml, I kept the Reviewed-by,
is it ok for you ?

Neil
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 28115dd49f96..f75df4471c0a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,8 @@ properties:
 
       - description: Boards with the Amlogic Meson G12B S922X SoC
         items:
+          - enum:
+              - hardkernel,odroid-n2
           - const: amlogic,g12b
 
 ...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
