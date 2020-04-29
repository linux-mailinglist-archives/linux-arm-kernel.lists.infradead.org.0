Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DCD1BE84B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPeNPTZPdtghxXxCXa6aE8dqmOtfA0AQ1CrXIN2VepE=; b=ZvjdVrdieOAUQ/
	03DgqdG/5BCYgbP3/JXyFEmHGd1u3bKpPcv9/OPYfN1UTWHGvz4uUW0TKKNNetI8tLmy6ZegFRMdU
	b0md2963Xph182flW/27yQw4LLSNyzKUBr0FDINlXU788PLLIDuc/CM1OrWwDuRp/wA4q2nH398L4
	C5iEe0ucoMpydghQEnpVuw69+Yoey4b01kOcyi++5KDePBRBFd7Guzqier9m0ou6y010EJhl1BDcu
	QZYTVQ4QsQeB5XNiZFQyp+uvQ6Ddh3JZl+J+B+pvavHEt/V7UI/Jilq9EUIZivreuJbWEz76M/G9+
	ag4eWml1PUViwoVAHa4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTt9Z-0007GR-4Q; Wed, 29 Apr 2020 20:17:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8s-0006uW-5d; Wed, 29 Apr 2020 20:17:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so4129030wrq.2;
 Wed, 29 Apr 2020 13:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oSdaUU1sAQef6HcUSlubHrtLR7VgXha8CU0+FaZLEz4=;
 b=SaXueIiNlafjvD/L5DRZ40ZBfjU7ncCWTZkp82EZdq2RqTSNwG7DO4yhKv9xT0JM4P
 gsZrGU0i07myKAk+AnJNw0gTgKFRU99AnstjmFZPK7epxkXLSbeBwU8eNYsodEhe7sYI
 DvL3E/tVrmqM+ydY/VIa8nLA9TCpTk+VLj5Vd5CTg8Ml7z2gpXzoa/mE9+wH04jZy9mi
 fI7IAbV2ZiNa+vGGrFLoiS+026khr3JVcyb1ifh8K15U/gwTshSrxUfZE6qeIxwrB4jk
 Jm1/QcuefdJJHVNY3g0t/kP2bpaA0Gglpc+O6bShUOa/wcEMEL5eRj4ZmAC6YENCNxXT
 BxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oSdaUU1sAQef6HcUSlubHrtLR7VgXha8CU0+FaZLEz4=;
 b=X0NDFG0r8yCc6Pu1xL5TwIwe+rZROYNDY+m9SLMepr77nLqOrQbobaOfMro1H/Xjt3
 9pWz5HA+R16Y8GgXrCAeCIMY5f85AMcXC2b+L+U2ESh6J26dPhr8jA3ZtqYcmY+53+A8
 R2FRJdc7xTqpzEyWMi27lLCsNYonmorO60GnteF4EJgEBsZD28xRhpqr7ApEim/kV5j7
 gf8XIf291bHEul/YXxjYrH3u/eTgcaduFw5Xzu1vMZH0wzb8SRzOcAoXG1UDuuFfiRGd
 +dr6GEgerMkRV1gOHA2AnpF1MmgEEawyS4N10VKvFENpbmcUvQE96oFTzTOQrFoJ+FSo
 ST+A==
X-Gm-Message-State: AGi0PuZjoXvNPG8IGIYPpSvpEtg4AR6UN6ESrxi6JibhFUuNxQ+NUv3O
 sdYU68kORMurrLuo1256GN8=
X-Google-Smtp-Source: APiQypJ5wuI3iaT4ZvqzR/XFA5k+Bl12wp/s80x5ZiluHZdu39PD2o3yNiGqS7Qh2P4c8ATUDZp5Ag==
X-Received: by 2002:adf:fe44:: with SMTP id m4mr43579071wrs.188.1588191432566; 
 Wed, 29 Apr 2020 13:17:12 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:11 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 01/11] dt-bindings: net: meson-dwmac: Add the amlogic,
 rx-delay-ns property
Date: Wed, 29 Apr 2020 22:16:34 +0200
Message-Id: <20200429201644.1144546-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131714_206266_63D7198F 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/net/amlogic,meson-dwmac.yaml           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index ae91aa9d8616..8d851f59d9f2 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -67,6 +67,19 @@ allOf:
             PHY and MAC are adding a delay).
             Any configuration is ignored when the phy-mode is set to "rmii".
 
+        amlogic,rx-delay-ns:
+          $ref: /schemas/types.yaml#definitions/uint32
+          enum:
+            - 0
+            - 2
+          description:
+            The internal RGMII RX clock delay (provided by this IP block) in
+            nanoseconds. When phy-mode is set to "rgmii" then the RX delay
+            should be explicitly configured. When not configured a fallback of
+            0ns is used. When the phy-mode is set to either "rgmii-id" or
+            "rgmii-rxid" the RX clock delay is already provided by the PHY.
+            Any configuration is ignored when the phy-mode is set to "rmii".
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
