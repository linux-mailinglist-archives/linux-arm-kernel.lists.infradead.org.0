Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8E01EDDEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZy1FEKwkhZKbr6A4lDiWtSrb1FC6hNuVFZE2RsBh20=; b=N6NDDCL+hlvqtu
	KZ/88zyuM+HpZhLU3H+Mg7KKSOOUwBvhrypU9tvJ7spC/z3Bc+t0LzHttTAa5IGMLzxidzs4Qvf4n
	BANCsrxlk7io0yKJHiojK8mmydyt4a49jK8P7DDuWK+1nTrbiLQUk3OGz0SLzRAVANuJQpY6mokTl
	iCeYqIcRPhXTm3y45bYklrdHcYEx8IRFJb+g1N4B0s8W/+zk99xT1tVa3uNorqlnEINIK0djMdXYd
	5Au6aKvYAl6u6+EwWIRhNiQfTXgSamszBisCVfyaWYc/pYQ6PAAAL1psQ/jSONWL0ceBQgQxhAx8r
	nf8V7ZCpmrT9Ot3Hi6vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkA6-0006J2-Tp; Thu, 04 Jun 2020 07:19:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgk9y-0006Hc-E8; Thu, 04 Jun 2020 07:19:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83AEC206DC;
 Thu,  4 Jun 2020 07:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591255169;
 bh=ETl2ZxNOKb1cDLDKRZ2alx6UEVWZ+SN+r8+JbZmbJnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ufXYBTJPnU5EFSxHKDYwKnUA4G8CcNq1OZhCCHpQMkayuaguK9VP/u8SKUL4R4xbT
 c8XDu2PQXPgtEwnYiHgQfIFtmjiyCjIH6uNzAqDUWBviaatZM50AFO8/f2x0vFje22
 9IgYTM16yaUTXaK+ouUXysDmGRmO6wU6AuaGXQ+U=
Date: Thu, 4 Jun 2020 08:19:24 +0100
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Message-ID: <20200604071923.GB30155@willie-the-truck>
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
 <DM6PR18MB24258C2F2B91E4BF407421CDD2880@DM6PR18MB2425.namprd18.prod.outlook.com>
 <CACi5LpOyQ+MAg9rh=cgLprBGTZ3kvtVP1ShNKG-2AV1Tu14EgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpOyQ+MAg9rh=cgLprBGTZ3kvtVP1ShNKG-2AV1Tu14EgQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_001930_526489_E3124D41 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kamlakant Patel <kamlakantp@marvell.com>, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 02:04:58AM +0530, Bhupesh Sharma wrote:
> On Wed, Jun 3, 2020 at 4:50 PM Kamlakant Patel <kamlakantp@marvell.com> wrote:
> > > diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
> > > index 1f646b07e3e9..314391a156ee 100644
> > > --- a/arch/arm64/kernel/crash_core.c
> > > +++ b/arch/arm64/kernel/crash_core.c
> > > @@ -7,6 +7,14 @@
> > >  #include <linux/crash_core.h>
> > >  #include <asm/cpufeature.h>
> > >  #include <asm/memory.h>
> > > +#include <asm/pgtable-hwdef.h>
> > > +
> > > +static inline u64 get_tcr_el1_t1sz(void);
> > > +
> > > +static inline u64 get_tcr_el1_t1sz(void) {
> > > +     return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET; }
> > >
> > >  void arch_crash_save_vmcoreinfo(void)
> > >  {
> > > @@ -16,6 +24,8 @@ void arch_crash_save_vmcoreinfo(void)
> > >                                               kimage_voffset);
> > >       vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
> > >                                               PHYS_OFFSET);
> > > +     vmcoreinfo_append_str("NUMBER(TCR_EL1_T1SZ)=0x%llx\n",
> > > +                                             get_tcr_el1_t1sz());
> > I tested this patch on top of upstream kernel v5.7 and I am getting "crash: cannot determine VA_BITS_ACTUAL" error with crash tool.
> > I looked into crash-utility source and it is expecting tcr_el1_t1sz not TCR_EL1_T1SZ.
> > Could you please check.
> 
> Indeed. As per James comments on the v5 (see [1]) where he suggested
> converting ttcr_el1_t1sz into TCR_EL1_T1SZ, I made the change in v6
> accordingly.
> 
> This time I haven't sent out the v6 userspace changes
> (makedumpfile/crash-utility) upstream first, since we are waiting for
> kernel changes to be accepted first, as we have seen in the past that
> while the userspace patches have been accepted, the kernel patches
> required a respin cycle, thus leading to inconsistencies, as you also
> pointed out with crash-utility.

Yes, and that';s the right way to do it. Userspace can't rely on the
stability of a kernel interface if it's no in the upstream kernel!

So doing with the ALL CAPS names is the right thing to do.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
