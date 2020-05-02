Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5811C24E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UH7D7YnV+vRO7umFOyCiB5Jv2t2Hf0KSHBPDn65ynAI=; b=RWy9s8jJ72GN/n
	Y6snoqf2ZY5HUp5Zd4NE79hA/IlpgqxTVRpBXNnNX/AidPxtN3DfC295gMwZrJOxNmC6BD5YPumO2
	p/D1x2EVLH+xTlFLHDU3jaM4Ajac8ZG0lsRl1FIp7Yw2IqysM92l2Ea+azU0pH37BPqP86EYpXLAi
	IicPb10SMwlh9e/Obb5L715oA+iyse2B3hKxRcHfPHkCGrRG39+ahOMpY5XFWkbsEb/fgyVfj4Rfs
	fUV7oEoMGKUaTsFzahkLFcDlf4m0xOZRNfOOHOaUwNQq2WAuxP/6QmWBuLu6j76NzoYk9PIr4e92J
	xeqs9ibsKgDcl8h6npNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqdz-0008TV-Av; Sat, 02 May 2020 11:49:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdC-0007dE-TE; Sat, 02 May 2020 11:48:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so2868692wmc.2;
 Sat, 02 May 2020 04:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wvA5b2DQSI44cr3o1jiTAHv9fqEf3DsLbZQwG9U+Tvs=;
 b=lntpnX2P7ussyaemFcrojFKaVk6tZ4Rm23GVBeAzymcvtkUz7pDRllMViOK+nQyzox
 0EADAUuTugXqZTw6fAyL4b78FjGgjbcIXb21oTM5py0vCqCPdvut8B6kASQwqbCI/v3C
 g+3lqgQFwNmVzxjDraHMhSNq+R8A4ZaLNVF+jRTO5U7IXJnY/Y4bTqRtUawsiRjoo2Aq
 mCwD6MKblcJMD6UzL8hwbNcmXpU3V13KuCN4sz5Rf6yjGU4xyVYEFPLetIUhHk9MkmE1
 2ieICDdazzU2Ut1G+GFXOIdjL2d9FaqYvn2gbCEU35E45500kZOP4svPYV0U0ptyPLlb
 bxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wvA5b2DQSI44cr3o1jiTAHv9fqEf3DsLbZQwG9U+Tvs=;
 b=pTDpseadMg3DGFb/QnMpN7l4b3RM1cJNfvgMO2WPBNjd/6uI1Jn+9NGUj0f2ppL68a
 CAINMRaROf8YON5yjo17ORswbNK6UECxPjcWm+V+PjZtB697ROXByup5fXQiOmKUqRkU
 ytyBcT3BBYpc7Rf4F/tfwvWrvNc0fxvj9zjX9cLNKo4omu29uAX5J9/BtXXGaW+Bi1b+
 EJ8gSls9O+XAX34CqvYs9JH+05PjNiZSHMEiG161jlgOoSY79ix7Usfg1Jetg96WKWE8
 9hrtQnxI/P+DTjlWDU3YmgYuvxHljRImmctuYYHA0Z68B7nfICvcrFHUNDlprmZotbnP
 gsrA==
X-Gm-Message-State: AGi0PuaNkyT9ab5BLJ6RLyyhaEV3nnMNaEaxOLuRbaB+jd178D7IYxpJ
 bA+cxPJkMwHPNiOzm5DdcO4=
X-Google-Smtp-Source: APiQypIFunrF283WMUXHWC0y7h03zmE1LjpFk7NL6YETkVqdiu1Zwem3gkqe4Qn156YjEsmL1+OsTA==
X-Received: by 2002:a7b:cd10:: with SMTP id f16mr4502594wmj.21.1588420109231; 
 Sat, 02 May 2020 04:48:29 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:28 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 2/6] dt-bindings: phy: meson8b-usb2: Add compatible string for
 Meson8m2
Date: Sat,  2 May 2020 13:47:48 +0200
Message-Id: <20200502114752.1048500-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044830_940945_2F37266B 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The USB2 PHY on Meson8m2 is identical to the one on Meson8b but
different to the one on Meson8. The only known difference is that Meson8
does not set the ACA_ENABLE bit while Meson8b and Meson8m2 do.
Add an explicit compatible string for Meson8m2 so those differences can
be taken care of.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
index c2fe8c08d99e..1d402e055045 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
             - amlogic,meson8-usb2-phy
             - amlogic,meson8b-usb2-phy
+            - amlogic,meson8m2-usb2-phy
           - const: amlogic,meson-mx-usb2-phy
       - const: amlogic,meson-gxbb-usb2-phy
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
