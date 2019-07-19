Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CE66E57B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 14:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xy6QHdZsdVwVGGWUtNDg7skwM2sg31mA1/6T8Bb7lLk=; b=Df/BqYHex7J00awFGy4q9ClUVo
	ek5SWfu63p110j+CgJpg1iiqdRc+h1aFQtHj/iqAwuIIJHPY9+rHFUl75ObQn+xPhQ8O+kQCQa5Kz
	pH0AZM2DAY+ehvRH510wYX7Uu3C5Dp7WdkqChbJBTsplMV5w+b1rSGUH0JGNIvhdTYKPeJcg3Bvow
	ABPX25bre+N2xgIfBiED+Pnvw+8jLtB6NSJPUoKSxGrgrWuEsnx7O4/rYKUdpOtg2ihlm/slpw6Ja
	S5j9urmZPyae9OGApX2VFxZ4LD5nCnpK5F2rBsGYovag2i3ksuH+Gizlp5uXw5Q2Zg+ghCxuGlVc3
	Zv2GM7mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRnh-0002Nu-IU; Fri, 19 Jul 2019 12:15:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRmm-0000lT-06
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 12:14:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so28585601wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 05:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F6zESjJw5gi9GyaRx05z2263B816bds++z6rEjY7GBY=;
 b=rBQxcCKPpAGT5kBMGgeyGoam1a9RgUnNe3XM3HwkofbHBS6aPNoGiV0fPWlLb0ogBv
 4l0X7msaSLAx3jyTgQokU8FDURdSbPaY6wroGOAkvYz7RkrU/tje0XnuKmLRniacSaf9
 Lc7i6xwUauO1mTQHvC4pqQZmswEJQTR1XX6c5O6kXVnHFI4RnYjvPh0qSUf2RMoTUi0m
 TMmXi+PF84gspRd6gf0uAPqm8QjnNwXbnLlHp22E+n9h27jOC0aOK3TI1PN9ySQorCW/
 nla9IkN82Hv9DjZ10cPU7D+8giGglW1hcnsPTB4vAmbGQK7PaLHLMQQJjYFFRDTmz9WE
 GL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F6zESjJw5gi9GyaRx05z2263B816bds++z6rEjY7GBY=;
 b=oD5MwL/e3KYnISs/T+j1NiYeDc0bNiRHmEi5w+o5xqD6tnNiYuXfewAowA0G3ikPF9
 R+E/1hmvRgCoqGQHGQfcAO/crOrwbqXQ0EnO3Uq8ucl0SvEJJNTkkjo1ouYGIwhCAF7s
 sRfNBGARFXPDFwFyuhBseiUrKLonAQK7Y3ReiOZUXZ8/HjEJkVWZlElWl+uGmct7fRXZ
 9/aSzcvC6xr7JvNpiTTMZqWlA2ab+xfh424PpsKzHfgKSy3DUPkHrPUa+gC6e32n24od
 3TK5mqdLVRlwmPteOVrgnLoV0p8xym9PCPI/OsdcfagsPmBN+DDzXx42WP61LRnlJf62
 PnQQ==
X-Gm-Message-State: APjAAAXJ3u8Ecbi+wMAwFqPFtzjgopAvCwMXo/YyXZlrF/TF7vbcYwlt
 vkOzWkqg/b4WYavP3Qx7d2g=
X-Google-Smtp-Source: APXvYqxSfE5k3AZUgLPNsy65WZQLQ7MoyydOZ3KjU7X2xwBYxVpD7OvWuV2qO7vQK9OyMDSH5V6ONA==
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr45643612wmk.99.1563538490401; 
 Fri, 19 Jul 2019 05:14:50 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id y18sm30135261wmi.23.2019.07.19.05.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 05:14:50 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v5 2/2] dt-bindings: arm: fsl: Add the pico-pi-imx8m board
Date: Fri, 19 Jul 2019 15:14:30 +0300
Message-Id: <20190719121430.9318-3-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190719121430.9318-1-andradanciu1997@gmail.com>
References: <20190719121430.9318-1-andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_051452_042765_E7EDC48A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, andradanciu1997@gmail.com,
 pramod.kumar_1@nxp.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 linux-kernel@vger.kernel.org, s.hauer@pengutronix.de, angus@akkea.ca,
 j.neuschaefer@gmx.net, leoyang.li@nxp.com, richard.hu@technexion.com,
 robh+dt@kernel.org, bhaskar.upadhaya@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 pankaj.bansal@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andra Danciu <andradanciu1997@gmail.com>

Add an entry for TechNexion PICO-PI-IMX8M board based on i.MX8MQ SoC
Datasheet can be found at:
https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf

Cc: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..54c094341121 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -219,6 +219,7 @@ properties:
           - enum:
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
+              - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
           - const: fsl,imx8mq
 
       - description: i.MX8QXP based Boards
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
