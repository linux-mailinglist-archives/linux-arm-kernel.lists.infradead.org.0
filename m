Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DD71A25AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y1HiUV2YTN9qHFi/zBrB7Rjbncwx4eR9abFk2jEZNVU=; b=Dmhe+TOKBb1VU6fS+o06eAerQb
	4NO1iVDHTl0oLaXBfloIhqLdEy8bdZO40YmbiOh9l9DkZtbmKZEddKQYSWj78JujF4kV2sd77Ocvj
	Mt6mGkwXJ8Eye9x8NVcbcwZT9oelKZZ9hV3bQoIqyPJV6M2kPVieh6hUFzFv/TKGNPhZKyiL/FsIT
	TsR2/zWLpNKNT90AwYYw2JOnvxyfmN0P2YvsgVWwbjN+zMEtKOW6HgBznaHzX70BrreaFAbWvW6p3
	qrmuUL9UZXe9GvzCfOr518uBxUlC2iFCMNmBwxObxSHopmoLgwjKIXhjUPWM+pCkc+9VuA6RQA+Xm
	a3BjU7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCoi-0002ft-OT; Wed, 08 Apr 2020 15:40:40 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCmz-000741-7I; Wed, 08 Apr 2020 15:38:54 +0000
X-IronPort-AV: E=Sophos;i="5.72,359,1580742000"; d="scan'208";a="43920582"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 09 Apr 2020 00:38:52 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id C2326400942C;
 Thu,  9 Apr 2020 00:38:47 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Date: Wed,  8 Apr 2020 16:37:59 +0100
Message-Id: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_083853_412980_2FF90A00 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add R8A774C0 device ID so that this can be used by
pci_endpoint_test driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 include/linux/pci_ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 1dfc4e1dcb94..9e957c18abeb 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -2460,6 +2460,7 @@
 #define PCI_DEVICE_ID_RENESAS_SH7763	0x0004
 #define PCI_DEVICE_ID_RENESAS_SH7785	0x0007
 #define PCI_DEVICE_ID_RENESAS_SH7786	0x0010
+#define PCI_DEVICE_ID_RENESAS_R8A774C0	0x002d
 
 #define PCI_VENDOR_ID_SOLARFLARE	0x1924
 #define PCI_DEVICE_ID_SOLARFLARE_SFC4000A_0	0x0703
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
