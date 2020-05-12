Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367981D023A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D93EHUHb4udZ8RgVxW3ItGF5VW1vQIcVfyTsS3Ab47g=; b=f2BYWoJ3Nxhc5B
	zp5/UR5q7XIFkP13Oa8LvfOfLanjSy/47VGEJ4jfLCNYiK+ymzVm9gbQeO16tj/s2mG+dyfYxmctP
	VJDpY1xEtcAu3oPqTGETL3NuTBnFtkpFO+e0IWRMSXgbVM//baqfs3Heiq6eiDHBl6GoA4EmREHf0
	9jD/AR6Cjy265uZNJWml4s7vBaaDdFM0JI3RWL3/MARVuD8Edu0AJ28/+B5xhm8TVIQtSarOXIiu0
	5jpM9rLOakBH9XoDAir7oPCCItZ4QWzOpOpb3KNvRlIppOkOSUJVsu5PBydcnyMGZSpJmPFOV1Dn3
	pozA0ZM2sjIFtvMDWplA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdLI-0006f9-Bf; Tue, 12 May 2020 22:25:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdKH-0003aw-RT; Tue, 12 May 2020 22:24:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id l17so4480149wrr.4;
 Tue, 12 May 2020 15:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ufv+Yo50eSZKu4boEwkvocCNnIFHsje2YroMYtajJH0=;
 b=HIKlwMtA2ZXj4Bw/fXw9cmHIq35HG2LYf36aRSckF4AFVu6yuExCsx1HyPmjWzlmYh
 YZP6N58n5xqlC/lbm3HfW9ppFcfqKSGxMc3dysjaNocvfjotgyki4hWmXbmpGi+p+r82
 E3KQ+sj/Z1XWglnoZBYiSPgPixcQpS8aKMFGaSfc/eiUX0Ys/+3EjuZULd5uL0SOuW5R
 o1ecJM+RzdcmJ3no+r36gn5sbDBl0cTiBNiRgyh/7Th/4utgC06Fg+JCQi624PzLUlYP
 w7bV6xdFqf4Zu0NSuSG7cmHoZthK4bfmx0/jClZTjtmC3lvQRJ9ycs0df1pSk+chTrfM
 WZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ufv+Yo50eSZKu4boEwkvocCNnIFHsje2YroMYtajJH0=;
 b=HST1vb9ZpUMEDG7a2ffcpqpCrJpgYMB00Q+iI5F6g64g2b07AvLgCapc/nQ4GHQfsB
 q3nFY1CWNA3Wt5DIiHH4jv/Xu8aN6nkvIE+3Y5+RgDEL9rLGrw5uRNNx4cFpBgK5uMlS
 jwKs3ya3zyt/0yXx3Q+RJhR1nsrPqJnIOl+3lysektX6XxOkcD8foWc5qIvIx1qbuqkF
 lw7FB9cUPvIvcWNdcteqQea6CvSjja8MleOuVJvDLanVY2Q0i9A/TSma27hBnUjFMGQC
 HM1+eJv4rD3E/lFFzxxsr1VafKOI5oVUDpVF5TkVkyL4s45se7a3aBRcAIEdJlRTjZnP
 BTvw==
X-Gm-Message-State: AGi0Pub2545qAvAzJ4C6jWpPQtQh0yLAHXXQqSsjX1WmoF7cfaaA31JX
 80MjW66oeUj8gKhWTrV0d24=
X-Google-Smtp-Source: APiQypI/WPHQ9nOXga6YuAxFxLZkPX/a2ZTfXeF7vKrdEToeLtObnlL2uIU+z/eGV+rnN652uHm2Kg==
X-Received: by 2002:adf:9447:: with SMTP id 65mr27471285wrq.331.1589322275978; 
 Tue, 12 May 2020 15:24:35 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b2sm21758758wrm.30.2020.05.12.15.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:24:35 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 2/6] dt-bindings: phy: meson8b-usb2: Add compatible string
 for Meson8m2
Date: Wed, 13 May 2020 00:24:20 +0200
Message-Id: <20200512222424.549351-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152437_904470_C2A7E245 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Rob Herring <robh@kernel.org>, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, hexdump0815@googlemail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The USB2 PHY on Meson8m2 is identical to the one on Meson8b but
different to the one on Meson8. The only known difference is that Meson8
does not set the ACA_ENABLE bit while Meson8b and Meson8m2 do.
Add an explicit compatible string for Meson8m2 so those differences can
be taken care of.

Tested-by: Thomas Graichen <thomas.graichen@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
index 0bd4ce39525a..03c4809dbe8d 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - amlogic,meson8-usb2-phy
               - amlogic,meson8b-usb2-phy
+              - amlogic,meson8m2-usb2-phy
           - const: amlogic,meson-mx-usb2-phy
       - const: amlogic,meson-gxbb-usb2-phy
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
