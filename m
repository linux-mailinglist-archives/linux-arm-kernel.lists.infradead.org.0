Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA151EE7F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KKFF84crcA348RLm0AQIZZMXMNDTHYjHZKdGHtYod4=; b=PG7icQoLSVLWRr
	I/N1ilBbgckxrbct/3/4BqhqeaTZ/IDZVRgmxTBBlInmRpdHJbS3sNrVwERdxu4PFIgkjusOpYGKn
	7o4yTjrHh2Q2A6G+CVUTrOPOp3hb6oezsDRVfSqAYeSiLXFK0PdHD7iTf0lPWd6SN8F4u3+9XWp/v
	juXdLHJrpCy9fn++lpDuJtNlGnxLpygxwqAyEfWl7fRGXZOaKI5vcARagPQez0ez1PAIzPmJsLq00
	oIFkOEeNE3upXgeEg2S2P0Ru7x29gD2cywbxZNmTpW5m9OGqJr81krQGkP3qDjz4QfbclEZuS3SrE
	bvzngNFGCiCjsrH7fjSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgs0M-0006Fo-8J; Thu, 04 Jun 2020 15:42:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgs0E-0006FP-6f
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:41:59 +0000
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84C16207F5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jun 2020 15:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591285317;
 bh=pK4FDu7W2yf0eqKYhRyMiWJuadUAIebGFaZQ87At2RM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hCehaAqsrAjEf0X3A8xzqVWbbszeuxgDXusBpS8P5ZsAsDH2w3qkyKIQdJdzeco0r
 5SK987TG8piqM2l/qEKhmqDg8xmYeiDloeq73L+UigjOFXLR6CGKMh4UEVfJAyIMMn
 ieNO1Xy135orWEAeSGkQaFZXQxXvRwj6aForWFQA=
Received: by mail-oi1-f180.google.com with SMTP id d67so5466454oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 08:41:57 -0700 (PDT)
X-Gm-Message-State: AOAM530Jv3tQ2maHxzp6z5afJl88hqHZ9CfmQVZ6J92DAcqLytZSFtH6
 mfKfad2tnJHNYrc9VPPCzlMEUsYTu5Mlsahsaa4=
X-Google-Smtp-Source: ABdhPJxpeqw4EYX9MmG08zICZV3coWi/iKvKaf0ZN4tKtm8Rdj7gSWaZsyepiLLydDD3vqMpajFSDvP0wt8Lgm/jZew=
X-Received: by 2002:aca:b707:: with SMTP id h7mr3694316oif.174.1591285316871; 
 Thu, 04 Jun 2020 08:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200415082922.32709-1-ardb@kernel.org>
 <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
 <20200604154141.4983aeaa@why> <20200604150122.GA3650@willie-the-truck>
 <fab4fb9e66fe48d82c9856a7d5839335@kernel.org>
In-Reply-To: <fab4fb9e66fe48d82c9856a7d5839335@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Jun 2020 17:41:45 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
Message-ID: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_084158_261383_5CE94C62 
X-CRM114-Status: GOOD (  21.14  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jun 2020 at 17:25, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-06-04 16:01, Will Deacon wrote:
> > On Thu, Jun 04, 2020 at 03:41:41PM +0100, Marc Zyngier wrote:
> >> Hi all,
> >>
> >> On Tue, 28 Apr 2020 15:49:35 +0100
> >> Will Deacon <will@kernel.org> wrote:
> >>
> >> > On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
> >> > > TEXT_OFFSET on arm64 is a historical artifact from the early days of
> >> > > the arm64 port where the boot protocol was basically 'copy this image
> >> > > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> >> > > to put the swapper page tables. When the arm64 port was merged for
> >> > > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> >> > > to allow the bootloader to discover it dynamically rather than hardcode
> >> > > it to 512 KB.
> >> > >
> >> > > [...]
> >> >
> >> > Applied to arm64 (for-next/misc), thanks!
> >> >
> >> > [1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
> >> >       https://git.kernel.org/arm64/c/cfa7ede20f13
> >>
> >> This breaks a guest kernel booted with kvmtool (tested on my d05).
> >> Reverting it on top of 6929f71e46bd makes it work again. I haven't yet
> >> investigated what is happening here though.
> >
> > Weird, that's a combination I test, just not on d05. Are you using
> > defconfig? Can you share your full kvmtool invication please?
>
> Ah, good point. Not defconfig, but one that allows me to run the same
> kernel on my whole zoo[1]. As for the kvmtool invocation, it is pretty
> basic:
>
> lkvm run -m 512 -c 4 -p earlycon -k arch/arm64/boot/Image
>

OK, so my suspicions is that your config does not enable
CONFIG_RANDOMIZE_BASE, and that kvmtool ignores the text offset value
in the header altogether.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
