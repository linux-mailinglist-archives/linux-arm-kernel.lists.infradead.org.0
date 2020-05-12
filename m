Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FE01D0050
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mq0HTidGniHZyAO2h865mB8rxy0ZvTyOAaVgCkekALY=; b=AZdO3pltwgctlk
	O/3rhAahA3GHZGSyNKe15zLrQQSEJbWwDyh7H6UJWirCDFFn3PXi8fjDhhihxNzTh46lBeVyRbl6e
	UTRpUtxLuZNuCMJ4ZT2NcbHIYldTu7NhJ/dHCnJnOxKuNvtsejq3HuzB5cG4E+XBcxVNA8tP4GVOo
	jYGb5wcbFiajeE54fpHQ+ov5Uh1h2R97VU95f/czf+Pzsxl+I48mqNGpDTaySWCEP4K0ZzIUhyXXh
	bMfQqTUesBIi6MyWBkVK/uChGjHgeT8T22uUSm1/QFW/soTjrLBpGWWNBQ7INOrmWkIJAgbCZ/xBK
	mEBVCGzXIhp/3+P4XfSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcCv-00067S-FQ; Tue, 12 May 2020 21:12:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBO-0004r2-8j; Tue, 12 May 2020 21:11:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so10628818wmd.0;
 Tue, 12 May 2020 14:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QCz00tmEMOWf1BfX6wm6Ux86AFt3zQvcnwyO0soJUcY=;
 b=EQtUaySOiER3DZmqgJUZlvsEXfJQvIODFcA0vQdu43vOD4gOXWk5qpBubi8TfBg1cf
 ppcyXlTMr9NvEYgcZoRg4JZwZzDoHNhIk6pGygdUUgaQRNt2TOikOQD45CgNEtMlPrzm
 /A1gs9ZmHnK8vmkSo7dPUREqq93sMcJNpiT5GbYYnkTFfI3dGq+oeY/KNB87+SlvBaK3
 kmV9bqKwxmaNocUDjf3XDmCBz6mlK4PgSxnmdGcIFHGHeKt83Uhlzn7p51vejpJmXvaT
 aE3dmGINyBFgD2HngZ1zI1z3JNM1Xrv1aVoUSwjRANzsoWq2cTjvMYPURsSWSwHW/kQI
 eIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QCz00tmEMOWf1BfX6wm6Ux86AFt3zQvcnwyO0soJUcY=;
 b=GSAX3NFbkw5X+VOgyvAcriqmx94R8OaAmigsAbL5R+bscTNRg2YFGc1f9pwcsIV0Ht
 B5in8nEAHdkiSJUz6POGaOhTK2rDgf2S2pyGkvylXCe6SjjGZ9RpGWw0om+E6C8CXL4F
 4H4K2tf+QK1HVqi99Cc14AaZkAi2mGfblGM5TQwXPaliJOOp3gKAHzncUtiuC27Mq0h8
 BfYotS/pptzPNJMUBGOwVnn8uqFGXLhrfaAAzGruatx8dQ4+4lx7y8EySJ/oiP5wrKBa
 j6zl/8w0RT69tCZkS4L+3OAUbxqX/s9UcDHmIA7zyhPZEuBKiHtXXRAuH2yyL6QPsADq
 4EmA==
X-Gm-Message-State: AGi0PuYWfMKBi4H1GHQxwQlcREasQMEHVvvN1Igb866nyzbyC+ds+mUg
 ogvAljMQkJSBq4cdmBVreA+j0DwY
X-Google-Smtp-Source: APiQypIwG6YlDqv9Ym1mV9sH/sUllSp3MG0tyRa6e+gg0yIgvWrhNsgaj8VAtpPtWCH8XSAGGhc1aA==
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr39502551wmg.177.1589317880711; 
 Tue, 12 May 2020 14:11:20 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:20 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 4/8] net: stmmac: dwmac-meson8b: Move the documentation for
 the TX delay
Date: Tue, 12 May 2020 23:10:59 +0200
Message-Id: <20200512211103.530674-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141122_342385_60724B90 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Move the documentation for the TX delay above the PRG_ETH0_TXDLY_MASK
definition. Future commits will add more registers also with
documentation above their register bit definitions. Move the existing
comment so it will be consistent with the upcoming changes.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index c9ec0cb68082..1d7526ee09dd 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -33,6 +33,10 @@
 #define PRG_ETH0_CLK_M250_SEL_SHIFT	4
 #define PRG_ETH0_CLK_M250_SEL_MASK	GENMASK(4, 4)
 
+/* TX clock delay in ns = "8ns / 4 * tx_dly_val" (where 8ns are exactly one
+ * cycle of the 125MHz RGMII TX clock):
+ * 0ns = 0x0, 2ns = 0x1, 4ns = 0x2, 6ns = 0x3
+ */
 #define PRG_ETH0_TXDLY_MASK		GENMASK(6, 5)
 
 /* divider for the result of m250_sel */
@@ -248,10 +252,6 @@ static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 	switch (dwmac->phy_mode) {
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_RXID:
-		/* TX clock delay in ns = "8ns / 4 * tx_dly_val" (where
-		 * 8ns are exactly one cycle of the 125MHz RGMII TX clock):
-		 * 0ns = 0x0, 2ns = 0x1, 4ns = 0x2, 6ns = 0x3
-		 */
 		tx_dly_val = dwmac->tx_delay_ns >> 1;
 		/* fall through */
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
