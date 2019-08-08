Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F044086107
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgTr72vHc2gQKk2/1pu5brpCDHdFn+9mLPbPi8skyGA=; b=HlXKL3PLuxd99E
	3Kp8MV1H5hUPbivmrE4eq0xgEVuAI3WTZJVYwKjeEH3vQTXpgD8IXYwV787Zqv98kMMdlZGJl8Gct
	OqATpqbMeveuPYVlOsANq2ge/4aTYxFYLOf1zv6ibNlvj6hso4GfHpguCL7yiD5FSeEa3u1fQs3vB
	1tl1jRbJIB6UMND6wgyaId15ZvoUtrqNxa8VYKvxd709T2MyFPu4+KaeGv/vZTz44g9UQtrOqMcGY
	091ysECeb0yoB1KToQGhJcc4RAbYwCfcVDDAtTBR6sW+quM7CqX/QLsGrX/ksF9MH/HdEdTeu8Xdx
	9C2GZtpPWdnjAGIF82mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgnb-0001s8-Gt; Thu, 08 Aug 2019 11:41:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgn3-0001bb-T3
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:41:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so2073446wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 04:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
 b=p9L7TRcusWrL03ffcFUatHnu7a3wC88l/KhBLtA+5SK9PFmIMqlVSYH30UPzwIb8OO
 AA1Lnk1arUdN+6hDPDkXQFBLiDuOKO3qx7BQJNrxakZnrnwZdGgJl/fchkidNPmnoadz
 Co6BvOtphLt0hmzPBssqtTHX6KLQR3A4XbkT7liTQUasJpNlM49mPSwB9RKGYpLwEI7B
 HjFxhgKPGz2gi1GR+ReHnuQ78D/NCeeiPEeG6JHa2PosCVkmUiU6oF1SGjrWdFGITNOU
 08aVw/N2Ivy201GalDcBQ94wweclM56AfVzFh+hqTLHTxDjXkNBOvTbkra2hUVgzy/zX
 FqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
 b=ITQvonMvgpzF7S5GbAeO7rO+osQll0Ltw+CVgKuTPTqitLHk+0mZxndsh8xY4VKVY9
 /FR1SMkGZ//orcCwqw9dh1GPf0XoClqg+rA4WH/Rf2jHYVJIuHEDKJiow1g2XPpVAmnR
 /qx6IU3Whfs9Q7rFSA6aOuhBpWUXY/TWtHZIb7lMTgcvKn6Nw2rAWtW3bUUIJgKiJtm4
 VDnXY48R+a9kkqO5aCOOSOARIEbLheIeheEnXlfbQW6gib+uzHbmAoWsrulCZzQbBZ3e
 VStJpHAmiUkW3nr50RGxLdkANa5WviCdAIXEySyvBMlC1o93z7DlExeFACQ1/cwGrD4h
 975A==
X-Gm-Message-State: APjAAAVBgq4skeF2H/Evm5vtGmQ3sEQkODHd6M9em0NRwT1Bf27TOsQ8
 ta8KJsowR+jhztvefmzjfFMccQ==
X-Google-Smtp-Source: APXvYqwwQF4nEozwvl1ltX1EUHmBeoypnEtCvb7R92cEQ+NaOXqnoC9eAitquC1kL/PNebqoN8UHpQ==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr3995039wms.8.1565264464549;
 Thu, 08 Aug 2019 04:41:04 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f12sm104555882wrg.5.2019.08.08.04.41.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 04:41:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH v3 1/2] dt-bindings: net: snps,
 dwmac: update reg minItems maxItems
Date: Thu,  8 Aug 2019 13:41:00 +0200
Message-Id: <20190808114101.29982-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808114101.29982-1-narmstrong@baylibre.com>
References: <20190808114101.29982-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_044105_947292_5023455B 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
