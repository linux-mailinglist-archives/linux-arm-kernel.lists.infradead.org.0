Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D091D161B5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 20:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ebmgO+cx+Fuo+SEHaDUMz7vRSSPkPTX/7SmTHvz3qv0=; b=evX
	qmX0jCIxBS832SvjMKxv8MBNEwpV7J08jdW+wcPLKpBZZRR87PWSW0LWn+vJaXyDhyy/oMCNGPMVC
	EMMdjogU8PkNrbnI6zahuXzPxvGfO/9vuTNxls8IeP550RndZkTxoeJDgj6RGDTFuHPCs+BfJfJA1
	hGT8Q7bqgzn28oQFIJQcjxJyrbgRdJWYd0FMSE/ZFOOcUrhmxu2CRzoz2dqrvOpbLeynNf1lUZkPd
	GxuFH0+XPw3mX16EEmVm6Dq6Pfj18nD/eg0aKk2sdkVf15iLjC85k2YVbymMXrbi6Lj0xkHRQzjEU
	kt4kWSpSklOFylcaRuA4xmvFXVZKC3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lrt-0001lU-Lh; Mon, 17 Feb 2020 19:15:45 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lrj-0001ko-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 19:15:37 +0000
Received: by mail-qv1-xf42.google.com with SMTP id y2so8029287qvu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 11:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dsuiYKJDmc+S5Z/cD+SzHdBZw3VEgkqBiNw/g6G3mig=;
 b=sU+YXoHTkpZhRjCc2KcDxwt+Xt7XovqN17NPaNBf7nL34eumBUq1EPjN0Q4/EU/zV5
 S/8JqPk5aM0K+Bjqfb1o7Z8ozi52EUpllK6k850UY6/OKOQmKmgMwUsgq0286kOj0lFP
 tvuHTEKvaJ8gDI4fl6V/yrzMHmXeBf1lgl5hKsE3I0p8a7wyvitxsDzhX+4dSwb2nqAv
 LxiLOKXq/Hc10JxfdH2yTQl9Jwr4r0Y1zC7LGMmK8ywdau7py3u7Tqi/UXHlwuIxF8vo
 dxTyEbUS99RnLBtVm4eSDLajGYzg4K3/MhBwZI2y1xfjYZOLpZZAeEpxaNyy2EWzJYeG
 mS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dsuiYKJDmc+S5Z/cD+SzHdBZw3VEgkqBiNw/g6G3mig=;
 b=Vz0f2+a0xN98DOAVKUmsrREnzh3A5DE3WY36QmB/qF1/ldkQ1N0twDRvdvz4fqwzfu
 OhbtxE3STPPqVpgDK3bvrxYQrg9uDiTf7N/YAlUOhJh26z8ULiB6y9qVN5OfdzGSB8G6
 QtdTCiuhx7MOf3z29f9LaoLY6Q7imqGxrQGzT7lx0uIwBesVpNNhwNtdhaTGhqIMSEcL
 u0pA809kqj/fPjDDcdTT/Tbwl1yRiu62+9LALrKWeQZDn7Barm/EpE7ZiITUfrrckhIb
 L3UuWCB0KpxgBj/PERFFM9hqBntkreMvw0TnqLGANGyb9Gg7OjcdZifgC0FFn7lbAakP
 62HQ==
X-Gm-Message-State: APjAAAVEG4yEelOaOmp/kOugZ6YE5TJjfSpBm+VUBa2vv+oTBvTP59kH
 aqglW0+ntjqsLzeF8Dd8hns=
X-Google-Smtp-Source: APXvYqzHJDmhQ3AoJWcarHM5uKehW1T1+QEmyY1np0VLGAlcCJl89CJeTvA6PoBXmseu5+59+zdugA==
X-Received: by 2002:a0c:8605:: with SMTP id p5mr13770839qva.109.1581966934109; 
 Mon, 17 Feb 2020 11:15:34 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id p126sm686724qkd.108.2020.02.17.11.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 11:15:33 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Date: Mon, 17 Feb 2020 16:15:03 -0300
Message-Id: <20200217191503.31444-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_111535_987114_836354A7 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, robh@kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is only on Ethernet port and one Ethernet PHY on imx8qxp-mek.

Remove the unexisting ethphy1 port.

This fixes a run-time warning:

mdio_bus 5b040000.ethernet-1: MDIO device at address 1 is missing.

Fixes: fdea904e85e1 ("arm64: dts: imx: add imx8qxp mek support")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index d3d26cca7d52..13460a360c6a 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -52,11 +52,6 @@
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
 		};
-
-		ethphy1: ethernet-phy@1 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <1>;
-		};
 	};
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
