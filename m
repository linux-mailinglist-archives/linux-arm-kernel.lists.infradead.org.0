Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FC8E7A01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oSIoheGT3Es4fdcyVLHRE84CatRGGThxnCYwJ/lejxo=; b=eUaZy4dMRtDNsO
	zrt7iIoZ9OW3ClcM5tPdcsUPpsiaoYFxX3jCMLjdM6uG1MWW99ahe/uTQRPezYT9ZfBJd0nPkFIzF
	6aCwZTfjvrP45tx0aJijGCy96qrj778Hft5y/7eG3+0cpO2ulnpjC23QdLeNB3XkAJWix8LffoQIw
	7K2U3MDsxxYVrTwlFhOA3WYt7ewjefRR2tDgycorfANdjZY/oHIPu+iaptlMo8X6fnaCBZBe9N2bd
	v3ivEiq4WYEqEhe5rc72LFUqABS+gs95SEpKVb8poGYR3iJckHRTOAxJH0GFwXyBk0zMtSfxO+7f9
	5Raqeux7QVn9bHzX6Yiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBWl-0005fV-GU; Mon, 28 Oct 2019 20:22:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBWV-0005dS-83
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:21:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id 3so7663911pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 13:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=o3RYmNY37sf+6DZhfgwoRw3pPEWurA9fTDFSIhMeWeU=;
 b=Oked80GciIxQk1i/LR2xCPTKwGdtHhZxyUq2WWOVcfXgw0QLfGwTKSya0fFMyXHtjs
 3AbRxlvW0j09zV7fmaXlpfIS1dMK7mr8MuFY2WEFdBy6HJ1RYD0hiloMysUpzCljhzrI
 ZKK/t6YfTEPwojUcpk4fuRj4+cfm641mdi3Wzs0y/OhMQkeolPTdwh2ClmdFDdAqMlX4
 Bj3PZiqDHS9HORzfHhTa2ekYwbrQt805VoctgMyx6pb73lLWoHNXPPL+2RybnV7fwz/2
 TlIfAphcosj9xIuxhpNKOsCqccOcPpzAqkkcCg5+5pBT4FV60WobxJZa4glF1yuLJF/w
 EzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=o3RYmNY37sf+6DZhfgwoRw3pPEWurA9fTDFSIhMeWeU=;
 b=A/z81CdQKL2RNPM2vYf3bAR8Y5vshN1poI61TKdNZBsGDnhR/0AJzebPxTtwx0Zeqz
 6umiQxqAG2OIREpfWiqYjRb9OUPKiVelC1e8MOmz70cjMemTrwSmvHJzvP0ph9ta41lV
 seQ2qpOfe3zKc2AtwtjSyen0n5LbB2O30Ucx+1gTsye0/m5g5qXSDIlBxGQOAlDVFJGN
 lT8UwJtbPzzyHpQYGMfdZdROMp2v7OaST3aV8W4EUgUDFMxpa2e8rzVLZ7V2E66TTyGV
 ghpnBh2Vq+FlbD7CJxal+oHHkniZUAxjP3D009Ch5NLuoEpxSrTX2KIijYcH7uURN7tq
 jO7w==
X-Gm-Message-State: APjAAAW8M1ODugb13J+a0JCiCdyVJGE29aAYSWeU/RjkrRrw9fN3KWAC
 HA3+tNrGRYOBr+JzOXQdqgo=
X-Google-Smtp-Source: APXvYqwgMOgg9DoyjQ+QwjBbA0L2tFTAq78jMqvQKpUC2a2zoXo/IV6DRJzV2kNa8UPQGMxgPJo3JQ==
X-Received: by 2002:a17:90a:a00e:: with SMTP id
 q14mr1489905pjp.132.1572294114235; 
 Mon, 28 Oct 2019 13:21:54 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id e198sm11908096pfh.83.2019.10.28.13.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:21:53 -0700 (PDT)
Date: Tue, 29 Oct 2019 01:51:44 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: jingoohan1@gmail.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com,
 bhelgaas@google.com, kgene@kernel.org, krzk@kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pci: controller: dwc: Remove dev_err use after
 platform_get_irq
Message-ID: <20191028202144.GA29158@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_132155_310509_563A1BBA 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Don't need dev_err() messages when platform_get_irq() fails now that
platform_get_irq() prints an error message itself when something goes
wrong.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/pci/controller/dwc/pci-exynos.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index 14a6ba4067fb..2293b346d96a 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -403,7 +403,6 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
 
 	pp->irq = platform_get_irq(pdev, 1);
 	if (pp->irq < 0) {
-		dev_err(dev, "failed to get irq\n");
 		return pp->irq;
 	}
 	ret = devm_request_irq(dev, pp->irq, exynos_pcie_irq_handler,
@@ -416,7 +415,6 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq(pdev, 0);
 		if (pp->msi_irq < 0) {
-			dev_err(dev, "failed to get msi irq\n");
 			return pp->msi_irq;
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
