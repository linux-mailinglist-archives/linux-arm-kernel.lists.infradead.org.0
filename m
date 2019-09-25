Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C62CBDFE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwXeBFJ4hc6MmZQqRZKXM5492ZP3GTWZAGTVVi21gc0=; b=lUqZDMDlLFjzOT
	Znsb6nOWlJ8DOY+88kCrY9AIDTvQVYWOPRPiVFCrsSw154kRkVIV0uyBwuxcqWceE0SRqfvyBGoGv
	U68k47Db4OcaSla7GvA0Qt99ouJmTBXOPp+cKGWUpgDhrlA75AjhGNcOrSggTn3+ERQL1+TVs/Skv
	qpvfnbZjqNPTxQQ/5QvU89MHHwI5gu0sutMhXm6lcNW1l9rZ/R/DKjrouOJQaFx/l2Mqmd9vJNjSD
	pa0eW5EhX6uBv5eECJMutR6AaxechAFGxoS9WYIGYGHQvaZ5N6UYP8oZpXqoNBqwElAJQuKLoTMru
	ft/D8DdTh7d5XQqK2kNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD87f-0001yR-Ka; Wed, 25 Sep 2019 14:18:27 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD85V-0001Re-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:16:17 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iD85R-0000Dd-JA; Wed, 25 Sep 2019 15:16:09 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iD85Q-00065l-TW; Wed, 25 Sep 2019 15:16:08 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm: arch_timer: include <asm/arch_timer.h>
Date: Wed, 25 Sep 2019 15:16:04 +0100
Message-Id: <20190925141604.23364-4-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925141604.23364-1-ben.dooks@codethink.co.uk>
References: <20190925141604.23364-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_071614_951027_BAD6E6EC 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arch_timer_arch_init is defined in <asm/arch_timer.h> so include
that to fix the following sparse error:

arch/arm/kernel/arch_timer.c:31:12: warning: symbol 'arch_timer_arch_init' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
 arch/arm/kernel/arch_timer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/arch_timer.c b/arch/arm/kernel/arch_timer.c
index c125582de2e7..b5e217907686 100644
--- a/arch/arm/kernel/arch_timer.c
+++ b/arch/arm/kernel/arch_timer.c
@@ -10,6 +10,7 @@
 #include <linux/errno.h>
 
 #include <asm/delay.h>
+#include <asm/arch_timer.h>
 
 #include <clocksource/arm_arch_timer.h>
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
