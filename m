Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2021413D6D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UiW4QeqISnOOcaClZIRMmfdUaKR72nXRz21OcSSHUc=; b=evU3paJ62a5ZQK
	JcQHB9l5/FJg9xtp8PQN2kEprQI1sCWJwW5yckAgDpiij0txwZCQvXw083aGwrqKkYROGzDVF9tsf
	jtphSMBunGTcwG5q9tY3kB96p6Wy+iQG89sVlpeySiNOmZt82GfJBIdfrtlvTWYAFlpR4Smqu7eIn
	lPzPMytTE3vkNyZyEyspR127yXG36It9qmMl8zgjAuLIJf27z56gHp5z/yeX0l8XRyKAyGcbsfbQl
	vaVpquJQPDq6zdmvQp8lrH5/1YPu8JAOZUe02YPr6r3hXmmbBU1+e8Pj+pCI8d5x0yG12Kcjz4UH3
	TvuAL/tqn6tAw8LI+XWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1Px-0007pQ-D4; Thu, 16 Jan 2020 09:26:21 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1Pm-0007oO-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:26:14 +0000
Received: by mail-il1-x143.google.com with SMTP id c4so17549902ilo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 01:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5+T2+f3YUqy/mz/g0zqdHuyixNv3uIRSRLqHpYCvIA8=;
 b=YNsZvqMC3qBwhA390kR+0O1+Z775NXpgorZ1Uj0LTNfhunlCVnboeL+hdbdTD7zPyj
 cO4YdefQbXLyr/t0viYTQNIs2/R9znJRs+JPdwF+zlywPmjg5MJOT97iGih9buKS3tvr
 detFCcSpM8To0oU1Jp0ON3jtZma7mcyCUwQck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5+T2+f3YUqy/mz/g0zqdHuyixNv3uIRSRLqHpYCvIA8=;
 b=pPPsAGK4cKKXMinIWNFFxswRyTv3VyflcYkcGA0yr90cdf2Ac1XFsLHrWe38GTiHn4
 sUGBkiNxBYcqGp85R3tpqclZjgrpwyra8kMR0ASH3X05atD9DoZ+6EvvUjAsCDdoes4o
 1rBpQWkU5xtXQAYDpFGzTjmulD4kmGa87bzSy+4oFTb6PbPpjh0ntAt2cngaSILcRQOD
 35lAuJt9Z4v+QfTECc39wYBKQZUz/kQedeppG8SniApv4ZYl4cWCnD5mk0VI4pI3P4nn
 xRGRdenCPllFD4X14YC+iocL0E1nP08x57k7LZuZP0KQYr7z5jFB4wDDwNkyZhV+R9ET
 WVvQ==
X-Gm-Message-State: APjAAAUMyP7XOrubkK9iIHaI73OBk5GF33XoJSITxROmpV1hsolp4RqL
 2QEaxqrhT1IcHTYO48soIlp+VGgHh5ukZPWCv7LtGg==
X-Google-Smtp-Source: APXvYqzcJuvwLp0x5+fMsP13ADUUEVQCs/aLETOB1GPnAQGr8kZxelM+YUGAkJZnZhbBbnQ8HdB5j4UwUbclM7dRrHw=
X-Received: by 2002:a92:8851:: with SMTP id h78mr2599028ild.308.1579166769584; 
 Thu, 16 Jan 2020 01:26:09 -0800 (PST)
MIME-Version: 1.0
References: <20200115063410.131692-1-hsinyi@chromium.org>
 <20200115114112.GA3663@bogus>
In-Reply-To: <20200115114112.GA3663@bogus>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 16 Jan 2020 17:25:43 +0800
Message-ID: <CAJMQK-ip7C71=K+CViEKcc3ed4GPY_Uknm5uNgLJTzZb2aQOcA@mail.gmail.com>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_012610_551715_CC3A0166 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 lkml <linux-kernel@vger.kernel.org>, sparclinux@vger.kernel.org,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-csky@vger.kernel.org, Aaro Koskinen <aaro.koskinen@nokia.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Linux PM <linux-pm@vger.kernel.org>,
 linux-xtensa@linux-xtensa.org, Stephen Boyd <swboyd@chromium.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:41 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jan 15, 2020 at 02:34:10PM +0800, Hsin-Yi Wang wrote:
> > Currently system reboots uses architecture specific codes (smp_send_stop)
> > to offline non reboot CPUs. Most architecture's implementation is looping
> > through all non reboot online CPUs and call ipi function to each of them. Some
> > architecture like arm64, arm, and x86... would set offline masks to cpu without
> > really offline them. This causes some race condition and kernel warning comes
> > out sometimes when system reboots.
> >
> > This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would offline cpus in
> > migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> > checking online cpus would be an empty loop. If architecture don't enable this
> > config, or some cpus somehow fails to offline, it would fallback to ipi
> > function.
> >
>
> What's the timing impact on systems with large number of CPUs(say 256 or
> more) ? I remember we added some change to reduce the wait times for
> offlining CPUs in system suspend path on arm64, still not negligible.
>

This is not the final solution, but I would still provided some data
points here:

Tested on my arm64 with 4 cpu: 2 a53 and 2 a72.
Offlining 3 cpu takes about 60~65 ms
Offlining 2 cpu(a53+a72 or a72+a72) takes about 42~47 ms
Offlining 1 cpu(a53 or a72) takes about 23~25 ms.

It would take longer time for systems with large number of CPUs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
