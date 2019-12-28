Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E16412BE84
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H2BBsnxFG4ivi0QIFjA1WRYkqQjX9dxNRGjb6WniYJ8=; b=aSTdTaeWvWapiCNvw5p6OdWucx
	WsPN6F71wky6IB8lUwPakphb104fSioOwWnCliEX+GAb1HTTUTi1hrGqJLC3lc8zRfx+kq1zsoAQm
	ThwX4wuAew79Ksj297/1rLE6iLjfPGxte2PirWn5Y8s0Oapr4bu6H0MBTc7vtU+qVOEQdOGG9dWH6
	c86+a+bF8I4h4qy+6Xo+Nz3H3G+N+vpYE9RiXpYVxtAKetUhnkEINPzazDg0yTU58pPHG4IlGVbFl
	B+QTZ4UFYyw+4PxRBIK7lnu34OUpWlx/TTaQxq26IkbcFqRmpCY52v0c9fvyzabXMTHavNUKsGFBc
	/6h8L4pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGyt-0006zi-Im; Sat, 28 Dec 2019 18:38:31 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwK-0004zv-VF; Sat, 28 Dec 2019 18:35:54 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d5so6116128pjz.5;
 Sat, 28 Dec 2019 10:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EpYT0fAEZoJoOZIDpiQY1oBPoWcKuknBnZk8A3TEsPc=;
 b=vKiwJbQktB/yDQ3otya9rtDE8p6fqKEysJmAKuEUbVtc7Hp/GlMTlnbHpdHzz+23LA
 K3I/kFAxXFft8S+LDEmic49DQCSn6DnsZQYob/yY+GL3Bi4ZeuqFc0DQb+w1ckRgZ3zb
 pgsvvlp+r2z8BkO4qGkrViUoLKOVflsuwF8egIx0MaPHzoF19frOrVJReh7w373MN34N
 dYuV7tmJaDrie72lcADl96GobSb1c5DNNkIDdw/hCM821qi8JusXrbrd6KseHkIVHIje
 o+PxDKh9YIumZWtaz1bSNUHPoSdfT4o6PQ5zsCEF/oM+PxjaxYThcvTuD1Mgf1lg4MR8
 LG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EpYT0fAEZoJoOZIDpiQY1oBPoWcKuknBnZk8A3TEsPc=;
 b=Wboj9MC/6qTOOZMDfGLCLP9g1d3G5Y5EHUsWJ6A4MTxKC27VGgyHIwm5mQEJyNdBvK
 n766WZ72uF6s1LSz69lfUX/XM/SHH5G6O6nwXUZaHagmJ+DirmsIQJQ+4kiLAq8VDAvU
 7S9mIW5nfQo8ou67kNAL+x/N7jAzhqa4cr3H5KLlj3Drkno9LW84Eb51Hxsr8OIP6+VJ
 CIHOzqM5byeNclriKJxwG9WgUlVnsxQaD/vKRnd546dJzN57IVDzeqojQ163/3oZIIiP
 UDF7svydsNo+QWfmGvZ5I96CvA5PgyOrE55ykmWyCj089qz0/NRXMArjDI3EYicOHKnr
 25zA==
X-Gm-Message-State: APjAAAXDvjcc5YcLHvKbGYSQxG/VDZGUO5cAbA7f0FTXxa3ZXJ46MCXZ
 EHr9GHbvU1C3JEWtYfKc2xw=
X-Google-Smtp-Source: APXvYqxaL1bhfI+SzfCWF5xfdSHs4X/qPlTpf9l3TG5tgOk3eb7YlJe0jzmEPnG066uA83lfsS3rzQ==
X-Received: by 2002:a17:902:bd46:: with SMTP id
 b6mr58947367plx.239.1577558151829; 
 Sat, 28 Dec 2019 10:35:51 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w5sm40623989pgb.78.2019.12.28.10.35.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:51 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 08/13] mailbox: stm32-ipcc: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:33 +0000
Message-Id: <20191228183538.26189-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103553_047349_93E04544 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/stm32-ipcc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/stm32-ipcc.c b/drivers/mailbox/stm32-ipcc.c
index ef966887aa15..0a7e9ce0fb31 100644
--- a/drivers/mailbox/stm32-ipcc.c
+++ b/drivers/mailbox/stm32-ipcc.c
@@ -205,7 +205,6 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct stm32_ipcc *ipcc;
-	struct resource *res;
 	unsigned int i;
 	int ret;
 	u32 ip_ver;
@@ -235,8 +234,7 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 	}
 
 	/* regs */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ipcc->reg_base = devm_ioremap_resource(dev, res);
+	ipcc->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ipcc->reg_base))
 		return PTR_ERR(ipcc->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
