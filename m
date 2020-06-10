Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743DC1F510E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDUz5XvsO8ie7CCIWgeGkQXuIXvT5SwSLIuT08/8+ro=; b=eVFeS5Ckdv1GgW
	+ThxC1wa56t4mSqMn1N4mVyPFtisQnDAqKLEE2UDltHEM5EYkeX3IwjsE1mXTssb95Z5gmyM6httR
	u0jp0RnV7nLU4vuuWoDGB1PriaptA7iITOriNjH2fMZMcie9YjRewP/1ZJ9ah1pb5w6A0w9bYhu7E
	kzycTNuPeUU54ASmeCu/R8HzHZ8UAud7ivMO6B1KiPBOtg5Pop1dyaSMXaDHcRjVDIWn/AZ81O07q
	SaJIc2qM5hhekK3I3wDuMRNz4gPJEpnG32d06jFABp8xBSluFSOH2XJ8Icv1tNVn+mGoT0wa6rVjt
	hrUv0uMMDwdovTzlEpuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwzH-0006oY-Po; Wed, 10 Jun 2020 09:25:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwz7-0006nc-SE
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:25:27 +0000
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 684252072E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591781125;
 bh=/eA/QJUubf9at+73GdiIRLcjJ10Vy+U48/BhWT/Nzwk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Wp9sBpgvrGlap+T5lJQqy4w3BuhRaZSbpYb+ekWahg9mXGvCg5diEhGlpUklp2+Se
 gjLe6jC1SR7moUsGcmMqx+lUWhYXYb5LAuWShbNThGsDphT7PQ4h+pI7HLkME1gn+l
 ZuolZDOm7XB67pnYuzmCgiQP3yMV9hBuXgwv7fGg=
Received: by mail-ot1-f44.google.com with SMTP id s13so1170375otd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:25:25 -0700 (PDT)
X-Gm-Message-State: AOAM532OfjYXIsxNJszpozHgQ1MonaGCLTGLrkxqVlHy60BagBgEY8Ap
 ZsfifmE9pGnITRsVr1vJaKaKLoyjR8402vzRB1k=
X-Google-Smtp-Source: ABdhPJwqdIW5YvH0YwR+hvTuQu3zO+eN0nCz+WgQ53dV2wV7VxMyW5gicppP8yXig3hBva+0KFkNPYR9TZ1DBCG00xs=
X-Received: by 2002:a9d:2de4:: with SMTP id g91mr1811265otb.90.1591781124789; 
 Wed, 10 Jun 2020 02:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
 <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
 <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
 <63eebe9b-9aa8-addd-7965-df59b7237079@marek.ca>
 <20200610085746.GA38107@C02TD0UTHF1T.local>
In-Reply-To: <20200610085746.GA38107@C02TD0UTHF1T.local>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 10 Jun 2020 11:25:13 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFTnxNF955BprE36SoeYY05sgy0yuUGVNuBm-pGbMHOmQ@mail.gmail.com>
Message-ID: <CAMj1kXFTnxNF955BprE36SoeYY05sgy0yuUGVNuBm-pGbMHOmQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_022525_928495_3FE11F29 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jonathan Marek <jonathan@marek.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 at 10:57, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Jun 09, 2020 at 08:52:42AM -0400, Jonathan Marek wrote:
> > On 6/9/20 8:37 AM, Ard Biesheuvel wrote:
> > > On Tue, 9 Jun 2020 at 14:35, Jonathan Marek <jonathan@marek.ca> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Just want to add that this patch also broke booting my arm64 kernel
> > > > (CONFIG_RANDOMIZE_BASE=n). This is on a recent qualcomm board.
> > >
> > > Which bootloader does it use?
> >
> > abl/edk2 (https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/?h=LA.UM.8.12.r1-11700-sm8250.0)
> >
> > Just looking at it quickly (I am no bootloader expert), I think this may
> > have something to do with it: https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/QcomModulePkg/QcomModulePkg.dec?h=LA.UM.8.12.r1-11700-sm8250.0#n149
> >
>
> For others following, the relevant lines are:
>
> | [PcdsFixedAtBuild.common]
> |   # linuxloadercommon
> |   gqcomtokenspaceguid.kernelloadaddress|0x00080000|uint32|0x00015000
>
> ... which means this is using the dodgy built-in Linux loader rather than
> booting Linux as an EFI application. It's disappointing that's still being used. :(
>

Yeah.

So one way we might deal with this is to make CONFIG_RELOCATABLE
default to y (unless CONFIG_EXPERT?), independently of
CONFIG_RANDOMIZE_BASE, so that even if you decide to disable KASLR,
you still get the metadata you need to apply the relocations. This
uses a bit more space, but I think it is a reasonable compromise
between support for broken bootloaders such as this one, and having
the ability to trim down your kernel if you want to.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
