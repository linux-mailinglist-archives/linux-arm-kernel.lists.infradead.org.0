Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346391A08E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFqi6OjdIy7hdE0GnHoqwMCT7eli17txxDewNMUlkaQ=; b=Q3vFrX6MscllHy
	BYzOcxcSbqu16ZGgPGpWusK8EYptksVtvsjd23IL67wHGH1/fsYL8eP9nE9Invdq4txTsOH8cr+TC
	HLwPQbJHAD4Upzt7AleiaDa+vbdfVXI5Zc8GWzrJgyv7laaeSbP6Xxb+KVXEM5TfHBFD3DZTuzGRT
	Pc3RD/9QVjZhY3vKbsVwTqOtvcDYfxk3vKESFPW8CpffxkkMovARUfYzcMtQ3mPaC12uBxTZCU6yM
	jhOCZsZTqUKloaDs7G+f17zNxDu3tTut8C4aee2dx/0dJND35hbcw/AqpkE/qkZ+EhJOdTArqNyuo
	w9UT5mGtqmFeUSnaKc5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjHJ-0004iL-CE; Tue, 07 Apr 2020 08:08:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjHB-0004hh-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:08:07 +0000
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5532220730
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586246885;
 bh=xkADbzVLtud6m/+4evkDQMCfw2n794Vkxp3wdzhIe5c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eBXPcdOH3SLwhrCsbStr6LlvZvcgM4nk3FbBm0inY5FHPjPjzRLLa8Wp5zcZiwS3a
 916urRF3rf+Y4lQij6x0SiwhH+3iQ/+9XW8/VvMEwcaYQtvZAtFNKOK+Rn/q9+r3Wf
 g728ef8nCtg0rDLmLx+DJqteieWPHUf6G+w4073E=
Received: by mail-io1-f42.google.com with SMTP id i19so437614ioh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 01:08:05 -0700 (PDT)
X-Gm-Message-State: AGi0PuZWiCZxQUJyAkPokaNL5q3+MwaYNybsN42ba+jcxhQEhrxbwjS7
 aNLF5dMOwx7yPgp0eode7xCNCm8+n4eemDCbkRE=
X-Google-Smtp-Source: APiQypJH7m+mkBesv8DTbNoK1L38bWn1GoKo/KLCYlQNQZSTA5+FBHoI7xTP5yWLtq1MzgM2z2vhGPjcwVpvtm4yXQk=
X-Received: by 2002:a05:6602:2439:: with SMTP id
 g25mr1020219iob.142.1586246884776; 
 Tue, 07 Apr 2020 01:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
 <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
 <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
 <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
 <MW2PR2101MB10525381BAB07997EA5F6B7CD7C80@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <MW2PR2101MB1052F06F444705247419B2B3D7C20@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1052F06F444705247419B2B3D7C20@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 7 Apr 2020 10:07:53 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEZgeNUVVZHiF+vS5_ekCSaiJgP5WBG0WoBkfRnWPhzzw@mail.gmail.com>
Message-ID: <CAMj1kXEZgeNUVVZHiF+vS5_ekCSaiJgP5WBG0WoBkfRnWPhzzw@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
To: Michael Kelley <mikelley@microsoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_010805_804651_B901C234 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Boqun Feng <Boqun.Feng@microsoft.com>, Leif Lindholm <leif@nuviainc.com>,
 "lersek@redhat.com" <lersek@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 19:13, Michael Kelley <mikelley@microsoft.com> wrote:
>
> From: Michael Kelley  Sent: Tuesday, March 31, 2020 6:38 AM
> >
> > From: Ard Biesheuvel <ardb@kernel.org>  Sent: Tuesday, March 31, 2020 12:56 AM
> > >
> > > On Mon, 30 Mar 2020 at 20:24, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Mon, 30 Mar 2020 at 20:12, Michael Kelley <mikelley@microsoft.com> wrote:
> > > > >
> > > > > From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> > > > > >
> > > > > > On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > > >
> > > > > > > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > > > > > > >
> > > > > > > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > > > > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > > > > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > > > > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > > > > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > > > > > > to using the image_base field of the efi_loaded_image struct provided
> > > > > > > > > by UEFI, which should contain the same value.
> > > > > > > > >
> > > > > > > > > However, Michael reports that this is not the case: older GRUB builds
> > > > > > > > > corrupt this value in some way, and since we can easily switch back to
> > > > > > > > > referring to _text to discover this value, let's simply do that.
> > > > > > > >
> > > > > > > > It is not clear to me how "older GRUB builds" would differ here.
> > > > > > > > I think more investigation is needed before making that claim.
> > > > > > > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > > > > > > distro-specific build is playing a part.
> > > > > > > >
> > > > > > > > So, do we have the option for more detailed investigations, or can we
> > > > > > > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > > > > > > on an upstream 2.02" or suchlike?
> > > > > > > >
> > > > > > >
> > > > > > > I've queued a fix that prints a nastygram if the value deviates from
> > > > > > > the expected one. Let's see if this triggers any reports.
> > > > > >
> > > > > > (/me looks at context)
> > > > > >
> > > > > > *This* is the fix that prints a nastygram.
> > > > >
> > > > > FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
> > > > > and CentOS 8.0 binary packages and tested both in my Hyper-V VM.
> > > > > Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
> > > > > shows:
> > > > >
> > > > >         User-Agent: GRUB 2.02~beta2
> > > > >
> > > > > The CentOS 8.0 grubaa64.efi shows:
> > > > >
> > > > >         User-Agent: GRUB 2.03
> > > > >
> > > > > Both versions produce the FIRMWARE BUG warning when using Ard's
> > > > > latest patch.  I'll assume the equivalent RHEL versions are the same.
> > > > > So we've got official distro releases that show the problem.
> > > > >
> > > > > As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
> > > > > Debian release (not exactly sure which one) do not produce the
> > > > > FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.
> > > > >
> > > >
> > > > Thanks a lot Michael, that is really helpful.
> > >
> > > I could not reproduce the issue with Debian Stretch's
> > > 2.02~beta3-5+deb9u2, so it does appear to be RedHat's value add that
> > > is to blame here.
> > >
> > > @Laszlo: TL;DR RedHat's GRUB for arm64 appears to clobber the
> > > image_base field of the efi_loaded_image struct passed to the kernel.
> > > Could you please recommend a way to report this?
> >
> > Or there could be something weird about my Hyper-V VM.  I have a
> > couple of ARM64 bare metal machines, but they are in the office
> > with no remote access, and we're on the work-from-home plan for
> > now.  But I may be able to get into the office later this week and
> > try it.  I'd like to rule out anything related to Hyper-V, and will
> > update this thread if I can.
> >
>
> I have tried this scenario on bare metal running RHEL 7.4, and the
> problem reproduces as described above.  So this is *not* related to
> running in a Hyper-V VM, which is what I wanted to make sure of.
>

Thanks Michael. I'll mention this in the bugzilla entry.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
