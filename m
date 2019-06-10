Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5558D3BB54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSSUy1/iIYH9+zVGNNYIiaCqg0kQw7AtU8Y57ZBqFnQ=; b=FVmB7VIZ1tKjf9
	tJ0cRZGmwjdQu+NjJgZXmPSnbiTwVEUCu9QM0s+3u3szRZe2qFVkdkhs3m+WhXBss5Hu/A6NRyVzO
	apoGrdVl9S6K/jQg6fEe//c26IMjN/GMO+BUeyR1JQ6D0ZM8mJawPAc8yAuBkWQcCOrw5hBjxVi5N
	gyHwQy8ZBX8PDy0fGNjqC1UtFiMNjoF7z6VsoYAd65Bhor78+qltC5u1jwBFAZbccGsIjulz4BgP7
	K5vIFyfOVZOjlOx97vWIS3p0/vG4BPIuxPPsHbTB/UURDzHiGTGM0y3dE09htThFestKXs/BNbPFX
	dHN++O/KHyQ+PDjwbwQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOPN-0005DY-8c; Mon, 10 Jun 2019 17:48:37 +0000
Received: from mail.codeweavers.com ([50.203.203.244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOOj-0005Cp-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B+NQK0qQzwriFdGQRKl3qnBuYxHERXIyxTc267JOpl0=; b=ddQy0EE+r/As82BHbGL2enMiF
 +xSkrfjkaTQ0AJxemttV6by74YhcQ50DLiLC1sA3I03bUdF2mNxbHrY1p4ORkTzfe/rv/xfMgzol2
 SI2MK+71N2dyNCMb6kZwrM5MZdJ8KNTla+ziNnIZzH+w52ZzB0PpDi3xi3X39ShZeK5/E=;
Received: from merlot.physics.ox.ac.uk ([163.1.241.98] helo=merlot)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <huw@codeweavers.com>)
 id 1haOPC-0004C2-Gt; Mon, 10 Jun 2019 12:48:27 -0500
Received: from daviesh by merlot with local (Exim 4.90_1)
 (envelope-from <huw@codeweavers.com>)
 id 1haOOY-0003Rh-VS; Mon, 10 Jun 2019 18:47:47 +0100
Date: Mon, 10 Jun 2019 18:47:46 +0100
From: Huw Davies <huw@codeweavers.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 01/19] kernel: Standardize vdso_datapage
Message-ID: <20190610174746.GA13224@merlot.physics.ox.ac.uk>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-2-vincenzo.frascino@arm.com>
 <CAK8P3a3EnvkLND2RJdZtEY64PhK5g0sbbuytQro=f0cPur2g9g@mail.gmail.com>
 <bb5253b2-623c-c927-27a2-1d3a2990d20f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb5253b2-623c-c927-27a2-1d3a2990d20f@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 04, 2019 at 01:05:40PM +0100, Vincenzo Frascino
 wrote: > On 31/05/2019 09:16, Arnd Bergmann wrote: > > On Thu, May 30, 2019
 at 4:15 PM Vincenzo Frascino > > <vincenzo.frascino@arm.com> wro [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_104757_140727_B71E1319 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:05:40PM +0100, Vincenzo Frascino wrote:
> On 31/05/2019 09:16, Arnd Bergmann wrote:
> > On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> > 
> >> + * vdso_data will be accessed by 64 bit and compat code at the same time
> >> + * so we should be careful before modifying this structure.
> >> + */
> >> +struct vdso_data {
> >> +       u32                     seq;
> >> +
> >> +       s32                     clock_mode;
> >> +       u64                     cycle_last;
> >> +       u64                     mask;
> >> +       u32                     mult;
> >> +       u32                     shift;
> >> +
> >> +       struct vdso_timestamp   basetime[VDSO_BASES];
> >> +
> >> +       s32                     tz_minuteswest;
> >> +       s32                     tz_dsttime;
> >> +       u32                     hrtimer_res;
> >> +};
> > 
> > The structure contains four padding bytes at the end, which is
> > something we try to avoid, at least if this ends up being used as
> > an ABI. Maybe add "u32 __unused" at the end?
> > 
> 
> Agreed, I will fix this in v7.

Note that this is also necessary to ensure that CLOCK_MONOTONIC_RAW
works in the 32-bit vDSO on x86_64 kernels.

Huw.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
