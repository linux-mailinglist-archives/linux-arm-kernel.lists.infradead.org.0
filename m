Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD4C14C6C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 08:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jP2mzjZnOQRnyPhnjx76wSg/vaH6xw7CHc3Lo5eX/nA=; b=KFZJGl6t/rmq8m
	CtQWnSdIDXE0Dvs2TgnlrgonVp4Gi9v5qeug8td7Ajg3Xmt8+jqTCLfwZOmnvjuCBC4ka4NeF4DPm
	i5k2aWHjTPvnpYQXsS3be1rFohwDp1mY/8TIEaPYGQPjVMwwv8uc6rpJxxXq1U147/7tNd52cpUQl
	bk229FcY/5mSahHZpH8SJ09KnphQrPQ1TPUpp/G2aol4WsjB8wKYpPwjPN/+XG8ZfYyoWePVy0FUU
	ZCO+yVFu1SZyOVzwhJcxr4yqa6o1+Efj95WRHEZzfeLrrKBM0DhIv6uRMlaLgWm6d3AWkpk1t/RsZ
	DNvs/+XHC15xpzi9B4Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwhYq-0000qM-1d; Wed, 29 Jan 2020 07:14:52 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwhYj-0000pz-6m
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 07:14:46 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iwhYR-0003r2-Ta; Wed, 29 Jan 2020 08:14:28 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 66BB8101227; Wed, 29 Jan 2020 08:14:27 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [RFC PATCH v4 10/11] lib: vdso: Allow arches to override the ns
 shift operation
In-Reply-To: <CALCETrX5B0SEJN2WG7rzuzbGhWa_dEwVVpMu6deXof3H+K_LdQ@mail.gmail.com>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
 <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
 <877e1rfa40.fsf@nanos.tec.linutronix.de>
 <CALCETrX5B0SEJN2WG7rzuzbGhWa_dEwVVpMu6deXof3H+K_LdQ@mail.gmail.com>
Date: Wed, 29 Jan 2020 08:14:27 +0100
Message-ID: <87mua64tv0.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_231445_391233_7EE02FDE 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Andy Lutomirski <luto@kernel.org> writes:

> On Thu, Jan 16, 2020 at 11:57 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>>
>> Andy Lutomirski <luto@kernel.org> writes:
>> > On Thu, Jan 16, 2020 at 9:58 AM Christophe Leroy
>> >
>> > Would mul_u64_u64_shr() be a good alternative?  Could we adjust it to
>> > assume the shift is less than 32?  That function exists to benefit
>> > 32-bit arches.
>>
>> We'd want mul_u64_u32_shr() for this. The rules for mult and shift are:
>>
>
> That's what I meant to type...

Just that it does not work. The math is:

     ns = d->nsecs;   // That's the nsec value shifted left by d->shift

     ns += ((cur - d->last) & d->mask) * mult;

     ns >>= d->shift;

So we cannot use mul_u64_u32_shr() because we need the addition there
before shifting. And no, we can't drop the fractional part of
d->nsecs. Been there, done that, got sporadic time going backwards
problems as a reward. Need to look at that again as stuff has changed
over time.

On x86 we enforce that mask is 64bit, so the & operation is not there,
but due to the nasties of TSC we have that conditional

    if (cur > last)
       return (cur - last) * mult;
    return 0;

Christophe, on PPC the decrementer/RTC clocksource masks are 64bit as
well, so you can spare that & operation there too.

Thanks,

        tglx




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
