Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0991DA448
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sNYipkxtSn9PDYraj6COXoR+6uanfTbXYN0t+wDcag8=; b=sJVpt7uvsKV2sa
	80Y9ISJvDIWG+7d+0M+KSFr5cwubWEDLHeRUIt6YiIXa2KkMEt4iKyheEgTp0XkebScuNeARjshhP
	Sc5lupS6wq6PivDL4m76C5SwNccn7US7wfgZFJOD0blykHcyj3YRjFnQB+jyoQZ9kC/p0m2BAe0+h
	OP6i2aPIL4Ii4rzkBj9SiyMjuF+PR4uuJxXpoFcVSceDYWm7wNHNYIla2/23iayY2V0kxTdgRD8hm
	06RvH+qwTtHJi1wgv02Yx3kliZ4zylWQBSCWZPQFtrRw4sZ/It1f4zMOQHbZLgp1z2SXHkYsEIAev
	n9wbJFgPUNukMknBV7pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAQg-0005e5-Sj; Tue, 19 May 2020 22:09:42 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAQY-0005dE-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:09:36 +0000
Received: by mail-ej1-x634.google.com with SMTP id d7so818597eja.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 15:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=wbXocx2IVcd/8hG9Fw76EUVKCyEFsGvoPgyI2u8Yy7s=;
 b=UuoVs2/xVkQsqh8oRKq34Pi7IJzz+LxoGejoY/A86MXa6IeiwmeyUzjMuiXugpkXeM
 uqgKJCo1MiY6ZK2ei1nM2/349ru0e63XRYH5zD3LuwdgOnc8mMiNwy4xCYAROdsyW8gD
 032b+dSPWY9eIbClbaCYY6+2LXUKJmK0+0vcT66LdaQ/Z739mfN4IlsVFL7JjrQ3NxH9
 inmwLO1xpczAlXrEOyLybgtsbYttc/EJuT2eClMezcfLIvIzB06L1W/q/HPhCJbJtNB3
 w7nDDdiXbHS11rmiRGFzCGOrcfC655w8l7e5zCTE6XVnQuPm9yxdHFj+cX0Iah2VS/ck
 2+IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=wbXocx2IVcd/8hG9Fw76EUVKCyEFsGvoPgyI2u8Yy7s=;
 b=dKVef1aP3LEBc0ugOaD/XlqMozESnvOSTBaDG+UvDInx7ZhWTVlgHtJPAep+GoRxOB
 LqPwwrJ2oV8XoaBC4NfloWkOSt52qzfuBlOlyOzpbTsOvKKbBZfJGa+nZn/XQgiyu3QU
 yuJ8oF2LWr8LZs7DZOMpVnHmcyp+rZOCNXDpt71NIPSaa3/CykasehO7z8JoMUXaje2v
 f8gMBuTO4GfjHstBIqCsmkRr91wBfIAcqpgDYVVcsagsSO9VWHZKGW4B3yXYFNfUiQfJ
 9Q9doqnkOQJpCHctsHTK7YxvS2NpIrH/3hF9tXDXXntSveselvLBCau2ydxxpw0XfHG1
 tt6g==
X-Gm-Message-State: AOAM530D02ZHdcDQfvL4fROpqtbiIqjSajFlI9v7qonryPSPFXDnb9FK
 NnYy9XLG+UF8rqk+IIouYX+HbaZ0/50TqTrO5oHo0Q==
X-Google-Smtp-Source: ABdhPJz8Afk0tO3ZoqGa4Ed2tdS7qerbDDkJXRn2mhV2+4mQheYHREs7S7MxTs1oJsVybE+vXqGgZgmrDb8ZCclPEFo=
X-Received: by 2002:a17:906:934d:: with SMTP id
 p13mr1192908ejw.452.1589926170654; 
 Tue, 19 May 2020 15:09:30 -0700 (PDT)
MIME-Version: 1.0
From: Qian Cai <cai@lca.pw>
Date: Tue, 19 May 2020 18:09:19 -0400
Message-ID: <CAG=TAF6hJL-wfGLq3oa-ZGk3-YGEtuMyO2V9ePFUcbv99NWVSw@mail.gmail.com>
Subject: BUG: sleeping function called from atomic due to "Balance initial LPI
 affinity across CPUs"
To: Marc Zyngier <maz@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_150934_999940_052861A1 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: lca.pw]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reverted the linux-next commit f068a62c548c ("irqchip/gic-v3-its:
Balance initial LPI affinity across CPUs") fixed these warnings during
boot,

its_select_cpu at drivers/irqchip/irq-gic-v3-its.c:1572

[  332.819381][ T3359] BUG: sleeping function called from invalid
context at mm/slab.h:568
[  332.827405][ T3359] in_atomic(): 1, irqs_disabled(): 128,
non_block: 0, pid: 3359, name: irqbalance
[  332.836455][ T3359] INFO: lockdep is turned off.
[  332.841076][ T3359] irq event stamp: 0
[  332.844836][ T3359] hardirqs last  enabled at (0): [<0000000000000000>] 0x0
[  332.851828][ T3359] hardirqs last disabled at (0):
[<ffff9000101ea65c>] copy_process+0x98c/0x1f34
[  332.860710][ T3359] softirqs last  enabled at (0):
[<ffff9000101ea690>] copy_process+0x9c0/0x1f34
[  332.869586][ T3359] softirqs last disabled at (0): [<0000000000000000>] 0x0
[  332.876560][ T3359] CPU: 155 PID: 3359 Comm: irqbalance Tainted: G
      W    L    5.7.0-rc6-next-20200519 #1
[  332.886563][ T3359] Hardware name: HPE Apollo 70
/C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
[  332.897000][ T3359] Call trace:
[  332.900151][ T3359]  dump_backtrace+0x0/0x22c
[  332.904514][ T3359]  show_stack+0x28/0x34
[  332.908543][ T3359]  dump_stack+0x104/0x194
[  332.912738][ T3359]  ___might_sleep+0x314/0x328
[  332.917274][ T3359]  __might_sleep+0x7c/0xe0
[  332.921563][ T3359]  slab_pre_alloc_hook+0x44/0x8c
[  332.926360][ T3359]  __kmalloc_node+0xb0/0x618
[  332.930811][ T3359]  alloc_cpumask_var_node+0x48/0x94
[  332.935868][ T3359]  alloc_cpumask_var+0x10/0x1c
[  332.940496][ T3359]  its_select_cpu+0x58/0x2e4
[  332.944945][ T3359]  its_set_affinity+0xe8/0x27c
[  332.949576][ T3359]  msi_domain_set_affinity+0x78/0x114
[  332.954813][ T3359]  irq_do_set_affinity+0x84/0x198
[  332.959697][ T3359]  irq_set_affinity_locked+0x80/0x1a8
[  332.964927][ T3359]  __irq_set_affinity+0x54/0x84
[  332.969637][ T3359]  write_irq_affinity+0x16c/0x198
[  332.974520][ T3359]  irq_affinity_proc_write+0x34/0x44
[  332.979672][ T3359]  pde_write+0x5c/0x78
[  332.983602][ T3359]  proc_reg_write+0x74/0xc0
[  332.987974][ T3359]  __vfs_write+0x84/0x1d8
[  332.992163][ T3359]  vfs_write+0x13c/0x1b8
[  332.996265][ T3359]  ksys_write+0xb0/0x120
[  333.000385][ T3359]  __arm64_sys_write+0x54/0x88
[  333.005017][ T3359]  do_el0_svc+0x128/0x1dc
[  333.009213][ T3359]  el0_sync_handler+0xd0/0x268
[  333.013836][ T3359]  el0_sync+0x164/0x180
[  336.527739][ T3356] mlx5_core 0000:0b:00.1 enp11s0f1np1: Link down

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
