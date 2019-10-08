Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3216CF9EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7ipZBGXN4RYF+PS5/jXXcT3svaiY7HLcxPC6XvY8dk=; b=XyD9k16Y670wj4
	i+2G4KDE7h+4l1mhJ3HHt1nSvFudq1m2eFU+ovIQKt8ogvJVGVyZC/mAt9yOVrnGKcQJbwAldAi6M
	chkI5fyrvx/mbpXNqMR6Ibr45elqK7Ame6SrIWWIja4gt0+SE8oAv7KsjirR+mAdYYQcWdViNpv2B
	U6zb7q7L8JrJ4TOJTnbPWL9vT/V1pOUNQ5UFEF0U1KrMGNneK7IS7FgX1HLeww3pIXdFusEcKplbe
	RS528AiVg5l7bJnzlKZkmyfsmEvXMALbzm55Tg2s5RU+n0rSLTaxnOPsQ5NEvXbTWtTtZGkmDqUZR
	8kXh6MgVjEGNqSgAXIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoib-0001I6-BH; Tue, 08 Oct 2019 12:35:57 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohc-0007r4-2F
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:34:57 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013K-8h; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHohZ-0000RS-RN; Tue, 08 Oct 2019 13:34:53 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/11] ARM: highbank: include local core.h for highbank_pm_init
Date: Tue,  8 Oct 2019 13:34:45 +0100
Message-Id: <20191008123453.1651-3-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053456_271096_8D5A34BE 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: linux-kernel@lists.codethink.co.uk, Rob Herring <robh@kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix missing declaration of highbank_pm_init by including core.h.

arch/arm/mach-highbank/pm.c:43:13: warning: symbol 'highbank_pm_init' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-highbank/pm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-highbank/pm.c b/arch/arm/mach-highbank/pm.c
index 561941baeda9..3fdbdb83113b 100644
--- a/arch/arm/mach-highbank/pm.c
+++ b/arch/arm/mach-highbank/pm.c
@@ -12,6 +12,8 @@
 
 #include <uapi/linux/psci.h>
 
+#include "core.h"
+
 #define HIGHBANK_SUSPEND_PARAM \
 	((0 << PSCI_0_2_POWER_STATE_ID_SHIFT) | \
 	 (1 << PSCI_0_2_POWER_STATE_AFFL_SHIFT) | \
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
