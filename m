Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2440D10CD4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yCCX0DVn7gVBw1Rf3V1LngxbotJ4EL3WEB8CnCcgRHI=; b=CyAN8hK4h0lIOgjSgout3UwjWo
	hCNl8IqHi5gDOZVX4bgQrtMT0kAB7z8uYwbiNNJfSBa1KPrKvfwxabSK42JXJArYlED+sbmGbyAsC
	PgwEkMbccRU7x26Ty5v2DRpTQJWi62XtMAUE5Vo5yElVUJ1+uyKNQl4EXvZ0aFM2HUcLEV9vFUQVC
	SRAt2EX9iZBxIf39eDW7n3SUe1XANyVgqc/K1QBvVoi6/BRKqWKnJM5JomMYF8vCsDhDh1sK1qnyD
	g1NTUxqWkyRAp+pnvLcGguvBaMkoj/5WbxQUDGQZjgT+5Gat0XWQSQNRbKe8SC3EMYogQsfLNUJ6x
	/ipBcSKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN3j-0007l9-EP; Thu, 28 Nov 2019 16:54:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzf-0004e2-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id s18so4810056pfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Dfqbr0RxajlO5BfpaJ+gj/cruGVf9oBCHGspuRMYLGM=;
 b=O9JevNY1LOgHwoZQBP3JRCrkxMNX7g335LWvtIGE8TSf0gdh7CvuTTvGfjm78nXgUM
 +p1zMhh+nbn6ISXwf21PH0Z60BkeYpF4a6JzV8KEkI2WqyswsIDCbpxjl7X+PRhKCzIs
 DXpIhvG/INtLpkzRZFie2gEw9yF+o67uC62GGi7F3QILehtJeR3fMeC9qJxpd4Rb5bQn
 9z5+WTrOoWg7fT07bhstV28T/EBnSeUD0loJ3jbO1F/0igGdeu3+T9Nt13ydF/Z+DFFs
 rkThpEXWnl23uu7cSgvOhyGVz2L72jGZfYqVGe0hqI/1KBTny0XVSPtvXsQb4D+rZIxg
 X5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Dfqbr0RxajlO5BfpaJ+gj/cruGVf9oBCHGspuRMYLGM=;
 b=HaLg1vWbHpszP0M+c0CeB4t8hgg0uYOsND0Q4xawaSDFgx5MmmDfe58hvdCeeoOBCb
 Ymx78+85K2Oi+XFb/TS+1FfDwyPkMymgJBALdhmJrP+8Tbn294b1TqRW9rfbAF5E/WYi
 MLJuN9XJFRgcz+H+e0ySRqKfqYzkw6RGX+Ng1Qr17jObtNoRlO2+mibXCqTsbGSyBJGg
 oYNRdxuGGCCcyFucvHayTWAg7x28jbTqEf7/OT6cGk/Kd0l/jMSEtpFSQd/O8wM0kNkr
 cWYr1PU8FtHgNxzSGZcawGSiKdOsgASDXtg6rVSQyhgkvJZdw4637b6zWp8N1+NkTppH
 1esg==
X-Gm-Message-State: APjAAAVImikGSIHb5UUeUCc2LbG/NTZtgpzForr5C7WAFWBvNFVy4Enf
 Dj8GzB6UhJo/NuIkWCAelo/YelzEJCI=
X-Google-Smtp-Source: APXvYqz1CZkfXWlCWREUSYNgSlKLOyyH6hBE4kK1EF/EFkOotdf16LQQAGFxMXT09S3PLDy00ju7iA==
X-Received: by 2002:a63:907:: with SMTP id 7mr11914734pgj.361.1574959814421;
 Thu, 28 Nov 2019 08:50:14 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:14 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 11/17] mailbox: mailbox-test: fix null pointer if
 no mmio
Date: Thu, 28 Nov 2019 09:49:56 -0700
Message-Id: <20191128165002.6234-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085015_839278_683B2514 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabien Dessenne <fabien.dessenne@st.com>

commit 6899b4f7c99c72968e58e502f96084f74f6e5e86 upstream

Fix null pointer issue if resource_size is called with no ioresource.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/mailbox/mailbox-test.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mailbox/mailbox-test.c b/drivers/mailbox/mailbox-test.c
index 58bfafc34bc4..129b3656c453 100644
--- a/drivers/mailbox/mailbox-test.c
+++ b/drivers/mailbox/mailbox-test.c
@@ -363,22 +363,24 @@ static int mbox_test_probe(struct platform_device *pdev)
 
 	/* It's okay for MMIO to be NULL */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	size = resource_size(res);
 	tdev->tx_mmio = devm_ioremap_resource(&pdev->dev, res);
-	if (PTR_ERR(tdev->tx_mmio) == -EBUSY)
+	if (PTR_ERR(tdev->tx_mmio) == -EBUSY) {
 		/* if reserved area in SRAM, try just ioremap */
+		size = resource_size(res);
 		tdev->tx_mmio = devm_ioremap(&pdev->dev, res->start, size);
-	else if (IS_ERR(tdev->tx_mmio))
+	} else if (IS_ERR(tdev->tx_mmio)) {
 		tdev->tx_mmio = NULL;
+	}
 
 	/* If specified, second reg entry is Rx MMIO */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	size = resource_size(res);
 	tdev->rx_mmio = devm_ioremap_resource(&pdev->dev, res);
-	if (PTR_ERR(tdev->rx_mmio) == -EBUSY)
+	if (PTR_ERR(tdev->rx_mmio) == -EBUSY) {
+		size = resource_size(res);
 		tdev->rx_mmio = devm_ioremap(&pdev->dev, res->start, size);
-	else if (IS_ERR(tdev->rx_mmio))
+	} else if (IS_ERR(tdev->rx_mmio)) {
 		tdev->rx_mmio = tdev->tx_mmio;
+	}
 
 	tdev->tx_channel = mbox_test_request_channel(pdev, "tx");
 	tdev->rx_channel = mbox_test_request_channel(pdev, "rx");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
