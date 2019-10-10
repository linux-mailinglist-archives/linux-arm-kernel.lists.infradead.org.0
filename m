Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ED0D221D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=23wFZUonZJzBh6QFkDrY5DWfJly2QTVQZG/GYhNQKcw=; b=NL8aviexR0UGLK
	rfHfbyCKfo0mPpPLgdWHdUbXgDUoiXkwHi4Tp4uzdCgP84To9xWprmDEMSpbOrL9SGYqzlPZG767u
	mI8dcVW6KAGYu9lCjwh6YCdBW46JBTxxO/hSKnZlTlxBKu9v9z/4wa69EidpRY6IgXxJ/XXvQQNYQ
	wV6SbTUlSzMfHIOL98NciHO5JYUvueBMZrz0brAIOy0jApiCyvkix5Wr2UwTKpCgGvyqIMUFb85ts
	BJ864uI3hEz8xEgiiDfI2W6baI5YheMyYynq0H9bx/SvvKRiiLTXBcSxXKUaE0ZiK2KY3AIUINkGW
	7qf8/QB5MasAHPcIntlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITDQ-0001nu-I7; Thu, 10 Oct 2019 07:50:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITDB-0001j7-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:50:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id y72so3332243pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 00:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BMwVxKJ5pjT6AAme6CzPathy+GO4sDWlKBre4oI24yA=;
 b=RFG6HwCYSDramAhQi1uVRJXiRCVoJbWbPFfqpgOBrr+ONoYndjuqcaaKVXq5mGam8b
 NZtTefp9ssgMDcOeS44tvnd/S01DBUC/puqu1Pc1WrhMLPuHRw/wlomndD3BsbpSaPGb
 gHUbAX/+u3EKiwTIyQl/RS16LhLTepVBNK6XM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BMwVxKJ5pjT6AAme6CzPathy+GO4sDWlKBre4oI24yA=;
 b=T3PiGXvICbHg0MC9wiBdlOjCWfakKitI6hwmPUF3whwEBtrKZ5nMTfoVJc/iHUiEfH
 5CB+nVBoNyok4nPcjsJR74vpGAnHwcxgYAfUPTMu2D4FdwYZpBqXTm6JEhvt65jhGQtC
 qKC/0h++PtIVWoJszDmwMJDwv6OWbIgGwQc2uJ6+Tgdz/K9E04NHrel741cGsznwTxAX
 LieHijMNoc3LzAEYdMN5QBtC4J5R9lNV+kQj23Dek8LVShQhv3nTn3hhPVkEU8j0YSAc
 ICNVgcuojt64YN3Snt0pi0QVgwUTmY3kqYUW8vk/3wGD9QN+Zau8OgsV2tCBvEeTUSiX
 tDPA==
X-Gm-Message-State: APjAAAX40LZoum4L7jg35LMwjqgh0x8JFt+soJneeZHT7AKTtuozvCa7
 E4opKPHMEFxDsQt5qdghtzm/Tftwygwp3Q==
X-Google-Smtp-Source: APXvYqyImi2kgnGChUg2KfgfL+4s6k7vSPd2oI6xHbrOyAm/ZcqmRMonHqTVcAChWDBQgIDHwV/S+w==
X-Received: by 2002:a63:4e09:: with SMTP id c9mr9163082pgb.98.1570693812256;
 Thu, 10 Oct 2019 00:50:12 -0700 (PDT)
Received: from tfiga.tok.corp.google.com
 ([2401:fa00:8f:203:f5fe:2a5e:f953:c0ed])
 by smtp.gmail.com with ESMTPSA id 22sm4812489pfj.139.2019.10.10.00.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 00:50:11 -0700 (PDT)
From: Tomasz Figa <tfiga@chromium.org>
To: linux-usb@vger.kernel.org
Subject: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
Date: Thu, 10 Oct 2019 16:50:04 +0900
Message-Id: <20191010075004.192818-1-tfiga@chromium.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_005013_156868_2C83733E 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek XHCI host controller does not support 64-bit addressing despite
the AC64 bit of HCCPARAMS1 register being set. The platform-specific
glue sets the DMA mask to 32 bits on its own, but it has no effect,
because xhci_gen_setup() overrides it according to hardware
capabilities.

Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
32-bit DMA mask instead.

Signed-off-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/usb/host/xhci-mtk.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index b18a6baef204a..4d101d52cc11b 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
 	xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
 	if (mtk->lpm_support)
 		xhci->quirks |= XHCI_LPM_SUPPORT;
+	/*
+	 * MTK host controller does not support 64-bit addressing, despite
+	 * having the AC64 bit of the HCCPARAMS1 register set.
+	 */
+	xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
 }
 
 /* called during probe() after chip reset completes */
@@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
 		goto disable_clk;
 	}
 
-	/* Initialize dma_mask and coherent_dma_mask to 32-bits */
-	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
-	if (ret)
-		goto disable_clk;
-
 	hcd = usb_create_hcd(driver, dev, dev_name(dev));
 	if (!hcd) {
 		ret = -ENOMEM;
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
