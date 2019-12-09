Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D55B11789E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vMUy6blohI2Em2RUmgbc4OSdhtZcKOh7rLiot+QgOwA=; b=acCXsgFFIvSIpW
	sqMKpNa3WIlds3G9vf5piclNUldkLoFUt0pKhTMv5Q1TxMmfshLV1QJrTOL1DsbNOq7vjpn+jzn+q
	CN9MFlzG980b3pb9s0HfTeH7rIyojxYbHLYFxCAQIwvGAReYA39sq0hiXzVmif8RHynms0uKkDuwu
	VioLn83NHH8Tr5f7J6iS2iG53LCd5JXAoP7fVpbCh8Qs4WHE4uOLe3CIca8l6Rz+Y9eS9XV5Ng05f
	Yh+C3g+gB1K5QWuZWDBWCq4Y5oiQUJ67qhxcbPhs+xhvL19Im3k+Uiqqva66CRcJmv6Jw4iIXSm/V
	7QCRg+Xm3Bc83KwPXUaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQnQ-0007dP-GL; Mon, 09 Dec 2019 21:42:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQnK-0007cm-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:42:19 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id D67C180CD;
 Mon,  9 Dec 2019 21:42:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: omap2plus_defconfig: Add back DEBUG_FS
Date: Mon,  9 Dec 2019 13:42:12 -0800
Message-Id: <20191209214212.18638-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134218_494020_EE875BB0 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
removed select for DEBUG_FS but we still need it at least for enabling
deeper idle states for the SoCs.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -554,6 +554,7 @@ CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_INFO_SPLIT=y
 CONFIG_DEBUG_INFO_DWARF4=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 CONFIG_SCHEDSTATS=y
 # CONFIG_DEBUG_BUGVERBOSE is not set
 CONFIG_TI_CPSW_SWITCHDEV=y
-- 
2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
