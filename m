Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E721849BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:43:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=evG3k7+KwfYg1/3WnTwTTbClpDOWYStJtdiTnfHXZR0=; b=Whm9OvFmOoLATn
	MJKBFDNIAjbmTh183rRVYaLpLWp923uTAgxa1H0fLAJTyP6IbDpON6qr5tb9P1tZouP5ITxOIAjhv
	s2rW+JY/EpytTZfilepshcrX7NcYX5Ral4pkemhb2PtxMzbUo7B8DDBLYrU6hQQs6XRyRyMZPcvvo
	ZP9ssdvQFzuJxT36b3vqeUWzPUtpkdZT6uC0B2lRM66yLaFJP6A57xTGOcdSQJA9itBuaP7C/q8Ss
	qwTLNOWUbXKsggm/nXfQRhCSbPJ/CJfWZrxASpXnCB6q8M7Gcd8wqq+evihJ3nsyRKCFyxU1ObtH9
	LjFDLlGufcdvFuuz+JBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClWx-0007dv-LD; Fri, 13 Mar 2020 14:43:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClWl-0007bW-KL
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:43:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id a32so4247341pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 07:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SpWWV8Vzt0B/4ORSdBbXWuLXrkvKyLnGYjPx6j+va9s=;
 b=m5LgmXEhwH7qCMpy8AMDQtFnKbFzLNd1lr8HbI+GFBXXqqW/U4D2/KYjmL2jzG7Gkx
 M1tgXjecGU60owDjsMItfb2FLXxIV0w58gQtMcgOUtkpmit0RQOA2R/IHV1yKcKQwhv1
 2Kl2JDS6eL/Ykw2oMVcgdxPBxDCejryFlWxySlM/eK/yjHzoq+/DYHygSkqCHV6DsSVu
 3rulJur/sf4uP23ZLtnbmejV+P0cZ3W+hz3WbGfpA0Kghk2bOPYnnPymXChNVon3NHU5
 9A0JPNXyrG7c6ND4Y7seYi+1uljFG0f6rCPiJhStPjqtVX842n1R0PL6Vq0R7ww9jBwA
 awzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SpWWV8Vzt0B/4ORSdBbXWuLXrkvKyLnGYjPx6j+va9s=;
 b=ESv+EkTZCZq62NZjO1Pu6C9IOYXIPiYd2RTcr2DrOjpSG2TnPfiDIREErz+6JLDTnZ
 fZwoJyfgOWSJNvmEaflWFqcoBczeUjOZHF2LJIEEt+aws3+0ZDbPea3VBlndGBOrqUm4
 wFLMW32ANfjCkVSaE1DvpX8yVDNViHEAlpCsNM6mSxt1yTOsZQsvRy5YB0yTbRWZQuv9
 W8aU5AE0YNXwFG5Ait8zRjNIXlyweg6svM6JFMjOCkTdTlB7mLrLqUP2ums72tDWw7/O
 t1SEzd/1ypunWOYOq4s4m6yCt067AwYacs6kAh06QI2TQoT9OWrDSxvey/zMeBRngYOL
 ahSw==
X-Gm-Message-State: ANhLgQ2vyQDYesJCCxJnE3oLvKabRQP9530ZbS5XpE+532gWX0KX7odX
 PDYOUa+BNC6Gupdy8hrwSMs=
X-Google-Smtp-Source: ADFU+vvCSWa2zU2rVO+1qqNp6WqSxenT9MGNGT5GMXvMz5XxJH9Q1BP281Kw1otg0AVl+FTOOIzmzw==
X-Received: by 2002:a63:6907:: with SMTP id e7mr13366263pgc.445.1584110586743; 
 Fri, 13 Mar 2020 07:43:06 -0700 (PDT)
Received: from localhost ([216.24.188.11])
 by smtp.gmail.com with ESMTPSA id f8sm1000121pfq.178.2020.03.13.07.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 07:43:06 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH net-next] net: stmmac: platform: convert to
 devm_platform_ioremap_resource
Date: Fri, 13 Mar 2020 22:42:57 +0800
Message-Id: <20200313144257.9351-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_074307_668273_759E68E8 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code, which
contains platform_get_resource and devm_ioremap_resource.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index d10ac54bf385..bbc0a2ce24c0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -645,8 +645,6 @@ EXPORT_SYMBOL_GPL(stmmac_remove_config_dt);
 int stmmac_get_platform_resources(struct platform_device *pdev,
 				  struct stmmac_resources *stmmac_res)
 {
-	struct resource *res;
-
 	memset(stmmac_res, 0, sizeof(*stmmac_res));
 
 	/* Get IRQ information early to have an ability to ask for deferred
@@ -674,8 +672,7 @@ int stmmac_get_platform_resources(struct platform_device *pdev,
 	if (stmmac_res->lpi_irq == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	stmmac_res->addr = devm_ioremap_resource(&pdev->dev, res);
+	stmmac_res->addr = devm_platform_ioremap_resource(pdev, 0);
 
 	return PTR_ERR_OR_ZERO(stmmac_res->addr);
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
