Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4C43C9B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nL9PDX/SNiwQH6izE/EuVqQgzM1fAePwT08I9o4DOjA=; b=GdD1zw+8MB0Gxa
	W4tKFQHXe/+nIWUkpUTmkYktJuZZAbAZAv9+Fo8pm50AlJ4uhAKJIPvNlmtwgBU5lH8l+KxWWiWY7
	MfYeXjTBU0qJLUUYJg8zgfKL3Ess7FIDnpZvhhCBhkJs5xtlleMIaFH+qhgwV2EyYIOTjScvb3zzL
	oYR+/URfyA2IOZnwjAwgVlLoF8kYl5k/LpWz3JgSd6neis4RrL+IDb9PZlC4+jPGxOxqR9JMNykhs
	9OK0MVGVPGTkFBY1GSw1zaABDDVpPgzK4x2g8i/p9KjV27kKrYGCOybwAS3oYgbH4Pio2UTshVoBG
	GsKpk7uz+vey7y8W+k6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haec6-0007ke-Li; Tue, 11 Jun 2019 11:06:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haebs-0007jo-G2
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:06:37 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BB6Qjg115824;
 Tue, 11 Jun 2019 06:06:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560251186;
 bh=I9BAb2CnQkexQ6+MTbnxM1piZ7sd2DzidzQh9fUybwY=;
 h=From:To:CC:Subject:Date;
 b=KvHnPTFH6ib8h2aJrX6N93zgm8KCeqiKCuKJ0ui8eYVScBtB6P89yBniberuoiiS/
 inxXARsdvQSNM/WWzZRNhdyX3670Ew7qqH7mNJB3A9DR9zVBS2c4AAeLRco7hOIpp7
 fvZaeo7VwlOHHczRw7RNfH3xcFk9aVMnrwAO9qws=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BB6Qmk022666
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 06:06:26 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 06:06:26 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 06:06:26 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BB6P5r041192;
 Tue, 11 Jun 2019 06:06:26 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Stephen Rothwell
 <sfr@canb.auug.org.au>
Subject: [PATCH net-next] net: ethernet: ti: cpts: fix build failure for
 powerpc
Date: Tue, 11 Jun 2019 14:06:17 +0300
Message-ID: <20190611110617.8994-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_040636_640497_1A1F9650 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dependency to TI CPTS from Common CLK framework COMMON_CLK to fix
allyesconfig build for Powerpc:

drivers/net/ethernet/ti/cpts.c: In function 'cpts_of_mux_clk_setup':
drivers/net/ethernet/ti/cpts.c:567:2: error: implicit declaration of function 'of_clk_parent_fill'; did you mean 'of_clk_get_parent_name'? [-Werror=implicit-function-declaration]
  of_clk_parent_fill(refclk_np, parent_names, num_parents);
  ^~~~~~~~~~~~~~~~~~
  of_clk_get_parent_name

Fixes: a3047a81ba13 ("net: ethernet: ti: cpts: add support for ext rftclk selection")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index bd05a977ee7e..a800d3417411 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -60,6 +60,7 @@ config TI_CPSW
 config TI_CPTS
 	bool "TI Common Platform Time Sync (CPTS) Support"
 	depends on TI_CPSW || TI_KEYSTONE_NETCP || COMPILE_TEST
+	depends on COMMON_CLK
 	depends on POSIX_TIMERS
 	---help---
 	  This driver supports the Common Platform Time Sync unit of
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
