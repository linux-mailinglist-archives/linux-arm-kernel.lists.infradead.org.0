Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37084F9C35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 22:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fLYnaN5GSxD1eZRPDQXDVkaFvmEtLMesQ4FBM+aZwrc=; b=nuMcmN/Ietj/ISNVSJhMar2EQZ
	+fyKOkFPoUNdUSaL3OA5boSFgMHTgwCDhqXPDE//jCz2fLQFmjVWi2sFKXEthqCYe76wNRuSWvLj/
	Hugg1hVcWGV1MzHQkQGg1+cFakf6zDzCDOCjKn74soXHenmI9gXtTkUaTFtUYRgFJWdJopzE5A593
	233f+NranQz18ybgoDklXV/lFW6m+d7EUIY6k1wwavzgisyVGyNbh6hi7kQOyc+6b+eZCfVTWzXHh
	5QmodmoqVfP3ojtpDZbASjZVfXHZC6AvRGh1ozQjGZHj376EqX6qiBPYnNs7thhGHDll7z7V991ro
	G+XuK1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdfN-0003YS-EN; Tue, 12 Nov 2019 21:25:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdey-0003GE-Pa
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 21:25:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id z19so4521680wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 13:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ovnztgvh+YjlTHsYseB2SO/MKj54HI2gxLgPoFzYZS8=;
 b=gm+j2O9JfsEuTxTVR3xlFMKJfSMkYUpr+JT/3GrMHvqkDmJ2s9u2BRRrvyUx8scnNt
 8Rc/gGWRk9W/aYx5qtX1WsitPgpCuod5RxMHKVJ1/UhJR4mAY2eQ9krV4sb2p/T8I/kh
 X9k6Yb/jPMQN5prDeg/TljFZzy/HLS2HZAMf3NXyf/o6nDgJBfjrLQSZEeTGkZ9DRJyI
 eqqjp2I7s959ZzB3Tp06RrzlajyYi1Aw03uL9xyiwjWKA1NwLnu0umsPEueNIXpgaKuC
 qrdoHxp1V0Ro1aEMlOWDPqi6Rg6PynNKKUcAhHCpAZjAvdc2A3o7scswOcCsjctNbL4d
 Eleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ovnztgvh+YjlTHsYseB2SO/MKj54HI2gxLgPoFzYZS8=;
 b=CqxSh4L9zsnPOUFwx04BJZS5942DwiB/7iPjrrBzht26SNCSVobqexUudkiOFEySWh
 i9aPtlC/GSkychv64KW6lYrKRi8bxnVTHcjSFI8vwW9ZI1xwRR9FCwpGFB78WXsukAN2
 9BVNB0j0C9UYU528awg3O9Ri6HRG11EDySJ8HV/T9+Rqp4BweBqc2UDCqdcupZSYdf8g
 ChKpxA7MGBP/7YZwIsYwjZjYExjDmEK7LzqhRrsWbbMWyWSWBt5xBEhqfyWnYS0chYub
 a2qHUIcgLQrt8J0orRk6k3XKhlYygJMkWP3aRIHxLTkCcly/Q9SFzgUq7aFzTu5ULvdj
 FdYg==
X-Gm-Message-State: APjAAAUUS2Hvps4dyzL81LSUdDcU11DxBB23PhxoMJl4RP0CUTII6fWT
 zo+J5q2Yb3rHihEP2zqwSYc=
X-Google-Smtp-Source: APXvYqwQC/q+HPqT0NGODc7slJk8kQcmcV51PKGD7WhIrpw2rsf8PHrHOoZEdYlJlWy+dcqZQU4yJw==
X-Received: by 2002:a1c:1f14:: with SMTP id f20mr5371523wmf.147.1573593910336; 
 Tue, 12 Nov 2019 13:25:10 -0800 (PST)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id z17sm136988wrh.57.2019.11.12.13.25.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 13:25:09 -0800 (PST)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 3/3] dt-bindings: arm: fsl: Add Variscite i.MX6UL
 compatibles
Date: Tue, 12 Nov 2019 22:24:39 +0100
Message-Id: <1573593892-25693-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
References: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_132512_877547_7E22676D 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, narmstrong@baylibre.com,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, m.felsch@pengutronix.de,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatibles for Variscite i.MX6UL compatibles

Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f79683a..d0c7e60 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -182,6 +182,7 @@ properties:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
               - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
+              - variscite,6ulcustomboard" # i.MX UltraLite Carrier-board
           - const: fsl,imx6ul
 
       - description: Kontron N6310 S Board
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
