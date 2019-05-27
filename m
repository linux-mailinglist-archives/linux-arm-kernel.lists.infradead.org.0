Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8A32B72F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pz5j5H5NRXhHislxDVo5IHKSXxFg4KyTbMGtMz3wZkk=; b=NGdnVmiIsxclLE
	47WT7fS66/3Z/krK16NUPrN578wXWEAAunZPPLODANT25a99dkoOSe7J+Zdj4eBicfvYzOa4ACTab
	3gu1VviHfBJvL676skhieSn35rEpR7Z6SDV2AUPqesHqDRmCEFI2Z0srHHE57U1T1GMYRjg9Kcb7K
	yeynaUJVlPNEsMCZWaVZK1cfXzpF1tGn/S1ZrVHTTUAgoBp4d3JEW6T0NJyHXt49vHLD1UOzjtGmH
	kxJsX2WYETOjT0dUH/m/EGpTSj4JX1+tC3dwC8YtZMXWB96qfTL9ix0UVv8pqanM8qWW3zIs2wjF+
	CuLFpbEmFFV+bMywTgtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGDF-0000mS-HW; Mon, 27 May 2019 14:02:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGCc-00009H-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:02:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id y3so16304439wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 07:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
 b=yCtt0wGZdVi1k/2V5asoBDK6Yzs1fm4vO9CA5a2/sfxJNiiymxdYyE3uFDC0zkOrvc
 ydMz9pzk79I3IOes2wxEYa0BstMJIdAcguZkAvWLbXN+t6KXYyksuB0xoFjtVYNQrFxv
 EIPmB9PCO8wEv8tY8xwd4BzgFPk+bGfOwemmo9jjbZWv/KqNNcG3Eix6CMQUXeOyU1YY
 hE5nsT4FVw9deb/lH7/WicXP+XVxnE2fdytGMhoynk5+b9qVPtwI5hJznaof1GEs4hYN
 UBkTW59bZNupnMzY6HWq7KSAXsQNYZukZrvDDPcX9UQXpNx54Ms/BJjK7kxGd45W+rrL
 zlRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
 b=FZ4E7vXFUv4vnOUyKNbNFiPjGJkc9h50/p02wQWkiKoBmrpYbYPOX5JIMIAVUifY/Y
 8EWgtzJe9Wz8hXH78eJfGKftM8gMycrPvqiMraxpX7zjhJypPpC6zg/iw1dDy/6Mf2Ko
 9uLqw7LPCszWcA55GL+uF/GHQQ9MXekV8VCvmQYVYmge2WJep48ODb3vdKWjno0EWNl2
 yLUFpwmh44CRbY/0IVRHVW+bxVCDHlfT35pBA2FHM6cxup6QSeJ58RPo2umbRU4ChdCq
 /NhJfX56ng8a8pkZGlPCCg5fDUPKRuXFSg0J8tcKH8+Z84LeAYqWtC+6APEfkbSSzWCd
 S60Q==
X-Gm-Message-State: APjAAAWP1YY/QaJ/x/3nr9rQs+bjwQAI4XXwIP22FIEfYWazRkHUOqqC
 erCjVdWZLCp4RtT7jCR17CbJ6GXxHNyHvg==
X-Google-Smtp-Source: APXvYqz6fMBKbektBh6mgh4wb189td6wyNv3zG8A3t1I2yYon0EbBaq+sRg2X7rkbiVCNCbhyZzQig==
X-Received: by 2002:a1c:1b4a:: with SMTP id b71mr10259602wmb.177.1558965732652; 
 Mon, 27 May 2019 07:02:12 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s17sm8231628wmj.15.2019.05.27.07.02.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 07:02:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
Date: Mon, 27 May 2019 16:02:05 +0200
Message-Id: <20190527140206.30392-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527140206.30392-1-narmstrong@baylibre.com>
References: <20190527140206.30392-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_070214_217708_E2C5C3E4 
X-CRM114-Status: GOOD (  10.39  )
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
