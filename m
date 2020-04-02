Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4425019C01C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyOmXhJO3vZQaNGRVf4zhEMg/Tryvz+tmx4qr5TF9H0=; b=Rt5p0nuQcl+pOH
	2EpUhY4YkwroJfVuT+RTW8WXWp48dEqjYejlnfPodxriJ2RzFIPvhk4YNXWOyQdsg8UXX8FQnA3QL
	PQnESpbhjU8blJAeD7iN2RFUvK3qRttsYlJfjCcnhTG/InR91RByvvwE9kSX5dBi5/omK194k9i4H
	Sb8dDog66ZwO0pc3bXNNjoNUN2Hrsm/7uTJ0CduUpA6BZ6nltZh3xprshbt6Kmk5bKyG3iP1YW15j
	YKdzrsflZsB0TYR0FLdCefXwHLC4oiX10Vn8B2hE5hCiRImr4kBIm9pmkbGKne6dATw34hxEflPR5
	RGI+QILe1C7UevvfQt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxxi-00065L-8s; Thu, 02 Apr 2020 11:24:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxxO-0005xQ-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:24:23 +0000
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A05C2078E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 11:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585826661;
 bh=/T9PKpOsqkG6k9SDIldwzv8zPCYWoDaXHjHgeVFb4nM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WqKQxAEQJcb0Y8B6c/brLQqu7z26a4AWVIOnBH6hst0XYKrpnqSPctRPLxvBbJx1T
 K+GrF3WWgA2LuQMVoeNcHHXCYMfcP1kmTfV7M6XLEsG3cdtSkpNc+LYB95a79a/UNZ
 LLyAwqt9NELgCw3AazG9YJhMgszChb+SK296WGMU=
Received: by mail-io1-f41.google.com with SMTP id m15so3193323iob.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 04:24:21 -0700 (PDT)
X-Gm-Message-State: AGi0PuYKgtfZG1vcC9k1/Bt9mUxLY2KETSmDqQm0skqHkHSs2DGMkskF
 gSDUUjrE66Q34FKThW7fx+7ff/Bn8x4CMchvcXY=
X-Google-Smtp-Source: APiQypJHMEeM/iwsXUykwckvb2/MexzqNtnc3JITmwdvurwhg/ZxuCdS12G9sOMN03deRyuepi8qA8BHF3yMJqLCXLE=
X-Received: by 2002:a05:6602:2439:: with SMTP id
 g25mr2369114iob.142.1585826660620; 
 Thu, 02 Apr 2020 04:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200402111502.GC21087@mbp>
In-Reply-To: <20200402111502.GC21087@mbp>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 13:24:09 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFTnqZHWZX5yhkG4+pd04JzGriFW6gjBrAnQ-LQQmEi3Q@mail.gmail.com>
Message-ID: <CAMj1kXFTnqZHWZX5yhkG4+pd04JzGriFW6gjBrAnQ-LQQmEi3Q@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_042422_381790_353AA2EB 
X-CRM114-Status: GOOD (  17.64  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 at 13:15, Catalin Marinas <catalin.marinas@arm.com> wrote:
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
> Happy to take this patch via the arm64 tree for 5.7 (no new
> functionality), unless you want it to go with your other relocation
> login in the EFI stub patches.
>

If you don't mind taking it for v5.7, please go ahead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
