Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5687F635EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OmDSQ4K1/wOfrbnHBL+5fpAD/ldk3J+Fc2J8jBSBHU=; b=lMj0g7kGT+hnLS
	DLItfmUiS6VWQizDnziY5AwHA0iGPyiovT6xd2gtkzE6zonsHfdfTaxC2CqWkCzXe1M3MVKI/ShIP
	v8C1FqErev0IbSf868of+2+0XRnj+QzbLk11unbsA5XBmybmO+bNGGy/vfEDfqriFThIwzMYwhjNM
	FDaYC7Db72Q/L1CEu99xi3c6ZhJbP66ek2LQFPjg+VY2slJrO9kibOvtnW0w+Lr01P+BD+ygiG52Z
	w6RgUqByzJGRbCPwFaprf7XLW2PJ5qreiWTtlceNqtAk8XrB6wdnwiAHyYZVcWxQ6SC0ocNFaFJQU
	upr+lpFKduppr05MXxWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpHK-00046o-Mk; Tue, 09 Jul 2019 12:31:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpC4-0006uw-DK
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:26:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GvMLu3D5SDi1KJdt5el5d+XQuPw1oygK/f6LNrT+0YI=; b=pskAPKBLg7tkZY0DhnAw61D/a
 UqqwwvfjNpbvptt8wh6CULtcob61iNxD9kRkY0Wf3QH9S3Gqp4yzlGn0d6BpsCCc/hLtAVOPNYhCT
 +uF/ZDGlc+zEj3KEF5JsCB3vm3NOxZeotCrnY2+ggftPi+HMQlQbCeOSg9Q41sq0/jrlwGII3/ZAb
 IXcpR4zgYt2ek926Qbwj5PChRTusnFcmHw/Fb9zOPrIK9FaWKIcS4lw3GGvqMJWXsB2nurNNBkUMy
 /6pb9uPgrPwPClonV010rkRJjkGzh3fQyyRTriFdwU8ZEvJ0RsSMwmZFeUJb9dmTX9ZHqXOr7N18d
 XdM03zd5w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60294)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hkpBx-0000ab-3o; Tue, 09 Jul 2019 13:25:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hkpBv-0002yZ-20; Tue, 09 Jul 2019 13:25:51 +0100
Date: Tue, 9 Jul 2019 13:25:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
Message-ID: <20190709122550.nau44z32valjd5ir@shell.armlinux.org.uk>
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdZO6to2UsJ64FCYi3aOC79PEb9pxOBABBkgcmR_d82dYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZO6to2UsJ64FCYi3aOC79PEb9pxOBABBkgcmR_d82dYg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052600_751301_D69096C0 
X-CRM114-Status: GOOD (  14.16  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 02:17:58PM +0200, Linus Walleij wrote:
> On Mon, Jul 8, 2019 at 10:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > -#define xip_iprefetch()        do { asm volatile (".rep 8; nop; .endr"); } while (0)
> > +#define xip_iprefetch()        do {                                            \
> > +        asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");      \
> > +} while (0)                                                            \
> 
> This is certainly an OK fix since we use a row of inline nop at
> other places.
> 
> However after Russell explained the other nops I didn't understand I located
> these in boot/compressed/head.S as this in __start:
> 
>                 .rept   7
>                 __nop
>                 .endr
> #ifndef CONFIG_THUMB2_KERNEL
>                 mov     r0, r0
> #else
> 
> And certainly this gets compiled, right?
> 
> So does .rept/.endr work better than .rep/.endr, is it simply mis-spelled?
> 
> I.e. s/.rep/.rept/g
> ?
> 
> In that case we should explain in the commit that .rep doesn't work
> but .rept does.

According to the info pages for gas:

7.96 `.rept COUNT'
==================

Repeat the sequence of lines between the `.rept' directive and the next
`.endr' directive COUNT times.

So yes, ".rep" is mis-spelled, and it brings up the obvious question:
why isn't gas issuing an error for ".rep"?  There is no mention of
".rep" in the manual.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
