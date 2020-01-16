Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9124813FA74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmlmIXkT1Jl0wthCnVhHghH1VzJfahkwdcn04TpDoMI=; b=OfETu3MtRiPrZK
	46zk9Ydu+Leetxv0D36dQlRcrJhcus6QrmgJS5blntdiGEp5w6RAxOJJTYJqI27D24p5S9NfmI/mH
	JhHo16aD/NjZbybP8uuDXio6E57U9eRrEOgJPg1Yr5CnsforjIruNh3MBPHy8Rc2aQwS4SR8KMXF2
	Wh2BF0IC9bNEo7Hg/DVdCIBQzgQmKBYAKtx5jDLYW6m6oTPXRlqOcv/LEc0O4CCdCyen9VLrpD7bY
	Gkp07l/7Gw02UhIJfs2OnURDZXkBYlV3f6XKREWqFN2imkbqim6iP8Hm5e/bSYuQ7TiHysBigHn3M
	Bef5E2iqTRrVFWPE9DeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBcl-0000RR-BP; Thu, 16 Jan 2020 20:20:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBca-0008WP-OH
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:20:06 +0000
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2053F217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 20:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579206004;
 bh=oko1vr6NZIkbqblBi6ADclwFu8hYoUF6zOgs+mmCjwY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L+rMfwJVUI9W+d2CoFvavrawmV6XxbnS/C5pFOW3GNaz/dDJWJPZM8duGoLOAL4lG
 Z02NHO/8MGKmfFb7GIu6L6UBs5VQJuL2gCzfJtQIf5HIZsqZ0+yd6MnHhIphnFuyoZ
 f3RLMs/ybk1B0MMAwdTLCraQ7qACz4TRbZO2ykR0=
Received: by mail-wm1-f47.google.com with SMTP id p9so5148702wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:20:04 -0800 (PST)
X-Gm-Message-State: APjAAAVbnbc0jtFdowSCGH6+Rm/2TtMAfcBDrAn84PFj9gih6oI8Pb1+
 AYu9eMx9lsfCIiYDaZoyKGvjf80o6b5XQwmc2oL2hA==
X-Google-Smtp-Source: APXvYqy/LKhOLCc4c+qZpvX/KQlnVohcy3HlKPdTJR43s7e+TgAW2p8Y+rne7KnqV+o60SXTwTHEOrPWPUde8RosJLE=
X-Received: by 2002:a05:600c:20c7:: with SMTP id
 y7mr794016wmm.21.1579206002474; 
 Thu, 16 Jan 2020 12:20:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <1b278bc1f6859d4df734fb2cde61cf298e6e07fd.1579196675.git.christophe.leroy@c-s.fr>
 <874kwvf9by.fsf@nanos.tec.linutronix.de>
In-Reply-To: <874kwvf9by.fsf@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 16 Jan 2020 12:19:50 -0800
X-Gmail-Original-Message-ID: <CALCETrX9+PZ1h6xex2WZcSqNT7W-6R-E95jv9hLhSdAzhMCrTA@mail.gmail.com>
Message-ID: <CALCETrX9+PZ1h6xex2WZcSqNT7W-6R-E95jv9hLhSdAzhMCrTA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 08/11] lib: vdso: allow fixed clock mode
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_122004_818915_D0B5A4A6 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, nathanl@linux.ibm.com,
 Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Christophe Leroy <christophe.leroy@c-s.fr> writes:
>
> Can you please adjust the prefix for future patches to lib/vdso: and
> start the sentence after the colon with an uppercase letter?
>
> > On arches like POWERPC, the clock is always the timebase, it
>
> Please spell out architectures. Changelogs are not space constraint.
>
> > cannot be changed on the fly and it is always VDSO capable.
>
> Also this sentence does not make sense as it might suggests that
> architectures with a fixed compile time known clocksource have something
> named timebase. Something like this is more clear:
>
> Some architectures have a fixed clocksource which is known at compile
> time and cannot be replaced or disabled at runtime, e.g. timebase on
> PowerPC. For such cases the clock mode check in the VDSO code is
> pointless.
>

I wonder if we should use this on x86 bare-metal if we have
sufficiently invariant TSC.  (Via static_cpu_has(), not compiled in.)
Maybe there is no such x86 machine.

I really really want Intel or AMD to introduce machines where the TSC
pinky-swears to count in actual nanoseconds.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
