Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8397817CF4F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 17:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59jApxGztggttOdqkLdNce+o+ihupYEQLznpOEuQ9DM=; b=UxExchGz2NahyX
	jPav3bgcoWMSFK5ZXmvsr8ezkn2fzcfDRX4Ds4utA82h6Q5ajSVpjqfXdsqoTRSC6lRwE74xWEqyJ
	1IqfQodMaCU6xeHE7ZF1iP3hIuLyDCs+k+R4n5yJaSnFwnLHnqPgm71Lvuo3nhvIqS9EuQoQy+DuL
	kDU6IryE19wNrj8Mpv/wQH1H5zuZ29Gfdr1SZ+S7nd4ZcY6/iYOGR6b9kGDyS4nyzb0cPIqAFSjGn
	5FzKXbEulxO8Wwn7lq6ueq4k/ZCVQXdJHYi7zHXly3IV9sUFm6XD7V9Htl8GjgCB29lIHWoKdsbdW
	B5vtwZ3XfPW+1dF3tN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAce5-0004VL-I4; Sat, 07 Mar 2020 16:49:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAce0-0004Uy-1c
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 16:49:45 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CBEB2077B
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  7 Mar 2020 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583599779;
 bh=nqyVzOg+nhzIEzWKf/tyzGjQNXSM4cSyl10ZFjoiAKk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iQ88+W7T39oaKpFdK7eH8yt0/crUVoTX2EJzWXb1hBypxq9OqNRlUXNKz2fCh8ffM
 43oLXC3IWT8thGCgMCSjY07Yt3uWy+CAKNezq+4jbgOjINkESNJFH6GL+RWUaQn7FF
 fNZdkYm1HoC9/Ie6YCmMxThQzHycHenzZr5F7yKQ=
Received: by mail-wr1-f47.google.com with SMTP id v2so5917962wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 08:49:39 -0800 (PST)
X-Gm-Message-State: ANhLgQ2hb2wktS4ZB7UPVcfUgjSFX2Q6t3HiJ9LHCD7rOzbezxwE4X7W
 3MQWxWZconDnjPfv2vYNVp17r6wFSKVQZJsFfwMjow==
X-Google-Smtp-Source: ADFU+vtXCLC5sGKtoi0SUXGSkM7Sc7zA2fhlpaBXxoRDRhNCYS2U/QX3AaaHg5rpjZBzlAIJGMDI0Jdj+frCKnKnwDQ=
X-Received: by 2002:a05:6000:110b:: with SMTP id
 z11mr10551221wrw.252.1583599777904; 
 Sat, 07 Mar 2020 08:49:37 -0800 (PST)
MIME-Version: 1.0
References: <20200227104242.9589-1-ardb@kernel.org>
In-Reply-To: <20200227104242.9589-1-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 7 Mar 2020 17:49:27 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu9AZLOnXi-Tj5QKVbF+J6fUDjie7ctJ5BiZdBhqUZGt9w@mail.gmail.com>
Message-ID: <CAKv+Gu9AZLOnXi-Tj5QKVbF+J6fUDjie7ctJ5BiZdBhqUZGt9w@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: switch to by-VA cache ops for v7 in the
 decompressor
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux+pull@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_084944_131101_F0DA49FB 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 11:42, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Hello Russell,
>
> Please consider the pull request below.
>
> Regards,
> Ard.
>
> Cc: Marc Zyngier <maz@kernel.org>,
> Cc: Nicolas Pitre <nico@fluxnic.net>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
>
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
>
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git tags/arm32-efi-cache-ops-for-rmk
>
> for you to fetch changes up to 401b368caaecdce1cf8f05bab448172752230cb0:
>
>   ARM: decompressor: switch to by-VA cache maintenance for v7 cores (2020-02-27 11:15:50 +0100)
>
> ----------------------------------------------------------------
> ARMv7 compliant cache maintenance for the decompressor
>
> On v7 and later cores, cache maintenance operations by set/way are only
> intended to be used in the context of on/offlining a core, while it has
> been taken out of the coherency domain. Any use intended to ensure that
> the contents of the cache have made it to main memory is unreliable,
> since cacheline migration and non-architected system caches may cause
> these contents to linger elsewhere, without being visible in main memory
> once the MMU and caches are disabled.
>
> So switch to cache maintenance by virtual address for v7 and later cores.
> This makes the 32-bit kernel bootable on systems with L3 system caches
> that are not covered by set/way operations, such as Socionext SynQuacer.
>
> Tony says:
>
>   I gave these a try on top of the earlier "arm: fix Kbuild issue caused
>   by per-task stack protector GCC plugin" and booting still works for
>   me on armv7 including appended dtb:
>
>   Tested-by: Tony Lindgren <tony@atomide.com>
>
> Linus says:
>
>   No problem, I have tested it on the following:
>
>   - ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
>   - ARM PB11MPCore (4 x 1176)
>   - ARMv7 Ux500 Cortex A9 x 2
>
>   The PB11MPCore is again the crucial board, if it work on that
>   board it works on anything, most of the time :D
>
>   Tested-by: Linus Walleij <linus.walleij@linaro.org>
>
> Note that the first 2 patches are shared with the efi/core branch in
> TIP, which is the reason why this is sent as a pull request rather
> than via the patch system.
>
> ----------------------------------------------------------------
> Ard Biesheuvel (5):
>       efi/arm: Work around missing cache maintenance in decompressor handover
>       efi/arm: Pass start and end addresses to cache_clean_flush()
>       ARM: decompressor: factor out routine to obtain the inflated image size
>       ARM: decompressor: prepare cache_clean_flush for doing by-VA maintenance
>       ARM: decompressor: switch to by-VA cache maintenance for v7 cores
>
>  arch/arm/boot/compressed/head.S | 162 +++++++++++++++++++++-------------------
>  1 file changed, 86 insertions(+), 76 deletions(-)

Ping?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
