Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC51E1F87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JgNFobIB/Rc4FmqG+YcgShhy4VmUjobdRBZL6r1Jfu4=; b=M5IrGJYSLvB9EGAWOXAfBQb+FF
	doEmZdUUsYlOqLea/7RSRjaMC+oMoJEgD8YWV/ROQiMD/kAAPDV03+dYYNIXxLWNxXed/3hxJcfzU
	k0wsEnJl0AlBIqtxfZbNX6JSHjH1xEtE6vgCYgK2jw6wpIDQ3pqFiolW6PyxxS8VxAZCuLaueBGhH
	GFytPg9/RCdw5L5KQ6GHwDp8qERe18rP61HOnLJJy9aab5/cW/w2aIyrHVWJuLXKQvpVK3/FoLJdU
	7DFGosVRjirenJIilWpLuAaEIneFDGKzOt8CPQu/BzoJfGWJgbqs5fqDTsJQu2s1f0LgFjjPMUEEJ
	14Pn1B0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIj9-00017l-1j; Wed, 23 Oct 2019 15:39:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIic-0000sp-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 15:38:39 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98BAC21A4C;
 Wed, 23 Oct 2019 15:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571845117;
 bh=bM/mEFcrlLuEZp0P1EMlHoIbnorgdXnXqaEVenoUobo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LFIe6aUM5wa79Oq3zx51FbUaTsKJLxlsXTmgfOYoBNi3ZXfGUQYka3xC8T0jZwAxb
 vR3WlTWia7oj09i6auE3vk7sqbYzwjIv526kXHicgl0jR7zV4cqj3AM0YNYpAc0bsq
 n9CEB1VIcKbzOy1iRM/Z/ni1Mv/rUbHLiZED8eW0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: s3c: Rename s5p_usb_phy functions
Date: Wed, 23 Oct 2019 17:38:24 +0200
Message-Id: <20191023153824.6085-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023153824.6085-1-krzk@kernel.org>
References: <20191023153824.6085-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_083838_230128_3A0C093B 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The name s5p_usb_phy_init() suggests it is shared with S5Pv210 platform,
but it is not.  It is specific to S3C64xx, so make it clear in the
name.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-s3c64xx/setup-usb-phy.c        | 4 ++--
 arch/arm/plat-samsung/devs.c                 | 4 ++--
 arch/arm/plat-samsung/include/plat/usb-phy.h | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-s3c64xx/setup-usb-phy.c b/arch/arm/mach-s3c64xx/setup-usb-phy.c
index 6aaaa1d8e8b9..d6b0e3b268af 100644
--- a/arch/arm/mach-s3c64xx/setup-usb-phy.c
+++ b/arch/arm/mach-s3c64xx/setup-usb-phy.c
@@ -73,7 +73,7 @@ static int s3c_usb_otgphy_exit(struct platform_device *pdev)
 	return 0;
 }
 
-int s5p_usb_phy_init(struct platform_device *pdev, int type)
+int s3c_usb_phy_init(struct platform_device *pdev, int type)
 {
 	if (type == USB_PHY_TYPE_DEVICE)
 		return s3c_usb_otgphy_init(pdev);
@@ -81,7 +81,7 @@ int s5p_usb_phy_init(struct platform_device *pdev, int type)
 	return -EINVAL;
 }
 
-int s5p_usb_phy_exit(struct platform_device *pdev, int type)
+int s3c_usb_phy_exit(struct platform_device *pdev, int type)
 {
 	if (type == USB_PHY_TYPE_DEVICE)
 		return s3c_usb_otgphy_exit(pdev);
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
index 1d1fa068d228..1602f6dc900b 100644
--- a/arch/arm/plat-samsung/devs.c
+++ b/arch/arm/plat-samsung/devs.c
@@ -1010,9 +1010,9 @@ void __init dwc2_hsotg_set_platdata(struct dwc2_hsotg_plat *pd)
 	npd = s3c_set_platdata(pd, sizeof(*npd), &s3c_device_usb_hsotg);
 
 	if (!npd->phy_init)
-		npd->phy_init = s5p_usb_phy_init;
+		npd->phy_init = s3c_usb_phy_init;
 	if (!npd->phy_exit)
-		npd->phy_exit = s5p_usb_phy_exit;
+		npd->phy_exit = s3c_usb_phy_exit;
 }
 #endif /* CONFIG_S3C_DEV_USB_HSOTG */
 
diff --git a/arch/arm/plat-samsung/include/plat/usb-phy.h b/arch/arm/plat-samsung/include/plat/usb-phy.h
index 94da89ecbd3b..759d66a0773a 100644
--- a/arch/arm/plat-samsung/include/plat/usb-phy.h
+++ b/arch/arm/plat-samsung/include/plat/usb-phy.h
@@ -7,7 +7,7 @@
 #ifndef __PLAT_SAMSUNG_USB_PHY_H
 #define __PLAT_SAMSUNG_USB_PHY_H __FILE__
 
-extern int s5p_usb_phy_init(struct platform_device *pdev, int type);
-extern int s5p_usb_phy_exit(struct platform_device *pdev, int type);
+extern int s3c_usb_phy_init(struct platform_device *pdev, int type);
+extern int s3c_usb_phy_exit(struct platform_device *pdev, int type);
 
 #endif /* __PLAT_SAMSUNG_USB_PHY_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
