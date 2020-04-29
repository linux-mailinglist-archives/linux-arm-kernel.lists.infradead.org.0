Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115451BE870
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IITyS8Wo2ai0P2rNquR6mbFE0RoLfplNTeLm3kZAv2Y=; b=TGxFVDVRYJ1gbP
	7dZjAyqOlHy+LkZxQgYkfucLrDQ2LYZSdjzbM3GBRYd5AMSrA2LOso2so0NOteXVGW1xrui4Vx8LZ
	ApGuITsccN1JIhycnAnXOo0QB0vKbOgadEwoba3BobtBqbFVduxs9OgAAnrNVkE+Wdo1BVAhMownt
	H8d8Hs3h8ETcZYjPVgvf/b+G0mfTx4hMgzGV3SPKrGCGnR3ikRc7xq8+K9h0kWUBxUL5bGsECcG4t
	zMLUQOFFx/mrpqheTMTvhtpPgDxRFxs0PJULhQu25SV/mZNVwerM4fDamAoy2Uz03FVYwr4GOCAiF
	6tm0AGUJQt3+MuFWtHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtB6-0000IZ-P5; Wed, 29 Apr 2020 20:19:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8y-00070W-Te; Wed, 29 Apr 2020 20:17:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id j2so4106076wrs.9;
 Wed, 29 Apr 2020 13:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3h1YUm9/diU16ZWjl6NvChhRtfF7E8PRZGhUvORG+lo=;
 b=rto3GJWZQoNgPlHueUkKcCqK3IdDgA7X1HGKQOWYfa+vuMVPy1RKmcr4eaUq+riF3a
 xlFniqSrHXGZF9y/33tP5hVCuVhcRS/vywrYUzdIzykRlTQdvDorM1o4YQ+61X9Y9Jpp
 bakGkz05rty4xhNrYmS3PG+e6LfFh1d/3G/9FWce2aBswflbZ27TJ2Sx6LQNV0InR5MA
 bAjqGdBDhpuyYosz+y02fxiGxrtOZO6GEnJXjUNl3holtvU1Eqs3i0wMTyKmKmjQfEGU
 ij+AV4RQcrTVzzsyS0fQwp3D+Hky94Wq6BSgmaTX3oG7YGcNzQhAjxFix9dgPkyaXE2V
 tE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3h1YUm9/diU16ZWjl6NvChhRtfF7E8PRZGhUvORG+lo=;
 b=JtDOMD/j+KBPJzJUVgcP59GtODlesl730vVufNMeM4TQEe81gMpVu1regsd/Zvg27U
 D5HWUcWyO3kgkrFJDtKAqa1CCYD36qbv1T8fUdbTqbQdNsHCKuJi4lfky0i3GBG6ruH6
 yw6dBkUNB7kv4stjqOLdLrSOk/vD0gnZLeEIOEY7STPzw16472oH7zZm7a9KwmZ4TZpB
 PVij+waNDYQbtH4SXuAYCrMs3afflioojlcB7JNt+pkw1Nt2CbcCsYSqLxZZ/qzz9zvr
 YnGDkkmk7TgGnqRv4C6jmwbrUFCaHZRPn7NHM2LoIA+Z1EvQJAvyD6J7AL7U7xbH3nbE
 lazQ==
X-Gm-Message-State: AGi0PuariDJEMfaiY+EMBLlzOICX678WW7VKmFiv2jeTpc9QP/EidtVM
 qIjyuJPBr6N0kfb5+Eu1Qc4=
X-Google-Smtp-Source: APiQypI/ni8XFwYIHa0cewHD1MVfQDj2saKDUC5JGqEgPQrYhLr4ehS8ZLS8+x8E0cnvoqOaFTt7Fw==
X-Received: by 2002:a5d:42c7:: with SMTP id t7mr40611834wrr.336.1588191439216; 
 Wed, 29 Apr 2020 13:17:19 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:18 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 06/11] net: stmmac: dwmac-meson8b: Fetch the
 "timing-adjustment" clock
Date: Wed, 29 Apr 2020 22:16:39 +0200
Message-Id: <20200429201644.1144546-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131720_980639_2E5907E0 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The PRG_ETHERNET registers have a built-in timing adjustment circuit
which can provide the RX delay in RGMII mode. This is driven by an
external (to this IP, but internal to the SoC) clock input. Fetch this
clock as optional (even though it's there on all supported SoCs) since
we just learned about it and existing .dtbs don't specify it.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 70075628c58e..41f3ef6bea66 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -85,6 +85,7 @@ struct meson8b_dwmac {
 	phy_interface_t			phy_mode;
 	struct clk			*rgmii_tx_clk;
 	u32				tx_delay_ns;
+	struct clk			*timing_adj_clk;
 };
 
 struct meson8b_dwmac_clk_configs {
@@ -380,6 +381,13 @@ static int meson8b_dwmac_probe(struct platform_device *pdev)
 				 &dwmac->tx_delay_ns))
 		dwmac->tx_delay_ns = 2;
 
+	dwmac->timing_adj_clk = devm_clk_get_optional(dwmac->dev,
+						      "timing-adjustment");
+	if (IS_ERR(dwmac->timing_adj_clk)) {
+		ret = PTR_ERR(dwmac->timing_adj_clk);
+		goto err_remove_config_dt;
+	}
+
 	ret = meson8b_init_rgmii_tx_clk(dwmac);
 	if (ret)
 		goto err_remove_config_dt;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
