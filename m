Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A138F22FF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/pKqO5CIczfWDyXaltyQYhLYLJDvqxfqyYU/9ollPd4=; b=CZq
	BccrRNJHWZa9Zw7elH7oQMKjyLn7kh5morFQQl8ZBkFU6x7gZC6GErOa8MO/zSuxGn7XXZeeRKwqI
	1CuZc28aZHRkBlGlYme1YiblNwoisOAzeROc1Gdd8T0U7P7tKIypZcjxWxVoOUIxOE+mT+3DlQy1Y
	mkd31BzwEX4JxC8L6E+yKBW1xWBfki4ZO+evGiGV/mlSIW1eQb/0u5OJGNHFIP45rqLOL6OLfhki5
	ZXmwMJQFNpxr3bE4bvQ36CT2MebXjpOhPSr0eWZHNYA1+AwTJujBcHKwIllllPv67O40iz8NQytXG
	gUaB1bNQJpi2N/sGZ8jefPeVvqP54Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeNG-0006zy-Rp; Mon, 20 May 2019 09:14:26 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeN9-0006z0-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:14:21 +0000
Received: from ramsan ([84.194.111.163]) by albert.telenet-ops.be with bizsmtp
 id EZE6200033XaVaC06ZE60k; Mon, 20 May 2019 11:14:11 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hSeMv-0005v5-Vb; Mon, 20 May 2019 11:14:05 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hSeMv-0007PE-TK; Mon, 20 May 2019 11:14:05 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
 Krzysztof Halasa <khalasa@piap.pl>
Subject: [PATCH] soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
 COMPILE_TEST
Date: Mon, 20 May 2019 11:14:04 +0200
Message-Id: <20190520091404.28427-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_021420_017959_A046FB5F 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Olof Johansson <olof@lixom.net>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The move of the IXP4xx SoC drivers exposed their config options on all
platforms.

Fix this by wrapping them inside an ARCH_IXP4XX or COMPILE_TEST block.

Fixes: fcf2d8978cd538a5 ("ARM: ixp4xx: Move NPE and QMGR to drivers/soc")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 drivers/soc/ixp4xx/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/ixp4xx/Kconfig b/drivers/soc/ixp4xx/Kconfig
index de6becdc78a25ff7..93c852d53223359c 100644
--- a/drivers/soc/ixp4xx/Kconfig
+++ b/drivers/soc/ixp4xx/Kconfig
@@ -1,3 +1,5 @@
+if ARCH_IXP4XX || COMPILE_TEST
+
 menu "IXP4xx SoC drivers"
 
 config IXP4XX_QMGR
@@ -14,3 +16,5 @@ config IXP4XX_NPE
 	  and is automatically selected by Ethernet and HSS drivers.
 
 endmenu
+
+endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
