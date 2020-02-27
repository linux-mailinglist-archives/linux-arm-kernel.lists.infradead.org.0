Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16147171504
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:31:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynAR1FfssG9UvbQNF4vSnFz9Qe0K3E5jRaYKFF5aOCA=; b=qyMKGmeW50JgPW
	8VuYJXSnwhZSvRwWaRROaORI0usatvKl03L4GDZLUPpt30cKtrpNqaNLEtNX1wA7z9wOkQGQQ6fyP
	k4+0OFq/cQKvQJPSTHdDRvcVZbPyOsPZ+D+343OAvmumbzSvkQ52nqVOrxFRmRjH9TyG0kkwVr0MW
	Lwnesrhk9qi3+eGvAMLPgQJw5rlkmCJpbZOXJWzEUnoc6+XNV0WQlP5K33dgezyG/Sa4WyLHsCDOF
	VwRsg4aq0Qayd78y4c8Id/OLjk0or/qHrda2yxm543kD7ct7wwg/tF1UW29Ocwj11efTpPvxAZG3u
	3M28dwf/nt3gOyuPb4lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GS7-0006HS-WF; Thu, 27 Feb 2020 10:31:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GRz-0006Gg-9a; Thu, 27 Feb 2020 10:31:28 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j7GRn-0007Oi-T2; Thu, 27 Feb 2020 11:31:15 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 4CE0E10409C; Thu, 27 Feb 2020 11:31:15 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: afzal mohammed <afzal.mohd.ma@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, x86@kernel.org, linux-sh@vger.kernel.org,
 linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-ia64@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-omap@vger.kernel.org, linux-alpha@vger.kernel.org
Subject: Re: [PATCH 00/18] genirq: Remove setup_irq()
In-Reply-To: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
Date: Thu, 27 Feb 2020 11:31:15 +0100
Message-ID: <87y2somido.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_023127_478130_4050FAB3 
X-CRM114-Status: GOOD (  10.25  )
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
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, Michal Marek <michal.lkml@markovi.net>,
 Nicolas Palix <nicolas.palix@imag.fr>, Gilles Muller <Gilles.Muller@lip6.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Afzal,

afzal mohammed <afzal.mohd.ma@gmail.com> writes:

> While trying to understand internals of irq handling, came across a
> thread [1] in which tglx was referring to avoid usage of setup_irq().
> Existing callers of setup_irq() reached mostly via 'init_IRQ()' &
> 'time_init()', while memory allocators are ready by 'mm_init()'.
>
> Hence instances of setup_irq() is replaced by request_irq() &
> setup_irq() (along with remove_irq()) definition deleted in the last
> patch.
>
> Seldom remove_irq() usage has been observed coupled with setup_irq(),
> wherever that has been found, it too has been replaced by free_irq().

thanks a lot for tackling this!

Vs. merging this series, I suggest the following approach:

   - Resubmit the individual changes as single patches or small series
     to the relevant maintainers and subsystem mailing lists. They have
     no dependency on a core change and can be applied where they belong
     to.

   - After 5.6-rc6, verify which parts have made their way into
     linux-next and resubmit the ignored ones as a series to me along
     with the removal of the core parts.

That way we can avoid conflicting changes between subsystems and the tip
irq/core branch as much as possible.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
