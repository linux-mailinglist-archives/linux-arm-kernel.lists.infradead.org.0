Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB851BE86E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rq3i1KZc9Lc6ZggEUweuQMMhHko7r0hQFFYDpEE/TfI=; b=SbRWSNefnFP0y4
	zf6SsKqE6JefGoHgqdmCp8WOR1/n1RLSwbwMM1dCszWj4244g40ptpWWbFBT2kw0VioRWrC30i/L7
	rgQb/hFWv4vPC24yB9cycqJR4Wx1IQiiTgWfqAc+L0pOH8i0eLZSigB2BDhnamp1XxQXBJRgtqW9j
	uL4+LXZGESJudY/+y3ETSeb4P+FI08UTkzVqYwR9OztEBSgKuFOclObIWvfJ5HQsBPJlyOJUu0cTg
	NyRoZGw0MIdS9StfsCAEIGa18RzUYVZiDgt0AWKF2/K+nvOauVw6O5NAzMBNFnpL6a7Yu/r7uORjP
	K9uwXvYDbnTqOwvhu5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtAm-0008Qb-FH; Wed, 29 Apr 2020 20:19:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8x-0006xx-0x; Wed, 29 Apr 2020 20:17:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so4110688wrt.5;
 Wed, 29 Apr 2020 13:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A1BsZHOKV23AL354M93nmEs0vyNnhe/u13UcIzUzcp0=;
 b=OZKi475hcnUACJSmFsmYlgbAF4kGxaIWFbXq4bXdnUMWgxqXrCCMO8VHh4fjWGT7ya
 wM8HUL3n4GtqtUDeKu4tu6Ufrzga6+fSjbp3wkQPiU1W07zrTVEbnaDaChkws8GiVGI7
 XTFRPP0MS7u8E5RK6b+pa8kFbNRshT6Gig162/kYaBPHZqBc3cBDBNaV00pJnT88Fhsr
 hIY237tXOk56Y9kc3bYCfsdW2vu1yeuqYe3ia9DfvqcPBX96k/+wtVpsxvM9V2WLcKmX
 GvbADmNIeqPhXa1AwbE21ogk9EOsGTwS1JgrSiwNj0x6N2mF8W4u0tm16V5Izzn4igfF
 pFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A1BsZHOKV23AL354M93nmEs0vyNnhe/u13UcIzUzcp0=;
 b=Kz2OfWbkJobxFiaZQCs8uAuPMzXtZYZSFBnSU2uAgcky28bmrvxKGstlozleT8xOA2
 3MqTA5G6KWJll+oBSdSPudtb0HdYeosOGGgvX7LL16SC6o2nFFZhtjqd7Hs7nXL4iHVf
 w1jpX3t+1NKD+65P0Ke6eIfqwuesyl0vOahDRYraDW5ed5AI7nlmHzdU8+4JbXzV0pHd
 QJGLqai0qFgL+cGxttIs2R+zdY0B2VyOSuqYG1gFMSTbqVdCH2s7fmcuG+fSINl+DAT5
 XRLHl+qH30qdwW7n7g0ZaIwdWTibPKSVIXvA7UR70bMsN8alI/dwYHS+euSSytngEZe5
 Gu5A==
X-Gm-Message-State: AGi0PuZco3Bz9Uph4GaKZEan1/Le23gxMidmOisioWByRf30+rmAZWkJ
 13ph/C8+DhxKRDksmPYaaqQ=
X-Google-Smtp-Source: APiQypIThLRu5RnVmx97RtJ9EtKrENrzlVIOefrkcoCLnfZRVkGPPMuiLNkwIg2h6iEwqtnhdU3xgw==
X-Received: by 2002:a5d:404a:: with SMTP id w10mr40207406wrp.397.1588191437227; 
 Wed, 29 Apr 2020 13:17:17 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:15 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 04/11] net: stmmac: dwmac-meson8b: Move the
 documentation for the TX delay
Date: Wed, 29 Apr 2020 22:16:37 +0200
Message-Id: <20200429201644.1144546-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131719_136734_E7108B90 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Move the documentation for the TX delay above the PRG_ETH0_TXDLY_MASK
definition. Future commits will add more registers also with
documentation above their register bit definitions. Move the existing
comment so it will be consistent with the upcoming changes.

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
