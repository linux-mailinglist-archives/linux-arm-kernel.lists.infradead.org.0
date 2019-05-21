Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AF3253B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18dmQFI5Cx/m18V3j4UeCAsU7TxALUcc1wV1xHKlI4c=; b=AYclW70iCFxi+Z
	99UPUFSSy57+3KzssX1eOYMG2YUIpzxl5Y993Yu86ARoNHkeaFt1BC+8EsBTAJ5W4L5SmGlmcPcy1
	lzWKnVOMJ8h9z561fzb0ZIQkwSqWIT4XErGLX1dWBZimFaqFGy4JpMdGBZth/e+WaIt3alFhSjKWS
	Z/pumytxN/6rrR3S6GP25cSDkycFAgMNSRJWPMbOvYfbwNZXQSwgqjuppQAptQeC1zoCYMlLBVnvd
	tW2awl4H0byJceq/04xSVR1uONUUQ+6QyicOT3k2fjHBvIkHRHwu73AVJ8BdTTCsv2fHLaZwTZGR5
	i/tpoi3L4Kg/BGJFejXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6Z0-0006zj-RE; Tue, 21 May 2019 15:20:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6YX-0005R3-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:19:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id s17so19106115wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vhkCArdSYp19WRy9pHtDkpRiGu4ocnCtsFxZgKHOrQQ=;
 b=ZdzRHhNgFLRHQR2KIcm6dzqe1zFhhkXiYls6dlf6D0mkFq02TpZrZ2l+l4r75FvB0v
 m4JTBZwT8qCdcC88C+fXX6a8njfGpjqV9qvC0JKB2cddv12E4/a8/lAgFsVFSPzQ1rBR
 ZXL+sA089J4vbDi/TfRsJXTWmnzY2bOxPWFxnTaaF5fLuf+ZICJ7f5x0LsKUyOL545JK
 XgbN8tMu7pvfgSSACiloqxRp+TQy2HQq2cGYLE11rSl8SWGkOqxqKfdex0fPdwgW7ihJ
 2RG/iudUEiUaVpyAU0wOUCv/tL1kzCqe1EilyLOC3uMtPMPXyteLlUMS4TSRPWihE6ie
 Iosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vhkCArdSYp19WRy9pHtDkpRiGu4ocnCtsFxZgKHOrQQ=;
 b=PdSh0iEx41jpGVSWhaz4QdcRrequY2kMh2db5TZMUDggexBdHNgH1V5hOwe5Gpmv8b
 0djh7bPHcBeNcZowoXXyCabSrzC5pYOEPPNBJTbao2ui0PzAfma/JF0exCNgQgJnZUpz
 j2HeqFxQDPTIakyIVlPIkxBtPdjhTZ0zUAbfyB9H4kIiyFgobcx1OI5W+sXbNbXOFeN2
 Byb4X7DCPat6ad4lDiuw0qqQxXPQI0Lb0s1XF3nxmP5miW76qTx0wXgwXCJvhZMKUios
 LZeV0Id3Y+piGfk6kXkl6hwQRqUvqr40Lzb3zmiaAyCmuu2bbgROu6UNFFOMtUWyXNX/
 jcgA==
X-Gm-Message-State: APjAAAVVZ+EA8htq+v1VUPc8ImryX+9me2ZomqnM0mLGjvPaEjhciqHi
 EtD1lmH8AIKQUHYqqauZhOW/Kg==
X-Google-Smtp-Source: APXvYqyRX+GLakjFp0Eh9cc4c2GsZ6BB2KNHfqbeBehOMfsXhgM9oc/3OwNRrSmb43o1etqmgBN0Nw==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr14666829wrj.230.1558451995591; 
 Tue, 21 May 2019 08:19:55 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p17sm3945677wrq.95.2019.05.21.08.19.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 08:19:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: arm: amlogic: add G12B bindings
Date: Tue, 21 May 2019 17:19:50 +0200
Message-Id: <20190521151952.2779-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521151952.2779-1-narmstrong@baylibre.com>
References: <20190521151952.2779-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_081957_214884_A826973F 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Add compatible for the Amlogic G12B SoC, sharing most of the
features and architecture with the G12A SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Rob, Martin,

I converted the patch you acked in yaml, I kept the Reviewed-by,
is it ok for you ?

Neil

 Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6d5bb493db03..28115dd49f96 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,4 +137,8 @@ properties:
               - amlogic,u200
           - const: amlogic,g12a
 
+      - description: Boards with the Amlogic Meson G12B S922X SoC
+        items:
+          - const: amlogic,g12b
+
 ...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
