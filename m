Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054B01CFF9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWXaeVmAFUqAO//SDCJCnU8kDTpbcmqbNta5x6NOs9k=; b=d9uVBm0d8dHfmS
	SFhCMoW2KAy45nwt7nF8Aqo7fQxc2RbNIFTex9Bl/QYgkmx3+5RDv+jMVeA2lIN3thzgoQib82cV0
	y8KYZ23z4/9NYjw7Pz/KSUogaPIIRLM7lZtj8W4ByLzqwuSXqrBVFraB7sHyjFHuE/3CJY6wD+395
	UZOSVE+9T28oJgS/HgbErze8M3TeIH3QLnw8MXZqhvhxIPcdv2XD+yY3fFZ0+9v7l71EyiIHZtwZB
	ftmhQGa1o+OXsO0045G/Angd139wgTgnx+qeH6fhShmWV5/k856PDijfRnKFcI4fT+/wOalrP6Fg1
	naRj7spG051IAZ2HDffA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbhb-00029f-FC; Tue, 12 May 2020 20:40:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbgF-0007Cr-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 20:39:12 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8183A812F;
 Tue, 12 May 2020 20:39:59 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 4/6] soc: ti: omap-prm: Configure omap4 and 5 l4_abe power
 domain
Date: Tue, 12 May 2020 13:38:50 -0700
Message-Id: <20200512203852.29499-5-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512203852.29499-1-tony@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133911_501136_1F8A810D 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's add omap4 and 5 l4_abe interconnect instance for the power
domain.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/soc/ti/omap_prm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -150,6 +150,10 @@ static const struct omap_rst_map rst_map_012[] = {
 
 static const struct omap_prm_data omap4_prm_data[] = {
 	{ .name = "tesla", .base = 0x4a306400, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_01 },
+	{
+		.name = "abe", .base = 0x4a306500,
+		.pwrstctrl = 0, .pwrstst = 0x4, .dmap = &omap_prm_all,
+	},
 	{ .name = "core", .base = 0x4a306700, .rstctrl = 0x210, .rstst = 0x214, .clkdm_name = "ducati", .rstmap = rst_map_012 },
 	{ .name = "ivahd", .base = 0x4a306f00, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_012 },
 	{ .name = "device", .base = 0x4a307b00, .rstctrl = 0x0, .rstst = 0x4, .rstmap = rst_map_01, .flags = OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_NO_CLKDM },
@@ -158,6 +162,10 @@ static const struct omap_prm_data omap4_prm_data[] = {
 
 static const struct omap_prm_data omap5_prm_data[] = {
 	{ .name = "dsp", .base = 0x4ae06400, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_01 },
+	{
+		.name = "abe", .base = 0x4ae06500,
+		.pwrstctrl = 0, .pwrstst = 0x4, .dmap = &omap_prm_nooff,
+	},
 	{ .name = "core", .base = 0x4ae06700, .rstctrl = 0x210, .rstst = 0x214, .clkdm_name = "ipu", .rstmap = rst_map_012 },
 	{ .name = "iva", .base = 0x4ae07200, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_012 },
 	{ .name = "device", .base = 0x4ae07c00, .rstctrl = 0x0, .rstst = 0x4, .rstmap = rst_map_01, .flags = OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_NO_CLKDM },
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
