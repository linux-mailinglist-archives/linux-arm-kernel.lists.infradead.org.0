Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898B811DC11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c/s0erada1BJrKxwqplCmkQz2D+l3P9QLf1d9t6JY2c=; b=Wz0
	sV0wRE6QlQk1BBf4TTZkWYUtg2hogJQrmJR3RGrzSUgZaer0AxogTDHY8PN0sUMMfhipKjujqCYKP
	fRYlMweTVf5WNAXrvWG6ICq22jH3LApQ1qEv08MaIkJuMfLyqA69abUiIX8OPz+Gg53KYWFP6ZnaZ
	GzYcleJtMudXMpsJa7KxSdxUSqpUoLaMaVrBVrPyaGeX1eXckAjp6U4RH+OOs6vZs1jGZMNqczJ1M
	KiT5hgIbunTYdonW98M/2bJggbb3yAAHVgwWQjdhcbaPjCbX4CXniexQuusGCzX5eUiqDRUOpvQQ3
	pMkxv2pulx06z4yCIAlbcXTgJiFxjnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifaYS-00035B-1i; Fri, 13 Dec 2019 02:19:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifaYJ-000309-Sk
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 02:19:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D8581A07E2;
 Fri, 13 Dec 2019 03:19:32 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DE6B51A031C;
 Fri, 13 Dec 2019 03:19:27 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0600640296;
 Fri, 13 Dec 2019 10:19:21 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/2] arm64: dts: ls1028a-rdb: enable emmc hs400 mode
Date: Fri, 13 Dec 2019 10:18:38 +0800
Message-Id: <20191213021839.23517-1-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_181936_068666_8DE80786 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiaobo.xie@nxp.com, jiafei.pan@nxp.com, yinbo.zhu@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is to enable emmc hs400 mode for ls1028ardb

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
Acked-by: Shawn Guo <shawnguo@kernel.org>
Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
---
Change in v2:
		add Acked-by 

 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index 9720a190049f..61c4f772e3a6 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -93,6 +93,8 @@
 
 &esdhc1 {
 	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	bus-width = <8>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
