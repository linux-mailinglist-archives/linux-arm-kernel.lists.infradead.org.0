Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DD386102
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zWUEx2jn15CbevyzCNqTuJZHYHqhcgYbhSrqGVkNh58=; b=ZLyW9mDcUbxJIL
	DTzHkrqKkjzDx/wJ3DhLsQxFwm2OgFPZ6aad6R2Vzca/imXdJJvDOTZRyOUkMnZS5+lyZTRnTJCMH
	soGrYavpvX6RH26TWfsmLm8rP/gG+8q1yPwT35+WRVcL/gEN0XVcNHGy/MtvSDwp4fxK4PIQPp9MA
	5BJe4zAqGAl1ho6pgqy63Z4Tg0bUvhLkA2v56pyLHf8reROG8P5t33IiQU174QMD+yUa5z8YbfAck
	5+ZV5LkrL4wsnfccNAzJ6d5hhUx/s1hOA6JeQD5gBfqvE+dYXivh0ysGd1UlLr/QKEnuyVeWsaQVa
	SYm4vRr+S4FAykYlCxVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgnG-0001db-3w; Thu, 08 Aug 2019 11:41:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgn3-0001ba-55
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:41:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id 10so2083654wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 04:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2HHZUJ/kC4+XNcT4LL4C7KX5s6fjk5K09PuaOqbqrKc=;
 b=IdHbq1cn4+E0gUTJJAdRnqEkQVbQS6psbbd6zXVjbYzw6El1hUgNzrEWKlOExOSFsz
 xolAPGae7o81CsFfmA7IuwFMWYMkSfJAl7tzq+/of24KGeRIAlwy7ZRfiU2uR1n2lBJh
 ICMBXmOuO2sP+GdnOjpYAnwPZYMy/7XxnAPP+jDYYtCbWY0Fbig4IlnHPmr/UDbptHn6
 oSrB9h3vODvqjGO9/eQE30V8tDw+OiANa0r2r5oFTBSf3ucCl6J/3hNUKK2vcJraP/F4
 BZlsdZ5XwxOZS7osYx19txK2zfIqyX6X2+SjN1x9OmsFPzHY+twjKT/3trmv0czErqZE
 i5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2HHZUJ/kC4+XNcT4LL4C7KX5s6fjk5K09PuaOqbqrKc=;
 b=r3fH7XdPlCZX3zsSaaDxrGNdSRXRK5VVi2FGa0R5wNQfZcOYDFg7X/D+wPFbMlhtFK
 x34jUVGFyU6y8B06c7n7rdDOCBJORQypIz+ulcVIperHz2x+76sRHSbuTuATAVniNxhr
 P+9jx23KNWtpMIFNf7pEHbyJhaDVcfibD0qd7Y1z71vDXyVbjd1xmIwx6AKppy2/Lq9I
 b5ouU7dIR4iLfiiGyvvgbHJqKTesubd6JkUQzoseQLCigNE+Ci4avtxO1QllPpkgQE4c
 vfFR65ICED5AqPHFgpjQArcE9o/08H5cV9g8AUTAY9XMh1ecQlbPUV1jY96IkQ0dU+/X
 L5Ig==
X-Gm-Message-State: APjAAAWs7q5xAFykQ3gwKh0cKvj9gYZgPBrUTaDcRYjyRvrmMlPnedFS
 2CfRjuF3IF33WCHt8l3w1yNWRw==
X-Google-Smtp-Source: APXvYqwibGOM8K1pRgtj+TiYesCzz87uQYft5rr6EmKdE8o3sgzgIcNqyt60WACqvwb14/m4Cp50AQ==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr3973057wmj.155.1565264463130; 
 Thu, 08 Aug 2019 04:41:03 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f12sm104555882wrg.5.2019.08.08.04.41.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 04:41:02 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH v3 0/2] dt-bindings: net: meson-dwmac: convert to yaml
Date: Thu,  8 Aug 2019 13:40:59 +0200
Message-Id: <20190808114101.29982-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_044105_255734_03B94C23 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchsets converts the Amlogic Meson DWMAC glue bindings over to
YAML schemas using the already converted dwmac bindings.

The first patch is needed because the Amlogic glue needs a supplementary
reg cell to access the DWMAC glue registers.

Changes since v2:
- Added review tags
- Updated allwinner,sun7i-a20-gmac.yaml reg maxItems

Neil Armstrong (2):
  dt-bindings: net: snps,dwmac: update reg minItems maxItems
  dt-bindings: net: meson-dwmac: convert to yaml

 .../net/allwinner,sun7i-a20-gmac.yaml         |   3 +
 .../bindings/net/amlogic,meson-dwmac.yaml     | 113 ++++++++++++++++++
 .../devicetree/bindings/net/meson-dwmac.txt   |  71 -----------
 .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
 4 files changed, 123 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/meson-dwmac.txt

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
