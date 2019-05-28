Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306ED2C6A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWVGfxMOAHsaPol6PIy+9oMW77Zq5mzN0idQlTyMihA=; b=A376buwVVydJRC
	SVyV9HjCIbBk2idU+u4z4XFbDCgWhPZqTsGXL7tnLn8j+tHHkysTuTBJUhH0UzJAWHBeQzJWxANCG
	b5ch8W1g15OUGGOG0NKeQaQt3aGw+O4W8FaWku5VAs44RDV41rP5/2i3i/FrKrslXL+usl8e/PiiW
	TztHqXP6S8gxkHam4U5Vdd2Fpf9apiklouUFDZea594xTR3gR0iMjYlGbkq7Lc86Agwm4MtDv6Wib
	YWH9P4iuEkab7+ZbfThNtji6VatXBaOuZ5LfcS3buxZlpefBAIxOvnAO3sgAk6trZFP4CnFmkFu8x
	sjIoRlgmqnKU0nTEOKug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbL8-000609-9G; Tue, 28 May 2019 12:36:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbL0-0005xZ-Iu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:36:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA60680D;
 Tue, 28 May 2019 05:36:17 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAA933F5AF;
 Tue, 28 May 2019 05:36:16 -0700 (PDT)
Date: Tue, 28 May 2019 13:36:14 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
Message-ID: <20190528123614.GB20758@fuggles.cambridge.arm.com>
References: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
 <20190528101147.GB20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8q1ABorbhL7yBjdKP=xt0gkFn2-BSntifkbx8w=bE=bg@mail.gmail.com>
 <20190528115205.GH20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8QXFB2eN8FJWtx0kRPa-DCZvEV2u8avsZJqT8vWc_N0Q@mail.gmail.com>
 <20190528121343.GA20758@fuggles.cambridge.arm.com>
 <CAKv+Gu_=FiY-onBC4Bq64QC3_pRL7AFGz3WQ1t99iqz3N4219w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_=FiY-onBC4Bq64QC3_pRL7AFGz3WQ1t99iqz3N4219w@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_053618_670225_3EBCC839 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 02:26:04PM +0200, Ard Biesheuvel wrote:
> On Tue, 28 May 2019 at 14:13, Will Deacon <will.deacon@arm.com> wrote:
> > On Tue, May 28, 2019 at 02:03:37PM +0200, Ard Biesheuvel wrote:
> > > On Tue, 28 May 2019 at 13:52, Will Deacon <will.deacon@arm.com> wrote:
> > > > On Tue, May 28, 2019 at 12:20:53PM +0200, Ard Biesheuvel wrote:
> > > > >
> > > > > My patch does not follow the ELF spec for either ABS16/32 or PREL16/32
> > > > > relocations. It chooses an unsigned interpretation for the former, and
> > > > > a signed one for the latter, and I think this is the only way to deal
> > > > > with this properly.
> > > > >
> > > > > This is why I updated the comment as well: we should apply a strict
> > > > > (but different) interpretation to both kinds of relocations, not just
> > > > > the relative ones.
> > > >
> > > > Ah, apologies, I missed that you'd changed the ABS behaviour from what it
> > > > was prior to 1cf24a2cc3fd. My main gripe is that our (currently unused)
> > > > fallthrough case (for op != PREL or ABS) is to elide the check altogether,
> > > > whereas I would prefer that we do our special casing with the comment, and
> > > > then keep the old overflow check for everything else, even though it's
> > > > really just there for documentation purposes.
> > > >
> > >
> > > Something like this perhaps?
> > >
> > > s64 min = (op != RELOC_OP_ABS ? S32_MIN : 0);
> > > s64 max = (op != RELOC_OP_PREL ? U32_MAX : S32_MAX);
> > > if (sval < min || sval > max)
> > >     return -ERANGE;
> > >
> > > Or is that too obfuscated?
> >
> > It's a bit too smart for me ;)
> >
> > I think I'd just switch on the op and duplicate the check, tbh.
> >
> 
> So like this?
> 
> switch (op) {
> case RELOC_OP_ABS:
>     if (sval < 0 || sval > U32_MAX)
>          return -ERANGE;
>     break;
> case RELOC_OP_PREL:
>     if (sval < S32_MIN || sval > S32_MAX)
>         return -ERANGE;
>     break;
> default:
>     if (sval < S32_MIN || sval > U32_MAX)
>         return -ERANGE;

Beautiful. You'll probably end up duplicating the logic for the 16-bit
case, but whatever.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
