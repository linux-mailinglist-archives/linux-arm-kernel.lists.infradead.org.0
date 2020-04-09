Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA1D1A31EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zg45wVMGDdNBKTzLlO/prEJYBP6Vo+hi+Uy5kJpGFD4=; b=pJH
	Qp3Ni/4VvbOSVo7HP8SisSTN5TBVXZBUU2LnIxQf2LK//rutsTaz6xLXq0zlrUdjRwnmLwB3Q2lo9
	Fu4+itCDFyTTntCgR3PvVT1PiPO2ExlQcZ9tgPO+gZ3ARWDmzpR6Y037T7s9UV1L/54abg3Oeyg/4
	zaiVvlOmOBtZzhOAEcDa4v9sXRuMJwmQA1LO2bnasmPxKZCG5nM/eVYivB4qlr7RPHGgHAr1tzF5b
	xuiGu9sUdaAkyb30NK0UbKnsPfannSEQ8F1xoPYAHaPprBvKQYbiMFvnBvI/jO2TCEAGLyKOx+8Om
	B8HuQ44zdor5LpxGh1NoZ04zshmgbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTe9-00075u-9G; Thu, 09 Apr 2020 09:38:53 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTe0-00074w-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:38:46 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id D770B26289F;
 Thu,  9 Apr 2020 17:38:36 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, Wang Qing <wangqing@vivo.com>,
 jinho lim <jordan.lim@samsung.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM64: fixed dump_backtrace() when task running on another cpu
Date: Thu,  9 Apr 2020 17:38:16 +0800
Message-Id: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VJS05CQkJDTkpJSU1DSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTI6ASo4MTg#GhYIPh5JThoQ
 CBIaCVFVSlVKTkNNT0lOSkpMSkxJVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUlITk03Bg++
X-HM-Tid: 0a715e4e399d9375kuwsd770b26289f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023844_914181_7431CBA3 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [59.111.176.17 listed in wl.mailspike.net]
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

We cannot get FP and PC when the task is running on another CPU,
task->thread.cpu_context is the last time the task was switched out,
it's better to give a reminder than to provide wrong information.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 arch/arm64/kernel/traps.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be..c04e3e8 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -106,6 +106,14 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		start_backtrace(&frame,
 				(unsigned long)__builtin_frame_address(0),
 				(unsigned long)dump_backtrace);
+	} else if (tsk->on_cpu) {
+		/*
+		 * The task is running in another cpu, so the call stack
+		 * is changing and we cannot get it.
+		 */
+		pr_warn("tsk: %s is running in CPU%d, Don't call trace!\n",
+			tsk->comm, tsk->cpu);
+		return;
 	} else {
 		/*
 		 * task blocked in __switch_to
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
