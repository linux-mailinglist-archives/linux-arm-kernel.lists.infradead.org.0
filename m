Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB25ECF9F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lq8e+6MTss33cCNkfDAFA8kV9pMuPRFETlgJJEagfVY=; b=rz6nSSCaUnOzWw
	6kalcun6XD32uGylNysaUR+RC+5cFoIZXSOQwYSV/4Cg/MtnpQ8M2misq98WOwZv3RQdxyTHNonmB
	sTXlMH2qYxgfWW9cgTu0ZBCDAUanqFEQTOPjIJAM/Q6ywfY51kI/WtHc08jcaCpsXWCiBC7FZ2Q5d
	5qq8WyqF/yP6uX7aJ3C7KcBoYaIyay26NRbiWX8yLynepq99AzzVUinvAeZhPV4ygTalJzQMpdCE9
	g6NJUGWnMUy1FNezQKhT6GQQwaOau0VuKymgkT9XsxPPNymM3rcWn3azMzlANCdxBIkAyrN+iWAyy
	W19S+Lz6JM7ut9suSYKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHojq-0002UW-BE; Tue, 08 Oct 2019 12:37:14 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohc-0007s2-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:35:01 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013Q-Mn; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHohZ-0000Rf-W9; Tue, 08 Oct 2019 13:34:54 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/11] ARM: OMAP2+: prm44xx: make prm_{save,
 restore}_context static
Date: Tue,  8 Oct 2019 13:34:49 +0100
Message-Id: <20191008123453.1651-7-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053456_957037_F0F4C078 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Tony Lindgren <tony@atomide.com>,
 linux-omap@vger.kernel.org, Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The prm_{save,restore}_context functions are not exported
so make them static to avoid the following warnings:

arch/arm/mach-omap2/prm44xx.c:748:6: warning: symbol 'prm_save_context' was not declared. Should it be static?
arch/arm/mach-omap2/prm44xx.c:759:6: warning: symbol 'prm_restore_context' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: linux-omap@vger.kernel.org
Cc: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/prm44xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap2/prm44xx.c b/arch/arm/mach-omap2/prm44xx.c
index 1d9346f2a4ae..25093c1e5b9a 100644
--- a/arch/arm/mach-omap2/prm44xx.c
+++ b/arch/arm/mach-omap2/prm44xx.c
@@ -745,7 +745,7 @@ struct pwrdm_ops omap4_pwrdm_operations = {
 
 static int omap44xx_prm_late_init(void);
 
-void prm_save_context(void)
+static void prm_save_context(void)
 {
 	omap_prm_context.irq_enable =
 			omap4_prm_read_inst_reg(AM43XX_PRM_OCP_SOCKET_INST,
@@ -756,7 +756,7 @@ void prm_save_context(void)
 						omap4_prcm_irq_setup.pm_ctrl);
 }
 
-void prm_restore_context(void)
+static void prm_restore_context(void)
 {
 	omap4_prm_write_inst_reg(omap_prm_context.irq_enable,
 				 OMAP4430_PRM_OCP_SOCKET_INST,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
