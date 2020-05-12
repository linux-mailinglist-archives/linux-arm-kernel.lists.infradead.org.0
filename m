Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66F91D007E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7U01vBADd3BmZYRnZmmgqZm6s69mkp45dnOHxik338=; b=cquqG6Oym/1nf5
	jVk7SI0c8YATvD/f2sRnAK6qMnRkDAv/ljU7s53zBp+q6/bibJ22Ja3EVTcsnfb3Kboo0eLgBTVSO
	UDzwsFIEing08PRfkdA1kK3XYTtxUrIOl/XcDMJ5qSy1t4doq0UfF5mp8nESfHzM8V6o3FLlEoNzs
	w91/erOs/vx0t/6I2HsmQgF/TseDLw52ASOKYNcNELcrgVZ16JD0ubLAZxTT4SJmk5OqERVrAkZxG
	goPju9wJ8JOn2LSn0yL5nv5zNuLRph/p5XIoONMCIHIUryMd7/kcCc/yjEs4N3NJ1/jKIXE47Mmp3
	jc2ernxaaNEtQ4nIzdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcEB-0007Bt-J1; Tue, 12 May 2020 21:14:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBR-0004uR-HC; Tue, 12 May 2020 21:11:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so25514632wmh.3;
 Tue, 12 May 2020 14:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HwKE63xeunU+7jFifhH7Cu96Jgtp0mRWAcPlbA44y5E=;
 b=juJF+3lb7lglsBfA48oWK2otHLd6Zv1VPqsqeH4y7PUUPFJY0U8jSd5BIu39d4bBPl
 Ha6PuABEnMyT6qylAqav/xiblas1pBKWgHcgkgSO2AQY8ANt38qSwJqxU/odINnURDTJ
 6ZMtR/XldqHZlqW5BwW5ZQAEtCMYwXfo8dYqQ0WiYWIyVa23Bg2LvCsBT8vwwCkEJPxc
 cKmBiT7hmi3nV5FgJgTVUZ8Koblo0HEBysz2QWqz4RLGKfYPC98CRt4SCwR4wcPsRAGn
 oEZzjQUyUIvsqz4qN8Esqvzvwp4mrPN50l/19Dtk6bzX7dkXzC8XXR/4PNSNQ+obkzKc
 rCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HwKE63xeunU+7jFifhH7Cu96Jgtp0mRWAcPlbA44y5E=;
 b=oaPOyT0jMA4bsm4lnJisAkafrqQgTJ+MQhvFxHnxqwmIO8acwnMlWM3MJOYMEO5vCi
 4/SVEcjUcYOWtidNqHtMEbN7UH3XZyqD3v9nCLXk9e6gzErORXFnnovvPlEiS8p4PuA7
 nb+r4abKQMelElaxmntYKJlQnpEoSUVRSlCfn7TiZpNciHIvEeAFTrQ7NbcPdQh62+Na
 2JNpL+Y8Q445RVRd3CVAOn10qvQLUGCU0S7lt1hp/QkCbNXDh80VyCnpGRa9xo4sivVr
 MD124GXMP3nTjhdBcXRdsDMoEI27YFvO7TyBZM5lGzAf68WTCjd7fFgUFHY2xHm2iW/Z
 Z73g==
X-Gm-Message-State: AOAM530OxrQxD79/oWz9WX+KWmsyI/i4OGlx3AkcLfOMQ1llgwu8/u35
 XXBLY52giGYpRNxUdklYDtI=
X-Google-Smtp-Source: ABdhPJyXbvM6Skz8OIqLk5ZeLyL3PREBPCLQ6UyzGCBiK3jStYDaYt6yd9/iDrKNxjIYuojFg/W/Xw==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr4509808wmj.189.1589317883939; 
 Tue, 12 May 2020 14:11:23 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:23 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 7/8] net: stmmac: dwmac-meson8b: Make the clock enabling
 code re-usable
Date: Tue, 12 May 2020 23:11:02 +0200
Message-Id: <20200512211103.530674-8-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141125_616102_A4FE64DE 
X-CRM114-Status: GOOD (  14.02  )
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

The timing adjustment clock will need similar logic as the RGMII clock:
It has to be enabled in the driver conditionally and when the driver is
unloaded it should be disabled again. Extract the existing code for the
RGMII clock into a new function so it can be re-used.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 23 +++++++++++++++----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 41f3ef6bea66..d31f79c455de 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -266,6 +266,22 @@ static int meson_axg_set_phy_mode(struct meson8b_dwmac *dwmac)
 	return 0;
 }
 
+static int meson8b_devm_clk_prepare_enable(struct meson8b_dwmac *dwmac,
+					   struct clk *clk)
+{
+	int ret;
+
+	ret = clk_prepare_enable(clk);
+	if (ret)
+		return ret;
+
+	devm_add_action_or_reset(dwmac->dev,
+				 (void(*)(void *))clk_disable_unprepare,
+				 dwmac->rgmii_tx_clk);
+
+	return 0;
+}
+
 static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 {
 	int ret;
@@ -299,16 +315,13 @@ static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 			return ret;
 		}
 
-		ret = clk_prepare_enable(dwmac->rgmii_tx_clk);
+		ret = meson8b_devm_clk_prepare_enable(dwmac,
+						      dwmac->rgmii_tx_clk);
 		if (ret) {
 			dev_err(dwmac->dev,
 				"failed to enable the RGMII TX clock\n");
 			return ret;
 		}
-
-		devm_add_action_or_reset(dwmac->dev,
-					(void(*)(void *))clk_disable_unprepare,
-					dwmac->rgmii_tx_clk);
 		break;
 
 	case PHY_INTERFACE_MODE_RMII:
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
