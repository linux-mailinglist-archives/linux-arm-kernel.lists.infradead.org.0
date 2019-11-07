Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7FFF2A87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnNyUqX7Rf4f32JrbrX30rYl1OrZgQfctRn68BBm/+o=; b=O2yfvIln7r/0xm
	MhMqMTJNko4hpGZ657HyqtmhAdykuXhq9p5cSPjWqeDn8JF42OhRc1ShElsNJWhG2D/8IFuGqod/p
	XWno+QIHkEo7Er255dxRSDrxY5weoygpH/ilbRK/VrxqxHWXKxxZjAnn3+t9nyShd3x72vwAYHnYc
	1MHFOYDBp8sFQVw9OAGrZ5xXHG4nimIcAl6C9/37TNXsKsDE2JCYnl8DplkKet4D48wIjWrT7IM9y
	bkdeK7pg5Pz3DvD7HPbuBLG9QWUiy5/ipQ6D4gOFDCuQFmCZdoTby3Xtu6ysN/sUk4LnbuWbJDEXg
	2dF4ZWL70kZddoggk5Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSe2X-0004m8-Dh; Thu, 07 Nov 2019 09:25:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSe2C-0004YW-KV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g/G1GEDLhPKjhMsQBLJzbxhUOUWxoYe3bO4Cg8QUdDA=; b=a4RHWOxeKTocGLXwlV+YBajKb
 xvOQJpj9mY9NRqOyxpli/TBZM4fhYnDhV+f9h/3fYQleTVOoXVA8aG0YmtbeEo1ybWkPh2M0asFBc
 f0u3AnkatWgxFt3kXJkxyzCkh+XcjCNAx7bqbXvwfZSJBnYs0aGiNGknBaMpL0jMvjvbfVi3kfT7i
 76O+GnoVcRuwu9eK4O9k+7NL7NHZ4TOtfFqdrOY2X4TuoXLL/rlvo+lN29KSWgJ9gxHcMNApZsN6q
 zqLQ+vWIYIbqTz1q6cgtLzPhRTyPAvGHaQgNag8rPhynN5qS8tH8k4TA3N89gbR4Pbqi84qvyotc7
 ebxQai80g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36372)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iSe1V-0002Wx-GV; Thu, 07 Nov 2019 09:24:13 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iSe1M-0004tP-DR; Thu, 07 Nov 2019 09:24:04 +0000
Date: Thu, 7 Nov 2019 09:24:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lvqiang <Lvqiang.Huang@unisoc.com>
Subject: Re: [PATCH] ARM: check __ex_table in do_bad()
Message-ID: <20191107092404.GV25745@shell.armlinux.org.uk>
References: <1573112713-10115-1-git-send-email-Lvqiang.Huang@unisoc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573112713-10115-1-git-send-email-Lvqiang.Huang@unisoc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_012456_683294_F14436C0 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, anshuman.khandual@arm.com,
 dave.hansen@linux.intel.com, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, akpm@linux-foundation.org, will@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 03:45:13PM +0800, Lvqiang wrote:
> 
> We got many crashs in for_each_frame+0x18 arch/arm/lib/backtrace.S
>     1003: ldr r2, [sv_pc, #-4]
> 
> The backtrace is
>     dump_backtrace
>     show_stack
>     sched_show_task
>     show_state_filter
>     sysrq_handle_showstate_blocked
>     __handle_sysrq
>     write_sysrq_trigger
>     proc_reg_write
>     __vfs_write
>     vfs_write
>     sys_write
> 
> Related Kernel config
>     CONFIG_CPU_SW_DOMAIN_PAN=y
>     # CONFIG_ARM_UNWIND is not set
>     CONFIG_FRAME_POINTER=y
> 
> The task A was dumping the stack of an UN task B. However, the task B

What is "an UN task B"?

> scheduled to run on another CPU, which cause it stack content changed.
> Then, task A may hit a page domain fault and die().
>     [520.661314] Unhandled fault: page domain fault (0x01b) at 0x32848c02

So, the backtrace code is trying to access userspace.  It isn't supposed
to be accessing userspace - there are no guarantees that userspace will
be using frame pointers.  That is the bug.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
