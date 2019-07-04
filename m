Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67205F506
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUZNV0XHhxlROVFUVicBLfT0/Rm6yBXKvKIH9M182pY=; b=h91jAjgMO6BvJ1
	eERSRLDauo51uV+o+4mcrdWg+rV3N3cJJoPP1AYcFbaxsE1HzxbrmFpnir8zQVfULKN/L9Mt4ZVAR
	mm6FgffdB/mZqL7UONEIOitkYt06eWg1LyJ+NJy5twmcEzQ4dH5QDS8D3wXzLhc0pitwLzkTnaKnU
	pRGJ81Edvk1Df1YqGT/ymOEH/GzOUzkqhwEms6t/F7t2LMjzsYoBNkGmVq+YtCyo3S0bc+Z2Lisxf
	Em/9pspF5RVoj7VCruqFGP1sJNemdrGkiNkDP5z68zTNmXeg2oBU9ceELczhkA07DTAN/AlFZHQ+B
	PGyuqKLPmFE0uDR05s7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixXu-0003qu-Ii; Thu, 04 Jul 2019 08:56:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixXh-0003qI-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=azmw62G+cXmw0plGzeXL+D/in0XfsDQPIh5bg/+cd3Q=; b=e3EDyUUBKEejsetk5uF6OP6Px
 GTlVhOIhAFk43yusPB6kuCUyfZzhaDbSi8hfQLG/tPvp6WnNmGHSSJZkMPFcpMakSALN0/oFEPLgi
 O3JDjWAIPsp9j/bw5n+v3XPSsScImDE7YaIfQyNIRhD7ooQYNvLGUCAjvkjrBYhq0xkcbG5K1VeU5
 3iEPc4yZBO+s7jOI+VKyAocg+xs6LaEc0yL4nKQv3+DNsBDA5zSRN19bQeAbTQ57SIqpPaQi3TBo8
 AVUQF5npbposV3eF1adUpcvwXLKflGoc5Xv5GNexnzIjfweukX0rr6Bvtgu16K1TRSanIIBPp1BT1
 AWgQLtyuA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59222)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hixXQ-0004cC-7E; Thu, 04 Jul 2019 09:56:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hixXJ-0006mx-Cq; Thu, 04 Jul 2019 09:56:13 +0100
Date: Thu, 4 Jul 2019 09:56:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: Kconfig: default to AEABI w/ Clang
Message-ID: <20190704085613.dhg25m24irfuf3tx@shell.armlinux.org.uk>
References: <20190625210441.199514-1-ndesaulniers@google.com>
 <CACRpkdb+WO4WDS5S1uqPgYFHnz1ch0=DwTKaAxTF3_zid+zH4g@mail.gmail.com>
 <CAK8P3a1Oucpi0smL1poiKJj9Gc=s_6tVirTDkZwA68cuOjvB7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Oucpi0smL1poiKJj9Gc=s_6tVirTDkZwA68cuOjvB7g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015637_251174_47E84BAF 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>, Mark Brown <broonie@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:29:35AM +0200, Arnd Bergmann wrote:
> On Thu, Jul 4, 2019 at 10:13 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Tue, Jun 25, 2019 at 11:04 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > > Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
> > > arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
> > > is not selected (such as when OABI_COMPAT is selected).
> > >
> > > While this means that OABI userspaces wont be able to upgraded to
> > > kernels built with Clang, it means that boards that don't enable AEABI
> > > like s3c2410_defconfig will stop failing to link in KernelCI when built
> > > with Clang.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/482
> > > Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
> > > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > As reflecting the state of things with CLANG it's:
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > But I think we in general need to have some discussion on how to
> > proceed with OABI userspaces.
> >
> > I am well aware of distributions like OpenWrt using EABI even
> > on ARMv4 with "tricks" like this:
> > https://github.com/openwrt/openwrt/blob/master/toolchain/gcc/patches/9.1.0/840-armv4_pass_fix-v4bx_to_ld.patch
> 
> I did not expect that to be necessary in gcc as long as it supports
> building for armv4 (non-t), but I might be missing something here.
> 
> > I have one OABI that I can think of would be nice to live on
> > and it's the RedHat derivative on my Foorbridge NetWinder.
> > OK I wouldn't cry if we have to kill it because it is too hard to
> > keep supporting it, but it has been running the latest kernels
> > all along so if it's not a huge effort I'd be interested in knowing
> > the options.
> 
> But do you see any problems with cross-compiling kernels to
> EABI with CONFIG_OABI_COMPAT for machines like that?

Yes, there are a few ioctls that break.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
