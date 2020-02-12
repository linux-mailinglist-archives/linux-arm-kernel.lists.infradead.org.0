Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F8C15A295
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7os2kVFvJwWKV7WmoUUjgkJ2BwShcYO+8ukC5Zn00kQ=; b=CDyyZFJ2Uq9OrN
	x5n24nzIAO8hnP9+sZBt8CtcOOpg/O6L4VCwT+Q0GAyKOgPxBsW/nzjCYRT5+AEhXEFYZlcnjMeM3
	aMktlufWVoNyK80afL1QSwINVy5Q20i1K8Rnn/O/moVT5HnnKTdXKHfeVwDmst/CHOd+EDakGzkpX
	QxUtmmHpm6t4+eHe2sbHcjGzZEOa6pDDmQmNNyjhV807T65d82cLDOw7wR4wNRUs2EkmwcZQvmLmT
	WxxGS4owxCteYBeRVjsnlFKpoVRC/X0Lbz7VuqivTszyGbgeZCzN1004OpAnJnEzMYwQ/EP2FJgoj
	ratKAlF6n2YWy0e//4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mxy-0007iR-Bk; Wed, 12 Feb 2020 08:01:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mxn-0007hc-6J; Wed, 12 Feb 2020 08:01:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so422147pgb.10;
 Wed, 12 Feb 2020 00:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bp8GhH+lTv01Fj7emi77JJtm4UgQcmSv8y6hx+7VcaM=;
 b=V6idpjeWbkdm3Yg9WsocEttNBMzG2tMCV7v/Jnkbmv4/1mib46u42IMshvuecDSvSf
 2yOmAMxdZpFwtzksCp1LV9a3YGgQlOoUP4SbVF+wPlttoXbtqwM0I49vJS6ae4t0YZF1
 Z1uqi8KJ6Zau4OUy3+MsydCGC1VDnR6pplZNzS6f5PRm/C7QdWLR2luKNrgUgfxoDk00
 Mnu2M8v5Q4cbGSnXBDWZkPnqq5qDT+Uq/KETlGpkpqsS+EHPorvjMlK0D/WxcBdtvtHj
 +3x7nastEvjNOZhinDexpYlJjaguSs0t0W2LcIkvRDpoWHUMgRtitGbR6FzUIg40eRn+
 GkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bp8GhH+lTv01Fj7emi77JJtm4UgQcmSv8y6hx+7VcaM=;
 b=rKzh8pyloAnupxkmOeTQAvaQW4quEzAH91kA8gw132FSN70SdqA8nOi5eDk+FEhrZl
 hkXDHAMl7u1CwXHJD3GUxRQqbwoT0OlwUlbQEJHNAZgtBORwTARGQ25BPY6rMNBHe62D
 FVqui4TZTZODH8WjhvZkf5yeilI/nDS+s5kMjDdq+jh34BXgvCnP+vfVu9we3Dc7luTE
 ZAfxXg2ZNXb6Bk0fJtPM4glD0PBaGuWJt3ORRSfifAxBqEL2MniK/oiMYEzx4xeEf0eN
 FBg8Pvah4CGXDDSKY0CvuW1H12rNEpsqdib2LoK7h5kDJdZsZMQK5mEQW3K5v/uyITqS
 hlTA==
X-Gm-Message-State: APjAAAUGbZ67HGQ+rU8iercHlR0Rj0c4boNQfsffWa4T2LyYoR6gI/2l
 pRNWyegtZutDcvFA5xHfSa3sAUNC
X-Google-Smtp-Source: APXvYqxnV3nb/q4uy+L2rUWwz9UZlvNCyFsUzxgcQG4BajmKp/4rH+WqeHW/QL79FLpx5lTeAmqV6A==
X-Received: by 2002:a63:8f5c:: with SMTP id r28mr7323021pgn.351.1581494497731; 
 Wed, 12 Feb 2020 00:01:37 -0800 (PST)
Received: from localhost ([106.51.21.91])
 by smtp.gmail.com with ESMTPSA id t63sm7164236pfb.70.2020.02.12.00.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 00:01:37 -0800 (PST)
Date: Wed, 12 Feb 2020 13:31:35 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, x86@kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-ia64@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-omap@vger.kernel.org,
 linux-alpha@vger.kernel.org
Subject: [PATCH 00/18] genirq: Remove setup_irq()
Message-ID: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_000139_237478_0D5A6A48 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.21.91 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Marek <michal.lkml@markovi.net>, Nicolas Palix <nicolas.palix@imag.fr>,
 Gilles Muller <Gilles.Muller@lip6.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While trying to understand internals of irq handling, came across a
thread [1] in which tglx was referring to avoid usage of setup_irq().
Existing callers of setup_irq() reached mostly via 'init_IRQ()' &
'time_init()', while memory allocators are ready by 'mm_init()'.

Hence instances of setup_irq() is replaced by request_irq() &
setup_irq() (along with remove_irq()) definition deleted in the last
patch.

Seldom remove_irq() usage has been observed coupled with setup_irq(),
wherever that has been found, it too has been replaced by free_irq().

Build & boot tested on ARM & x86_64 platforms (ensured that on the
machines used for testing there was an existing setup_irq()
invocation occuring at runtime)

Much of the changes were created using Coccinelle with an intention
to learn it. spatch command was directly run w/ semantic patch below.
But not everything could be automated.

Searching with 'git grep -n '\Wsetup_irq('' & avoiding the irrelevant
ones, 153 invocation's of setup_irq() were found. 112 could be replaced
w/ cocci, of which in a few files some desired hunks were missing or
not as expected, these were fixed up manually. Also the remaining 41
had to be done manually.

Although cocci could replace 112, because of line continue not
happening at paranthesis for request_irq(), around 80 had to be
manually aligned in the request_irq() statement. Problem was with my
below cocci snippet,

- setup_irq(E1,&act);
+ if (request_irq(E1,f_handler,f_flags,f_name,f_dev_id))
+ 	pr_err("request_irq() on %s failed\n", f_name);

Instead of the above, if below is used, line continue happens exactly
at paranthesis, but it lacks addition of printing on request_irq()
failure where existing setup_irq() failure was not doing it.

- setup_irq(E1,&act)
+ request_irq(E1,f_handler,f_flags,f_name,f_dev_id)

Above had an additional advantage of replacing instances of
if (setup_irq()) & BUG(setup_irq()), but luckily those instances were
very few.

So though many changes could be automated, there are a considerable
amount of manual changes, please review carefully especially mips &
alpha.

Usage of setup_percpu_irq() is untouched w/ this series.

There are 2 checkpatch warning about usage of BUG() [which was already
there w/ setup_irq()], they are left as is as it seems appropriate for
tick timer interrupt.

[1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos

--->8---

@r1@
identifier ret;
@@

(
setup_irq(...);
|
ret = setup_irq(...);
)


@r2 depends on r1@
identifier act;
@@

static struct irqaction act = {
};

@r11 depends on r2@
identifier r2.act;
identifier f_handler;
@@

(
- act.handler = f_handler;
|
static struct irqaction act = {
 .handler = f_handler,
};
)

@r12 depends on r2@
identifier r2.act;
expression f_name;
@@

(
- act.name = f_name;
|
static struct irqaction act = {
 .name = f_name,
};
)

@r15 depends on r2@
identifier r2.act;
expression f_dev_id;
@@

(
- act.dev_id = f_dev_id;
|
static struct irqaction act = {
 .dev_id = f_dev_id,
};
)

@r16 depends on r2@
identifier r2.act;
expression f_flags;
@@

(
- act.flags = f_flags;
|
static struct irqaction act = {
 .flags = f_flags,
};
)

@r21 depends on r2@
identifier r2.act;
@@

- static struct irqaction act = {
- ...
- };

@r22 depends on r2 && r11 && r12 && r15 && r16@
identifier r2.act;
identifier r11.f_handler;
expression r12.f_name;
expression r15.f_dev_id;
expression r16.f_flags;
expression E1;
identifier ret;
@@

(
- setup_irq(E1,&act);
+ if (request_irq(E1,f_handler,f_flags,f_name,f_dev_id))
+ 	pr_err("request_irq() on %s failed\n", f_name);
|
- ret = setup_irq(E1,&act);
+ ret = request_irq(E1,f_handler,f_flags,f_name,f_dev_id);
)

@r23 depends on r2 && r11 && r12 && !r15 && r16@
identifier r2.act;
identifier r11.f_handler;
expression r12.f_name;
expression r16.f_flags;
expression E1;
identifier ret;
@@

(
- setup_irq(E1,&act);
+ if (request_irq(E1,f_handler,f_flags,f_name,NULL))
+ 	pr_err("request_irq() on %s failed\n", f_name);
|
- ret = setup_irq(E1,&act);
+ ret = request_irq(E1,f_handler,f_flags,f_name,NULL);
)

@r24 depends on r2 && r11 && r12 && r15 && !r16@
identifier r2.act;
identifier r11.f_handler;
expression r12.f_name;
expression r15.f_dev_id;
expression E1;
identifier ret;
@@

(
- setup_irq(E1,&act);
+ if (request_irq(E1,f_handler,0,f_name,f_dev_id))
+ 	pr_err("request_irq() on %s failed\n", f_name);
|
- ret = setup_irq(E1,&act);
+ ret = request_irq(E1,f_handler,0,f_name,f_dev_id);
)

@r25 depends on r2 && r11 && r12 && !r15 && !r16@
identifier r2.act;
identifier r11.f_handler;
expression r12.f_name;
expression E1;
identifier ret;
@@

(
- setup_irq(E1,&act);
+ if (request_irq(E1,f_handler,0,f_name,NULL))
+ 	pr_err("request_irq() on %s failed\n", f_name);
|
- ret = setup_irq(E1,&act);
+ ret = request_irq(E1,f_handler,0,f_name,NULL);
)

--->8---

afzal mohammed (18):
  alpha: replace setup_irq() by request_irq()
  ARM: replace setup_irq() by request_irq()
  c6x: replace setup_irq() by request_irq()
  hexagon: replace setup_irq() by request_irq()
  ia64: replace setup_irq() by request_irq()
  m68k: Replace setup_irq() by request_irq()
  microblaze: Replace setup_irq() by request_irq()
  MIPS: Replace setup_irq() by request_irq()
  parisc: Replace setup_irq() by request_irq()
  powerpc: Replace setup_irq() by request_irq()
  s390: replace setup_irq() by request_irq()
  sh: replace setup_irq() by request_irq()
  unicore32: replace setup_irq() by request_irq()
  x86: Replace setup_irq() by request_irq()
  xtensa: replace setup_irq() by request_irq()
  clocksource: Replace setup_irq() by request_irq()
  irqchip: Replace setup_irq() by request_irq()
  genirq: Remove setup_irq() and remove_irq()

 arch/alpha/kernel/irq_alpha.c                 | 29 ++-------
 arch/alpha/kernel/irq_i8259.c                 |  8 +--
 arch/alpha/kernel/irq_impl.h                  |  7 +--
 arch/alpha/kernel/irq_pyxis.c                 |  3 +-
 arch/alpha/kernel/sys_alcor.c                 |  3 +-
 arch/alpha/kernel/sys_cabriolet.c             |  3 +-
 arch/alpha/kernel/sys_eb64p.c                 |  3 +-
 arch/alpha/kernel/sys_marvel.c                |  2 +-
 arch/alpha/kernel/sys_miata.c                 |  6 +-
 arch/alpha/kernel/sys_ruffian.c               |  3 +-
 arch/alpha/kernel/sys_rx164.c                 |  3 +-
 arch/alpha/kernel/sys_sx164.c                 |  3 +-
 arch/alpha/kernel/sys_wildfire.c              |  7 +--
 arch/alpha/kernel/time.c                      |  6 +-
 arch/arm/mach-cns3xxx/core.c                  | 10 +---
 arch/arm/mach-ebsa110/core.c                  | 10 +---
 arch/arm/mach-ep93xx/timer-ep93xx.c           | 12 ++--
 arch/arm/mach-footbridge/dc21285-timer.c      | 11 +---
 arch/arm/mach-footbridge/isa-irq.c            |  8 +--
 arch/arm/mach-footbridge/isa-timer.c          | 11 +---
 arch/arm/mach-iop32x/time.c                   | 12 ++--
 arch/arm/mach-mmp/time.c                      | 11 +---
 arch/arm/mach-omap1/pm.c                      | 22 ++++---
 arch/arm/mach-omap1/time.c                    | 10 +---
 arch/arm/mach-omap1/timer32k.c                | 10 +---
 arch/arm/mach-omap2/timer.c                   | 11 +---
 arch/arm/mach-rpc/time.c                      |  8 +--
 arch/arm/mach-spear/time.c                    |  9 +--
 arch/arm/plat-orion/time.c                    | 10 +---
 arch/c6x/platforms/timer64.c                  | 11 +---
 arch/hexagon/kernel/smp.c                     | 17 +++---
 arch/hexagon/kernel/time.c                    | 11 +---
 arch/ia64/kernel/irq_ia64.c                   | 42 +++++--------
 arch/ia64/kernel/mca.c                        | 51 +++++-----------
 arch/m68k/68000/timers.c                      |  9 +--
 arch/m68k/coldfire/pit.c                      |  9 +--
 arch/m68k/coldfire/sltimers.c                 | 19 ++----
 arch/m68k/coldfire/timers.c                   | 19 ++----
 arch/microblaze/kernel/timer.c                | 10 +---
 arch/mips/alchemy/common/time.c               | 11 +---
 arch/mips/ar7/irq.c                           | 18 +++---
 arch/mips/ath25/ar2315.c                      |  9 +--
 arch/mips/ath25/ar5312.c                      |  9 +--
 arch/mips/bcm63xx/irq.c                       | 38 +++++-------
 arch/mips/cobalt/irq.c                        | 14 ++---
 arch/mips/dec/setup.c                         | 59 ++++++++-----------
 arch/mips/emma/markeins/irq.c                 | 20 +++----
 arch/mips/include/asm/sni.h                   |  2 +-
 arch/mips/jazz/irq.c                          | 12 +---
 arch/mips/kernel/cevt-bcm1480.c               | 11 +---
 arch/mips/kernel/cevt-ds1287.c                |  9 +--
 arch/mips/kernel/cevt-gt641xx.c               |  9 +--
 arch/mips/kernel/cevt-r4k.c                   |  4 +-
 arch/mips/kernel/cevt-sb1250.c                | 11 +---
 arch/mips/kernel/cevt-txx9.c                  | 11 +---
 arch/mips/kernel/i8253.c                      | 10 +---
 arch/mips/kernel/rtlx-mt.c                    |  8 +--
 arch/mips/kernel/smp.c                        | 33 ++++-------
 arch/mips/lasat/interrupt.c                   | 10 +---
 arch/mips/loongson2ef/common/bonito-irq.c     |  9 +--
 .../loongson2ef/common/cs5536/cs5536_mfgpt.c  | 10 +---
 arch/mips/loongson2ef/fuloong-2e/irq.c        | 14 ++---
 arch/mips/loongson2ef/lemote-2f/irq.c         | 20 ++-----
 arch/mips/loongson32/common/irq.c             | 21 ++++---
 arch/mips/loongson32/common/time.c            | 12 ++--
 arch/mips/loongson64/hpet.c                   | 10 +---
 arch/mips/mti-malta/malta-int.c               | 10 +---
 arch/mips/netlogic/xlr/fmn.c                  |  9 +--
 arch/mips/pmcs-msp71xx/msp_irq.c              | 28 ++++-----
 arch/mips/pmcs-msp71xx/msp_smp.c              | 22 ++-----
 arch/mips/pmcs-msp71xx/msp_time.c             |  7 ++-
 arch/mips/ralink/cevt-rt3352.c                | 17 +++---
 arch/mips/sgi-ip22/ip22-eisa.c                |  8 +--
 arch/mips/sgi-ip22/ip22-int.c                 | 49 +++++----------
 arch/mips/sgi-ip32/ip32-irq.c                 | 18 ++----
 arch/mips/sni/a20r.c                          |  4 +-
 arch/mips/sni/irq.c                           |  8 +--
 arch/mips/sni/pcit.c                          |  8 ++-
 arch/mips/sni/rm200.c                         | 23 +++-----
 arch/mips/sni/time.c                          | 10 +---
 arch/mips/vr41xx/common/irq.c                 |  9 +--
 arch/parisc/kernel/irq.c                      | 21 ++-----
 arch/powerpc/platforms/85xx/mpc85xx_cds.c     | 10 +---
 arch/powerpc/platforms/8xx/cpm1.c             |  9 +--
 arch/powerpc/platforms/8xx/m8xx_setup.c       |  9 +--
 arch/powerpc/platforms/chrp/setup.c           | 14 ++---
 arch/powerpc/platforms/powermac/pic.c         | 31 ++++------
 arch/powerpc/platforms/powermac/smp.c         |  9 +--
 arch/s390/kernel/irq.c                        |  8 +--
 arch/sh/boards/mach-cayman/irq.c              | 18 ++----
 arch/sh/drivers/dma/dma-pvr2.c                |  9 +--
 arch/unicore32/kernel/time.c                  | 11 +---
 arch/x86/kernel/irqinit.c                     | 18 +++---
 arch/x86/kernel/time.c                        | 10 +---
 arch/xtensa/kernel/smp.c                      |  8 +--
 arch/xtensa/kernel/time.c                     | 10 +---
 drivers/clocksource/bcm2835_timer.c           |  8 +--
 drivers/clocksource/bcm_kona_timer.c          | 10 +---
 drivers/clocksource/dw_apb_timer.c            | 11 +---
 drivers/clocksource/exynos_mct.c              | 12 ++--
 drivers/clocksource/mxs_timer.c               | 10 +---
 drivers/clocksource/nomadik-mtu.c             | 11 +---
 drivers/clocksource/samsung_pwm_timer.c       | 12 ++--
 drivers/clocksource/timer-atlas7.c            | 50 ++++++++--------
 drivers/clocksource/timer-cs5535.c            | 10 +---
 drivers/clocksource/timer-efm32.c             | 10 +---
 drivers/clocksource/timer-fsl-ftm.c           | 10 +---
 drivers/clocksource/timer-imx-gpt.c           | 10 +---
 drivers/clocksource/timer-integrator-ap.c     | 11 +---
 drivers/clocksource/timer-meson6.c            | 11 +---
 drivers/clocksource/timer-orion.c             |  9 +--
 drivers/clocksource/timer-prima2.c            | 11 +---
 drivers/clocksource/timer-pxa.c               | 10 +---
 drivers/clocksource/timer-sp804.c             | 11 +---
 drivers/clocksource/timer-u300.c              |  9 +--
 drivers/clocksource/timer-vf-pit.c            | 10 +---
 drivers/clocksource/timer-vt8500.c            | 11 +---
 drivers/clocksource/timer-zevio.c             | 13 ++--
 drivers/irqchip/irq-i8259.c                   |  9 +--
 drivers/irqchip/irq-ingenic.c                 | 11 ++--
 drivers/parisc/eisa.c                         |  8 +--
 drivers/s390/cio/airq.c                       |  8 +--
 drivers/s390/cio/cio.c                        |  8 +--
 include/linux/dw_apb_timer.h                  |  1 -
 include/linux/irq.h                           |  2 -
 kernel/irq/manage.c                           | 44 --------------
 126 files changed, 528 insertions(+), 1111 deletions(-)


base-commit: v5.6-rc1
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
