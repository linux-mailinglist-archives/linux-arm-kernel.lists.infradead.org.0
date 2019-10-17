Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2931DABAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0sQdtPH6N6ygvQMId4y0jEn+Vbtc7cYGPTxcvGLO+4=; b=pnFOAok1kq21I0
	i4KR40ebM6JhT1XnA7oHDi6qtrRI/qzjl0JhNDG1n1H0P/STB+W2GCZnp7C8yUkWhq5dGhF5+gPUV
	Pg6e3cTREgvMiDHD4+Zcd3kcf7lwez+QlYo6iKgZ21MbgN+Y1Qs3DN29rk33AMJyVlzklrhtnrhkn
	8J0s+LTzJt5dR7T3dq31zB0/LDUsioBTEocCByNHZSWxRSnebhtDZqZ5rnSCC8EXu/wMH1aV/n+Sh
	OkAGZ/BaItCI/VpxY/FYn48GgTe1awKFO76w0B+MJEe8iqGYQkZGSsH+eJnLN19NravI8SXsp2BBo
	2DfptHcfK+nAzX2cstYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4VO-00081U-G2; Thu, 17 Oct 2019 12:03:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4VD-000800-LR
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7QFAM3FyNjZLdWgCaHNKxlUOPObBomQiiiC1wmyqmnc=; b=I6hadmvq9y5VVf5dyNAUB7pa5
 cUIfFm/JE/7T9C6zx9cvRw/63isjp+CLNHRUkWaHP7pF1c5zceKV2VVD2SGK/S/0IiaJ4SLzpD+TC
 /TMSjiLLFORwSj7wFomfLaugUIIx3ZGIf4QMB/SG84qzNW/eC/5pERNEGc7o7GKlBlsGHeNspk3ZZ
 q69Bx0NeHFQz0pw8qx1kf60qUTxtiDYh4X8l3ddRFpkrYR4CyUrWZAqYxSiKWqs16DKBI0BOQ9UNt
 GiCB5L3dG8s5rHOXerd24Anz8gkXYyf/bWWVoZQ0jJqGL+VB9im+L2NentYV4o/+ujbZOiIYCqYk+
 GjyGVxDyw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43864)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iL4Us-0000c9-VM; Thu, 17 Oct 2019 13:03:15 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iL4Uo-0008B9-UN; Thu, 17 Oct 2019 13:03:10 +0100
Date: Thu, 17 Oct 2019 13:03:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [RFC PATCH 0/3] watchdog servicing during decompression
Message-ID: <20191017120310.GD25745@shell.armlinux.org.uk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_050335_703755_F5B38544 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, kernel@pengutronix.de,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We used to have this on ARM - it was called from the decompressor
code via an arch_decomp_wdog() hook.

That code got removed because it is entirely unsuitable for a multi-
platform kernel.  This looks like it takes an address for the watchdog
from the Kconfig, and builds that into the decompressor, making the
decompressor specific to that board or platform.

I'm not sure distros are going to like that given where we are with
multiplatform kernels.

On Thu, Oct 17, 2019 at 01:49:03PM +0200, Rasmus Villemoes wrote:
> Many custom boards have an always-running external watchdog
> circuit. When the timeout of that watchdog is small, one cannot boot a
> compressed kernel since the board gets reset before it even starts
> booting the kernel proper.
> 
> One way around that is to do the decompression in a bootloader which
> knows how to service the watchdog. However, one reason to prefer using
> the kernel's own decompressor is to be able to take advantage of
> future compression enhancements (say, a faster implementation of the
> current method, or switching over when a new method such a zstd is
> invented) - often, the bootloader cannot be updated without physical
> access or is locked down for other reasons, so the decompressor has to
> be bundled with the kernel image for that to be possible.
> 
> This POC adds a linux/decompress/keepalive.h header which provides a
> decompress_keepalive() macro. Wiring up any given decompressor just
> amounts to including that header and adding decompress_keepalive() in
> the main loop - for simplicity, this series just does it for lz4.
> 
> The actual decompress_keepalive() implementation is of course very
> board-specific. The third patch adds a kconfig knob that handles a
> common case (and in fact suffices for all the various boards I've come
> across): An external watchdog serviced by toggling a gpio, with the
> value of that gpio being settable in a memory-mapped register.
> 
> Rasmus Villemoes (3):
>   decompress/keepalive.h: prepare for watchdog keepalive during kernel
>     decompression
>   lib: lz4: wire up watchdog keepalive during decompression
>   decompress/keepalive.h: add config option for toggling a set of bits
> 
>  include/linux/decompress/keepalive.h | 22 +++++++++++++++++++
>  init/Kconfig                         | 33 ++++++++++++++++++++++++++++
>  lib/lz4/lz4_decompress.c             |  2 ++
>  3 files changed, 57 insertions(+)
>  create mode 100644 include/linux/decompress/keepalive.h
> 
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
