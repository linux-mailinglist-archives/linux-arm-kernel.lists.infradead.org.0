Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE05915DC05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uX8oYaHxvYi+Wv8fOoEhFzOH/koTVyLEmsIVHm4iKgg=; b=q05pvuP83g906Y
	3jK6SH3ynK9XaXr94O/ZQXABpLEYSfJNZsi91yrQeXiie03RV7rqwoOrRt5hPIVvCrduXq7AIV/a2
	KVWYTuQkisDOs6465gPPJl4WecKMCscb3x1FdEB9p+PhWRs+Z2Hlgdonnfpa1ZPp1bwaGcEqElZwO
	UrHzVdeLo2pIR7Gd3JCMDhJRnL3vDddbsjFEODjrepM2isSzWJvk9rqyVF4f9WgWer+uHSNrA/ciz
	a/oD73YSCEtGikLNcc2XvJHUv2BSSnUewQQmBVE0pObmUgf4u7PE+ncT8yMk/gXDHwplGFiYV7FV2
	a4r3YZyIUyFPzMZx+PDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dG8-0004zY-6b; Fri, 14 Feb 2020 15:52:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dE4-00020B-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:49:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0439A24689;
 Fri, 14 Feb 2020 15:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695395;
 bh=3mMW9xAzJDDMfYwE+KOeTghpU9ATN3hhSY+NwNKGAbo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iFZJv+4S4g9NMrFYeJmTv3icxSS98Pvk4aEYIh6qeUXwaEh4OtApMGRjY/7x8d9AH
 wkJjy6SfiCQqjYMLmIwap4VxydDbDEUQaMQcuIdFZqC7J6UO25XeaRmcQVkqIl9Gly
 ueYioJzT/WrZwZJb+D+p4sBiJupT9pyzYMEv5cAY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 047/542] clk: at91: sam9x60: fix programmable
 clock prescaler
Date: Fri, 14 Feb 2020 10:40:39 -0500
Message-Id: <20200214154854.6746-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_074957_217120_6DFFB953 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Eugen Hristev <eugen.hristev@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

[ Upstream commit 66d9f5214c9ba1c151478f99520b6817302d50dc ]

The prescaler works as parent rate divided by (PRES + 1) (is_pres_direct == 1)
It does not work in the way of parent rate shifted to the right by (PRES + 1),
which means division by 2^(PRES + 1) (is_pres_direct == 0)
Thus is_pres_direct must be enabled for this SoC, to make the right computation.
This field was added in
commit 45b06682113b ("clk: at91: fix programmable clock for sama5d2")
SAM9X60 has the same field as SAMA5D2 in the PCK

Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Link: https://lkml.kernel.org/r/1575977088-16781-1-git-send-email-eugen.hristev@microchip.com
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/at91/sam9x60.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 86238d5ecb4da..77398aefeb6db 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -47,6 +47,7 @@ static const struct clk_programmable_layout sam9x60_programmable_layout = {
 	.pres_shift = 8,
 	.css_mask = 0x1f,
 	.have_slck_mck = 0,
+	.is_pres_direct = 1,
 };
 
 static const struct clk_pcr_layout sam9x60_pcr_layout = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
