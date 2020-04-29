Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BF21BE871
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZHzUbbNqWosJ1zEHG4I4Pj4ZyUUhRbkbyBqks8shrg=; b=IGjQbzOMAnScrg
	Ja5LYU/XN7obxCo91Vrd+q9qCEVtzRPLsjorxaWem3kId7tIfwHz6CcL5xfrbBuP5GebtfbNp5UKk
	Vpo09zjYuNSAbnY+YrpNo7LkUVupphnljC/q76gqVoWcA8sOs1G6R7lLWeMjKcf3Bl7ELINnqQDhs
	Lb6YW+yMZALGsJg8nwlZgQfJGfMsBkTOOeDmTtNhP0vM2vkBVTLDoI+y7FZZohPtqUS85aaHpCjYI
	6gpJfQiCsmBueg1AldtjHr3ztZnwK3TmADwTvzDSl/19pMDuUUUAePv2aS9j2knha/4PLju5tcgAM
	75WTEgS+pcdqRk32PsDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtBL-0000b8-Mb; Wed, 29 Apr 2020 20:19:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8z-00071u-Sb; Wed, 29 Apr 2020 20:17:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id j1so4148589wrt.1;
 Wed, 29 Apr 2020 13:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1zoQa+ThGA1a5k62C+YVRReIRqRAT+ZWYkJ8mwLP5jA=;
 b=HO0Mhip1lp0c90pKkg5HF+2Xi8ipoLoZCjBymL/hCZEdtEOUvuhAyu2Emi+oh14tz0
 treSzae4lgi7uEJjpqdN8NcvelrsiR4b2Xoto0beyyaagymmYETL4HDgy7DgnF/tpzRp
 fW+jNCw5vh1mXIdvzcbSAqBq5y/3lqESvMrnxe9WCWl9OrKmsNjyVv7bE176w2OvP+Ao
 jsnuPqlWWzFyi2l8n3BzieNBlqqOM8IuuDmtVTtwwh/qR6Ya2+ieBJRlC9hCsBYQrHcS
 eDTudmAAD1UARmX0Vc64TqggXt8GPIDtrTENM1eNjQOs6uE05Xl/RD90zMwzpeiYCubt
 Zu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1zoQa+ThGA1a5k62C+YVRReIRqRAT+ZWYkJ8mwLP5jA=;
 b=tNOgtXczK05geAmlrAmRgHNtJ7vFa33B/HXS5WbzDta7igRP45OmThttJ+6BhADOVp
 LmWz0Oyj1XZcvUAkUrMOtwAQtQeZyegW6MklGFJT1d8e/bZ9RO4tn+dKtRnOp6A3MjgN
 wQzofA+q/ORscjqF3irArj9WTVOQpKiJumRlTp1o1so37LtONrNPP9eJamvlB1jD0Mjn
 AXHy5LMVN9ZqGV3F9lCdNo6spFniXnEcjwkiBL0hvOEB+z03dOvpYxL1F1hjAmnNWvqG
 uWCgt5V91ZxQZHrqtFKF6+MyVVH6bRB++0p+Tge891OY44jrXWn7GKbr6ummPXF8blj2
 sC/w==
X-Gm-Message-State: AGi0PubbVFkYfBh8OfCsRKjIFLYLQj2h6m9eZoNh94ky8S5e7wob2Cpq
 lBy0v0tz+lIOHtXeB7+iq7o=
X-Google-Smtp-Source: APiQypJoQwUeXB+jHIHYSWOGywH5PFpLgoIjMjyC73XkhqWlu0AlzPO5mP6r3x1t/ptbpRKTAX7qlA==
X-Received: by 2002:a5d:4b0a:: with SMTP id v10mr19723880wrq.342.1588191440393; 
 Wed, 29 Apr 2020 13:17:20 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:19 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 07/11] net: stmmac: dwmac-meson8b: Make the clock
 enabling code re-usable
Date: Wed, 29 Apr 2020 22:16:40 +0200
Message-Id: <20200429201644.1144546-8-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131722_016870_37C6A4FB 
X-CRM114-Status: GOOD (  13.67  )
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

The timing adjustment clock will need similar logic as the RGMII clock:
It has to be enabled in the driver conditionally and when the driver is
unloaded it should be disabled again. Extract the existing code for the
RGMII clock into a new function so it can be re-used.

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
