Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0AD1D0043
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyVfpAZSDVz2ODm0zRp3cFoMBucyYUePYBq55igYf3I=; b=M3JinvF2eArTn+
	uxycJBZVQWjzdw0brioE0y3pNfKUh2/3hoiEml3YWQVET39RsCoMo5W/4y1QkgdsR6VHILXl75Hvg
	b7YTFfC977lt1/9BD9rZWmJv+WpCwwY4FZPybRnLlrJ/op0rV0vE3cws7eAn8lq8UnnSKOx+o0s58
	3crO86N5BoOtrij7nRqnfdOr2qwC58tv0zp8WPe4bJqFg4HhwwAbmpSzbQTZ3QDKQXKU9KpYZDSho
	O/6OmF9xaiIFJgONOIGhiPzGnYEnViLki9Urlkpk4XMpswdYlzkSPECBr3ws3KErZjvXpEfIlNVJF
	PqpYkeaqBu0FLinnThOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcBz-000571-9W; Tue, 12 May 2020 21:11:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBL-0004pg-8p; Tue, 12 May 2020 21:11:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id n5so10628596wmd.0;
 Tue, 12 May 2020 14:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kh7p8rdrTbAMmI3jWtK1rZ9CbIg2ia2rDs/YlOsgpNA=;
 b=cPIFoUvmGIxlPukGMQ7uGcHJho6BH2jGg4P+6CrUS2FvkuvBR2XBMGSKjdAN7h5ivW
 qYQPhCP3eojUqRSNOJaGa+3BBZXPvdg1NFwRq75U30hEhpvkTj2gY54W7a2GdmFmOm7N
 zmEbNjJIscccItBYwFKUuKPWZIyBjM2r4aFer6ZssxucBg2hci+WpPC2jq4HOmK9eZRk
 /NDY+PKGUgaah856aF+GXpuz3xL8nRZOhhMgz4A3rEZajuzbTPxjRjEmkgD1EpNorQS5
 R/jG+yKs5kQi53KQMbB4/IbHqdmwbOFixz0i0nZNQwbwzXpWp9d/KUK2agPPEU3o7p+g
 uQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kh7p8rdrTbAMmI3jWtK1rZ9CbIg2ia2rDs/YlOsgpNA=;
 b=O/YuHSIaxjru78A3LjaqPq9BvbKD9l6mR3AiYMzJkwBIoaSV8HprhE3oBXxUkrTPlz
 hEUXBKG+HkM7m9ZOKVCm22wgRwR3jo4tcQmXYcZFp5D20hoKsqUfBIprqj90ZpfxC+Gw
 5Mz3PQo8/MtufCdPjNuU15xAaZK3PbTiFnlhXqT+VPsnpyvaWwlkHFHKHvxPF8eVORm+
 lG7dPePLHaJFKsIuRa+C2yvhnvXNLi6j6TAKhM3+mkvw1Amn1owT3LULa5fIwBCrLKqM
 FMjWn7CO7bLdJ7Dd6Fes11MvwhVbxIUf3Hv6uKZ0FCURohTjEAHHSq7uAfnlejXOIgmH
 C2XA==
X-Gm-Message-State: AGi0PuYgdcFpCGEloo5zJJNKP50ZCEUu9qeqSf5Ncrg86G1SM1JtbXaa
 XHMcolAlEX5xf0NuMHrojYZmyMoj
X-Google-Smtp-Source: APiQypLgwKpieVSrD5/RT1U58B8Yxn1gsc38huXEUnq0btI1b4UmRyYIc59I/TBi1DMhTgv49hJcBQ==
X-Received: by 2002:a1c:1d12:: with SMTP id d18mr25183480wmd.109.1589317877769; 
 Tue, 12 May 2020 14:11:17 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:17 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 1/8] dt-bindings: net: meson-dwmac: Add the amlogic,
 rx-delay-ns property
Date: Tue, 12 May 2020 23:10:56 +0200
Message-Id: <20200512211103.530674-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141119_307736_DE76E81F 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRG_ETHERNET registers on Meson8b and newer SoCs can add an RX
delay. Add a property with the known supported values so it can be
configured according to the board layout.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/net/amlogic,meson-dwmac.yaml           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index ae91aa9d8616..66074314e57a 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -67,6 +67,19 @@ allOf:
             PHY and MAC are adding a delay).
             Any configuration is ignored when the phy-mode is set to "rmii".
 
+        amlogic,rx-delay-ns:
+          enum:
+            - 0
+            - 2
+          default: 0
+          description:
+            The internal RGMII RX clock delay (provided by this IP block) in
+            nanoseconds. When phy-mode is set to "rgmii" then the RX delay
+            should be explicitly configured. When the phy-mode is set to
+            either "rgmii-id" or "rgmii-rxid" the RX clock delay is already
+            provided by the PHY. Any configuration is ignored when the
+            phy-mode is set to "rmii".
+
 properties:
   compatible:
     additionalItems: true
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
