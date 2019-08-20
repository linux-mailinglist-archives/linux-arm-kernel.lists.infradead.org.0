Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C8795908
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgTr72vHc2gQKk2/1pu5brpCDHdFn+9mLPbPi8skyGA=; b=UelOJPSDXbrjY8
	sbpRHZ1tF6xaxTjQqnyNVmflAk6zOeTZPQznBLjbnai3a8dzhCLhQceQ7+xlhF5JKuh9crbnDzV31
	rkfk4B0WgEt+97/w3Z6/0kchwv3UP1SSuBj8PbPzgGwTm3zzVdzEbm+QmxnyvRhnaLtXQMV1qEopK
	TeFyMTf5LmuBROurkGqP3xq8BjBxCVdFGOcyV4v3hLGBvApTBgiFheojHCW3SfDECTedrL2h+mGcw
	DTLD6cGslVYy7dNS9EL4jLldIBI1DcFRa+pSnp/NK9Ce6/iNuecb+6NlKoNFZHZG2gHBhUtyMXBV0
	YqC0njHw0ymS3jFXx0Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzz29-0000XQ-VA; Tue, 20 Aug 2019 07:58:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzz1c-0000HE-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:57:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id d16so1749268wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 00:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
 b=FydfL8pH1IFg/KxMUBQwORlq9rRP+hJPHFX2ukRJ1GxBI/LZs8N6sx0MxvQi+Jllzl
 8VcOcIILZBwRg7Xub/GuO7FtE4N8AJoYYLQq41KLjkRzEHgVGHcRm9lz/9c8bXirkrdv
 hntEeiFjObQNEwJMYdUPq48RvrsXYSyy8N1FOtow+IqnqQjisiDyYhKlg5Xw9xfkbPhE
 566AZYy78ldJlFzn4ajapmh2BBq5sKT9tTDPSOQXEmebTyOb0GEA4UmpGy6JWMCj9lgx
 9c5NZ2BPO73PfNBWiSFk38q6k21OaGegzkaLvotAxI0Lmh2ewwLLMuej9lgDjIsZhy3m
 A2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
 b=hYcQ2uPCtQoD2Eu+3zzAKGqnN6F0+182ZEpZbtDUdqpVs/f+U6CNmLnrYDoi0flvGZ
 YqVjaHHQvXtrGtu9n17wQRrlawxlezmXTzioVK6CdYQsxV6K3NURYEBMkhomD+ZSJ53S
 CFxUvlRPfG2xIscVgVJZJmEEzzPLe2wolLE8Z4hE9eIgtWoYlomaMeEsDsO7rMFFw44/
 HqTfv5n+7Ob/hUXUYdKd+MJMeFAFtgrH0u0uEr4wBOyBFfA6sGFGn8uufZdCdAEROk1U
 aChD6YLLFZSkzWBxmK5U5qkUPwrnvcSSH7MJOFWGvysUXlFEKtMLtdB5Ki2QvqtuNjsG
 s1uQ==
X-Gm-Message-State: APjAAAWVWR0B8oahgfDbYE/Rmmqa6u9lHDEMQZqPo4KG7nVBr50572ol
 H/tkWRdZHMdqtDSlvOBcB+dPBA==
X-Google-Smtp-Source: APXvYqxZ4XMFt3LxDKlYE+RW1ckDW1+fl4lBDePImr6M/WUYqMF4wT+8AJVCrU2RxsTTpEw51tO1Nw==
X-Received: by 2002:a1c:18a:: with SMTP id 132mr24806881wmb.15.1566287870642; 
 Tue, 20 Aug 2019 00:57:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q24sm1506467wmc.3.2019.08.20.00.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 00:57:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: davem@davemloft.net,
	robh+dt@kernel.org
Subject: [PATCH net-next v4 1/2] dt-bindings: net: snps,
 dwmac: update reg minItems maxItems
Date: Tue, 20 Aug 2019 09:57:41 +0200
Message-Id: <20190820075742.14857-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820075742.14857-1-narmstrong@baylibre.com>
References: <20190820075742.14857-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_005752_342384_C4DFBB2A 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-amlogic@lists.infradead.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic Meson DWMAC glue bindings needs a second reg cells for the
glue registers, thus update the reg minItems/maxItems to allow more
than a single reg cell.

Also update the allwinner,sun7i-a20-gmac.yaml derivative schema to specify
maxItems to 1.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml      | 3 +++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml          | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 06b1cc8bea14..ef446ae166f3 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -17,6 +17,9 @@ properties:
   compatible:
     const: allwinner,sun7i-a20-gmac
 
+  reg:
+    maxItems: 1
+
   interrupts:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 76fea2be66ac..4377f511a51d 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -61,7 +61,8 @@ properties:
         - snps,dwxgmac-2.10
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   interrupts:
     minItems: 1
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
