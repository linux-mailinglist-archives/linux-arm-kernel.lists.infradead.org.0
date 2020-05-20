Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9021DB127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jKQBm+THlioCxQrmUcOlAJW84DytItoIdaFDbkvO2fM=; b=aK+
	vilEFteoun10bdvtkDQI0T/vPyvw9xhppjEyo/AgAIfcb4Ie6dNat5IeWm5aeyvi23/8oEGoZR8Ai
	WSFLuEdNzwkemYSm1aWAY2Ae//jUwV1Y/z7lM1WryR/AdsjiSTZz6ipeb0D0/OocWQWtbjgyfIwlt
	ApsQOIJN/Nu81n4MuxYatVtzkICIE8oZq1EA9CfwKzGO8MDIgBg9LanSMu8zoKqRsRY2wLOC4TnN8
	hOGXcu84NeSV+gKKGIu9q99J9D+izSze0Z/kFNbpGPTWTTzdz33/kt35NdPb5MXnr9YvEzLu9VLR4
	fgmZ0V9FssTpnM9xelf4WJ94ob+7dPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMea-0004C1-3o; Wed, 20 May 2020 11:12:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMeR-0004BZ-6B
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:12:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id x10so1189307plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=05sWOFK6tuBIdg0teEFyYCPt+cVyW+PqgkCyuRv1w18=;
 b=TqVjp5354l9g1YsMnmiLHIjXurzKyt9dZu9rMhX+qNabLlTNIE6ll/SK69p9ELSwHb
 HuIDMQdB8adG6bsECZCVjF6ESjyXInN9zVRWoK7m76v6WmBTs2VR4Ky643jLAM6gh8Q9
 vJZzAU8MIsFMiG+WKtswEPNgfgeXmkv2k31LT6AXPJobmw8gSC4EGJXHXV/zZLSc7kjQ
 j9M5acva6zU2GvPjWKZiCWaPnNNwDNV79FzECZ+56c5USFDAg0hizjdw23llsucwhdRY
 o5Tg2VeRzxBngmGYQOCf9DrCKdUGxO6/Bu5iH1ApiTirZU7ZQ1blBuRj4Wi/anElVBX/
 BidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=05sWOFK6tuBIdg0teEFyYCPt+cVyW+PqgkCyuRv1w18=;
 b=aWZGk+tCO7S6hqBEIcHpWiXcGIC+f7LE8lqmpratyvDxTeCSL+foCB1x94ovyYemHf
 XP364r9TUoOZX2J/hpyVA7mMybIiqdyGpRqIbKKnBJx+h6UgOptRkHxQ4MIXom1JnGTl
 bYbCHrpz+P4GHL9YAQApd6S2HB2EgtJ6YD5wkOXxPjhPk3QbZVD4HfUbFMui3/uq5NsG
 tbnzP0RtueAeN8P1Vpg0fN2RwPAZg89Pi0UwY78bQnPavNWklR1pJfFD195RCrYNNXZL
 ZFioXG0iDf4wDBvOfq8gzxhn/oOgZkNcSQTw3ouACMHN7mI42vb5WJoM9KUtiMMb3d2K
 T1QA==
X-Gm-Message-State: AOAM5333fyTLssR2YvzPJCSJseMhE8uSxea0XCOeqejHw9NLALBi4jo7
 6k8jMm8yhJLRQX3IPElw7xbbRUa3atw=
X-Google-Smtp-Source: ABdhPJyaLwGf8TIiu+2wsx2Qxt0RIooE9jEihzhPvu8Fjah7GhQsku+h9APnrXOZSyeJeeClHe/oVQ==
X-Received: by 2002:a17:90a:4d4a:: with SMTP id
 l10mr4851457pjh.0.1589973161858; 
 Wed, 20 May 2020 04:12:41 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id q134sm2044974pfc.143.2020.05.20.04.12.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 04:12:40 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] arm64: Introduce new IPI as IPI_CALL_NMI_FUNC
Date: Wed, 20 May 2020 16:41:51 +0530
Message-Id: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041243_257647_49DBC0EC 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With pseudo NMIs support available its possible to configure SGIs to be
triggered as pseudo NMIs running in NMI context. And kernel features
such as kgdb relies on NMI support to round up CPUs which are stuck in
hard lockup state with interrupts disabled.

This patch-set adds support for IPI_CALL_NMI_FUNC which can be triggered
as a pseudo NMI which in turn is leveraged via kgdb to round up CPUs.

After this patch-set we should be able to get a backtrace for a CPU
stuck in HARDLOCKUP. Have a look at an example below from a testcase run
on Developerbox:

$ echo HARDLOCKUP > /sys/kernel/debug/provoke-crash/DIRECT

# Enter kdb via Magic SysRq

[11]kdb> btc
btc: cpu status: Currently on cpu 10
Available cpus: 0-7(I), 8, 9(I), 10, 11-23(I)
<snip>
Stack traceback for pid 619
0xffff000871bc9c00      619      618  1    8   R  0xffff000871bca5c0  bash
CPU: 8 PID: 619 Comm: bash Not tainted 5.7.0-rc6-00762-g3804420 #77
Hardware name: Socionext SynQuacer E-series DeveloperBox, BIOS build #73 Apr  6 2020
Call trace:
 dump_backtrace+0x0/0x198
 show_stack+0x18/0x28
 dump_stack+0xb8/0x100
 kgdb_cpu_enter+0x5c0/0x5f8
 kgdb_nmicallback+0xa0/0xa8
 ipi_kgdb_nmicallback+0x24/0x30
 ipi_handler+0x160/0x1b8
 handle_percpu_devid_fasteoi_ipi+0x44/0x58
 generic_handle_irq+0x30/0x48
 handle_domain_nmi+0x44/0x80
 gic_handle_irq+0x140/0x2a0
 el1_irq+0xcc/0x180
 lkdtm_HARDLOCKUP+0x10/0x18
 direct_entry+0x124/0x1c0
 full_proxy_write+0x60/0xb0
 __vfs_write+0x1c/0x48
 vfs_write+0xe4/0x1d0
 ksys_write+0x6c/0xf8
 __arm64_sys_write+0x1c/0x28
 el0_svc_common.constprop.0+0x74/0x1f0
 do_el0_svc+0x24/0x90
 el0_sync_handler+0x178/0x2b8
 el0_sync+0x158/0x180
<snip>

Changes since RFC version [1]:
- Switch to use generic interrupt framework to turn an IPI as NMI.
- Dependent on Marc's patch-set [2] which turns IPIs into normal
  interrupts.
- Addressed misc. comments from Doug on patch #4.
- Posted kgdb NMI printk() fixup separately which has evolved since
  to be solved using different approach via changing kgdb interception
  of printk() in common printk() code (see patch [3]).

[1] https://lkml.org/lkml/2020/4/24/328
[2] https://lkml.org/lkml/2020/5/19/710
[3] https://lkml.org/lkml/2020/5/20/418

Sumit Garg (4):
  arm64: smp: Introduce a new IPI as IPI_CALL_NMI_FUNC
  irqchip/gic-v3: Enable support for SGIs to act as NMIs
  arm64: smp: Setup IPI_CALL_NMI_FUNC as a pseudo NMI
  arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC

 arch/arm64/include/asm/hardirq.h |  2 +-
 arch/arm64/include/asm/kgdb.h    |  8 +++++++
 arch/arm64/include/asm/smp.h     |  1 +
 arch/arm64/kernel/kgdb.c         | 21 +++++++++++++++++
 arch/arm64/kernel/smp.c          | 49 ++++++++++++++++++++++++++++++++--------
 drivers/irqchip/irq-gic-v3.c     | 13 +++++++++--
 6 files changed, 81 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
