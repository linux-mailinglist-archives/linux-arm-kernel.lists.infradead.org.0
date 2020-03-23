Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852A618F654
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b2gucjE83WzafMLGBjiTEI8PeiiLEBS3jTWqnLhpF64=; b=NvoJdwgW0WgkEPSO/vjlWCRGjN
	mV14+UNiNCysbYAcUwEXH0jC+aGMs//K0SWjoqAg+1ZwrVE4KtoGzAmP+xGsBHY5FSkQmKRlwIeW4
	7eceUyD1NXNRzAUwRloZ+/MOQiR6oLAU01Pk9HSgW275XQtdRo4x4yQjj6plf2hyHI0t1m4M17UAi
	Zy9lLUFRiD3NIHUUENQMWvE2uMwZoOR2/7EuYtV2fXwFP+XgqixjI3ubtd44/E2YMdJ1E1HsaXR69
	2Vwy+yagTKaBv3OysmuUtv8n+n06hyHmOmIMHXmU3QMESuefYxVt9xF/rTQBCnLTh/MU4XA7z1j/V
	Q+aUaY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNVT-00036b-IA; Mon, 23 Mar 2020 13:52:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNUK-0002Cw-K7
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B75F11B3;
 Mon, 23 Mar 2020 06:51:32 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 420073F52E;
 Mon, 23 Mar 2020 06:51:31 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 05/17] arm: Use reboot_cpu instead of hardcoding it to 0
Date: Mon, 23 Mar 2020 13:50:58 +0000
Message-Id: <20200323135110.30522-6-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323135110.30522-1-qais.yousef@arm.com>
References: <20200323135110.30522-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065132_726464_98F339C9 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Qais Yousef <qais.yousef@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu in
machine_shutdown().

Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Russell King <linux@armlinux.org.uk>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-kernel@vger.kernel.org
---
 arch/arm/kernel/reboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
index 58ad1a70f770..0ce388f15422 100644
--- a/arch/arm/kernel/reboot.c
+++ b/arch/arm/kernel/reboot.c
@@ -92,7 +92,7 @@ void soft_restart(unsigned long addr)
  */
 void machine_shutdown(void)
 {
-	smp_shutdown_nonboot_cpus(0);
+	smp_shutdown_nonboot_cpus(reboot_cpu);
 }
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
