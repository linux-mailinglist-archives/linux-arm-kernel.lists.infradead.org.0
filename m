Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1B01486F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptzI1TjgISOWgMPXZ3GrK/RQcTA8TQO+Z7fI2xLMSMw=; b=E3fdbpu0DeVn1Z
	Myl9U8K3MltHTeZ3jF121ScHlHsrOx6G65IhIwODVR54axv18RucfDZ7xvspIkDOcZ8nBMop360is
	BP6FlUJjSFqo+2CnmjFIOrBArjfchej7Dx3QY06pLe3g7j7tn2wx1JjJjQQo66yB3d/Zkkg8jI9ll
	ZC6ywbwDCZbGA6RulS5zYDgYIEM//lXY+L5lhVe6bnEdXNdu5A5tJd0GkIX7Kyx5aa/SRbRHykIQV
	aTsP1pmClwVRF6+mTD01PT6mEw+E8RsoSWkWoNYhabMNAhr7znQKZSSP29szL5v8nhf5Jsa+a+XzA
	3bgl7F/p3/A/TBuVFWnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzoc-0001c2-Bk; Fri, 24 Jan 2020 14:20:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzmz-0000VN-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B6112087E;
 Fri, 24 Jan 2020 14:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875504;
 bh=/L54vVnnNVCgLi+l/otzPqeZ9ozHFoiiQUcEnjPcDwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BR15FaAWgs/x8d3vN5Eqvk4gHLF7i06aRuyaOGRgpfGAIMHAFRQ2fElmSZxzLyoAW
 XG+LApijnUc3bn7MxVbs2daen77pAUhIL0G01K5MRPTXCG23ejuVIhkrqc3JPgbZBo
 HfgUNO8o4y/PnjPvKx/cxU0MKE8loPJj5AHK7Hs8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 006/107] ARM: OMAP2+: Fix
 ti_sysc_find_one_clockdomain to check for to_clk_hw_omap
Date: Fri, 24 Jan 2020 09:16:36 -0500
Message-Id: <20200124141817.28793-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061825_675931_F8EB3755 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 90bdfa0b05e3cc809a7c1aa3b1f162b46ea1b330 ]

We must bail out early if the clock is not hw_omap. Otherwise we will
try to access invalid address with hwclk->clkdm_name:

Unable to handle kernel paging request at virtual address ffffffff
Internal error: Oops: 27 [#1] ARM
...
(strcmp) from [<c011b348>] (clkdm_lookup+0x40/0x60)
[<c011b348>] (clkdm_lookup) from [<c011cb84>] (ti_sysc_clkdm_init+0x5c/0x64)
[<c011cb84>] (ti_sysc_clkdm_init) from [<c03680a8>] (sysc_probe+0x948/0x117c)
[<c03680a8>] (sysc_probe) from [<c03d0af4>] (platform_drv_probe+0x48/0x98)
...

Fixes: 2b2f7def058a ("bus: ti-sysc: Add support for missing clockdomain handling")
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap2/pdata-quirks.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index 1b7cf81ff0356..33688e1d9acf9 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -368,10 +368,14 @@ static void __init dra7x_evm_mmc_quirk(void)
 
 static struct clockdomain *ti_sysc_find_one_clockdomain(struct clk *clk)
 {
+	struct clk_hw *hw = __clk_get_hw(clk);
 	struct clockdomain *clkdm = NULL;
 	struct clk_hw_omap *hwclk;
 
-	hwclk = to_clk_hw_omap(__clk_get_hw(clk));
+	hwclk = to_clk_hw_omap(hw);
+	if (!omap2_clk_is_hw_omap(hw))
+		return NULL;
+
 	if (hwclk && hwclk->clkdm_name)
 		clkdm = clkdm_lookup(hwclk->clkdm_name);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
