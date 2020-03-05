Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2160817A29B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/XAdweYbaUAitGYV3SHUP16OydR0kNQglmgmrkEG7wI=; b=phB
	HIJJPR5Jzngb/xQKh946/ChOaTGbaW/74rYaii0hD+oRxoYN/HKKr0jPQrhYKCRQeC59tuh+OcaZA
	fffr8h02tKdA8G3kEew+ojRNQFv8TRBkoK3FxNPH7Wv7/4DNCiABo6rqtbTm/AowIo6om6R814aHL
	/T4297Be4oK0/zz9sXBARJcS3oZ0MrJTqrt+9EkHx4znkUlnT0ZI4XrvPdgZ6nLJQNG21xfY1aaze
	CPnVbNDdCeB+1jbYrp6K2TU46zACOtUZj+zkXWgGEtcFFJJVFfvb/6fkbZCvtug9G2tkyJeJ9X0c0
	Si3GhYncNcXam3ABW0tMd/2dD6PLqbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nIe-0003LY-7a; Thu, 05 Mar 2020 10:00:16 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nIR-0002hb-8J
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:00:04 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 84B5FA920D;
 Thu,  5 Mar 2020 17:59:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12225T140183483700992S1583402391050204_; 
 Thu, 05 Mar 2020 17:59:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5fa7a28b1227fe0fca77ae2005852e54>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 0/1] wait_task_inactive() spend too much time on system
 startup
Date: Thu,  5 Mar 2020 17:59:47 +0800
Message-Id: <20200305095948.10873-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_020003_463121_01A2E2D4 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: juri.lelli@redhat.com, mark.rutland@arm.com, geert+renesas@glider.be,
 peterz@infradead.org, catalin.marinas@arm.com, bsegall@google.com,
 will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 Liang Chen <cl@rock-chips.com>, huangtao@rock-chips.com, keescook@chromium.org,
 anshuman.khandual@arm.com, rostedt@goodmis.org, tglx@linutronix.de,
 surenb@google.com, mingo@redhat.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Liang Chen <cl@rock-chips.com>

Changelog:
v1: wait_task_inactive() frequently call schedule_hrtimeout() and spend a lot of time,
i am trying to optimize it on rockchip platform.
v2: Use atomic_flags(PFA) instead of TIF flag, and add some comments.

Liang Chen (1):
  sched/fair: do not preempt current task if it is going to call
    schedule()

 include/linux/sched.h |  5 +++++
 kernel/kthread.c      |  4 ++++
 kernel/sched/fair.c   | 13 +++++++++++++
 3 files changed, 22 insertions(+)

-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
