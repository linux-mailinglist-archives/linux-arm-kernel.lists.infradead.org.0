Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F87358EEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 02:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aXVjMU8vd2AgF5WIpaHS/CB/uUr36KygMpJecJ0K/PE=; b=Ao7uasQEQsBa3r
	VIUC19PmnCgJhC2K6Lv1WqRBYcx+BCh7TBKlimoKBh/9X36nLJiCo6X83XmSYYdBOlhcQ3FArhLYg
	Ld8Z41l5c1jUm7myAXsyrBs8xVklt84U9CMl90ICLuT0w9apB7eRUWKOSJQ/qTxApCL6SEWhgUn+b
	q8zbQ5S28kQNmyKmk6v7PmV1jlkzuuSDiZQGttUy4o+JFesP7e//IwBYJTWPVkADdzss9oHTCZ2qb
	KI2qVm8MTBr8LTl/ivax/mizPGdRBdLilp4wRvmX4CmkCA8Fba8Tl1OwIoHv4vQAmGrEI5QAWU7dP
	pCzw239D+HYlhrVNY35Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgeea-0006OF-LM; Fri, 28 Jun 2019 00:22:12 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgeeE-0006IL-KX
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 00:21:52 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45Zcrs01TQz1rGRw;
 Fri, 28 Jun 2019 02:21:48 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45Zcrr6rj3z1qqkM;
 Fri, 28 Jun 2019 02:21:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Q3GFyCrMGaeN; Fri, 28 Jun 2019 02:21:48 +0200 (CEST)
X-Auth-Info: KqWuPXNxWHnW0SUccJGBo14/B/Np4M+LBvzRJKa7cJo=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 28 Jun 2019 02:21:48 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: socfpga: Adjust GMAC1 clock and TXD lines skew on
 VINING FPGA
Date: Fri, 28 Jun 2019 02:19:44 +0200
Message-Id: <20190628001944.1478-1-marex@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_172150_863797_73E83EA3 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Dinh Nguyen <dinguyen@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust GMAC1 clock lines skew to maximum (+960 ps) and TXD lines skew
to minimum (-420 ps), to improve signal integrity.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
index 622cc7cc1471..a060718758b6 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
@@ -96,10 +96,14 @@
 			rxd1-skew-ps = <0>;
 			rxd2-skew-ps = <0>;
 			rxd3-skew-ps = <0>;
+			txd0-skew-ps = <0>;
+			txd1-skew-ps = <0>;
+			txd2-skew-ps = <0>;
+			txd3-skew-ps = <0>;
 			txen-skew-ps = <0>;
-			txc-skew-ps = <2600>;
+			txc-skew-ps = <1860>;
 			rxdv-skew-ps = <0>;
-			rxc-skew-ps = <2000>;
+			rxc-skew-ps = <1860>;
 		};
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
