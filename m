Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB3198354
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VGuYCcSmd9pYovKYboCejTcE3TR8FQCWjrQY4dK34U=; b=YUagoAcVboOvn9
	xKTr0/o8mgdwLRxT4HNQKZTdJyZcf7sSYLMK5RBf3JzkOF7hdnCvNfGpM3L066Cq9lb5YlcvF0Cpb
	VFhhvO5/isx+uqF3xeLx1Jv8Sg7xHhvCzRpheoPp13SQ+CZTWLREf9PZDdxJ59cnjsi6KlQbZ1uri
	mxjZWTwJaPLnazU+giaMu+nHMHBpz8Qloz5OmQZu4OJSI77ZnwYUPICdfag3Xi/+lRTkhtv+vf+iO
	MieAkM8i4WuDDr+kgx82Q6GSUgwgsvO3IpakHQbYJ4nl+f71bxVBaMTRlVY/GkP/Ij3Y/gjUimHmL
	0eF73851qCFl/QYZgW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIz5S-0004Mb-FF; Mon, 30 Mar 2020 18:24:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIz5I-0004M6-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 18:24:30 +0000
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com
 [209.85.166.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AF3D20780
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 18:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585592667;
 bh=Wkie03bXlY41aXmWMwYz096DPJxmDgVWSOlX5xhknQ8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qnYSKrSoqtH4x1YxqzOKEfSBQp/75o3w9EMthWB5+/1QFAzhU5R5SoxbZ5eX9TEFu
 qKHlul7HJLfU460kpteJmsxC6SNRb5c7RFbjZ83MO0uk8BHomB+LZxBLQy3wcHU+c2
 exA8Jum0+A/DJtmTo0Ap5VSBNAiw0L3WNITjYgWY=
Received: by mail-il1-f169.google.com with SMTP id n13so9496182ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 11:24:27 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3BYEZ62OjcbooImXEeoL9BaWhy/LK+y4a7xf/p8LsFoneUXSz3
 P1vvAU2yKnz8Tm2JNuK3kxyIKYWb6zsLDEFlc9Q=
X-Google-Smtp-Source: ADFU+vsaZjL3J/yqUJii1Uij9v7w0q1F0mSzDAkZ4jlY4fnKq/UYR7/t00GosOhDVfcrxNaf81i83DWVwCzLcrKPgHM=
X-Received: by 2002:a92:dcd1:: with SMTP id b17mr12647169ilr.80.1585592667024; 
 Mon, 30 Mar 2020 11:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
 <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
In-Reply-To: <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Mar 2020 20:24:15 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
Message-ID: <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
To: Michael Kelley <mikelley@microsoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_112429_119573_36FBDB3F 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 20:12, Michael Kelley <mikelley@microsoft.com> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> >
> > On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > > >
> > > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > > to using the image_base field of the efi_loaded_image struct provided
> > > > > by UEFI, which should contain the same value.
> > > > >
> > > > > However, Michael reports that this is not the case: older GRUB builds
> > > > > corrupt this value in some way, and since we can easily switch back to
> > > > > referring to _text to discover this value, let's simply do that.
> > > >
> > > > It is not clear to me how "older GRUB builds" would differ here.
> > > > I think more investigation is needed before making that claim.
> > > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > > distro-specific build is playing a part.
> > > >
> > > > So, do we have the option for more detailed investigations, or can we
> > > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > > on an upstream 2.02" or suchlike?
> > > >
> > >
> > > I've queued a fix that prints a nastygram if the value deviates from
> > > the expected one. Let's see if this triggers any reports.
> >
> > (/me looks at context)
> >
> > *This* is the fix that prints a nastygram.
>
> FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
> and CentOS 8.0 binary packages and tested both in my Hyper-V VM.
> Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
> shows:
>
>         User-Agent: GRUB 2.02~beta2
>
> The CentOS 8.0 grubaa64.efi shows:
>
>         User-Agent: GRUB 2.03
>
> Both versions produce the FIRMWARE BUG warning when using Ard's
> latest patch.  I'll assume the equivalent RHEL versions are the same.
> So we've got official distro releases that show the problem.
>
> As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
> Debian release (not exactly sure which one) do not produce the
> FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.
>

Thanks a lot Michael, that is really helpful.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
