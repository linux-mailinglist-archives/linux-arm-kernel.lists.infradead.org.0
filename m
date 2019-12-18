Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B321B125146
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stFdjW0SVEkNkAm89ig9gGhknzl0kOxdD2lddndlZkg=; b=kFvKy71RcSnfxO
	Wzsz/3YX5tAmX1zl+do5xQKQTVRW+wDPg8KtlljyXWUIML9dzAhmFibOl2nj4fpxYo/3mvIjz/22e
	tI2QQGGoVn6tFbWA1+FH+BDfomNs4uB6otzfAaU0bzeApop0aDme2jeNbTupAyIW0rbFKEZyut36Z
	mQFYX8FIhaOIEVJVVcbxCUM7A+V9W9wKkhNnOfXzUSOrMrCyS6oZUaxEKCp/1rZUoBySvQ0xqCHtM
	GRRQuuaq6wC+VAoFz2AWA/NwYAgtdNQzsgSt5B2b1NEF5biCIloBvduQ1J7yLdcDTWOiHB8BdCpcR
	KLIpX6QV64lhGNeKCkBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihedk-0006a1-G6; Wed, 18 Dec 2019 19:05:44 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihed5-0004vK-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:05:06 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A0285DD70C;
 Wed, 18 Dec 2019 19:05:02 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id qm_tt94XEMSD; Wed, 18 Dec 2019 19:05:01 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id B298CDFC5E;
 Wed, 18 Dec 2019 19:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id tXSgnu7WdbjR; Wed, 18 Dec 2019 19:05:01 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 372B4DFB12;
 Wed, 18 Dec 2019 19:05:01 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson  <olof@lixom.net>
Subject: [PATCH 1/2] ARM: mmp: do not divide the clock rate
Date: Wed, 18 Dec 2019 20:04:53 +0100
Message-Id: <20191218190454.420358-2-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191218190454.420358-1-lkundrak@v3.sk>
References: <20191218190454.420358-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_110504_031550_11C6F9C8 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, soc@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was done because the clock driver returned the wrong rate, which is
fixed in "clk: mmp2: Fix the order of timer mux parents" patch.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/time.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 110dcb3314d13..c65cfc1ad99b4 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -207,7 +207,7 @@ static int __init mmp_dt_init_timer(struct device_node *np)
 		ret = clk_prepare_enable(clk);
 		if (ret)
 			return ret;
-		rate = clk_get_rate(clk) / 2;
+		rate = clk_get_rate(clk);
 	} else if (cpu_is_pj4()) {
 		rate = 6500000;
 	} else {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
