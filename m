Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C971E51E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 01:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OamLItHtvwvrjmMTu6THMFKbnKCLdpo3mnjD+g6lin4=; b=eUnOgRzzvrZSLw
	nejiV7EL3JaQ2cBNmjFjzcuvnokaKdhOjLjHrbj85o6uHbxyiMUhcJGaoR2x6wGtzCa13wbn5mfER
	fyuYLF9UVxsNWtgMcwjexRqG2EbOBH4ZTSTJHRsV25u7bpa9SBQS6n3BprgWwziXEVapSXv+zwTI4
	oN9hvdgwNrThUnWRWY2tNGzeiQfVBAfVO18R6rYljdOy4IC0NLsa2qVweRadVj3IEjXuIZerrdDMN
	arwzT/vnLXji6m3M+ehKYvbwO/iFYJB6hG2OaqajTOqv8QbHN7MOoOMnEUP4UjGdAqQM/Vz8/S8kg
	wmXwTjLOHPKyMDQyMoZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je5b2-0002yr-6U; Wed, 27 May 2020 23:36:28 +0000
Received: from mo-csw1114.securemx.jp ([210.130.202.156]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je5ap-0002yK-F5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 23:36:17 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1114) id 04RNa23Y004789;
 Thu, 28 May 2020 08:36:02 +0900
X-Iguazu-Qid: 2wHHWzHtPbwxA8abdU
X-Iguazu-QSIG: v=2; s=0; t=1590622562; q=2wHHWzHtPbwxA8abdU;
 m=RkCfRahcVamrSReVzuwFz2DML2BxjiUWYaCiCW4VJcQ=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1113) id 04RNa1Tp030487;
 Thu, 28 May 2020 08:36:01 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 04RNa188001791;
 Thu, 28 May 2020 08:36:01 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 04RNa0U6024459;
 Thu, 28 May 2020 08:36:00 +0900
From: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH/RFC] arm64/kernel: Fix return value when cpu_online() fails in
 __cpu_up()
Date: Thu, 28 May 2020 08:34:57 +0900
X-TSB-HOP: ON
Message-Id: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_163615_779585_0E5D2F6D 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.156 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [210.130.202.156 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 "Signed-off-by : Gavin Shan" <gshan@redhat.com>,
 Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If boot_secondary() was successful, and cpu_online() was an error in
__cpu_up(), -EIO was returned, but 0 is returned by commit d22b115cbfbb7
("arm64/kernel: Simplify __cpu_up() by bailing out early").
Therefore, bringup_wait_for_ap() causes the primary core to wait for a
long time, which may cause boot failure.
This commit sets -EIO to return code under the same conditions.

Fixes: d22b115cbfbb7 ("arm64/kernel: Simplify __cpu_up() by bailing out early")
CC: Signed-off-by: Gavin Shan <gshan@redhat.com>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>
Tested-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/kernel/smp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60fe452f7..ea677680e4277 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -137,6 +137,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	if (cpu_online(cpu))
 		return 0;
 
+	ret = -EIO;
 	pr_crit("CPU%u: failed to come online\n", cpu);
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
