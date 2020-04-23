Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1DB1B54B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 08:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KUAw5laeuM59qNPMmCfdFLd94z1zLof6kArP1Z4Viqo=; b=tQQxbtuQ0o0UHP
	Jzr2z7K1VK/5wQZ7GVX+d6F5zCj643WpYEaQ8VHtxNZXiRQNkXWZHWz9i0Mp2CIfrjNUxzWYFCmcm
	i6v1PJ1gW9AE14YeFWhk3nNOKOoe+gbc+l6BojXhqsj5SREN7BbmitJTbH/hshKuBojem4Pzj4BkB
	d7ea04aU4QKdLy6o71+YlEGR63oz1XHURiQLkiiPSW6utYt16OofACGBL74S2WCkrOF31lOtsyPgV
	CC0Y9rkwWBdCupGem68zM1/+eqJTlDgYyrJ2m1s7RYexZ+0VddYlAyQ3ghEcDSMiCiwdDMo4T8ALJ
	7Ua3nlN2omsWpigw5zWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVL7-0004NF-EV; Thu, 23 Apr 2020 06:28:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVKj-0004EQ-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 06:27:39 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5B036B99F9C1D7B64F38;
 Thu, 23 Apr 2020 14:27:18 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Thu, 23 Apr 2020 14:27:11 +0800
From: Zou Wei <zou_wei@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>
Subject: [PATCH -next] arm64: smp: Make cpus_stuck_in_kernel static
Date: Thu, 23 Apr 2020 14:33:26 +0800
Message-ID: <1587623606-96698-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_232737_798233_48AB160C 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Zou Wei <zou_wei@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

arch/arm64/kernel/smp.c:68:5: warning: symbol 'cpus_stuck_in_kernel'
was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zou Wei <zou_wei@huawei.com>
---
 arch/arm64/kernel/smp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60f..1d06af4 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -65,7 +65,7 @@ EXPORT_PER_CPU_SYMBOL(cpu_number);
  */
 struct secondary_data secondary_data;
 /* Number of CPUs which aren't online, but looping in kernel text. */
-int cpus_stuck_in_kernel;
+static int cpus_stuck_in_kernel;
 
 enum ipi_msg_type {
 	IPI_RESCHEDULE,
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
