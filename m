Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66124CF9F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dFAkGnYJPU6azDPn4kdsmkADBy7tmF8tmiim/i8EY+U=; b=qK/mkBn4ocaY1F
	+SKsy6fapwQ2Xwe2kpdK4I7RLfyPmI8AZhX3wND3lrcQPMpNDfWsnEP5W5+o0i2G8MDAYNtdyCkMP
	fHpW0EL/pm4KWZeBL32DgPVDHhsKkxs8fuNAqlb2rQZhFRleBMmo5nXdMCPBd2iFq0D63iAPEQCta
	7ZGerCmoJHI9GfE/SRRIsHjegWIMwwrcUAxx+F4sVSUB5EEUUkYVzc1ELxY1RjEhdC/ppW3NyTFrA
	7i5HnIayC9TlLo6Ea+l6Z2d6GsAvE53BBuJE3U0uAlRirR/RsZudgTi9xNat5Kx2t1WeC7Gy5pQjN
	zesl1hIKKIM0ZZW0G7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoj8-0001oa-2r; Tue, 08 Oct 2019 12:36:30 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohc-0007rP-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:35:00 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013M-L0; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHohZ-0000RO-PS; Tue, 08 Oct 2019 13:34:53 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/11] ARM: bcm2836: include local platsmp.h for
 bcm2836_smp_ops
Date: Tue,  8 Oct 2019 13:34:43 +0100
Message-Id: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053456_647982_6826E83B 
X-CRM114-Status: GOOD (  10.54  )
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
Cc: linux-kernel@lists.codethink.co.uk, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Include platsmp.h for the definition of bcm2836_smp_ops to fix
the following warning:

arch/arm/mach-bcm/platsmp.c:334:29: warning: symbol 'bcm2836_smp_ops' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
---
 arch/arm/mach-bcm/platsmp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-bcm/platsmp.c b/arch/arm/mach-bcm/platsmp.c
index 47f8053d0240..21400b3fa5fe 100644
--- a/arch/arm/mach-bcm/platsmp.c
+++ b/arch/arm/mach-bcm/platsmp.c
@@ -22,6 +22,8 @@
 #include <asm/smp_plat.h>
 #include <asm/smp_scu.h>
 
+#include "platsmp.h"
+
 /* Size of mapped Cortex A9 SCU address space */
 #define CORTEX_A9_SCU_SIZE	0x58
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
