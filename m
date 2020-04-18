Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C49B1AEC09
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 13:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YrHwJmVavkcgZIroVpcgYpZDLfLR5xim2V4zUBKu8q8=; b=UHp
	F9uD1iSakA6tS8i4/sRRaKkPzSy6sRYGsBmXSGLDU9c4owSdYxnUKTANc5JEwIfF/InJ6kTIqzQB0
	fQqpdR5aQA6fcUqXg9nygkaVzZ9ffkXWK0G/H+5516DPAvnaAnmFxB9Qm7KUntYvDDkpDcv25o/jO
	o4tulGefP2b71O8hhqXbfpu+VQvbg1NPjouvKeivTP75PdnWwD6d1QABwJ3CIExevWDCZyaM900Yg
	1prYqLeDax2p+4NfjrZiTTYRSt6DnHGMjkGpAt98MFaXl4I98rj7uBg6jS/OMufs489vzn3h3on73
	wfpXpxxoisWpeAogrDMQ/Gks6eLYJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPlR2-0008JA-VL; Sat, 18 Apr 2020 11:14:56 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPlQu-0008Fp-My
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 11:14:50 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id BC58A66463C;
 Sat, 18 Apr 2020 19:14:33 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>,
 Wang Qing <wangqing@vivo.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm: fixed backtrace when task running on another cpu
Date: Sat, 18 Apr 2020 19:14:18 +0800
Message-Id: <1587208459-5470-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVDT0NCQkJCTExKSkpDSVlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PC46Cww4FTgzFg0xKgIQCR42
 H04wChJVSlVKTkNMSUtDT0xPS0pLVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUlLTU03Bg++
X-HM-Tid: 0a718cff4d429373kuwsbc58a66463c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_041448_878326_E21764E3 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We cannot get FP when the task is currently running on another CPU,
in this case, current stack is printed instead of the task.
Also, thread_saved_fp() is the last time the task was switched out,
we should not use too.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 arch/arm/kernel/traps.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 1e70e72..24e860a 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -222,6 +222,9 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	} else if (tsk != current) {
 		fp = thread_saved_fp(tsk);
 		mode = 0x10;
+	} else if (task_curr(tsk))
+		pr_info("tsk is running on another CPU, not trace!\n");
+		fp = 0;
 	} else {
 		asm("mov %0, fp" : "=r" (fp) : : "cc");
 		mode = 0x10;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
