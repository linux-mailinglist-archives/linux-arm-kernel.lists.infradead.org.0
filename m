Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4761402FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 05:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww5yIfQf66HeE2m5DI20Ucytny0nm0Fv9frA3D0R99E=; b=cPmJS5ZECmjpN3
	nwq1A8AgyuHBiKzbsXSwazaY/us9ZO3UamRS4gqKfSnJnucObBk13AYDgh6+W0R4qLzfcJW5Q24jL
	ciuMwSnUxVRxZm05fAWdGnFGJ1QDNi/7VVc6cp6WJG1H8xW3tkR/l+BOMLv7K4mHiYqNSCO2RfSz3
	FzqwVY88wYbyM9IQbnqNTVl7IgZea/H+ipdwsMpcLRppUfOweQE5uoIy24WcHKT8Yl3mUtwGoe680
	bdJz5aZGVhjHjvP/5hKTtP5iuSHTAB71ZGzDj7Okv2gxUGFZuOQ9sUIJn9r8OXCyE3qcyENKb0ZNp
	hC4dHMIVFLsrJ1E5NHVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJ8Z-000265-RD; Fri, 17 Jan 2020 04:21:35 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJ8N-000255-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 04:21:25 +0000
Received: by mail-il1-x141.google.com with SMTP id f10so20207464ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 20:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qfpdnB0mDY3WUkUnXeznDzcUOnDJRLF4NNorY2l78Ps=;
 b=ZqPtCjnTL5BpE5R5EYfpzHPeea5Qp7vGjfHVQtwYh6GS2G1E6qCQktHCtcgcj750RB
 KbbeLBevioO95S1auUbZ5BvudJZBXmK4sZWDFvDOzsSReMywkA736vs8L2yTMRHJL3WU
 YtEnCvSIJYSnrMDfuobFoVMMr2wwZ08zgjuVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qfpdnB0mDY3WUkUnXeznDzcUOnDJRLF4NNorY2l78Ps=;
 b=eWfpS8Fm6AlER49PoXmKVqTDAcAdHjVSo6VzsgepfaMiFlvVfSHwmd9o16veCuN6sE
 Hfjco+0hm2yJ3I8aNKWU+3Mn04Udo038lSMVISL6P32ZrHz6XNM+dlkfeMPoTMjgsEtN
 NtEcGEjY1LhR3pS/ubsG8ZbmP9HRPgBHgaNi7CVxllzWhRefRlyL8qAmndknGN4e7hwU
 X8ElSJw2Y/+2uaGcJ8ZNiXm12ph8oFWSk50ztdOHysejrw5JXnJGkf+U/wxjIH4i81OP
 zqsKhMZb0alnsXJluVw62Ft8RL3/sflyCVdssqcPDqGRoBcuwzlMZP2fw9mU3L1dvzpq
 /0sg==
X-Gm-Message-State: APjAAAUWLh8L+q86hJ2C3F3OEVdVNQrIIJi02luugakirVoX6jes+XPc
 a70Ej3+igT0aZw/9Pi11cDQIo3R8SoOWtjvn09d8EQ==
X-Google-Smtp-Source: APXvYqx+51arEmX8KrYJLorNsz5cqX3rSL1q9+0np0e9Hh5Vavh2uliQ4xTj4S5fGKDgZ5Qi5GtPwcY6HIB8S7Zf6a8=
X-Received: by 2002:a92:5c8f:: with SMTP id d15mr1631366ilg.102.1579234882781; 
 Thu, 16 Jan 2020 20:21:22 -0800 (PST)
MIME-Version: 1.0
References: <20200114110620.164861-1-hsinyi@chromium.org>
 <a701522f-73aa-2277-4a25-f84a27f38118@landley.net>
In-Reply-To: <a701522f-73aa-2277-4a25-f84a27f38118@landley.net>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 17 Jan 2020 12:20:56 +0800
Message-ID: <CAJMQK-iH7FPgj2cNZr==Szd8bnRyHC7=GzQt6-zsFq3eCdWJ1Q@mail.gmail.com>
Subject: Re: [PATCH RESEND v4] reboot: support offline CPUs before reboot
To: Rob Landley <rob@landley.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_202123_819574_36B2643E 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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

On Fri, Jan 17, 2020 at 12:16 PM Rob Landley <rob@landley.net> wrote:
>
> On 1/14/20 5:06 AM, Hsin-Yi Wang wrote:
> > This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would offline cpus in
> > migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> > checking online cpus would be an empty loop. If architecture don't enable this
> > config, or some cpus somehow fails to offline, it would fallback to ipi
> > function.
>
> I'm curious:
>
> > +# Select to do a full offline on secondary CPUs before reboot.
> > +config ARCH_OFFLINE_CPUS_ON_REBOOT
> > +     bool "Support for offline CPUs before reboot"
> > +     depends on HOTPLUG_CPU
>
> The new symbol can't be selected without the other symbol.
>
> > +     select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
>
> And the other symbol automatically selects the new one.
>
> Why are you adding a second symbol that means the same thing as the existing symbol?
>

I should make the arch selecting this symbol in other patches and let
the arch decides if they want to opt in, as Thomas pointed out in v5:
https://lore.kernel.org/lkml/8736cgxmxi.fsf@nanos.tec.linutronix.de/

Current solution is not sufficient since it only solve problems for
system that enables HOTPLUG_CPU.

> > +#if defined(CONFIG_PM_SLEEP_SMP) || defined(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
> > +extern int freeze_secondary_cpus(int primary, bool reboot);
> > +#endif
>
> Couldn't that just test HOTPLUG_CPU? What's the second symbol for? (You can have
> empty stub functions when architectures don't support a thing...)
>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
