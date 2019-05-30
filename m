Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31662FEEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+I8QAoAAMZhahsjqfxFCNSNAD0PlfLjinBRwg1z5Rhg=; b=hTRE1pEn8AVlUo
	N48JIHPbfxKcVDIPcjXI6W1lb1XxX+rxB/7yabm+Ql4JjthkkEGqa2KvqHnlaBxvIo/K4jSsbE30H
	c0h7HqWMUQbHQkZFuQnP9IrOpb6f87y+R1EhhyC4x1uhtkwmoPAOcUl4ImIpSeMo/ENzJNsLFCWy7
	4zGFtv5AmLEHwalgZH5TghG17aCKgAheelRFAqH/BJmnojzeao5c0PGI9YqRyQtMFzroA9thunJpO
	s6oEeJNxTqMYNcsVK+0pc6GT967eTjEc0o6ss/J9Wi8+qmwzBPo7m/IpXrNzqmtpj3Lrx6KvQ+qFQ
	nab1dO17yarL4cmk37pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMe1-0007XN-Na; Thu, 30 May 2019 15:07:05 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMdv-0007Vk-5C
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:07:00 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2BE6D373B5D541E28654;
 Thu, 30 May 2019 23:06:40 +0800 (CST)
Received: from huawei.com (10.67.189.240) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 30 May 2019
 23:06:31 +0800
From: l00383200 <liucheng32@huawei.com>
To: <rmk+kernel@arm.linux.org.uk>, <tglx@linutronix.de>
Subject: [PATCH] Stacktrace in ARM32 architecture has jumped the first 2
 layers, which may ignore the display of save_stack_trace_tsk.
Date: Thu, 30 May 2019 23:06:39 +0800
Message-ID: <1559228799-84473-1-git-send-email-liucheng32@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [10.67.189.240]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_080659_418243_3AF67C45 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: peterz@infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 liucheng32@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without optimization, both save_stack_trace_tsk and __save_stack_trace
will have stacktrace information in ARM32.

In this situation, "data.skip += 2" operation will skip the first two layers,
which may make the stacktrace strange and different from other architectures.

A simple example is as follows:
In ARM32 architecture:
[<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
[<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
[<ffffff800838aca8>] seq_read+0x130/0x420
[<ffffff8008365c54>] __vfs_read+0x60/0x11c
[<ffffff80083665dc>] vfs_read+0x8c/0x140
[<ffffff800836717c>] SyS_read+0x6c/0xcc
[<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
[<ffffffffffffffff>] 0xffffffffffffffff

In some other architectures(ARM64):
[<ffffff8008209be0>] save_stack_trace_tsk+0x0/0xf0
[<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
[<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
[<ffffff800838aca8>] seq_read+0x130/0x420
[<ffffff8008365c54>] __vfs_read+0x60/0x11c
[<ffffff80083665dc>] vfs_read+0x8c/0x140
[<ffffff800836717c>] SyS_read+0x6c/0xcc
[<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
[<ffffffffffffffff>] 0xffffffffffffffff

Therefore, we'd better just jump only one layer to ensure accuracy and consistency.

Signed-off-by: liucheng <liucheng32@huawei.com>
---
 arch/arm/kernel/stacktrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
index 71778bb..bb3da38 100644
--- a/arch/arm/kernel/stacktrace.c
+++ b/arch/arm/kernel/stacktrace.c
@@ -125,7 +125,7 @@ static noinline void __save_stack_trace(struct task_struct *tsk,
 #endif
 	} else {
 		/* We don't want this function nor the caller */
-		data.skip += 2;
+		data.skip += 1;
 		frame.fp = (unsigned long)__builtin_frame_address(0);
 		frame.sp = current_stack_pointer;
 		frame.lr = (unsigned long)__builtin_return_address(0);
-- 
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
