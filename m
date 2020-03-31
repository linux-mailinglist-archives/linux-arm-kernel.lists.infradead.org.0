Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E28B198DB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbpEHd1J2ClMXoIWNB7P7WM1Rw8W0E3OCJ83F05cVdY=; b=UJm5Ng+S3owMCb
	61f5yOLq3aArkprn1Oeo7Aa6MzV1Q3W3Q8uPXMkKGNnBX29KZkjzkEYKPAU+tQumIyYi8tcUtlDtX
	yHyDBFsFYyr0yU8CopYoN49AaE6tlh9ZV4r6TMZwoI3f24z2n6l9GTcu5EEn1GtVtURWdwnLQ262D
	wc8OCdXOiuKfj7reyqnromZpkwTyCU88zV0SQz7reldxhpw3cUBHZGsQCiJsJCtITvc5TA6S3YpnX
	mHc3JUx0oi89vvecO3Dfju44FyN0U9wRuT5RuGz/z6glz0m8bF0l6GYBQT4NonqKCplCOgctmFows
	ICX1SJcFQCqKooprgEFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBlK-0001iF-Tu; Tue, 31 Mar 2020 07:56:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBlB-0001hv-3x
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:56:34 +0000
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A43C206F6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 07:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585641392;
 bh=3ercSEYHSsTKpm07uaUkl1Ke9Bk5D1FbsI6WPyK1fow=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZkXx1xdhzTOSUctGRLRbHp84UKY6td5WIlGgD7yY7aQb1K2BpJ73R1V/ER/E4DMYp
 mvLp8rIChBc35deAFL2XsWRaZvK+fVS+ee6JaHJIC90w541Cv9ebguI4+mvjYSinWk
 SSfnPCbMy8yw22aW3J0SqWFH8shqd9rVQID5/t0U=
Received: by mail-il1-f175.google.com with SMTP id i75so11227084ild.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 00:56:32 -0700 (PDT)
X-Gm-Message-State: ANhLgQ248ICAOgS5irxBvpkXxMbexeE3AMrjA94uIbs0uVcRxG4mzq+S
 gR3L2qytlBLh6hNB9EC4CTWBMDFtqH3wa2FquXQ=
X-Google-Smtp-Source: ADFU+vvYWMQ/amzvYwYMfsiNFRIesCFTg8eWMXBJuJX6OG9NPd1JuT33mGJHPRlh0m8xSgu4AzVxlZgn7oaDWDlV9Ss=
X-Received: by 2002:a05:6e02:551:: with SMTP id
 i17mr13821185ils.218.1585641392036; 
 Tue, 31 Mar 2020 00:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
 <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
 <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
In-Reply-To: <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 31 Mar 2020 09:56:20 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
Message-ID: <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
To: Michael Kelley <mikelley@microsoft.com>, lersek@redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_005633_198315_8823E3E3 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Boqun Feng <Boqun.Feng@microsoft.com>, Leif Lindholm <leif@nuviainc.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 20:24, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 30 Mar 2020 at 20:12, Michael Kelley <mikelley@microsoft.com> wrote:
> >
> > From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> > >
> > > On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > > > >
> > > > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > > > to using the image_base field of the efi_loaded_image struct provided
> > > > > > by UEFI, which should contain the same value.
> > > > > >
> > > > > > However, Michael reports that this is not the case: older GRUB builds
> > > > > > corrupt this value in some way, and since we can easily switch back to
> > > > > > referring to _text to discover this value, let's simply do that.
> > > > >
> > > > > It is not clear to me how "older GRUB builds" would differ here.
> > > > > I think more investigation is needed before making that claim.
> > > > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > > > distro-specific build is playing a part.
> > > > >
> > > > > So, do we have the option for more detailed investigations, or can we
> > > > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > > > on an upstream 2.02" or suchlike?
> > > > >
> > > >
> > > > I've queued a fix that prints a nastygram if the value deviates from
> > > > the expected one. Let's see if this triggers any reports.
> > >
> > > (/me looks at context)
> > >
> > > *This* is the fix that prints a nastygram.
> >
> > FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
> > and CentOS 8.0 binary packages and tested both in my Hyper-V VM.
> > Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
> > shows:
> >
> >         User-Agent: GRUB 2.02~beta2
> >
> > The CentOS 8.0 grubaa64.efi shows:
> >
> >         User-Agent: GRUB 2.03
> >
> > Both versions produce the FIRMWARE BUG warning when using Ard's
> > latest patch.  I'll assume the equivalent RHEL versions are the same.
> > So we've got official distro releases that show the problem.
> >
> > As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
> > Debian release (not exactly sure which one) do not produce the
> > FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.
> >
>
> Thanks a lot Michael, that is really helpful.

I could not reproduce the issue with Debian Stretch's
2.02~beta3-5+deb9u2, so it does appear to be RedHat's value add that
is to blame here.

@Laszlo: TL;DR RedHat's GRUB for arm64 appears to clobber the
image_base field of the efi_loaded_image struct passed to the kernel.
Could you please recommend a way to report this?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
