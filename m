Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611861D0076
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7InWZS5pSKgvQ7/jnl8xTPK6XGAT08ppzfSyT2zaB8I=; b=cBB2WrDq+XiTZW
	NAbZuJVpodRJExGsDYDY5lJsiw73DdVbEQyMBWam77FPLUINaw1NCva53WruyzAxC0EhdYo4oSgkb
	ovkvBCRsJ7HL1SsNBs2aGvhZ3kGlLZNH5zYXgH0l9yi8e/MHBcILH1chYYviC1QrW1lyAkyrRhlQE
	FGIt/dlACMkkPKQXbvoKTAiHHe9xoxrOLVm+HPBHvpfwJRuRpcERduE1469dfNUOPw9GULDWEfeYl
	7GcFmm5ui4DZyrABf11o5A5F3RZgGy+2DItooKr7Wc3Z2jl5cEMB49WUCkSha/tkvMswMcAfhmvX1
	SZ3JzS+d8xePxDjFebaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcDb-0006er-7C; Tue, 12 May 2020 21:13:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBP-0004rw-5T; Tue, 12 May 2020 21:11:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so3774300wrt.5;
 Tue, 12 May 2020 14:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pjlQaP6Pg6Yvwq7DW912bqutMrQVbTNiK7xq5gHpuE0=;
 b=roj0ycigj6tQpVmbhT3jMy7/bvzkqodh/XKde1bJcDq8Su5gcZDcm7zLr8gdt1bPAk
 g6x90DldhUlWdT1PBS48kD5RXetpXcNc/eHbsfufeiGHipzX0E9wjr+TphFWQnr7SDpb
 Xm7K9cF+fp2IDhkP9lNym+BixHnCNStlxvFAqVJFvw6emDyQ8VT5GEScIX+vwtIQCtX6
 JNfzeR6qGKqrY4zUi2lMyQnWve+b2zgGtJkscILNbP+VxR1I2hFQO24nrHSt/G7eIapF
 ApuothyXDI9r84McHgKdSCJGozqmmGcc+BRDGBYXZuFrvrWvu48XpMTyalcsBo2dctp2
 Dytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pjlQaP6Pg6Yvwq7DW912bqutMrQVbTNiK7xq5gHpuE0=;
 b=hEdfhUtYXG+gtVTla1W3WVFQQrBfDPRlCoeE6uqVrBxjsV6bdkMJwBxXs62Z9TACkP
 PAKgNQbKG4p0tpkWOJKNC7LiGdhh9+E1wy4c9SGw4V8OLzcTn5gUm80ysB4xtNw0nyqc
 mLMcT38fP5KHs5Tbd8jvG3SameeH5bp+RkXgYlynFaDEaZhFu18HKWCnhjyRTV++rDrT
 wa8Wsha1PgW8kDDrr3tW6Kf3IIgfMGYUNnVw8fZoiIzPJK1cBfYjDeb0X5vnXWojUIlY
 g+4OuEygA5jBIZtdXAJieu5w+1/Q/B7Jlq4Ga8iYtYEee4XiRTWbuHYplDU3rm05FpKk
 I1rA==
X-Gm-Message-State: AOAM533bguzat8CezggPSOLdmTojdKFpaTsy72jDf1SxhJjz30Aagj+5
 z99rkA+G4wNese2JvuNvGfE=
X-Google-Smtp-Source: ABdhPJy8IBNIga3u76iZvWIyKVklYTAzmaNyRda+NSuJrgm3ui7QhnMf2uVqDc69Bo88OkngKLdAvg==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr5282727wru.55.1589317881655;
 Tue, 12 May 2020 14:11:21 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:21 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 5/8] net: stmmac: dwmac-meson8b: Add the PRG_ETH0_ADJ_* bits
Date: Tue, 12 May 2020 23:11:00 +0200
Message-Id: <20200512211103.530674-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141123_242488_EEF147D1 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The PRG_ETH0_ADJ_* are used for applying the RGMII RX delay. The public
datasheets only have very limited description for these registers, but
Jianxin Pan provided more detailed documentation from an (unnamed)
Amlogic engineer. Add the PRG_ETH0_ADJ_* bits along with the improved
description.

Suggested-by: Jianxin Pan <jianxin.pan@amlogic.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 1d7526ee09dd..70075628c58e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -48,6 +48,27 @@
 #define PRG_ETH0_INVERTED_RMII_CLK	BIT(11)
 #define PRG_ETH0_TX_AND_PHY_REF_CLK	BIT(12)
 
+/* Bypass (= 0, the signal from the GPIO input directly connects to the
+ * internal sampling) or enable (= 1) the internal logic for RXEN and RXD[3:0]
+ * timing tuning.
+ */
+#define PRG_ETH0_ADJ_ENABLE		BIT(13)
+/* Controls whether the RXEN and RXD[3:0] signals should be aligned with the
+ * input RX rising/falling edge and sent to the Ethernet internals. This sets
+ * the automatically delay and skew automatically (internally).
+ */
+#define PRG_ETH0_ADJ_SETUP		BIT(14)
+/* An internal counter based on the "timing-adjustment" clock. The counter is
+ * cleared on both, the falling and rising edge of the RX_CLK. This selects the
+ * delay (= the counter value) when to start sampling RXEN and RXD[3:0].
+ */
+#define PRG_ETH0_ADJ_DELAY		GENMASK(19, 15)
+/* Adjusts the skew between each bit of RXEN and RXD[3:0]. If a signal has a
+ * large input delay, the bit for that signal (RXEN = bit 0, RXD[3] = bit 1,
+ * ...) can be configured to be 1 to compensate for a delay of about 1ns.
+ */
+#define PRG_ETH0_ADJ_SKEW		GENMASK(24, 20)
+
 #define MUX_CLK_NUM_PARENTS		2
 
 struct meson8b_dwmac;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
