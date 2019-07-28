Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B952578286
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vUmtRIDUubaZYSMG6ZyZ2VP3BBu2RZmzxv6377bpSC4=; b=eL5pM6ii1XaPL1
	iuUL0PLpoK+elal7luJ2mXJBbsENTiSLE5R+VMnNMnvh+o3d0zh4pZ/ahFMcuVOD0TTLDA2SEjj2s
	tq5hvO7mfsOFzXWtVqN2rcvI004qW3hjnJmjL+Fy0YHKUDl2P1vs2NisZ+/2U+J693av9hIT5KZbi
	NcH6YcWbP56r7d5RiFcvUEIjt63akJepHN12PAnPPEyCgDJBx2/PdvvEfvTJVk9dsi/3RQNVqA+Q/
	Jkmm1KcGgSXuVeq1dWlk4t3lRdlzH7ZqCFgbuBiRvkqLJWfoOj0mC3ZGjX6T5Cfsloz7DtMrNodGd
	WRmuGoeyVxevq8nbVyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrt1h-0007QM-3U; Sun, 28 Jul 2019 23:56:29 +0000
Received: from gateway31.websitewelcome.com ([192.185.143.39])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrt1V-0007Pu-Dr
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:56:19 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 825D410FC9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:56:16 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rt1Uhik0o90onrt1UhaU2s; Sun, 28 Jul 2019 18:56:16 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3KsSCEb6Km1Yj7+6lKrHE7C6XEmon8NCW2WRRXKbJ8g=; b=kZrN88PeaAUc4SGFOYQXL6P6Ny
 ae0HgZKOUZX+DcwN3xo4Y4bpXXq6vtCubC2vF1mqUAo1znCJ2OySjyMA8ATzARfR5FTCuWF5oeuBK
 YHI4rykUPdL6BFjMw7rz2ULzZ+DOHlw6dtl3v9UwkuTnBmFLx49G5ShXKwlaNXuTfS4kqk0B5dems
 OD1/X5oyzTyG5SzlXqTQYS3hYY5mTq7lKSQ/UhjmKnujjrjReG219Lob+kuBlVWHA5px3uSHxIQnV
 rrzUM3+BPfBekRXREnVCYzdwlCpSIJLFHrP0AgVLHqp2Nx2t0BWKKLhF3999NaTBaeBZuNn6NLxe/
 /TuPmrjw==;
Received: from [187.192.11.120] (port=39596 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrt1T-003lh5-Dr; Sun, 28 Jul 2019 18:56:15 -0500
Date: Sun, 28 Jul 2019 18:56:14 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH] mfd: db8500-prcmu: Mark expected switch fall-throughs
Message-ID: <20190728235614.GA23618@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrt1T-003lh5-Dr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39596
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 51
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_165617_514150_E0778C8F 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.143.39 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings:

drivers/mfd/db8500-prcmu.c: In function 'dsiclk_rate':
drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
   div *= 2;
   ~~~~^~~~
drivers/mfd/db8500-prcmu.c:1593:2: note: here
  case PRCM_DSI_PLLOUT_SEL_PHI_2:
  ^~~~
drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
   div *= 2;
   ~~~~^~~~
drivers/mfd/db8500-prcmu.c:1595:2: note: here
  case PRCM_DSI_PLLOUT_SEL_PHI:
  ^~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/mfd/db8500-prcmu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/db8500-prcmu.c b/drivers/mfd/db8500-prcmu.c
index 3f21e26b8d36..90e0f21bc49c 100644
--- a/drivers/mfd/db8500-prcmu.c
+++ b/drivers/mfd/db8500-prcmu.c
@@ -1590,8 +1590,10 @@ static unsigned long dsiclk_rate(u8 n)
 	switch (divsel) {
 	case PRCM_DSI_PLLOUT_SEL_PHI_4:
 		div *= 2;
+		/* Fall through */
 	case PRCM_DSI_PLLOUT_SEL_PHI_2:
 		div *= 2;
+		/* Fall through */
 	case PRCM_DSI_PLLOUT_SEL_PHI:
 		return pll_rate(PRCM_PLLDSI_FREQ, clock_rate(PRCMU_HDMICLK),
 			PLL_RAW) / div;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
