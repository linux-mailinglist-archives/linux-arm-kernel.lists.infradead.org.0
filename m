Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0682015C9C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvlAULpuVWrrIXISCreqKx1ivBv000O7n3Bu1IT0P/k=; b=X79Xbv/tHIqLD3
	eAJpowFu7JDm15EfsmeezGwaEEvxrM3y8ZYX9/xc+dfwLLcwJAGoVxeVTwIN1RGBQfbtDyLphhJTa
	if2cDJaXyYfbsHgzpNPJCl6e2/TqFWF8oJbHtJXfwSoNOVXJOlWIqfPk7XbEBP1ZaA8BcjwUMfhbS
	QTHrdDzkNhTHB+VMzLrWPTWnfydB9rDquoIQB8ldWM++DclpPhDp6F3fz+VjHZHViwVoIjcm7TjVr
	h3Rw0Wb+Dn9PNiBHQwMVfPESdpIhOYNSsw1+VKA/Q9fKS+qCVlr/xwNA0dE7zs6FyCbYK3IT6hhF2
	hqePmzo6+2frajtt9LJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Iia-0007hg-Vs; Thu, 13 Feb 2020 17:56:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IiU-0007hM-2r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:55:59 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 572E324673
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 17:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581616557;
 bh=eBn48RkWFOmXTP4xg1mIIwtc1jP4EojXHNp7TaO0m/Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KFCzYOczsjq+kBkQDR7lLUac+yQiOtIc5gJ5tK9Hfdlx5ii/omkX6CkRv2Wr8Wcw4
 pU7uWRV2BXSL13rZsL2FUf4JIGljs6zoGB0QQUEgFwR3A9O0a3xbLsU0UUTbPpNaL9
 8KRysDIm3qrZXqtAHtykFf1Ud6tl2NjzjMZ7r5Lg=
Received: by mail-wm1-f45.google.com with SMTP id p9so7256333wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:55:57 -0800 (PST)
X-Gm-Message-State: APjAAAVvEhpJn0DfoIw2BKMsjdUVYKfT3atNLFRLwB66PMMIi0y5l25i
 OoICvfPBfuyR+yMFL5oqpGE83qPsZXGijjNuRUySOA==
X-Google-Smtp-Source: APXvYqxkXN2CIAf2aC7refb37+UVsi8JAdMu5gJuMLkRSo5ntGwEehvYEsUR6yzmsI2vLynMERovPTskrlAB1zcipPg=
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr6781840wma.62.1581616555626;
 Thu, 13 Feb 2020 09:55:55 -0800 (PST)
MIME-Version: 1.0
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
In-Reply-To: <20200213175317.GC1400002@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 13 Feb 2020 17:55:44 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
Message-ID: <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_095558_164430_7033B747 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>, Matthew Garrett <mjg59@google.com>,
 Michael Brown <mbrown@fensystems.co.uk>, Hans de Goede <hdegoede@redhat.com>,
 Peter Jones <pjones@redhat.com>, Leif Lindholm <leif@nuviainc.com>,
 Laszlo Ersek <lersek@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 13, 2020 at 03:59:25PM +0100, Ard Biesheuvel wrote:
> > This series is another part of my effort to reduce the level of knowledge
> > on the part of the bootloader or firmware of internal per-architecture
> > details regarding where/how the kernel is loaded and where its initrd and
> > other context data are passed.
> >
> > The x86 architecture has a so-called 'EFI handover protocol', which defines
> > how the bootparams struct should be populated, and how it should be
> > interpreted to figure out where to load the kernel, and at which offset in
> > the binary the entrypoint is located. This scheme allows the initrd to be
> > loaded beforehand, and allows 32-bit firmware to invoke a 64-bit kernel
> > via a special entrypoint that manages the state transitions between the
> > two execution modes.
> >
> > Due to this, x86 loaders currently do not rely on LoadImage and StartImage,
> > and therefore, are forced to re-implement things like image authentication
> > for secure boot and taking the measurements for measured boot in their open
> > coded clones of these routines.
> >
> > My previous series on this topic [0] implements a generic way to load the
> > initrd from any source supported by the loader without relying on something
> > like device trees or bootparams structures, and so native boot should not
> > need the EFI handover protocol anymore after those change are merged.
> >
> > What remains is mixed mode boot, which also needs the EFI handover protocol
> > regardless of whether an initrd is loaded or not. So let's get rid of that
> > requirement, and take advantage of the fact that EDK2 based firmware does
> > support LoadImage() for X64 binaries on IA32 firmware, which means we can
> > rely on the secure boot and measured boot checks being performed by the
> > firmware. The only thing we need to put on top is a way to discover the
> > non-native entrypoint into the binary in a way that does not rely on x86
> > specific headers and data structures.
> >
> > So let's introduce a new .compat header in the PE/COFF metadata of the
> > bzImage, and populate it with a <machine type, entrypoint> tuple, allowing
> > a generic EFI loader to decide whether the entrypoint supports its native
> > machine type, and invoke it as an ordinary EFI application entrypoint.
> > Since we will not be passing a bootparams structure, we need to discover
> > the base of the image (which contains the setup header) via the loaded
> > image protocol before we can enter the kernel in 32-bit mode at startup_32()
> >
> > A loader implementation for OVMF can be found at [1]. Note that this loader
> > code is fully generic, and could be used without modifications if other
> > architectures ever emerge that support kernels that can be invoked from a
> > non-native (but cross-type supported) loader.
> >
> > [0] https://lore.kernel.org/linux-arm-kernel/20200206140352.6300-1-ardb@kernel.org/
> > [1] https://github.com/ardbiesheuvel/edk2/commits/linux-efi-generic
> >
>
> As an alternative to the new section, how about having a CONFIG option
> to emit the 64-bit kernel with a 32-bit PE header instead, which would
> point to efi32_pe_entry? In that case it could be directly loaded by
> existing firmware already. You could even have a tool that can mangle an
> existing bzImage's header from 64-bit to 32-bit, say using the newly
> added kernel_info structure to record the existence and location of
> efi32_pe_entry.
>

That wouldn't work with, say, signed distro kernels.

> Also, the PE header can live anywhere inside the image, right? Is there
> any reason to struggle to shoehorn it into the "boot sector"?

It cannot. It must live outside a region described by the section headers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
