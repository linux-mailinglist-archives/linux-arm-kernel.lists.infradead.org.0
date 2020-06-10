Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7A91F4BEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 05:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kc+YPlwLY/0I8r9n3EQ/VCKS5kKh696BciH2TMElIVs=; b=HPdm9Wlwy1hT5z
	8+PxdRK6sE2YujRxAPOs1uUx93NA7F8hC864hEI5sUIBZky5YLWb3eVJe/IENrlQFb5glM9WRBjLE
	vWAHMlW5SPAJ5IreQ+qpwWQwQxDlWQfqwGIZAx0nmDbrj4HgfxO67XCPoeQ3/im9c70CmHid64YV5
	MXepblhEz9BYPrYK3A+HTOYTWBHePKgVM8+exL1uvq5URHgb62gJaaJoXxBf/JzCNxHnbqRsvl9yL
	O2QxEJB16epUMARaWPohRou/5kRyW75xA1PUnR7PlkDxVQltjixcQwNtI5vL/h6i3ic2LVkBy3h1n
	CI1L9kHswdzwo/6uorYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jirkl-0000wO-Ta; Wed, 10 Jun 2020 03:50:15 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jirkV-0000ho-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 03:50:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 1555120128E9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:49:54 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QD6ICaN_HGj for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:49:53 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id ECC0020128E8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:49:53 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.183])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id CCC0FC02745
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:49:53 +0800 (HKT)
To: linux-arm-kernel@lists.infradead.org
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: arm64: el1_error when copy rawdata to a partition
Message-ID: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
Date: Wed, 10 Jun 2020 11:49:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_204959_588712_7CF280E1 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

just hit a panic on my rk3399-orangepi while running

xz -d -c image.xz | dd of=/dev/mmcblk2p2 bs=1M

This can reproduce.

Any hints?
Regards
Chris

[  198.344203] 000: Kernel panic - not syncing: Asynchronous SError Interruptd+ 
 

[  198.351886] 000: CPU: 0 PID: 408 Comm: xz Not tainted 5.4.40-rt24 #35 
 

[  198.359080] 000: Hardware name: Orange Pi RK3399 Board (DT) 
 

[  198.365303] 000: Call trace: 
 

[  198.368504] 000:  dump_backtrace+0x0/0x140 
 

[  198.373078] 000:  show_stack+0x14/0x20 
 

[  198.377261] 000:  dump_stack+0xbc/0x100 
 

[  198.381542] 000:  panic+0x160/0x324 
 

[  198.385435] 000:  nmi_panic+0x60/0x90 
 

[  198.389521] 000:  arm64_serror_panic+0x74/0x80 
 

[  198.394481] 000:  do_serror+0x7c/0x130 
 

[  198.398664] 000:  el1_error+0x84/0xf8 
 

[  198.402751] 000:  __arch_copy_from_user+0x1f4/0x240 
 

[  198.408195] 000:  copy_page_from_iter+0xdc/0x2b0 
 

[  198.413351] 000:  pipe_write+0x204/0x448 
 

[  198.417731] 000:  new_sync_write+0x100/0x180 
 

[  198.422498] 000:  __vfs_write+0x2c/0x40 
 

[  198.426770] 000:  vfs_write+0xb0/0x1d0 
 

[  198.430954] 000:  ksys_write+0x64/0xe8 
 

[  198.435137] 000:  __arm64_sys_write+0x18/0x20 
 

[  198.440000] 000:  el0_svc_common.constprop.1+0x7c/0xe8 
 

[  198.445739] 000:  el0_svc_handler+0x20/0x80 
 

[  198.450408] 000:  el0_svc+0x8/0xc 
 

[  198.454107] 000: SMP: stopping secondary CPUs 
 

[  198.459064] 000: Kernel Offset: disabled 
 

[  198.463439] 000: CPU features: 0x0002,2000600c 
 

[  198.468399] 000: Memory Limit: none 
 

[  198.472293] 000: ---[ end Kernel panic - not syncing: Asynchronous SError 
Interrupt ]--- 

[  198.481330] 000: SError Interrupt on CPU0, code 0xbf000000 -- SError 
 

[  198.488426] 000: CPU: 0 PID: 408 Comm: xz Not tainted 5.4.40-rt24 #35 
 

[  198.495620] 000: Hardware name: Orange Pi RK3399 Board (DT) 
 

[  198.501841] 000: pstate: 60000085 (nZCv daIf -PAN -UAO) 
 

[  198.507674] 000: pc : el1_irq+0x78/0x180
[  198.512050] 000: lr : panic+0x2c0/0x324
[  198.516322] 000: sp : ffff80001129b8a0
[  198.520503] 000: x29: ffff80001129b9d0
[  198.524782] 000: x28: ffff0000750a9c00
[  198.529060] 000:
[  198.531201] 000: x27: 0000000000000001
[  198.535480] 000: x26: 0000000000000001
[  198.539757] 000:
[  198.541899] 000: x25: 0000000000000000
[  198.546178] 000: x24: ffff80001129bd60
[  198.550456] 000:
[  198.552597] 000: x23: 0000000060000145
[  198.556876] 000: x22: ffff8000100b5428
[  198.561154] 000:
[  198.563296] 000: x21: ffff80001129b9e0
[  198.567574] 000: x20: 0000ffffffffffff
[  198.571852] 000:
[  198.573994] 000: x19: ffff800010e40ba0
[  198.578272] 000: x18: 0000000000000010
[  198.582551] 000:
[  198.584692] 000: x17: 0000000000000000
[  198.588971] 000: x16: 0000000000000000
[  198.593249] 000:
[  198.595390] 000: x15: ffffffffffffffff
[  198.599669] 000: x14: 2d2d5d2074707572
[  198.603947] 000:
[  198.606089] 000: x13: 7265746e4920726f
[  198.610367] 000: x12: 727245532073756f
[  198.614646] 000:
[  198.616787] 000: x11: ffff800010dbf3f8
[  198.621065] 000: x10: 0000000000000001
[  198.625343] 000:
[  198.627484] 000: x9 : 00000000000734d0
[  198.631763] 000: x8 : ffff800010e48208
[  198.636041] 000:
[  198.638182] 000: x7 : ffff800010e45148
[  198.642461] 000: x6 : 00000000000734d0
[  198.646739] 000:
[  198.648881] 000: x5 : 00000000000030c0
[  198.653159] 000: x4 : 0000000000000000
[  198.657437] 000:
[  198.659579] 000: x3 : 0000000000000001
[  198.663857] 000: x2 : 0000000000000001
[  198.668135] 000:
[  198.670276] 000: x1 : ffff800010da9000
[  198.674555] 000: x0 : 00000000000000e0
[  198.678833] 000:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
