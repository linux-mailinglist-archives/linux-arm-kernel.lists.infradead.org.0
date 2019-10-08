Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2EECFEDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUqBW7IqWGw8ULDK7cZmQt5gC+DpD+Mcnw8bYQC4zgI=; b=KRLnH1nWyhQQuy
	WfcTHbSnFBJRrhDyN7DhJhXmt2ZRREl3Bfs0XBQ0iU4at0AqHu9d1UurBYunWM09o+W3LREc8dRZ8
	h+ZOi/ScrP8KH/tgdvxN9qTZdUzLzU1x7yyCpyBqzy5ZDmqIX4zQQVRgi8UMXERJOr/t5GXXoikDY
	6uSSDzntJoB7TpurBlnG7E5FieIZXOtPXcZOVfRPEvan+RjXmwW0f/dH6j+OMceFi0zYiZF5kMYuA
	qwhaObdpkLFLN7t1m2n+NleRtbX+F0tD5o7PUCeR40T03JO82vCws/46f/+2Dc10Qrg/05AvRutUo
	wk3mG/j6XimSUvsQTR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsHZ-00061x-SI; Tue, 08 Oct 2019 16:24:17 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsHT-00061b-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:24:12 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHsHR-00089f-Eq; Tue, 08 Oct 2019 17:24:09 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHsHQ-0002oi-SB; Tue, 08 Oct 2019 17:24:08 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: mm: include <asm/set_memory.h>
Date: Tue,  8 Oct 2019 17:24:04 +0100
Message-Id: <20191008162404.10785-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_092411_583238_883E82E7 
X-CRM114-Status: UNSURE (   9.46  )
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
Cc: linux-kernel@lists.codethink.co.uk, Ben Dooks <ben.dooks@codethink.co.uk>,
 linux@arm.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The definitions of set_kernel_text_rw() and
set_kernel_text_ro() are in <asm/set_memory.h>
but this is not included in init.c which defines
these. Silence the following warnings by including
the <asm/set_memory.h> header.

arch/arm/mm/init.c:669:6: warning: symbol 'set_kernel_text_rw' was not declared. Should it be static?
arch/arm/mm/init.c:678:6: warning: symbol 'set_kernel_text_ro' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
KernelVersion: 5.4-rc2
---
 arch/arm/mm/init.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index d5cc76859e2b..3efab4e2b297 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -30,6 +30,7 @@
 #include <asm/prom.h>
 #include <asm/sections.h>
 #include <asm/setup.h>
+#include <asm/set_memory.h>
 #include <asm/system_info.h>
 #include <asm/tlb.h>
 #include <asm/fixmap.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
