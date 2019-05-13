Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EBA1B6E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VRscFQ+l8ktyXeD198aQbVncxLLpdNESMBjgV8ueO8A=; b=mDygZCKKrINOCq
	Ko1/Blg/WXchXM3K1Vx5pUrZxAxnHakpbc4Ts8Zzc1zpRO4rrzfVb9eFml1rSi/k71Q1RPG7hUzbE
	exjlyhZmWQlCyhw2jEvHQJIUIJt7DkesyInywLLAwHDPugvNpxuFGAPC27FhxiKlqy3DHYK/vBW0U
	DIZKPTvAOM6VaqQrYDLBDMSLU5+2YxpMtvc+tI2VttKSrKiYI8zoOKU39Pn7eS8ltQ0UL/bPldxh2
	ZBZ+w1SNmysp9xoEY6B8+9GQKFFCPZ5lD5E01tzSSKt000rIJa5B7wAcsKGX688HhMtn5UZKbdUNS
	oqBbgLqZO/3fckbYO+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAp8-0007Li-VE; Mon, 13 May 2019 13:16:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQAp1-0007LH-Jh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:16:53 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4DDGgPI059591;
 Mon, 13 May 2019 08:16:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557753402;
 bh=evb15vmJghMs7efQZJn7Qos7FojXgtGOvLlTOmG0hY4=;
 h=From:To:CC:Subject:Date;
 b=lZHSQPQw4Gp9+ZFGutRJtb4vcy1SH0lPQqwyWngoI9y/eEDQ5Pnumbd6ze9raKpgu
 BI+7u42I9A3H6jttp7inLG/cbkhVsGgD26wk9stluEnMbsNxGRLC2gu406n33ssBDT
 U5Dh98vGHnGWHvfmeMHoVs/rfL2zuNwPPkME0HF8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4DDGgGX072538
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 May 2019 08:16:42 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 13
 May 2019 08:16:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 13 May 2019 08:16:41 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4DDGfYv012618;
 Mon, 13 May 2019 08:16:41 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, <linux-omap@vger.kernel.org>
Subject: [PATCH] net: ethernet: ti: netcp_ethss: fix build
Date: Mon, 13 May 2019 16:16:36 +0300
Message-ID: <1557753396-12367-1-git-send-email-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_061651_705446_CC17DC0A 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix reported build fail:
ERROR: "cpsw_ale_flush_multicast" [drivers/net/ethernet/ti/keystone_netcp_ethss.ko] undefined!
ERROR: "cpsw_ale_create" [drivers/net/ethernet/ti/keystone_netcp_ethss.ko] undefined!
ERROR: "cpsw_ale_add_vlan" [drivers/net/ethernet/ti/keystone_netcp_ethss.ko] undefined!

Fixes: 16f54164828b ("net: ethernet: ti: cpsw: drop CONFIG_TI_CPSW_ALE config option")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
index c3f53a40b48f..ed12e1e5df2f 100644
--- a/drivers/net/ethernet/ti/Makefile
+++ b/drivers/net/ethernet/ti/Makefile
@@ -19,4 +19,4 @@ ti_cpsw-y := cpsw.o davinci_cpdma.o cpsw_ale.o cpsw_priv.o cpsw_sl.o cpsw_ethtoo
 obj-$(CONFIG_TI_KEYSTONE_NETCP) += keystone_netcp.o
 keystone_netcp-y := netcp_core.o cpsw_ale.o
 obj-$(CONFIG_TI_KEYSTONE_NETCP_ETHSS) += keystone_netcp_ethss.o
-keystone_netcp_ethss-y := netcp_ethss.o netcp_sgmii.o netcp_xgbepcsr.o
+keystone_netcp_ethss-y := netcp_ethss.o netcp_sgmii.o netcp_xgbepcsr.o cpsw_ale.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
