Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D61197601
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sgP6zdru/ZnJW7AmjOVIBSprITdyRNrn//AWLgwXrA=; b=Utl7sNTuDQ8GIu
	5w10CWNNZlgNzeZoB3+g3Yr2nGQ1V9Lt0CKnVbyfFy4BjtkgkeCBoasjJCCE8Nyn1i1cBt803ZOEO
	ECGtq5DL1TuRiCbuY6mgWzqfT/6pEfpr/Roy/31APXzYuvuGTooCnmBbrno3u5xpmrc5UmmhRLsRA
	g0r8sP7qV9jhjB0iVFwxDWGKgJnTt/JNHmptQWNiZ7B96Ek47rAlFlsw18yj7lDi74Szb+0ZORsct
	RDn7UShzmh3DxaEkTT16DUBlHo2emOUFASu8OINF26tpsQhzY1RabddajR+q/K1FWUyQewAbPezFl
	EQjnP38FdMgYpjNUx0lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpCr-0002ih-BB; Mon, 30 Mar 2020 07:51:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpCe-0002iD-OU
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:51:26 +0000
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 649BC2073B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 07:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585554684;
 bh=Y8iozU+3Uxa2Bhwk87vv3a4C+Xj6+XHJpWVgFKneD3w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OG0SSX0NEbTTX+RjrsSju52zT65Alrient5Pcy7VznCyf2tnAOmJbWbPD9FFHOjQz
 qjXNdCXkSRxdy8peqmT0E5/CG9tVaBr7zhcWkzz9StuxUeW39J1A2+OYKP+d619ZbW
 VlozX+T30/3hMhj9PFAwjZOQgNFk+DuFM/ARFJ90=
Received: by mail-io1-f41.google.com with SMTP id b12so494983ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 00:51:24 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0rEQZGeFGsypvuURJupbhlBf/sbyNyZoGR/+xDN8gF5OdyyVRc
 a6ypSokOQX6OuWyI7VANUXDNbniSLB4MHeziNkY=
X-Google-Smtp-Source: ADFU+vtM6+Nn+/IjEoVFqOuexbxH6OIOgiutPqTBcyosryYk8TDDw3LTxT6L93nYf9LVEPa+uut3+OR1ktd8ljcCycE=
X-Received: by 2002:a02:a1c2:: with SMTP id o2mr9476970jah.98.1585554683858;
 Mon, 30 Mar 2020 00:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
In-Reply-To: <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Mar 2020 09:51:12 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
Message-ID: <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
To: Leif Lindholm <leif@nuviainc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_005124_817436_49FBF7D2 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Boqun Feng <Boqun.Feng@microsoft.com>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> >
> > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > EFI entry point assembler code, and in the process, it got rid of the
> > > assignment of image_addr to the value of _text. Instead, it switched
> > > to using the image_base field of the efi_loaded_image struct provided
> > > by UEFI, which should contain the same value.
> > >
> > > However, Michael reports that this is not the case: older GRUB builds
> > > corrupt this value in some way, and since we can easily switch back to
> > > referring to _text to discover this value, let's simply do that.
> >
> > It is not clear to me how "older GRUB builds" would differ here.
> > I think more investigation is needed before making that claim.
> > My suspicion is that some (old) version of non-upstream, shim-enabled
> > distro-specific build is playing a part.
> >
> > So, do we have the option for more detailed investigations, or can we
> > vague the claim up to say "some GRUB builds seen in the wild, based
> > on an upstream 2.02" or suchlike?
> >
>
> I've queued a fix that prints a nastygram if the value deviates from
> the expected one. Let's see if this triggers any reports.

(/me looks at context)

*This* is the fix that prints a nastygram.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
