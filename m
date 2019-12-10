Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943321193F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB1XqcxOgaxlB9tmVxcWn2c0YVuqGsPd+g32nkEhjjs=; b=PimK8EDoUEadwW
	PjYF9f25gOb7tfRd72L5rOg4jLIO4P8W4lghBp5DjbkmGbYw3LZLisneezJglbChj80GJCOI1F1gp
	V1+MvDa4pUnne60lczEicEPoJf57mAfORZCAZDUQ/q16g5m6qs130/o3wiNKM1iL2QHAKEjytL18E
	KTGvTle1UZ9K2kTRF2lridSeDVMyO25CdqVvC/40OPlee7gZcqNRDSfMAh4nsz2Ri2+lfapCNK8v5
	7yx3MEcxUDRmskXdz5i69HOPPxW8mSe/L+B0OhCndILrr19GHEMyahym4+CZSuBeK7q2i1Rwrnd8A
	67RRJkACH8V69VRO1uag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemqj-0008Uh-Tk; Tue, 10 Dec 2019 21:15:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemoD-0006XA-Lt; Tue, 10 Dec 2019 21:12:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D94682464B;
 Tue, 10 Dec 2019 21:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012361;
 bh=nrKFeK8ZfpA0LOttrffsxHf9XaNKRKS8gtS1ILBWzz4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E4O4kVDTPfBp933OWfwDW+Rj692YBkJeJvKNQfrc5jZ5VY+Qgbs7Aeuz35vkpYkkG
 RYEz+jcPbNEc6+3k4fBoBbSb7gKKILzGlDH3K0mqfTL19pNRALNLD9aVk7oms3/hcx
 XmG+zw6AFWqTAQputvb0IdAfvBPkt2ovO7nNZP4I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 288/350] MIPS: ralink: enable PCI support only if
 driver for mt7621 SoC is selected
Date: Tue, 10 Dec 2019 16:06:33 -0500
Message-Id: <20191210210735.9077-249-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131242_152577_63AFFC59 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jhogan@kernel.org,
 linux-mips@vger.kernel.org, ralf@linux-mips.org,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 linux-mediatek@lists.infradead.org, john@phrozen.org,
 NeilBrown <neil@brown.name>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sergio Paracuellos <sergio.paracuellos@gmail.com>

[ Upstream commit 3b2fa0c92686562ac0b8cf00c0326a45814f8e18 ]

Some versions of SoC MT7621 have three PCI express hosts. Some boards
make use of those PCI through the staging driver mt7621-pci. Recently
PCI support has been removed from MT7621 Soc kernel configuration due
to a build error. This makes imposible to compile staging driver and
produces a regression for gnubee based boards. Enable support for PCI
again but enable it only if staging mt7621-pci driver is selected.

Fixes: c4d48cf5e2f0 ("MIPS: ralink: deactivate PCI support for SOC_MT7621")
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: ralf@linux-mips.org
Cc: jhogan@kernel.org
Cc: john@phrozen.org
Cc: NeilBrown <neil@brown.name>
Cc: linux-mips@vger.kernel.org
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Link: https://lore.kernel.org/r/20191019081233.7337-1-sergio.paracuellos@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/ralink/Kconfig           | 1 +
 drivers/staging/mt7621-pci/Kconfig | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/ralink/Kconfig b/arch/mips/ralink/Kconfig
index 1434fa60f3db1..94e9ce9944944 100644
--- a/arch/mips/ralink/Kconfig
+++ b/arch/mips/ralink/Kconfig
@@ -51,6 +51,7 @@ choice
 		select MIPS_GIC
 		select COMMON_CLK
 		select CLKSRC_MIPS_GIC
+		select HAVE_PCI if PCI_MT7621
 endchoice
 
 choice
diff --git a/drivers/staging/mt7621-pci/Kconfig b/drivers/staging/mt7621-pci/Kconfig
index af928b75a9403..ce58042f2f211 100644
--- a/drivers/staging/mt7621-pci/Kconfig
+++ b/drivers/staging/mt7621-pci/Kconfig
@@ -2,7 +2,6 @@
 config PCI_MT7621
 	tristate "MediaTek MT7621 PCI Controller"
 	depends on RALINK
-	depends on PCI
 	select PCI_DRIVERS_GENERIC
 	help
 	  This selects a driver for the MediaTek MT7621 PCI Controller.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
