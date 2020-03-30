Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A25197BFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 14:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUXliSSMxXoXFRVK7EphQ5NfvJvpqLy6YY/LHOPUpj4=; b=rVVPlP7XsmamEW
	Iw59YjJyhVmYOLREHjLpwRzz4j2LYNj8iY7Mh0E1MIX5Zomlff+d+vzwBgbN70lxZn10pHQw9iPB0
	Rgai5FCRUFYUBdG7P4hqaNWuHKgTZukWSfD1d/Oz42ithQj9CwAMNx0QTWdgCX8btW6Bx4CCQlTBA
	ZK+FQ6bRXdLaz8N7KUzEjU9MSs44LIa5X0v0y98SFYggQThlhubcm1GLtgySIda6LF4PTa54AAhW6
	vlSbEVQt9SumFGMtT1JJOmUy0xcfgDps1Ri5d4mcEuUDhftd+Zjfrvr52oEDN6hTeuTq7cp/Igl6Y
	vsB63y9SObhr0vqJv7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jItfB-0004Tw-9c; Mon, 30 Mar 2020 12:37:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIteg-0004Kc-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 12:36:40 +0000
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0814C20757
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 12:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585571797;
 bh=2AXyU8ugSagURCiFbOUooLN6U3MB2Le88crw+QxGb3A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kiRebQh6/SNukeXGGn2kVD6aMiKE2/3WRKskk20FCu3wU6X+73j81DEKO1aYBp1P2
 fp9euWyCVQlT8Fnl2Uo93mtGUrR4w2BILnZNa93/pfNXs+QrPNlrj/rhMc0z4eKumM
 k02o3dwN7oA2JUt7g1LvsYD9LdQGYQxqO45BSUn4=
Received: by mail-il1-f171.google.com with SMTP id n13so8234993ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 05:36:37 -0700 (PDT)
X-Gm-Message-State: ANhLgQ36hMCX81K/LI9tI61/pUPUgOk4otmmj2GPxP3uZ9SFRhrrPyzI
 +mnpG9vWjDlXG3yT509GaCG+1gTxJIJBZXDMreI=
X-Google-Smtp-Source: ADFU+vvy1OWSGhQQBJgVLP0RN+6n6610P4wShb1xm2SjioY07N2JppE8S+F+09WE5GZa9LNN8RMgYkDNI7Va6rJLKo8=
X-Received: by 2002:a05:6e02:551:: with SMTP id
 i17mr10003944ils.218.1585571796432; 
 Mon, 30 Mar 2020 05:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330093641.GA25920@C02TD0UTHF1T.local>
In-Reply-To: <20200330093641.GA25920@C02TD0UTHF1T.local>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Mar 2020 14:36:25 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGYYGRMXAa+k+ysDmfbW2XsTF56yEr8=3Q__mw_Jt4j8Q@mail.gmail.com>
Message-ID: <CAMj1kXGYYGRMXAa+k+ysDmfbW2XsTF56yEr8=3Q__mw_Jt4j8Q@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_053638_924688_9368F896 
X-CRM114-Status: GOOD (  16.79  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 13:29, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> > When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> > different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> > etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> > In particular, it permits the segments to be mapped using level 2
> > block entries when using 4k pages, which is expected to result in less
> > TLB pressure.
> >
> > However, the mappings for the bulk of the kernel will use level 2
> > entries anyway, and the misaligned fringes are organized such that they
> > can take advantage of the contiguous bit, and use far fewer level 3
> > entries than would be needed otherwise.
> >
> > This makes the value of this feature dubious at best, and since it is not
> > enabled in defconfig or in the distro configs, it does not appear to be
> > in wide use either. So let's just remove it.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> No strong feelings either way, but getting rid of code is usually good,
> so:
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
>

Thanks Mark.

This is related to [0], which increases the PE/COFF section alignment
to 64k so that a KASLR enabled kernel always lands at an address at
which it can execute without being moved around first. This is an
improvement in itself, but also provides 5 bits (log2(2M / 64k)) of
wiggle room for the virtual as well as the physical placement of the
kernel. CONFIG_DEBUG_ALIGN_RODATA kind of interferes with that, so I'd
like to get rid of it.

Catalin, Will: if you have no objections, I can include this in my
series for v5.8 and take it via the EFI tree.

Thanks,
Ard.

[0] https://lore.kernel.org/linux-efi/20200326165905.2240-1-ardb@kernel.org/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
