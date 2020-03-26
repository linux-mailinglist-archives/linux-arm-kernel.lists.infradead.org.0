Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659E1194412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8K0bMR3NRWWoDdDCBQJc87Hultj3hpk2qemdZYorTsQ=; b=eLv96APY6DGpUF
	+IMq95JoSnH181tVX8RH+KSP6zCREfMH1C46p+vVfflfz7VIUurr0KTyyki8EsbiqX93pL/Visi3f
	3fXyq81A6kO3KwBAhkXUseicwKj6X8ELKxGBGtlJP24GB4AA0hWu8po4L44fGfPqxpgWLrU9EiIo7
	XmXpTuel69jURQqcYVcfchMzI5ltUD4j6OCskqTmAGEVYE0Qt9oTn/m5GkX4zJ/nLGKmgCSlyY+4/
	g/XLfoARXbaPqWelYG06vkd8JFcji8Gt+dhOE5OyXU0cyEH0st7vfZnchdl2uSQ7zLv/H9Cgc8vy0
	K5SodxhHRCkZbuHZqL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV6G-0000MT-QU; Thu, 26 Mar 2020 16:11:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV5o-0000Cy-5N
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:10:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id c81so7059547wmd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ef+2V/P1wVE9VpsnS3HxhmcxnSy4fChdW7K3iDl8o8=;
 b=gXvzLY6CeYfNADxB4JG7xpxE1ji6qxNQpWQTYlcZc2xV6aeQHWJx7+Ku4CkmmIsu/j
 5lgc2eF4IeXZDfNTc/6NawhJONqDcc/DonMZnbnHT0pkJe4Ep9i6OGj3M+DsdjC8PqJd
 iEBf/wVHXTc5e4Tqzqsm07uRysLqJhCt/Kv3LORjwjD/TPUF3QZ0D6hXGOrqkxoOtA4s
 bxNHXHXqOhXOVVTSJl4cg11QufqsP2o8bht5TXZuCL8edYupMSlZTqrGGypsOYoyGTql
 m4QhIuLQReAEik1QYMGEMfhZRtTJ8t+RfAQbQwcnrq3b/Crfd7YVI9IO74+xVSRjY5iU
 KQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ef+2V/P1wVE9VpsnS3HxhmcxnSy4fChdW7K3iDl8o8=;
 b=SJrrK7xl0htS57KNM2AH8yHNy1kIwy1N23LvTjCK10KxNYk5uCO3Ps0CLDoSa1S9Of
 zm0r3zNQ39fYYbkvrc46k9bnjHjhtyLIfyCHr7OQQfos1VsWHtv6G0S4jyGqq7lUJ0IS
 7g8GGyt6ZJqh4DPPsAzo03xKYKBb0ruUdVDdy8gQWOdgHpAVtfOjKhJ6m5MNpnk8uUv4
 /wkbibIWiOjlspdBHdmMDeS1K8odSL6HXM2szNdZ4bY67HieRfg8dsYGtNr7wOkGkQYO
 YMnRZ8sLVnjPEbn+pULxLccakx+EjYt9KljHQXOFgOVL4Amd8sXWK5MIiGn/xbpmYEGm
 7D2g==
X-Gm-Message-State: ANhLgQ2C41bsYbSkKpvp2LLRGkr1gNWTIs1QR7zpWKfZYvDQ3LV610LF
 eDaYOriXX1uRG4vNnt2LUEnGIA==
X-Google-Smtp-Source: ADFU+vsfmcT+ctSJtMv05Y4tqAkQhOxGFaOI1CZwiZ+BkPxzrO7+Kc9u+EBInbsonLwD8A2tC7yMtA==
X-Received: by 2002:a1c:9c85:: with SMTP id f127mr661739wme.91.1585239050485; 
 Thu, 26 Mar 2020 09:10:50 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id v8sm4275098wrw.2.2020.03.26.09.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:10:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: dwc2: fix bindings for amlogic,
 meson-gxbb-usb
Date: Thu, 26 Mar 2020 17:10:46 +0100
Message-Id: <20200326161046.12111-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_091052_201486_13A28B69 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: benjamin.gaignard@st.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The amlogic,meson-gxbb-usb compatible needs snps,dwc2 aswell like other
Amlogic SoC.

Fixes: f3ca745d8a0e ("dt-bindings: usb: Convert DWC2 bindings to json-schema")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 71cf7ba32237..b7b9ddcbc637 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -49,7 +49,9 @@ properties:
       - items:
           - const: amlogic,meson8b-usb
           - const: snps,dwc2
-      - const: amlogic,meson-gxbb-usb
+      - items:
+          - const: amlogic,meson-gxbb-usb
+          - const: snps,dwc2
       - items:
           - const: amlogic,meson-g12a-usb
           - const: snps,dwc2
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
