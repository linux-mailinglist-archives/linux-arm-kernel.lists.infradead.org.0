Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBB5552AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8gE88+8Fug3Ho5QSnitq2P8wodpCTU8qdRk1Yp8STM=; b=fY1QzN5acDvObv
	sTNEqJF/GI6d90AnRdX10bWGqxD5zzFB2zwWNPPgfZv4N7kdlFFHFEN0pxmHFcEZGkpD/PZNKjocJ
	eKgHWjweg1gE0WK+jBewDY0lY/USjpRFgKJT6vPuQW8crVbqnhE7i5TLMzWey5UNBM2cXag8abIt2
	xv66ohp7oC57ty/hAI8L5x0nzSqG8TuZubu/TW+dxElakh3WkFLWeQo4HPmx/6SHEH3DeGT3adfoD
	ke/GIH4VR2vrnzff6mk3mTd/D5642zeSfNkJQx8WIxMsfuycaX/qBi5QeimS+M5qJoEE0yTbBCyZC
	wN6g5nkB2Umbo8CAmYog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmtW-0001LY-8A; Tue, 25 Jun 2019 14:58:02 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmtF-0001Jy-8x
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:57:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so1338746ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RBh67YpD0OD3yk7o9NnrHFyxQK0UDHxkzLQbD7b4rwE=;
 b=XfZxVwfASv28bRs/Mc62z3XSt8P5A0VDGk10sOg2hpvQ/5cPKvzpz1V3evOZF6/4KJ
 AnleaSm34GE+7y0SNhj0nWKJnSpeafz8CFG7td98q0mdy5jfOqCVEim45aUBQxSw0suc
 76Etm2Y+ItN2m/KpPNXEm4fbF+XO1GPglKF9r0CmOoOwHc77VoIqPdMmtG7vD4JSRHso
 uxU4pR19dQHXRqzJOulZLS8LdF7cKTQU4cIW/QbBA3r3xy9D0fKNs0cc9xyB/WoqZxK4
 7EuWRmOi++X4LezqrWCNe6yRol7AeBep4+y0X7CrpeJU41a4f3oBABymDEifprpTqJHq
 1tKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RBh67YpD0OD3yk7o9NnrHFyxQK0UDHxkzLQbD7b4rwE=;
 b=qIanSQ/59K2e5UgMO+o7v+KQ29sz5T0uziTSfF+5rloHqSSidxFgbUDr1ltlmaHq1s
 e7Txf0wkGjYFxnou1BeIEFWP3J/p8RzXfyA0wbJcQmJ/9tyrVDhm5/fRpRIi0o+zMdmw
 h3cg7XHY0fkkktlL2AfXwgZ2oqeMJuu2qxBlF5z9Yv51cWCc0mqMnSJi6CPLZhQHyZO4
 ht6cssf7xnRjPWQBxkYR+V205DPmaLhE0+UP5cdc1EnULsaxCJRpC14yjtyu26uoWhtK
 8lCprUtlrogsNXRLi65VUDBM5lDKGsfcVEAf6EHF/HLVbBjFMvh6O7DUh9LFzM2W4w3l
 Bdfg==
X-Gm-Message-State: APjAAAWa9WXn1LntvIr4FlFrvrSzLWpQITUc/xRkDex4fwBhBEc5mc+c
 UWxtZAPs+KF92eU2ZqI4lieslZAkgsAM9EF4r3XYCQ==
X-Google-Smtp-Source: APXvYqydvpi8w/9A5Oy0x7L4gDZlAzUZu5PBL/jut5pWoijZm/8R1k2vmedCHN3PysHlS+a0kc25WXaeeJo3EQAULuI=
X-Received: by 2002:a5d:8794:: with SMTP id f20mr5184824ion.128.1561474663956; 
 Tue, 25 Jun 2019 07:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624165641.GB211064@gmail.com>
 <CAFqZXNvE2YaanvjQJq41AdcQh8qeY3=idng29GT=8Pt61PU_uw@mail.gmail.com>
In-Reply-To: <CAFqZXNvE2YaanvjQJq41AdcQh8qeY3=idng29GT=8Pt61PU_uw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 25 Jun 2019 16:57:32 +0200
Message-ID: <CAKv+Gu_MV+eiAvv4QiMA9_8NSrpMaxggd0Sd-KAMhvW52STTXA@mail.gmail.com>
Subject: Re: [PATCH 0/6] crypto: aegis128 - add NEON intrinsics version for
 ARM/arm64
To: Ondrej Mosnacek <omosnace@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_075745_340045_6BEAE412 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Steve Capper <steve.capper@arm.com>, Eric Biggers <ebiggers@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 16:07, Ondrej Mosnacek <omosnace@redhat.com> wrote:
>
> On Mon, Jun 24, 2019 at 6:57 PM Eric Biggers <ebiggers@kernel.org> wrote:
> > On Mon, Jun 24, 2019 at 09:38:12AM +0200, Ard Biesheuvel wrote:
> > > Now that aegis128 has been announced as one of the winners of the CAESAR
> > > competition, it's time to provide some better support for it on arm64 (and
> > > 32-bit ARM *)
> > >
> > > This time, instead of cloning the generic driver twice and rewriting half
> > > of it in arm64 and ARM assembly, add hooks for an accelerated SIMD path to
> > > the generic driver, and populate it with a C version using NEON intrinsics
> > > that can be built for both ARM and arm64. This results in a speedup of ~11x,
> > > resulting in a performance of 2.2 cycles per byte on Cortex-A53.
> > >
> > > Patches #1 .. #3 are some fixes/improvements for the generic code. Patch #4
> > > adds the plumbing for using a SIMD accelerated implementation. Patch #5
> > > adds the ARM and arm64 code, and patch #6 adds a speed test.
> > >
> > > Note that aegis128l and aegis256 were not selected, and nor where any of the
> > > morus contestants, and so we should probably consider dropping those drivers
> > > again.
> > >
> >
> > I'll also note that a few months ago there were attacks published on all
> > versions of full MORUS, with only 2^76 data and time complexity
> > (https://eprint.iacr.org/2019/172.pdf).  So MORUS is cryptographically broken,
> > and isn't really something that people should be using.  Ondrej, are people
> > actually using MORUS in the kernel?  I understand that you added it for your
> > Master's Thesis with the intent that it would be used with dm-integrity and
> > dm-crypt, but it's not clear that people are actually doing that.
>
> AFAIK, the only (potential) users are dm-crypt/dm-integrity and
> af_alg. I don't expect many (if any) users using it, but who knows...
> I don't have any problem with MORUS being removed from crypto API. It
> seems to be broken rather heavily...
>

OK, patch sent.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
