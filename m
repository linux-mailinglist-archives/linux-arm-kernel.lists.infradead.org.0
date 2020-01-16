Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20B213E5CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoUOpNOwbWHU+SrtSqxNvGxJ99g/P03s/NHp6fAty24=; b=dwsBsdgPQXA4UK
	Bm8nTq2cvg4OU1KfTA/1d/VCxlORZ4hMQnWY16ImVrrjFPc5Bmm//ARJ7pJzmdxpW6WE/WZhJ6yjA
	eF8y+Pp+D89w3WTpZ+zcuQQ7f/KnSF8lsaxiOI/+iaxxBHiBNTogn866REXi8LKQOV4v/I37Ln1+F
	cieoI+Psee+gO6kpWYQqM4YZMONec/v7GlTvXJhnpYFtYAhcxciF8IGRAzYI2p86LwQn8M4Cjg67V
	6P2mYo5ib2tDHmTuR9fpmHmIAW87KimqpL31+d8jyNUKJT796sqRWD0Hawx5xcivKPUHcpMwGvA9i
	VQ9KKu5C/BDDindwG3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8ly-0002cr-Dy; Thu, 16 Jan 2020 17:17:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Y2-0002vl-Bi
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:03:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B26D24685;
 Thu, 16 Jan 2020 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194189;
 bh=q1gIVPVMHO9I/akf7uP5X2iGRY12EkSsbiYExikhfrM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bw+0VcF+WE8y3A279qZXG6gaOB/E4ov69Fyz68jcMaF5Tlf3cukfeK+drFmQTkgUE
 VFDAw+xqjh94uWkSMEAssV0qjZHHy6/Zbxvl8tB9bPrSROIyhH4cmwTTzyUnvwVGZO
 Nkxaq00pWPkYhHFW/vODnGiqhuNY/rLfZ8sPs7NU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 261/671] ARM: OMAP2+: Fix potentially
 uninitialized return value for _setup_reset()
Date: Thu, 16 Jan 2020 11:52:50 -0500
Message-Id: <20200116165940.10720-144-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090310_469829_F386B542 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: Sasha Levin <sashal@kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 7f0d078667a494466991aa7133f49594f32ff6a2 ]

Commit 747834ab8347 ("ARM: OMAP2+: hwmod: revise hardreset behavior") made
the call to _enable() conditional based on no oh->rst_lines_cnt. This
caused the return value to be potentially uninitialized. Curiously we see
no compiler warnings for this, probably as this gets inlined.

We call _setup_reset() from _setup() and only _setup_postsetup() if the
return value is zero. Currently the return value can be uninitialized for
cases where oh->rst_lines_cnt is set and HWMOD_INIT_NO_RESET is not set.

Fixes: 747834ab8347 ("ARM: OMAP2+: hwmod: revise hardreset behavior")
Cc: Paul Walmsley <paul@pwsan.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap2/omap_hwmod.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod.c b/arch/arm/mach-omap2/omap_hwmod.c
index ec3789ba17b8..a8269f0a87ce 100644
--- a/arch/arm/mach-omap2/omap_hwmod.c
+++ b/arch/arm/mach-omap2/omap_hwmod.c
@@ -2430,7 +2430,7 @@ static void _setup_iclk_autoidle(struct omap_hwmod *oh)
  */
 static int _setup_reset(struct omap_hwmod *oh)
 {
-	int r;
+	int r = 0;
 
 	if (oh->_state != _HWMOD_STATE_INITIALIZED)
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
