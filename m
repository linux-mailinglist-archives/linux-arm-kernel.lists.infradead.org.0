Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66FF16B047
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/3BtFbjygZZ34iD3k5QWy5Kfn0ygzvPJ2bdaHb64rbY=; b=Cjx
	TOPCvUII39oE1o0YQCzZdkuvJ48ss7HqNsBj3Wz/YT5jCCvgTRK0HXhqtiUBhT3pdrhtXHkzuSRos
	dnglZ8o2JH8fFJDsC9brXh0R+gEuU5OFmqyAcG72VD7P03i00hQ0ip9xjO78Q6dX5ADciuCZte8Cx
	25skj3IRFbEN9EIA3rjU/s9lw+5qrdnXJEeaS2WbJOWYLpXkf28oZlVr/hgtawN8cYtM/2hAJOBbV
	LNMYk9u8Oy6xWMtQZGbeV7b5ZqofPFiWTlgyQSki+DLLON77JMqGR4ccSLFViTUzGBeqYoOpdAEfh
	4JxIl8vNkI140ym5cfq9jSyrIRJfZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JSo-0001Fs-Mu; Mon, 24 Feb 2020 19:32:22 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSc-0001FD-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:12 +0000
Received: by mail-qv1-xf42.google.com with SMTP id o18so4657768qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=x4yd6m5lZvhtdhwwlGTOfDjtSjiOhT0+HADbBAmE+VA=;
 b=hydi7pddSHrbRFgtm3FgHuxHSMjJ8FH30cUJkSNo47Kuq7FxZRCGmjsGh4IzWJh6JI
 3mVkGb8cdwzAAusGz3TGmNfxx3o+4Jkwo7BsDh+Zf92A6N9pq0gfmKwvfcRJeeyVJl9W
 A45RUy7SJI/RvLjXj/PouCDTxAJgaUjX9ZqbBWF101pBgfdTiS9hVjwfUBLgw2L8l5qL
 itV7ejKhkXoXay5vOjmI2DfLHD63G0oBK5UNtnjCmiyRLprZTDziu7ivqSHNQITmrNr/
 jMzYGa5Jtgj00MztcGtkIjMrHOgmzOYvQXTDl76Qp5+jUGIx+x6soz2EHN5h5maWaUdx
 bfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x4yd6m5lZvhtdhwwlGTOfDjtSjiOhT0+HADbBAmE+VA=;
 b=HMx4sAnoBlxMFy1t6PzcLwtQ1fNPabIK7vok9bezFLc/kJhd9kpNLtICnL9F8DdxlP
 UU+4hG2bC2td4Vv687z5ytHM8akxDrqN77aID+vXRsfTCLwukbzgEDcCLjqIqLZpQy0T
 LnLCcPDKrbIvCnh8NwipMUtNhxDq22qIpGhqNTTWae+M9RnB33yt8VefUlwkejvdvkUP
 FNao0hyd5oQuH0p3dhSZUtXcXq3UEP2WjFIhX7w3hKGtndhLsZ2NW9qibuZX2RfhNy36
 7IJ3T2IAguwMWVZnmW1dQIYQNcumx4ykP3Vu337LUTCi3StsRJq2SzRDo4tjyqwws4pY
 5LTw==
X-Gm-Message-State: APjAAAXxh1fbgvxlBLnpkimWqe51PJDDVbWuK+BHV2gwKdcPfdq451ai
 YlVhh50kytV3lxHY+7ybuxg=
X-Google-Smtp-Source: APXvYqy/5ljyQP9AEyz4NqOnMG7r7/B9JIq1RAerCCfudb4WJW+gKeaJqAPo5mEBJYrd29qopTU7Ug==
X-Received: by 2002:ad4:518b:: with SMTP id b11mr47494346qvp.195.1582572729548; 
 Mon, 24 Feb 2020 11:32:09 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:08 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/6] dt-bindings: arm: fsl: Add TechNexion boards
Date: Mon, 24 Feb 2020 16:31:55 -0300
Message-Id: <20200224193200.2773-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113211_060306_B727A41D 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add entries for the existing TechNexion boards based on i.MX6UL and i.MX7D.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index e654a6376bc4..bad56df60f87 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -225,6 +225,8 @@ properties:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
               - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
+              - technexion,imx6ul-pico-hobbit  # TechNexion i.MX6UL Pico-Hobbit
+              - technexion,imx6ul-pico-pi      # TechNexion i.MX6UL Pico-Pi
           - const: fsl,imx6ul
 
       - description: Kontron N6310 S Board
@@ -284,6 +286,8 @@ properties:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - fsl,imx7d-sdb-reva        # i.MX7 SabreSD Rev-A Board
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
+              - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
+              - technexion,imx7d-pico-pi      # TechNexion i.MX7D Pico-Pi
               - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
               - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC) Module
               - toradex,colibri-imx7d-emmc-eval-v3      # Colibri iMX7 Dual 1GB (eMMC) Module on Colibri Evaluation Board V3
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
