Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAFBCFA01
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1VSvWY7OR7vNP8Z/FZvy2LmgQUciTOUs2ztSqkG0OQ=; b=qbnf644jJcuFTq
	Ohav1alaf8B+SWwRELdHvOoQ4Cqijb7WJpgSA4usWr+hLlS83g6Z5qTO3x9RIkKyOo9klnjepIEge
	HvbPP55T1BLAw+/Itg60K7k+2OrmNHRJi5GEiZTdQMUTSur+OwzQ4jHOek9/FbaWnjEoqI4uLT6YH
	D4j9uHqqXi9aU1aann6YuAyLwC2C/bF5LwJPydv8LRehsc2qC6ovEVjfCv5640J2R/Xj3C/dMwIWL
	b6JS+3PI+I6fZ7GAD6s3DRw098yHXzry7NplW6N4uSrtux9T4l7aOA71zhmKnQTrZ6tkOau0ZSupG
	LymQHZHmQXUQtMkpPDWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHokX-0003Dk-CH; Tue, 08 Oct 2019 12:37:57 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohe-0007vW-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:35:02 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHohd-00013K-1K; Tue, 08 Oct 2019 13:34:57 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHoha-0000Rr-3d; Tue, 08 Oct 2019 13:34:54 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/11] ARM: ux500: make ux500_cpu_die static
Date: Tue,  8 Oct 2019 13:34:53 +0100
Message-Id: <20191008123453.1651-11-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053458_835495_4F14319B 
X-CRM114-Status: GOOD (  11.54  )
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
Cc: linux-kernel@lists.codethink.co.uk,
 Linus Walleij <linus.walleij@linaro.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ux500_cpu_die function is not exported so make it static
to avoid the following warning:

arch/arm/mach-ux500/platsmp.c:89:6: warning: symbol 'ux500_cpu_die' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-ux500/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-ux500/platsmp.c b/arch/arm/mach-ux500/platsmp.c
index 0810f3abd810..415d8ad2a3c1 100644
--- a/arch/arm/mach-ux500/platsmp.c
+++ b/arch/arm/mach-ux500/platsmp.c
@@ -86,7 +86,7 @@ static int ux500_boot_secondary(unsigned int cpu, struct task_struct *idle)
 }
 
 #ifdef CONFIG_HOTPLUG_CPU
-void ux500_cpu_die(unsigned int cpu)
+static void ux500_cpu_die(unsigned int cpu)
 {
 	wfi();
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
