Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D123E1B72C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n7EXfL2t83GXwwMaiBeqXtzZP53Pzi3h385F2lv0F8U=; b=G6P
	/tm/u+2bAhO4rTM8P+/2JARTCu9rUm2V4t6Wjp7odSNC44Lj9diX8WMSeQq8IZO8qMDoIlPOOHsD5
	8VtQk4cqUb8Ybw6VSuAntSivqlCEeTCX0gkD5tdMnQYduc2utYWGenbwLkgqibXIc5zY/5ujSALDd
	hauwD5/U3DpNXOCi0t7takzdKOslb3R63JWX2YWfMcajGjyuiCjsMhCfLXaELLUWzDrA4gMRTts29
	ODA63h57pWqr0+K2ZVk1ZkqKaKeh6HExpo5j2g6UtbKKCJqF0JDVapGJk64uxUVfR6nWNb3yCPKh1
	sNhcYQZrv+ScPzCV+PXJwR4FmFG+O5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwF1-0004Vy-Nv; Fri, 24 Apr 2020 11:11:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwEt-0004Ui-2R
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:11:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id d24so3612983pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 04:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=C9PN16nlCbR73t00paMo9AAcjhtW4HbAszJmaJCFe6s=;
 b=lpliri/AOX1NKMV8T3cDtg94yI7PnQd3PoHBB7izJ05O3YNMrdp87cyKPoXoul1D2f
 GCDlSJpkivh7ZAXeOL5+rieJcE2DNN9iSZPIxLwZZVb+Qm3cbkQKJARpNBDhSn441Q3k
 EE/DwBZRapV8OrmjMMahX2q9Y0C4WMpX4hk69nu8xDguJ6RnB84CQH3MXOlLLg92wKDl
 Fb9TyMBzSej64Cl/TybB54K5NSjpfto9P+n7ojlR/5puv/zZibU+fu7Xw5J6BL+3Rqro
 Ug6iJYH3OeR6FNDoawewxo7/oN7WxIsHlFiqoKkwXBrWxLRU4Nn1LOjl8yBF9g1jLSa6
 /m4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=C9PN16nlCbR73t00paMo9AAcjhtW4HbAszJmaJCFe6s=;
 b=ivx+0hpLDRiS+H/Gp/JONMBYDqFpv/nEoDUmWPH5NPxk1cF5nEzoUErBtXIxxiT4y7
 HDOAIS24lr2JR3kT9YxKmseR0K4MV1mvNHQ+Lh4BtjHL6ODaO9FbPWWaKaVfSBpT26Ut
 723DUIIOS9I+AjZYBwLCpigLl+lK9ITCZ7Hsbbo8dbGCfu421Duwud2JtVM+Ad9aV+8o
 hYa7EjXVZQy51hQ/X+zssLVotPsHTKQ5I/oVm/EsZiHOZILtmb0+XypL/qtJozFU1yNQ
 cPw15ij19cmOsfwrTyXwp7x/c90OkfoWOTczh8UeGUFT5Zh7IKa6+GPXkxyt17BgF/ik
 zHZg==
X-Gm-Message-State: AGi0PuZaFsqPn+1GC+cZup7eAufnaBm/rnuvHkmaZQMz8VklaM75NkzK
 8BdWqaeep1yD49dB3b1gwxp+794B+ZFw5g==
X-Google-Smtp-Source: APiQypJRiNBG/TsX5FoVn/NIsUMUkt59D0Cs90C2+w+JS9ApTI5yokyp2gpBXnHP+0nU4wDjA7zGYQ==
X-Received: by 2002:a17:90a:f995:: with SMTP id
 cq21mr5615679pjb.56.1587726681811; 
 Fri, 24 Apr 2020 04:11:21 -0700 (PDT)
Received: from localhost.localdomain ([117.252.71.186])
 by smtp.gmail.com with ESMTPSA id o11sm4637628pgd.58.2020.04.24.04.11.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 04:11:20 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC Patch v1 0/4] arm64: Introduce new IPI as IPI_CALL_NMI_FUNC
Date: Fri, 24 Apr 2020 16:39:10 +0530
Message-Id: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041123_128604_76B2E84C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
btc: cpu status: Currently on cpu 11
Available cpus: 0-10(I), 11, 12(I), 13, 14-23(I)
<snip>
Stack traceback for pid 623
0xffff00086a644600      623      622  1   13   R  0xffff00086a644fc0  bash
CPU: 13 PID: 623 Comm: bash Not tainted 5.7.0-rc2 #27
Hardware name: Socionext SynQuacer E-series DeveloperBox, BIOS build #73 Apr  6 2020
Call trace:
 dump_backtrace+0x0/0x198
 show_stack+0x18/0x28
 dump_stack+0xb8/0x100
 kgdb_cpu_enter+0x5c0/0x5f8
 kgdb_nmicallback+0xa0/0xa8
 handle_IPI+0x190/0x200
 gic_handle_irq+0x2b8/0x2d8
 el1_irq+0xcc/0x180
 lkdtm_HARDLOCKUP+0x8/0x18
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

Looking forward to your comments/feedback.

Sumit Garg (4):
  arm64: smp: Introduce a new IPI as IPI_CALL_NMI_FUNC
  irqchip/gic-v3: Add support to handle SGI as pseudo NMI
  irqchip/gic-v3: Enable arch specific IPI as pseudo NMI
  arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC

 arch/arm64/include/asm/hardirq.h |  2 +-
 arch/arm64/include/asm/smp.h     |  1 +
 arch/arm64/kernel/kgdb.c         | 15 +++++++++++++++
 arch/arm64/kernel/smp.c          | 36 +++++++++++++++++++++++++++++++++++-
 drivers/irqchip/irq-gic-v3.c     | 36 +++++++++++++++++++++++++++++++-----
 5 files changed, 83 insertions(+), 7 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
