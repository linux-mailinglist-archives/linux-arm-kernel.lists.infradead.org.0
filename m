Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E6117C32F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rujESkIHzF7hg6lrOSICtA1pjRpPKw9jvI6njDe0guI=; b=dFf71EneKwU2ms
	vTxdg+H4novjFJt2f8ghybVsEdIVtTJA2Rb/8ypbWNjw8CXKi943zvlO7Jvi1HTZi8TTM2z3HiDiG
	8Q5iDVIhlAcYbyxg6PmoIhd+0aa7wJRyBo1VO8PcCVZ7oPRANWfxdmS/UST0cvP9BQ9nHTuQnZUe9
	0jgnoBN/gLfk/F3CBgxDnMjzZBlSl7AHf6hJyU4xKH9avsnnZcXKjKNc0p2siLmuWv16KvT3/nddi
	IIIX/Db2HqG2BdQO6FliqSOyPPHxt8XU9Ifl9GY8lhtxx6KJfReDxhYZpJFTVUzzCnkEDrydCVBlG
	6C2tas/5xtkqL2h7Z1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAG1r-0001xT-Gp; Fri, 06 Mar 2020 16:40:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAG1k-0001x6-0j
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:40:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id v9so3108798wrf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 08:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XjHnSwyS0af+P6Jfh8Jzg4HPNo9WQiL8yOX1s0HApbQ=;
 b=CbSaDyS3tlGIXzJPDGmj9+AIlYyU7Yowmve6GEk50xA6VmLmZxHH5HW67z5v9akxJN
 nGmqQ1FAjSNx511yM1rus1wIj4/+IgiLa4jFXAq3t+VnZPbcJi2ejnaUkV6b5SKW6kyN
 hzxB5IKSXIbWozwe8M041xvmZrKHB1s6eVUpG+MsHaDJ0Spfb05SAOeiwB8cKCN/Pn2e
 fPhbdTuB2mYwsxcsDnol2mJBRBqcYUpJIndkM4bjmdNdbvdjzaAKHs5iHbBERWAoQ6Ed
 IPbTM3kZsKjUscXO0/PBVdGu+tjOfbi+/lP9+Wz2T8EPTasDaTPRevA4VXyeTR6nXrpn
 tWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XjHnSwyS0af+P6Jfh8Jzg4HPNo9WQiL8yOX1s0HApbQ=;
 b=rkbLhe9de9XQV80ihgzfW6FW8TB4v7B9T+D6gkMv0QZ7ik4sV6i8iojzIhluTu295k
 642km8DHOjAGC104JrnLPJb5DfeDq7dU2wXDmdygHqy/enzY+9VwyShnu7mG5WJ1zCCm
 rR1ND62J6qL/bu8M8Y1+WOkHaaB9bFvKH1oHYwF4HWAbqVajnMlbEcSMmp2CzM5XQQVs
 IQiCItrjdeGCSPZj6DZRcYkKwBjQVCr2mZssFe6wQalUd2ARKoALPs60/A/3UHawV9i5
 L6r9XOC8tacSaptmLqVh4bwbln+s7xWJiTMLAdcmuY3yNo3XrZ7zi0rZtqIgzLzLWVAa
 KXFw==
X-Gm-Message-State: ANhLgQ3SjQWQaKVH7w49YxMdRkgeu3FVcDfYCKsRreotKWnVn6+JwUWJ
 0aIsH4rERCtupo7/bzdqEC0=
X-Google-Smtp-Source: ADFU+vtU+an94UKd4UPfywLnbr+VHC0wDCwOSaA/3LsprBBI1hOWapF4bBHrYJWtYeuKNmQC60ln8A==
X-Received: by 2002:adf:8162:: with SMTP id 89mr882490wrm.45.1583512841997;
 Fri, 06 Mar 2020 08:40:41 -0800 (PST)
Received: from localhost.localdomain ([2a02:810d:1b40:644:c890:7487:7d:ef6f])
 by smtp.gmail.com with ESMTPSA id
 c11sm48946421wrp.51.2020.03.06.08.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 08:40:41 -0800 (PST)
From: Markus Fuchs <mklntf@gmail.com>
To: mklntf@gmail.com
Subject: [PATCH] net: stmmac: platform: Fix misleading interrupt error msg
Date: Fri,  6 Mar 2020 17:38:48 +0100
Message-Id: <20200306163848.5910-1-mklntf@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_084044_064827_ED3B6E80 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mklntf[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not every stmmac based platform makes use of the eth_wake_irq or eth_lpi
interrupts. Use the platform_get_irq_byname_optional variant for these
interrupts, so no error message is displayed, if they can't be found.
Rather print an information to hint something might be wrong to assist
debugging on platforms which use these interrupts.

Signed-off-by: Markus Fuchs <mklntf@gmail.com>
---
On my cyclone V socfpga platform I get error messages after updating to
Linux Kernel 5.4.24

Starting kernel ...

Deasserting all peripheral resets
[    1.206363] socfpga-dwmac ff700000.ethernet: IRQ eth_wake_irq not found
[    1.213023] socfpga-dwmac ff700000.ethernet: IRQ eth_lpi not found

These interrupts don't matter for my platform and many other stmmac based
ones, as we can see by grepping for 'macirq'.

socfpga.dtsi:                   interrupt-names = "macirq";
socfpga.dtsi:                   interrupt-names = "macirq";
sun7i-a20.dtsi:                 interrupt-names = "macirq";
spear600.dtsi:                  interrupt-names = "macirq", "eth_wake_irq";
artpec6.dtsi:                   interrupt-names = "macirq", "eth_lpi";
rk322x.dtsi:                    interrupt-names = "macirq";
sun9i-a80.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
spear1310.dtsi:                 interrupt-names = "macirq";
stih407-family.dtsi:            interrupt-names = "macirq", "eth_wake_irq";
stm32f429.dtsi:                 interrupt-names = "macirq";
sun6i-a31.dtsi:                 interrupt-names = "macirq";
meson.dtsi:                     interrupt-names = "macirq";
rk3288.dtsi:                    interrupt-names = "macirq", "eth_wake_irq";
sun8i-r40.dtsi:                 interrupt-names = "macirq";
sunxi-h3-h5.dtsi:               interrupt-names = "macirq";
spear3xx.dtsi:                  interrupt-names = "macirq", "eth_wake_irq";
lpc18xx.dtsi:                   interrupt-names = "macirq";
stm32h743.dtsi:                 interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
socfpga_arria10.dtsi:           interrupt-names = "macirq";
rv1108.dtsi:                    interrupt-names = "macirq", "eth_wake_irq";
spear13xx.dtsi:                 interrupt-names = "macirq", "eth_wake_irq";
stm32mp151.dtsi:                interrupt-names = "macirq";
ox820.dtsi:                     interrupt-names = "macirq", "eth_wake_irq";
sun8i-a83t.dtsi:                interrupt-names = "macirq";

So, in my opinion, the error messages are missleading. I believe
the right way to handle this would require more changes though. Some
kind of configuration information, telling which interrupts are required
by the platform and than conditionally call platform_get_irq_byname().
This would print an error message, if something is wrong, on the right
platforms and nothing at all on the others.

.../net/ethernet/stmicro/stmmac/stmmac_platform.c  | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index d10ac54bf385..13fafd905db8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -663,16 +663,22 @@ int stmmac_get_platform_resources(struct platform_device *pdev,
 	 * In case the wake up interrupt is not passed from the platform
 	 * so the driver will continue to use the mac irq (ndev->irq)
 	 */
-	stmmac_res->wol_irq = platform_get_irq_byname(pdev, "eth_wake_irq");
+	stmmac_res->wol_irq =
+		platform_get_irq_byname_optional(pdev, "eth_wake_irq");
 	if (stmmac_res->wol_irq < 0) {
 		if (stmmac_res->wol_irq == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
+		dev_info(&pdev->dev, "IRQ eth_wake_irq not found\n");
 		stmmac_res->wol_irq = stmmac_res->irq;
 	}
 
-	stmmac_res->lpi_irq = platform_get_irq_byname(pdev, "eth_lpi");
-	if (stmmac_res->lpi_irq == -EPROBE_DEFER)
-		return -EPROBE_DEFER;
+	stmmac_res->lpi_irq =
+		platform_get_irq_byname_optional(pdev, "eth_lpi");
+	if (stmmac_res->lpi_irq < 0) {
+		if (stmmac_res->lpi_irq == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		dev_info(&pdev->dev, "IRQ eth_lpi not found\n");
+	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	stmmac_res->addr = devm_ioremap_resource(&pdev->dev, res);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
