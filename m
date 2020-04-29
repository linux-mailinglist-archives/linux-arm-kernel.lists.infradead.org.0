Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C911D1BE87D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAOp5B/ngPEtupws5Fi3v0MceYyS3zUXxdc9VLozUu4=; b=IbAhMJUlW3dfH9
	JWefcTBHPFI1jd31nvdVGvRgLwloWAZGj/3d5f/ZVxUqoGozT3vPQ48Lp/1o6t7DdoXILLil9cSiS
	WyNNCcEeHJ2XnDV/yyQuKtyb7lJpwb5L0QOyNWkLl9z1l55P6JcpO/tK6M7Iow/dG3+sbeU3Rmb/c
	8XaZt+D++5xOxeFFolVaQbInoCQ/Z/lMsOzPK48bTgWVKfBbAZudvwwckPcqCktqKtaa/xiH00dNj
	g8tiX1vURMbEdA8mXUV5l0PASkHeniHucWqj/8F91hCFITSS0Pdy+PgeUBq/wmdsJGbnq0h9ZqCTN
	Pw4O67LYQlVLptJALy9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtCT-0003x5-9F; Wed, 29 Apr 2020 20:20:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt92-00073k-0J; Wed, 29 Apr 2020 20:17:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so3466725wma.4;
 Wed, 29 Apr 2020 13:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GrVPUcTD2l9oJ0HPXx8l+PhUQ6rIzd+t7iX8qFgDDUE=;
 b=ipE94I2oDHFBOK1wvyXv2dDCEJ+N4Iszv0sQleLMdWCyHveYpujY5johVU8kihYH9g
 Q7Mvf7UdOXUqBLc+R2xZks9rvgRzyn3pL4zurFd2YBqz9lByXmau8QYKuhkD+14Fn8tp
 Y/WJAgqkwxSN3441r2bv9I99b/EBoORAg9bRHbxaE4zOx9OifBcXW3OEx+0aIMVDnTnv
 bN0KuMUidxZT4TORBaoScSFlGk40WcxUfYWruGgESQ3T+72m6rtw64WqNT6vDhx6ZWCv
 rwIWOTKtw4QElEb19488qaxyVRxaKsCI08m+4+qpQcuztJdItKanL0/Ll2+F/12ze6so
 EmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GrVPUcTD2l9oJ0HPXx8l+PhUQ6rIzd+t7iX8qFgDDUE=;
 b=PLJdLQN5mbhAiE4KUkf654yfjwHMoVA/s5/wLM3njeeVbEw4BtVbfgfQU2omXkNg+A
 G4R3XoZ3Fe/nktqpwDk7hVrzw++Avqmf/2vvbJ0xx58DyylltMRUyGIiX/V03LLSpzWJ
 6vVbDTxQ/8dah2VvDLgXsnAjkp0OiD812yyIJaZANfaHECheSeAkbkQ1L+mXewn4QjbD
 2P89BHxEBPr7Wh3XsF8DM6ZZw1V2RnZdiBYNskjCTnpPPfOxGzKjBug4igtCLUrkJAyx
 mFv8f8o1ZOmU/vE19Gl9LYZqrqfEYml65ssacgqvrZrlkwS/WWKku1g7HuiOudoMuG5O
 /MPA==
X-Gm-Message-State: AGi0PuYNvIri4YehhkWu8NsodtBP0GGTtZ0VTHOjVTY7sOwqlGY0zZRg
 5c6N3aaltmG81+6/H/4Atw8=
X-Google-Smtp-Source: APiQypL4s/mUZ/ZYL0kEimx4vhbQ6WN12EIfKnlQOaoJRiTogeSbY1XH1KXmgf2OGXzZCm2fknw27w==
X-Received: by 2002:a1c:6402:: with SMTP id y2mr5205603wmb.116.1588191438299; 
 Wed, 29 Apr 2020 13:17:18 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:17 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 05/11] net: stmmac: dwmac-meson8b: Add the
 PRG_ETH0_ADJ_* bits
Date: Wed, 29 Apr 2020 22:16:38 +0200
Message-Id: <20200429201644.1144546-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131724_156968_50778F67 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The PRG_ETH0_ADJ_* are used for applying the RGMII RX delay. The public
datasheets only have very limited description for these registers, but
Jianxin Pan provided more detailed documentation from an (unnamed)
Amlogic engineer. Add the PRG_ETH0_ADJ_* bits along with the improved
description.

Suggested-by: Jianxin Pan <jianxin.pan@amlogic.com>
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
