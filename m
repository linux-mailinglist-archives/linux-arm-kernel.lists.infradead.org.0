Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A556B3AA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoYNA9oDO8DBZqnFFcNncW7rZCRYzaoDupDDbydSraI=; b=oYPolC5tuiKSRd
	R1Pf47FNRDu5x5va8J+01jG69qPqkK7ZwHfXjtfLo3doq85Z/bLkHm6upo1OmbcCHv813l7undeuj
	kep5+FeLY2bRpkam11TUHe3mrQh3oFN3mf/ge9LcSamJuOyNBjdYwx9JvB3dIo7Zzn6v3/FgbYkFR
	3xja3Tse1CewAokba+YjAtQZXDtnhBz2OpIfHudPywnwtNUOluax87ccpvOQL8LRrMjvCkXTnVu8i
	1Z/kuurRWxFeg3Xi5clEAKKN1AFz8dTArXd1lLkg6+pEzLcS+44zG61NfnwzhY2M9RBa5a9iUw26c
	CvLsmhVujqYEZ5+YuMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qTI-000307-2b; Mon, 16 Sep 2019 12:51:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qSa-0002nl-Ca
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:50:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so38712304wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jlGUHvg+PE8gs96DiXpNJ8Kfd/rHrkqDzag5ZPnKd5Q=;
 b=uRznrPwppxChi5DbFjBeAieVJnJpLht0j9pPELbSwp1vv3rhF+D0lrlX1Yetseyedi
 EHQmRJ5hu9fp3801FOKkw5+yX1bloZAVLZpMjuj5WAstQXZsNTcqZ4lZjSik4IAsiXLx
 b/LxLStKZvrpsV8yX4Nn/uWNoyG/XqctVhaLSa3X5/hPIRwYJgo4E8g62aiuq5qlKmfM
 Q3Hf0vxXjlFjvi+6EWQJUtlnn7+zGxpduDjbl9FGcdjotSN1JnykahEWQ301TkYIfUTy
 KHFQk+UDLG4QjGgEuFk0jHuMgn9vAFrpXGQMhcqIm8hIzQJOw/0KvmNvX+n+nUiS96vz
 SZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jlGUHvg+PE8gs96DiXpNJ8Kfd/rHrkqDzag5ZPnKd5Q=;
 b=nByJ1eJZYzvhs1j0PRkqu3UYtHglLyZRwKOs74xPjOwgT9oXEnPdj+4/pOikcOLl4D
 iwe5/lVReTkP69iUzo7G1Z7GoSatVxrH8daLCASc/zrSp1G7718LtqeCEmcFyzti3RMG
 N8PUbMluM5IdPIT7YolyhOQh5cUy/DgydMjJmLy3u4ku84HU974r3u02D/gFfNBqbtQL
 /mc/sJZt3Z/Dus2QcAua+Ick9xa2dyaOPpzdaipGI9ofotbXnFAk3GJFV60YrS5skzIG
 6k9BKK9K50uMkVC/gVZZVOWsckFqKPldxHCnTM1Ue1AfDY1vfyW+ekvKmrkx3kZ2wGtc
 YsdA==
X-Gm-Message-State: APjAAAVnYUB/BPIg6ZVpSzKHOojS7748tNszrwvd4+okoHK1Dl5iG/bf
 Y877DwRvATua/dIxnvhPHi4iFQ==
X-Google-Smtp-Source: APXvYqy7RU2IS8RX/3f7CyUGB28iNocAeDt1Nen58ZP9x40CfxUXWROzTKwkmKdqC1wR0VqTF3GNSw==
X-Received: by 2002:a5d:680d:: with SMTP id w13mr17384767wru.282.1568638226669; 
 Mon, 16 Sep 2019 05:50:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o12sm15109960wrm.23.2019.09.16.05.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:50:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lorenzo.pieralisi@arm.com, kishon@ti.com,
 bhelgaas@google.com, andrew.murray@arm.com
Subject: [PATCH v2 2/6] PCI: amlogic: Fix probed clock names
Date: Mon, 16 Sep 2019 14:50:18 +0200
Message-Id: <20190916125022.10754-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055028_425806_5BE506C9 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gouwa@khadas.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-pci@vger.kernel.org, nick@khadas.com, linux-kernel@vger.kernel.org,
 yue.wang@Amlogic.com, repk@triplefau.lt, maz@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the clock names used in the probe function according
to the bindings.

Fixes: 9c0ef6d34fdb ("PCI: amlogic: Add the Amlogic Meson PCIe controller driver")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/pci/controller/dwc/pci-meson.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index 541f37a6f6a5..ab79990798f8 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -250,15 +250,15 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
 	if (IS_ERR(res->port_clk))
 		return PTR_ERR(res->port_clk);
 
-	res->mipi_gate = meson_pcie_probe_clock(dev, "pcie_mipi_en", 0);
+	res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
 	if (IS_ERR(res->mipi_gate))
 		return PTR_ERR(res->mipi_gate);
 
-	res->general_clk = meson_pcie_probe_clock(dev, "pcie_general", 0);
+	res->general_clk = meson_pcie_probe_clock(dev, "general", 0);
 	if (IS_ERR(res->general_clk))
 		return PTR_ERR(res->general_clk);
 
-	res->clk = meson_pcie_probe_clock(dev, "pcie", 0);
+	res->clk = meson_pcie_probe_clock(dev, "pclk", 0);
 	if (IS_ERR(res->clk))
 		return PTR_ERR(res->clk);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
