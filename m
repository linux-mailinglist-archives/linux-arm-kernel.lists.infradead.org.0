Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4261E94B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ZUDS+Sz4uMxtYrF7+bofpK5p7OgI1y1grs3U3WICZM=; b=NshDNFv+9WQOD91GUR21RIBwGg
	L8e6Wm209Y4DPVI0BMxCDwK5/r2qmOPwvvYLcQ34UT7P1QT46WY0h0Bgf7tqhcA5pJHMaobb+G9A/
	+S8Fqg5NjK/X3KelYE3uJa5CtAQBwipYsyWIcO3652fHAKgmSlklhkl7U+m4EjDEarFmHouRddVIv
	ojguLjlzhif+Dzg0NyhkIuyWDlemjzMG8lH01DC9CaaU7xvS66ZFlf/GBFFaZHkiYpQ/DD0gU00i9
	a1RXZkYVTpqROfSP3X5/+R3LzehcJWGFx7WNGNdk4DUV286VTz3rKf77t+EG77/+a57ULV2biKv8c
	ES2JTGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBaP-0003ZA-Ur; Sun, 31 May 2020 00:12:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBZR-0002y0-GA; Sun, 31 May 2020 00:11:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so7793021wrr.10;
 Sat, 30 May 2020 17:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rVJ4oym9rXNaA44QDrgvFNwDxvnSEboxykGaMiySkgs=;
 b=MVLxJVw32p1OtN2vdVxrhz6dYK+xoVjcLbAs9VH4QhsyENwRJtA5zZRCP/tlw9WNqS
 PficSCvAUSR6HHg03iTAhAdB/+mMS/lbTuyiQt52U5DGkBL7gR2o9g7tL36Z+U3lwEfj
 xMjAnN2m4HhzJTuZ3xuk1bEeVB4/MvBxsL/m9t1nfBH5kWEMYTXS/Q0I/dTDV1F+owx9
 bMDjuRYGM6ksnHPgXrbfjMC55mwKZzzoN0BVbzMHvI9CCUfy+9hSWSLCNZUvI4F2nYNG
 zTaN8mGpsyeZniEcJJ4u4zrmo/Q3ciEVYxZ83HkeG3EWGg24HCqBW8HEQ9UkeGI4P4Zm
 vgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rVJ4oym9rXNaA44QDrgvFNwDxvnSEboxykGaMiySkgs=;
 b=opXXyCEZPqB1dHSz28mUAVmpJPhtL0Yh/3TECUpMk8cfD526wg7V5p4qnndlh/sZhF
 TORMmfLNyaz5oIUs7EaDEDj2ucO8C//LuZUsC7o22FNlMQ6hMRhs3IbfF8AD+7dRDtQn
 e1d+s6T+pSJxaboRMv6w01EVpGjGqR9lB7uOoNZGTB6ImzJ3kw/qtD8REkRkWy22+qDt
 7qXU43QRdno62X3Gi9zsn0fLdVPYLp1rAb9feZaBp9lODi1Cw1rWCWnsMYQspsDlTF9w
 6ad1FTQGAuv/21Xw4rOTdoFXzIgQrDdx/BZUaYOZPQjPO5mcEklRnMSuNw7zBJtugHne
 B70A==
X-Gm-Message-State: AOAM532Jfk0DMaZaXQmxZXu7yLiYpEfsSD7pfCr9x1l6PjNhshDHFbjJ
 5q19Kad0CiABemvqKSNE2K8=
X-Google-Smtp-Source: ABdhPJwqp1mCH35XDunsWOItoM/EABnx5HwsMdbjoQ7rQPkUJ9ipZrg/XucyJy/4w1gIBktL9lbVwg==
X-Received: by 2002:adf:c44e:: with SMTP id a14mr14272619wrg.50.1590883879709; 
 Sat, 30 May 2020 17:11:19 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d17sm15455807wrg.75.2020.05.30.17.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 May 2020 17:11:19 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] pinctrl: bcm2835: Match BCM7211 compatible string
Date: Sat, 30 May 2020 17:11:00 -0700
Message-Id: <20200531001101.24945-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200531001101.24945-1-f.fainelli@gmail.com>
References: <20200531001101.24945-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171121_573194_9B659872 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM7211 SoC uses the same pinconf_ops as the ones defined for the
BCM2711 SoC, match the compatible string and use the correct set of
options.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 06bd2b70af3c..1b00d93aa66e 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1137,6 +1137,10 @@ static const struct of_device_id bcm2835_pinctrl_match[] = {
 		.compatible = "brcm,bcm2711-gpio",
 		.data = &bcm2711_plat_data,
 	},
+	{
+		.compatible = "brcm,bcm7211-gpio",
+		.data = &bcm2711_plat_data,
+	},
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
