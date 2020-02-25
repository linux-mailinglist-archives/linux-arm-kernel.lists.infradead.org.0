Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E58216EC86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RINzhiTaNxhGHwM4KDz36lw8tF/iCzebaKcoGr4Qcsc=; b=LyWIC9You66UZa
	MaQk2aJHO1TqHIHPVyvTXCsfPhBko6pGaZUVTB7fDQlVfnt91H046YG8Pt+AKxSJoJeD6lSXowL9Q
	UAd5wATG4SflKXguyaiz4znL4Gso1Bhl8XO4tzBxMB+oiDweQHYmONYRA9jQHwfHlM9SsMKfMtToD
	9/hpY4zD3/pMXbE8bud9UldrqOQ0ZHo+ApOGsqkqZt0NNQZdSSG83Vjwk/ATtMbkdyM43Ht2s+uJG
	41zeI+wJxIJA5HSKdOBVSxXg9OtPGrAQ5E2p5TU8U4b3SndKYhJBBeNcfpSXVOoPkd7T1tAzaMcbn
	JuiC6do5MzPYz35DLTrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6e1o-0005NN-Dd; Tue, 25 Feb 2020 17:29:52 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6e1d-0005Mk-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:29:43 +0000
Received: by mail-ot1-x342.google.com with SMTP id b3so278901otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NyG26lyxGD7m/DaTGX9kmtUYF3eVug/GbUwr6ZOTigw=;
 b=SxTCgDW8Ed8rTX1s1eN1gRC872t3VIQQrutklDD9I9CrMFpwHXjVz2K0AEk33pAnIN
 jhZHu2lxxyuGQ6dUANCHDFvlv51O9iu/sFYsPl/bB31Hu1WMnw2xczA8lOCyu54ESn60
 k7/SQhnZLNZeluUWysS4LB5na487vOUFgqDz4UHBQUSX6QRuWUKU7x5LsW/uhyDMGABC
 1biZlAjQwnl3E/tZFG/NC5NHkRXs+MAX65qISS0wSZ0LCkb0Wn1F/9uPTag9w11fMUdl
 ZDtldUmOsZcYbBvOaS4H9Czk4E0HxVFYE75PIj1UTBaXQs1lcNvWPzg+wpu4wTPnz7RN
 MTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NyG26lyxGD7m/DaTGX9kmtUYF3eVug/GbUwr6ZOTigw=;
 b=jxAzvuvowfmtfBryQsSzsCWcnqrCUZlmV/WP05nTOGf0KxkSAKovStusapnE9OSJN9
 V/oeVbYh7FvTkBsbsVfAr1qFJ7XqiB/I+ZfAYO0lcy0JuZRZKK4pBNl/FzsK9odgEuog
 VrsSN6Y86RdEVLrXVMlsJLaIQ/gmnKi6U2RyeN355c+nkJG7uzhtc/4IbZv0cCugThNm
 TL/dw0rwGcD61QTCETCbEsgVRJPRv/L+vwUhI69vbeZ39lDMpejtjX+QOjA8Y0BLB4jx
 rcLiNlrboG6nWjxZNXAlGklgtL8PBl4E1qnN3U5yr4gLM2HyxSUGbq4Et0BzUiLWRl21
 gBOw==
X-Gm-Message-State: APjAAAXV9ziVeWB9uN6d0TDr7X1hygsWvlXevJbcdud0mixae4f9ZYQ6
 TwO2kYSWJxjlt/3iUmcKb4NqM03E2A8iHZoaWf/SDQ==
X-Google-Smtp-Source: APXvYqyepq2NxvafgK4UNifXlQRyDUSYkUDqSdVu1MDa+nd6lCK3uSUOh4Q+UfAAShJGJWf0dQzirR5spCfg+0Ka7MU=
X-Received: by 2002:a9d:2dea:: with SMTP id g97mr45982290otb.33.1582651779967; 
 Tue, 25 Feb 2020 09:29:39 -0800 (PST)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
 <8f2efa884c7cb642a9b9fa66c7949607@kernel.org>
 <CAJ+vNU0d5_LsnzFq0_5=6-i5G5y5AjvWZhO5x_TVBLjor--TtQ@mail.gmail.com>
 <82811bd7d5269431f99462b8daa0f4b2@kernel.org>
In-Reply-To: <82811bd7d5269431f99462b8daa0f4b2@kernel.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 25 Feb 2020 09:29:28 -0800
Message-ID: <CAJ+vNU01wSoECcr7Anfb_bMGt_2VPCFysMk5U44_qOe9+AiqQQ@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_092942_103476_94B09207 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 9:19 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-02-25 17:04, Tim Harvey wrote:
> > On Tue, Feb 25, 2020 at 9:00 AM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2020-02-25 16:35, Robert Richter wrote:
> >> > Marc,
> >> >
> >> > On 25.02.20 16:27:41, Marc Zyngier wrote:
> >> >> On 2020-02-25 16:13, Tim Harvey wrote:
> >> >
> >> >> > That does enable the erratum, disable KPTI and boot properly but I
> >> >> > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
> >> >> > erratum is documented only needed for pass 1.0.
> >> >>
> >> >> Can you then remove the patch *and* disable KPTI?
> >> >>
> >> >> TX1 is broken beyond recognition and KPTI is known to explode on this
> >> >> HW
> >> >> (which is why we disable KPTI on it). We always attributed it to this
> >> >> erratum,
> >> >> but in the absence of any help from Cavium to identify the problem, we
> >> >> just
> >> >> keyed it on that.
> >> >>
> >> >> *IF* this HW is indeed unaffected by it, then it is probably the mix
> >> >> of
> >> >> KPTI and SWPAN that triggers the issue. If my suspicion is correct,
> >> >> you'll
> >> >> need to have a chat with Cavium/Marvell to understand what is
> >> >> happening
> >> >> there.
> >> >
> >> > I checked the docs and Tim is right, this should be only visible on
> >> > pass 1.0. Thus, the rev range to enable the workaround as implemented
> >> > upstream should be ok. I have asked hw folks regarding this.
> >>
> >> Then it could well be that our disabling of KPTI on TX1 is keyed on
> >> the
> >> wrong
> >> erratum. In the absence of a clear explanation of what is going on, we
> >> made
> >> an educated guess. If oyu're going to find out about what breaks this
> >> CPU,
> >> it'd be good to understand whether this is the same problem that
> >> affects
> >> all
> >> the other revisions.
> >>
> >
> > Marc,
> >
> > What's the right way to disable KPTI for ARM64? It seems 'nopti' and
> > 'pti=off' are not honored for arm64?
>
> kpti=0, as documented in
> Documentation/admin-guide/kernel-parameters.txt.
>

Serves me right for Googling it and finding outdated info instead of
reading the right docs!

Yes, disabling KPTI with 'kpti=0' does work around the issue.

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
