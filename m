Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11484BB4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMyTUjPDiqmIBd2n/I/ybZfzHJCliX8oe+q9tf7jvfs=; b=cA4Uo1bYeUIltl
	PIsMy/TSFmGeIkIMeWI2yzcwY5jERn3icTUz/91P6ulgkJFr4zFnyqdYUcp4wmRkUCPFYCdd5lTnM
	dosQeOFB7j0j1zBoffIstSYZd1F1+WDWKcgIM/nJxh+souxeO2QhLPRPDj0GWXbah3OKMDTxrN/JE
	5iASAXWip55X0O6wLEDeWkdXL4cwEC8nAQmFft8fMLaxU/kVN1S5IzE3OcCStk0a5Ze7zUiis2gIx
	76Y8FI4QXLuZS/+lM7z+9w6zQDfwlUuD5VE/jkd1KINGMSeZpM9pnxhc9Yveb9yqSvlPiHGaANDEs
	7NiwFkmPD91MWmu+/r7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbSl-0006nU-TF; Wed, 19 Jun 2019 14:21:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRm-00062b-5l
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:20:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so3639178wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
 b=sSRIPzPK+cPvn1MTMZBkX0cP7V4UYFS/H/JmGFKmf/qben3Z21FjOkPBh/Mfe8nKNv
 CGx+fG8LX4MzmhIqhLYyXlOL+6TEFHSgwR323FP/RdYc3LOK+Ja6Nq4I5qe73LXMZ25N
 JgWj297MqgpUtnqnioJrYPlJZmETPT/Mo54B5Ogyc1wo0HsuHp6qSctXAtn6eWBz9bho
 dtKKpDftYUiYmJNRo6g89JTDnkReLn0x6XYFhLuRG8Geqlj4husJAfw2UOOu+TsTrrYq
 ZXeRmyUHlllMdiqiJ+oMyirBtcf+50WcH+dooZG4mWyhLEnZDDUEJXoiJNaKWFih8OaS
 pgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
 b=X81hHfIi+n4nAu+s3MJ0+Q0CgTAbuAISSB9v/V9Zln/gMHwq5h0CbPniZ14GQhzMYh
 0y6JiNFjl9KkMva5sk8BsDi6TfFYE0dDr+fEmurA0lddvMkHo+sMOCycX+C0GbTPLd7H
 7w8UPZTH/ScUZM2t0+PAez5r9Pb3mT2D9YIL2/SIjlg8xgwcrOxo3zoCYBUGsNLyJwof
 cyzpgbn6LSE1SHgMjzz96fSmPgNiJYVbI0I62aMVrCjc3heuYO7Y6nZHteOvhnj/PGSJ
 +r/vdebX76KrxbRFexJbUwKOts6ei87J8JDV0664/J/Ch0Hw19/vBYkEMUHKWQZ6cKLb
 jBXg==
X-Gm-Message-State: APjAAAWOtc1io5u5pWgMbXbxUy9/vHvx2GHGYjyWY25anA3Ru2jS1SfE
 CL/WAIIILzh0JoG3rJVDcTJ4Nw==
X-Google-Smtp-Source: APXvYqy2BRCb05/k/zzKqZd8m/UIuZO+uW8jfzrNFlV7AFJWIlz2oU4yN1NtUSCIidGEmkuu4fzypg==
X-Received: by 2002:adf:dc81:: with SMTP id r1mr3516215wrj.298.1560954020155; 
 Wed, 19 Jun 2019 07:20:20 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:19 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 2/7] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Wed, 19 Jun 2019 16:20:08 +0200
Message-Id: <20190619142013.20913-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619142013.20913-1-fparent@baylibre.com>
References: <20190619142013.20913-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072022_247106_DEBFEE5D 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---

V4:

	* No change

V3:
	* No change

V2:
	* New patch

---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..aa6d2eb0eb19 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -17,7 +17,10 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
 This document describes the binding for MFD device and its sub module.
 
 Required properties:
-compatible: "mediatek,mt6397" or "mediatek,mt6323"
+compatible: Should be one of:
+	- "mediatek,mt6397"
+	- "mediatek,mt6392"
+	- "mediatek,mt6323"
 
 Optional subnodes:
 
@@ -28,6 +31,8 @@ Optional subnodes:
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+		- compatible: "mediatek,mt6392-regulator"
+	see Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
 - codec
@@ -43,7 +48,10 @@ Optional subnodes:
 
 - keys
 	Required properties:
-		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+		- compatible: Should be one of:
+			- "mediatek,mt6397-keys"
+			- "mediatek,mt6392-keys"
+			- "mediatek,mt6323-keys"
 	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
 
 Example:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
