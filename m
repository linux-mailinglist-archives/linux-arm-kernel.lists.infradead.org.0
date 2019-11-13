Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39770FB5DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+trKzj31cgcdTZe1+umgtCZdKDic5GLs1dsyYg7Wq/g=; b=q0HBX9fEeZyKs1
	J6wYOibO5+P8Xugyd+yKjOI852Cixnob2u7XvumWzVZdqA/WsRkStMYDqIpp4bvcOYuMM5z8iY5fP
	uicbPhTjI64sA2zQI/mABiA9f5PRSn7YcczF+FievyjCfAnD534CotRdIsrcxLbDln97MiKgkBQJn
	235c4Fq+0UYCg/CZkZT7I4X+JoM2mMf+8AhMJhDj2MZgFX1K9xD+4Q5aMd/w9LcFFV0pNCQFUeDK0
	FnIePtz8oNpDxSzVHvN3b1k5Sv8H/ii/lTvHuzLMUORQhlFG4aGhwK+zybtg1XlKTkm3356oSVObU
	58fz3Z4XO/k9HBcg7INw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw3Q-0002bE-BF; Wed, 13 Nov 2019 17:03:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw3G-0002T2-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQADSNrI4d/HxzMxBtQ+iwGnK4AsKuPRvo12BLZ2hYY=; b=dD6+CSQ/oWdT8C4qLFqsDE0HV
 dzp2WMa/ykoPKGfI05NSUeIQ+iabkCgAM4fJTJfRioHfdk/Uvp9zA3QUFH/h5g5g9bJxUKbgsV8tb
 q0yD4DgGXvvwf2hCbQeo0Nq4KkDMbkql0xiyDXMFSZ2QUAmvO7uC/U4+x410VSM3xs++hQ2MKguQV
 4k/jdBjPcrynl8RtDX8K8lrB3uDv4LulPiB4KQ4lFYZ2HNkynl1Uga58/xzSD1YRTQyPeX5rcYG98
 NfnJv75jyVDK436ZZ5LwLHRMnhsiDuA1Ocv05Xv1gV/4ENT7xE9QkT7OFejCUzWFHfliMLIds8Awo
 Zv8VRqbYw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39168)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUw0s-0005cw-MT; Wed, 13 Nov 2019 17:01:02 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUw0o-0002bS-Np; Wed, 13 Nov 2019 17:00:58 +0000
Date: Wed, 13 Nov 2019 17:00:58 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] ARM: don't export unused return_address()
Message-ID: <20191113170058.GP25745@shell.armlinux.org.uk>
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090331_001357_4ED95C58 
X-CRM114-Status: GOOD (  20.11  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> Hi Russell,
> 
> On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > function and does not need to be exported, as shown by this warning:
> > > > >
> > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > >
> > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > >
> > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > Thanks for your patch!
> > > >
> > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > >
> > > > > --- a/arch/arm/kernel/return_address.c
> > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > >                 return NULL;
> > > > >  }
> > > > >
> > > >
> > > > Checkpatch doesn't like the empty line above:
> > > >
> > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > >
> > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > +
> > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > >
> > > > > -EXPORT_SYMBOL_GPL(return_address);
> 
> > > What has happened to this patch?
> > >
> > > I still see this warning.
> >
> > Simple - it got merged, it caused build regressions, it got dropped.
> > A new version is pending me doing another round of patch merging.
> 
> I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?

I don't keep track of who did what, sorry.

> 
> [*] Commit 0b0617e5a610fe12 ("ARM: 8918/1: only build return_address() if
>     needed"), which I discovered in next-20191031 when checking if Arnd's
>     patch was applied....
-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
