Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1021BAC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+LJlkr+JxelQTCR44lQjwoB6ugbma8yTXtDShFFulQ=; b=HZkA5Ce84ithEx
	zY0OylZ9/sKDRQxwtA4CJysKmIuYY+PM9mEaKdp8sXpTJkTiCwGO6C6eDKjg/4ZnS77Cx1PmdEl4G
	DIw3b3TtNCdFl2YRtHVsLbyCnjeihQvW7/Si3bK6fSDFQoOfPTN0UHsSOryoj/SoHWY0fMGBCmcLn
	v6Pck9Z7YobfXBtvH1PydEBRQJjNNmhp/CyxUB9+HiiOgsLdKkNQqnKmoXzttxu4PH6kQQtA2RdAD
	REm+LZ46yMz9lJQadQrBFO73g4aTg3SMX/autmZqTdiJMXC46d1INtW1EzkaC2yyytJ5/u3qWlUm2
	c8mFElAuflcfbi3F+Xgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDYh-0007Xp-Eg; Mon, 13 May 2019 16:12:11 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDXB-0005po-D2
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:11:15 +0000
Received: by mail-wm1-f67.google.com with SMTP id q15so10278109wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 09:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WmzdSnWA20S0l1Dv500vvfF7v4bE9Z6LameSSeF0Xs0=;
 b=KKcxIBdRMNeROC1hzcs3NlnThY4bCvnalWYKs6wK1F82Ht4eVZUvXCXpUcAVQNhIJ6
 hHRmavqDGhR6K4CwxcA/jBTJYkdZKcirjLViyDe9WNNi5F2IMlK/ck6FkbNYPPvfpZ8K
 Yqbrabsm3YXf3xjo4QoWa3k+e+Hde+2kkcdAT/bOvLSVYc8GcZtBJgjDENFMllEU9Lvo
 eO6hK89l4coMTDLxqaTjw0P2RR487C1icqMd3LcSblFQC1/ACv4TDjWnPGvFKTMD5Z5K
 0Lu9z/MmrxW9xBQXOmY0RtBJpC60s6JQJEPxOTDsR59Bs/YCZ2CNFebDFGtTUEYPWFRW
 KlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WmzdSnWA20S0l1Dv500vvfF7v4bE9Z6LameSSeF0Xs0=;
 b=j1wru0ugvXovTt9IOarXh5wCgI0HDCBp9KZVTb9cNf1QhBMOFkUbVE0ohMYTskUD/t
 h9Y0sfG6w9WF3WiOPLzulou1rx2qlmDaxd0MAtB8uJ8gULCkfiFp1G/Zz3lU5e3cf8FS
 I8ColPwVhBMwZS8gkwr11DNZhtRACb2ECwkzZZL3G8Mo5Qx/DgH7bBF+3IMI7Z9DIP2V
 1eLz/nJj5Ji8O6tX8pwr69idi9Da1htdCFU2SNTg3yPTDWwIa+W4GUeq+TpeI0zENRn8
 uPomxgQJ+lPFzh55u8NrOJR3ZQfTxyAy3XiEVO2AhUSA8Fi3EX47JWiKbGKqBkkt86Cc
 4OoQ==
X-Gm-Message-State: APjAAAXtPyKBVQM08jKH6OkPiKRdsuTJvU35xkmXCO8dXXpBGML99mxi
 qsZN/yYhLaa+CMKWpwW8KYr6ng==
X-Google-Smtp-Source: APXvYqxBwehDJojTePQT86/qCCFdgA3opyb3BPfW3BX35LjOW9JBDBLcXyWa550OfCI3gJ3XwNMH7A==
X-Received: by 2002:a1c:7005:: with SMTP id l5mr16230582wmc.149.1557763835050; 
 Mon, 13 May 2019 09:10:35 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id n2sm24439089wra.89.2019.05.13.09.10.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 09:10:34 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v2 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Mon, 13 May 2019 18:10:24 +0200
Message-Id: <20190513161026.31308-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513161026.31308-1-fparent@baylibre.com>
References: <20190513161026.31308-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091037_824560_4DFFA4A1 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

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
