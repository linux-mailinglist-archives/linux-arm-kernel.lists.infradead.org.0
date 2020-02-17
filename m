Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69107161C6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 21:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gF3b/uqbFpzmymCvKSmyj5mRyHiURsvEYWf830lqoOQ=; b=D0yo+7V6zHr8Ii
	JOJDy+4xlcna/3bFjU+UPA+rNj/tWGAYa1X3fUkDe7xNZR4cqqa1Be1nMxHyxLYwYOCmkRmDUxz/y
	26/knopHXmlNOFfPtptk+kOY8zW1yeGW4qAJy85tcRs4HQzqopHEuECj/Sn5O5k1IpethiXiAN287
	vKTpjAFIptrObage8klrjD+su9DysoHQNzEiTG4w2O+Wz7/XrbuXFibaAcOukNp88BYqwWlLlzJv/
	UqDwVJ7eLJkvwyFzde7CHTV2SouSd9Gqhsbsq6/cG3ehbqoiy+Q4u0Vv4hUmhdJb/4bcQc4YmcrQY
	zGGq3koCnsm3ZuRYTMig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3nJT-0001RJ-DG; Mon, 17 Feb 2020 20:48:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3nJL-0001Qc-RW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 20:48:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so21344023wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 12:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=b1AIhMcP1KCe9+gTJebHWLZChVXuNqWcSJ6LImoJF60=;
 b=PECHai2jftiXH4Ct3muC6pR25gSon6pcfV7TAS2Z7pp9bCJwJT/5cG3PF3tSUZq8Zj
 sm+6dwwUV0NFw2JTCJGP/niNv7xahkKPgYvikoMcAcHQ1C7x1YVBmLUVai6gwhpnwnDb
 +3O1xpXlQ0Dhy6pS8f7LV3Se8QWuUo0HiMI/cEP8l39po6JTUPWZunOk4oMRyYjZ7H97
 /J7ZeDotVMP+1oyd3PX+rNTUwAVzB8JdiVO2Zo0k0KHG9WXLNGLkQlgh78EKZBMxbMA1
 JQdaQtQ8rnPa1C8EFST16v75A2sX2aMbhaey3W8b9U+SezGxsZNYlJcDGD1YENvkyJM2
 EVaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=b1AIhMcP1KCe9+gTJebHWLZChVXuNqWcSJ6LImoJF60=;
 b=iBOebwAT4+DIwvsaC/pepKrRv4YHyyojB/1wjIsXMSX6W09YfNshsPPQ2f0pa+N7n1
 cJXlUkt44EX/+wt+Pug2y1LDIU6A4DuqONPbsfxAveH8L7lY/giv0A+hTeA7x625ZgfQ
 KF8szFWThMhJ7hgq2d37Hcg5o22dk+Tmprlj8Enu+pfQec934Ya3HKKfnRKYS7uEy53n
 vHG7WPcsg+kF/2jAAZM9Ec9Zv5+f453IeF+mDDsTx0/48evJAofVaNkwP2iOuIoiRA7V
 ko+M8db7xu7wE7O2WEUc5IMWyCZmLqJdA/VJyZz+Axr/eey+jvy7vdG5i/WJ6FEfGFd4
 pNLw==
X-Gm-Message-State: APjAAAX7CPtmXa2sCs8hy+yccW5/hUZ1p/3Ph++iHWkOLza8FteAmz9s
 6eF/nbpaaQmkWDYD604wQ7Q=
X-Google-Smtp-Source: APXvYqxt/+Jle2DOUraVfOy8NH80vXlVV3sNuFL58eSY+iLJklK4wAvuTElg71TKCsmXIFms2YxNbA==
X-Received: by 2002:adf:f581:: with SMTP id f1mr24240727wro.264.1581972485597; 
 Mon, 17 Feb 2020 12:48:05 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id e1sm2698377wrt.84.2020.02.17.12.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 12:48:05 -0800 (PST)
Date: Mon, 17 Feb 2020 21:48:03 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: tj@kernel.org, jiangshanlai@gmail.com, will@kernel.org,
 mark.rutland@arm.com
Subject: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200217204803.GA13479@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_124811_890983_3858CE74 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

When running some CI test jobs (targeting crypto tests), I always get the following WARNING:
[    7.886361] ------------[ cut here ]------------
[    7.886388] WARNING: CPU: 2 PID: 147 at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
[    7.886394] Modules linked in: ghash_generic
[    7.886409] CPU: 2 PID: 147 Comm: modprobe Not tainted 5.6.0-rc1-next-20200214-00068-g166c9264f0b1-dirty #545
[    7.886414] Hardware name: Pine H64 model A (DT)
[    7.886422] pstate: a0000085 (NzCv daIf -PAN -UAO)
[    7.886429] pc : __queue_work+0x3b8/0x3d0
[    7.886436] lr : __queue_work+0x1dc/0x3d0
[    7.886440] sp : ffff800012073b50
[    7.886445] x29: ffff800012073b50 x28: ffff8000117bb590 
[    7.886452] x27: 0000000000000100 x26: ffff80001132d018 
[    7.886460] x25: ffff800011336d58 x24: ffff800011629920 
[    7.886467] x23: ffff80001132d018 x22: 000000000000000e 
[    7.886474] x21: 0000000000000002 x20: ffff0000b9c08000 
[    7.886481] x19: ffff0000bd9b8400 x18: 0000000000000000 
[    7.886488] x17: 0000000000000000 x16: 0000000000000000 
[    7.886495] x15: 0000af8c526b5c68 x14: 02be881212d8d480 
[    7.886503] x13: 0000000000000352 x12: 0000000000000001 
[    7.886510] x11: 0000000000000400 x10: 0000000000000040 
[    7.886517] x9 : ffff80001163f5e8 x8 : ffff80001163f5e0 
[    7.886524] x7 : ffff0000b9800028 x6 : 0000000000000000 
[    7.886531] x5 : ffff0000b9800000 x4 : 0000000000000000 
[    7.886538] x3 : ffff0000bd9b4800 x2 : 0000000000000001 
[    7.886545] x1 : 0000000000000000 x0 : ffff8000117bb598 
[    7.886552] Call trace:
[    7.886560]  __queue_work+0x3b8/0x3d0
[    7.886567]  queue_work_on+0x6c/0x90
[    7.886576]  do_init_module+0x188/0x1f0
[    7.886582]  load_module+0x1d00/0x22b0
[    7.886589]  __do_sys_finit_module+0xd0/0xe8
[    7.886595]  __arm64_sys_finit_module+0x1c/0x28
[    7.886605]  el0_svc_common.constprop.0+0x68/0x160
[    7.886613]  do_el0_svc+0x20/0x80
[    7.886621]  el0_sync_handler+0x10c/0x180
[    7.886627]  el0_sync+0x140/0x180
[    7.886638] ---[ end trace a44615ff285cb96c ]---
[    7.886643] WARN for events

For finding what was cause this, I have added the following debug:
@@ -1468,8 +1470,10 @@ static void __queue_work(int cpu, struct workqueue_struct *wq,
        /* pwq determined, queue */
        trace_workqueue_queue_work(req_cpu, pwq, work);
 
-       if (WARN_ON(!list_empty(&work->entry)))
+       if (WARN_ON(!list_empty(&work->entry))) {
+               pr_err("WARN for %s\n", wq->name);
                goto out;
+       }

So it seems that it is a "events" workqueue that hit this problem.

Note that classic defconfig do not hit this problem, since it appears with the following config change:
-CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
+# CONFIG_CRYPTO_MANAGER_DISABLE_TESTS is not set
+CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y

I dont see any relation between crypto and this problem, but this problem with this config change is reproductible.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
