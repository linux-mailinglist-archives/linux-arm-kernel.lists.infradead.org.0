Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EC01E74FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 06:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjuQFOBjV0MjyZ4eARBU+KXYsR3IsHPfKYtwbqIrqRE=; b=pY9dBSNKmKq1wE
	MXaVuiDEO0knYlOq6nRBBgqGvX+twf9ByQGjXXn5xCuN8hIfrRUfKeHGbXksLVFdm+hDDNzLwVkGO
	G2LpwsdN9nQu93YcIEpKbtW2isX+fhYCs0UoTBNWJbtESdCmlc5W3SK4ZJ/PISZZtlSxHXGNW5UBK
	t4UD/PARaF1uQhcKFfDdKz7XuY2A5UFzd5m//0UuVFjzXOSfl1VVIPqfSk8S/aaw5fEFwrOoghIxU
	FXcS+oSAgIA/8rwWFbXfKRqqqIGOgLYGiAih4Rtf7T/ufelHYI16aURXeZ7VB5Pee7KkssPKFf9qV
	vatAxEHzPiw2AdKdWj3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWof-00035u-9E; Fri, 29 May 2020 04:40:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWoH-00034x-Nw; Fri, 29 May 2020 04:39:59 +0000
X-UUID: ed21fbb1c1ad4c8f8eb1e9481eb532ce-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=/8kwEHmJ6TaKvbOevYpGl57UqTkIwazDt7MXIqKtVPY=; 
 b=qmcsrnbzADgRypVyMJU/lHib1OIYoafb48XWw0diQCBr5kUmgwZdXKklqZ1Fi1qVyq03f566vBPsrL2TKUXxgAaaLoDCArZedcz7sRnM9s9n1QFioPpp55RyTdxuTXqBTN+i58a/2xhF1SM5fOhtqzlG6bi6edI4X7602P3DsF4=;
X-UUID: ed21fbb1c1ad4c8f8eb1e9481eb532ce-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1930152965; Thu, 28 May 2020 20:39:59 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 21:29:48 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 12:29:30 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 29 May 2020 12:29:34 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] usb: host: xhci-mtk: avoid runtime suspend when removing hcd
Date: Fri, 29 May 2020 12:29:28 +0800
Message-ID: <1590726569-28248-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_213957_790002_84A79640 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Macpaul Lin <macpaul.lin@mediatek.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When runtime suspend was enabled, runtime suspend might happened
when xhci is removing hcd. This might cause kernel panic when hcd
has been freed but runtime pm suspend related handle need to
reference it.

Change-Id: I70a5dc8006207caeecbac6955ce8e5345dcc70e6
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/host/xhci-mtk.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index bfbdb3c..641d24e 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -587,6 +587,9 @@ static int xhci_mtk_remove(struct platform_device *dev)
 	struct xhci_hcd	*xhci = hcd_to_xhci(hcd);
 	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
 
+	pm_runtime_put_sync(&dev->dev);
+	pm_runtime_disable(&dev->dev);
+
 	usb_remove_hcd(shared_hcd);
 	xhci->shared_hcd = NULL;
 	device_init_wakeup(&dev->dev, false);
@@ -597,8 +600,6 @@ static int xhci_mtk_remove(struct platform_device *dev)
 	xhci_mtk_sch_exit(mtk);
 	xhci_mtk_clks_disable(mtk);
 	xhci_mtk_ldos_disable(mtk);
-	pm_runtime_put_sync(&dev->dev);
-	pm_runtime_disable(&dev->dev);
 
 	return 0;
 }
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
