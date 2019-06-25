Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F55A55892
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UBH6YGxLpgm+OdHsYAZ7seVIoyRnSXJ+TRV6AgZCnY=; b=MCsrKwhzXNGIeX
	eX6mpX9mzcbSS+hzMQ+PFEKQ2b7YIgsdjxDftGCBmc5a0EwmUOFvoEFi463PIb1KeuM9oJ+GoohO7
	kFwLXmRo2VMv1ZxlWjqBHQ2PKn+RJb8Wg0ZR7PtZ1nDgzI+XcIVJKBELmmROC0VrYgZhJA18KxFAj
	Nangky0LRfcsfK5O+DYVaqx4Ri04mRPv73hg1tfMWNXaWa9COftyVX5ZClMGe0uRtgj06ZqAFYSdq
	EiTdi9n2/D2V96ZeN5Awe5oDiXLD+y+QrcXnpHCCJZPf3aGkgoISuOmPmNE8Bu3FLb24wVCWBpG82
	391UMsZ6YqlhmKotYAcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrr1-0006Yq-ME; Tue, 25 Jun 2019 20:15:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrqo-0006YO-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:15:35 +0000
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 035A12146E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 20:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561493732;
 bh=Non/zwPybF2AGuhmjwFgxmMCpYW8ogfnhbNrhDKk/vc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lLPnssPRCinSZhMedXFl4IX9MsXTNhVSxFwL4KFntKi0pXjqZtp295xgMzrg8LGbO
 mOUGpRdpbB/L63NxLJu57zUIKU8V40nkRaOVFZ6w0Dr1RtDyGNFekX200zDZun+Q1n
 hwMQ4fQRt/bJqYXOD6mBo2LKulD7skPGobAZzDmU=
Received: by mail-wr1-f42.google.com with SMTP id x17so39164wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:15:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVYi70KYyDXXTh4fwl5/paMc4XB1MwgxmnHXSy4oKqPv+TBcn8x
 i87Vk/EAFrLqLwgkb+n2LIxehKSpE+jG5xa3ubGTRQ==
X-Google-Smtp-Source: APXvYqyhHtmITJg1+Pl3hirpl0QwbJ++nvN6wGzhM8y02SUtgxU8TIY6h1kuPsgr5idu476pi12gfJv0CJukh1rt4Oc=
X-Received: by 2002:adf:cc85:: with SMTP id p5mr17560wrj.47.1561493730555;
 Tue, 25 Jun 2019 13:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906252024350.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906252024350.32342@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 25 Jun 2019 13:15:19 -0700
X-Gmail-Original-Message-ID: <CALCETrWE3zYN-6h0RkMV9j5kSkSWbJ-nQnjhH=md=ybSR0eZ9Q@mail.gmail.com>
Message-ID: <CALCETrWE3zYN-6h0RkMV9j5kSkSWbJ-nQnjhH=md=ybSR0eZ9Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_131534_314149_C644C08B 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Andy Lutomirski <luto@kernel.org>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Huw Davies <huw@codeweavers.com>,
 LKML <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:27 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Tue, 25 Jun 2019, Thomas Gleixner wrote:
>
> > On Tue, 25 Jun 2019, Vincenzo Frascino wrote:
> >
> > CC+ Andy
> >
> > > do_hres() in the vDSO generic library masks the hw counter value
> > > immediately after reading it.
> > >
> > > Postpone the mask application after checking if the syscall fallback is
> > > enabled, in order to be able to detect a possible fallback for the
> > > architectures that have masks smaller than ULLONG_MAX.
> >
> > Right. This only worked on x86 because the mask is there ULLONG_MAX for all
> > VDSO capable clocksources, i.e. that ever worked just by chance.
> >
> > As we talked about that already yesterday, I tested this on a couple of
> > machines and as expected the outcome is uarch dependent. Minimal deviations
> > to both sides and some machines do not show any change at all. I doubt it's
> > possible to come up with a solution which makes all uarchs go faster
> > magically.
> >
> > Though, thinking about it, we could remove the mask operation completely on
> > X86. /me runs tests
>
> Unsurprisingly the results vary. Two uarchs do not care, but they did not
> care about moving the mask either. The other two gain performance and the
> last one falls back to the state before moving the mask. So in general it
> looks like a worthwhile optimization.
>

At one point, I contemplated a different approach: have the "get the
counter" routine return 0 and then do if (unlikely(cycles <= last))
goto fallback.  This will remove one branch from the hot path.  I got
dubious results when I tried benchmarking it, probably because the
branch in question was always correctly predicted.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
