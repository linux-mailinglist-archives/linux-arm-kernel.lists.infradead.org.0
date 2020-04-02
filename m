Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C5419C63E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 17:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MIgqHBUq5gZM0k0HYu7RtZNk7UTWL/95rYhzIVKo8bI=; b=IaxiaxVs4plGC2
	qoE5yr7UG+3kNF8MOZCxgRVkEB9Wsh9gDppyO+QMwVp/45o0gZizsSYN/Y5S2ohkUjlqKBT5xdxLk
	jFVhAJgAcTaO8ZvTtTRNeZ5thmc4ZHDeTSBvqiNS5iuDhy1MQkXMP++2LE5RgNhtUA1LW34ykSvH4
	YWVIg5uvBxjnGJrSqrJ/yjPZiOguyGBVsqO195eeEeeZQJIvTUd8CmIcMMVGN2Pn80rHM14jKUD2X
	7/iU2A9o7JiEzcpUCtLIs39AgHH8ls1vmfLK2MepNPiNNSRSYg5fDyB+FX2BMYg43ZwkiSKuI/CMQ
	tKw9D3LDfVBZLHyX9c6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK22E-0006jn-MK; Thu, 02 Apr 2020 15:45:38 +0000
Received: from [192.19.232.150] (helo=rnd-relay.smtp.broadcom.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK228-0006j9-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 15:45:34 +0000
Received: from localhost.localdomain (unknown [10.230.10.169])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTPS id 2E8AC1A0003;
 Thu,  2 Apr 2020 08:39:09 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 2E8AC1A0003
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1585841949;
 bh=Seb9VQpgJDnwcPpoReSekHFLFfvXrZV9urKMws4HNcQ=;
 h=From:To:Cc:Subject:Date:From;
 b=kHPVY2PuVcZfO6c6fny3/1ZJSxqV7JoS1oXwp4/52le+QTYcUHg2VF2+gHRKUCy8q
 Z459cPsdRkzXUFBCg+otDDoxKYtzqXqWfLIli0gUv2cmrK2iYIOGG6RC5CfFIf8WfI
 /dZlWDax0kzkHNUexuZ5acuyW3kNNeP3p2qjtN/I=
From: Kursad Oney <kursad.oney@broadcom.com>
To: linux-arm-kernel@lists.infradead.org
Subject: 32-bit arm unwind info for PLTs
Date: Thu,  2 Apr 2020 11:38:45 -0400
Message-Id: <20200402153845.30985-1-kursad.oney@broadcom.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_084533_119690_EFF66BB8 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kursad Oney <kursad.oney@broadcom.com>, florian.fainelli@broadcom.com,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I have a large kernel module that gets loaded to vmalloc via
ARM_MODULE_PLTS. When I either use perf, or enable (yet unmerged)
KASAN-arm changes, I see occasional warnings like this:

unwind: Index not found pc:f3aa8d6c

The address f3aa8d6c is in the .plt section. I printed the backtrace
in unwind_frame where the warning is printed, and the backtrace looks
like this:

NMI backtrace for cpu 0
CPU: 0 PID: 7193 Comm: hostapd Tainted: P                  4.19.100 #7
Hardware name: Generic DT based system
[<c02144b8>] (unwind_backtrace) from [<c020dac8>] (show_stack+0x10/0x14)
[<c020dac8>] (show_stack) from [<c083b238>] (dump_stack+0x9c/0xb0)
[<c083b238>] (dump_stack) from [<c0842dfc>] (nmi_cpu_backtrace+0xb4/0xe8)
[<c0842dfc>] (nmi_cpu_backtrace) from [<c0842fb0>] (nmi_trigger_cpumask_backtrace+0x180/0x1d4)
[<c0842fb0>] (nmi_trigger_cpumask_backtrace) from [<c0214428>] (unwind_frame+0x650/0x6e0)
[<c0214428>] (unwind_frame) from [<c020d53c>] (walk_stackframe+0x30/0x3c)
[<c020d53c>] (walk_stackframe) from [<c020d778>] (__save_stack_trace+0x100/0x108)
[<c020d778>] (__save_stack_trace) from [<c03369ec>] (__kasan_slab_free+0x124/0x1f8)
[<c03369ec>] (__kasan_slab_free) from [<c033396c>] (kmem_cache_free+0x5c/0x19c)
[<c033396c>] (kmem_cache_free) from [<c029138c>] (rcu_process_callbacks+0x360/0x604)
[<c029138c>] (rcu_process_callbacks) from [<c020295c>] (__do_softirq+0x174/0x374)
[<c020295c>] (__do_softirq) from [<c022b07c>] (irq_exit+0xd0/0xf8)
[<c022b07c>] (irq_exit) from [<c027ce3c>] (__handle_domain_irq+0x7c/0xd4)
[<c027ce3c>] (__handle_domain_irq) from [<c04dfc00>] (gic_handle_irq+0x4c/0x90)
[<c04dfc00>] (gic_handle_irq) from [<c02020cc>] (__irq_svc+0x6c/0xac)
Exception stack(0xe4c3b400 to 0xe4c3b448)
b400: dca01404 f3d63a80 bd7ac750 00000000 f3d63a84 f0b6c164 f3bb6434 dca0126c
b420: f3d665d0 dca01408 dca01404 0c002c24 00000000 e4c3b450 f37ed5a4 f3aa8d6c
b440: 600b0013 ffffffff
[<c02020cc>] (__irq_svc) from [<f3aa8d6c>] (wl_module_exit+0xf64/0x21f8 [wl])

To me it looks like while the CPU is executing an instruction in the
PLT, it gets an interrupt. If we call save_stack_trace() or any
function that eventually gets to unwind_frame() from that context,
then the unwinder doesn't know how to unwind the PLT. Does this sound
right? Any idea how the unwinder code should deal with this situation?

Thanks!
kursad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
