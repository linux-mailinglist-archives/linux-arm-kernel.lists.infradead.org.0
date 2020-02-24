Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED38F16A2A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1HPlC0O088174D6YbRQALdqTKyFa7bubTi5P4zlBx0=; b=TI2J8yvBmfkAdR
	xiljVTKyATbB6vW4RS8cGBKXtvJvRIIPLFHt7qs2TMyddbsrRxLQ1o/E1YwMymxJqfrDReinkssIu
	oqS3GXdmOVcaMMX1wXOKpfQUTD4c4dn8gPuzEfSzunSSzYNauRoNQKDbMdLUftWIt9DTO5ju7GRHV
	8ApIPhgO0lUgs0nk/2TIMn06c4w5pPxa/Zi+bS2BE+N0I/c1fl7tw+kIxbWfqQ+H1BrmG9Kgebze5
	b8zT9D89ZpZQlX0PqkqWXIUJmf84WMCCiKqoH7AGlu8RWhqpURaGlAIqrLKpOc8LTUBmd17MHwi7C
	tyBKYwiCnB/Qfv0zNQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ADh-00006s-1U; Mon, 24 Feb 2020 09:40:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69mq-0004ob-Fu
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:12:26 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j69me-00068V-Qy; Mon, 24 Feb 2020 10:12:13 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id A822F104083; Mon, 24 Feb 2020 10:12:11 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Marc Zyngier <maz@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 0/3] Fix arm_arch_timer clockmode when vDSO disabled
In-Reply-To: <20200222104005.6fc4019d@why>
References: <20200221181849.40351-1-vincenzo.frascino@arm.com>
 <20200222104005.6fc4019d@why>
Date: Mon, 24 Feb 2020 10:12:11 +0100
Message-ID: <87h7zg4adw.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011224_739248_B9A9F759 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Mark.Rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 luto@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marc Zyngier <maz@kernel.org> writes:
> On Fri, 21 Feb 2020 18:18:46 +0000
> Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:
>> 
>> This patch series addresses the issue defining a default arch clockmode
>> for arm and arm64 and using it to initialize the arm_arch_timer.
>
> arm only. arm64 is just fine.

Right. ARM64 unconditionaly enables VDSO

>
> This doesn't apply to -rc2, and is rather against next.

More precise it's against tip timers/core which has the VDSO changes
which caused this fallout.

>> Vincenzo Frascino (3):
>>   arm: clocksource: Add VDSO default clockmode
>>   arm64: clocksource: Add VDSO default clockmode
>>   clocksource: Fix arm_arch_timer clockmode when vDSO disabled
>
> Please squash the three patches into a single one. There is zero point
> in having 3 patches for something that small.

I really don't see why we need all this redefine foo. What's wrong with
the obvious?

--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -69,7 +69,12 @@ static enum arch_timer_ppi_nr arch_timer
 static bool arch_timer_c3stop;
 static bool arch_timer_mem_use_virtual;
 static bool arch_counter_suspend_stop;
+
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
 static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_ARCHTIMER;
+#else
+static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_NONE;
+#endif
 
 static cpumask_t evtstrm_available = CPU_MASK_NONE;
 static bool evtstrm_enable = IS_ENABLED(CONFIG_ARM_ARCH_TIMER_EVTSTREAM);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
