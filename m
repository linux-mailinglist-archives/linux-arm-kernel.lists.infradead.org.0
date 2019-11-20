Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B3A10365D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CY3C5mBpa2XOwXuQYkfr13XX6n9MGvyMSk4WFGpMGRA=; b=r+mTBg0RpFebIE
	iuypluvKOBOId+U7Vd5tP+tACHbazUxd+EeQUDIgR8mOgr5E/9nvwe/sVdAPqAbMUFzUQ4pvhWCfl
	q8/j4QDtQEQu7v+IQGRzsHxKdTXMC7oCyYqC0aUHJ5auzgs4JVwrI04FM6a9LeIWwCGX39GKVLeDP
	7I0KR0O0avf9aWaDI1TKq/OMlKAw11tzyu9LxWtglFbgGY6vsWTRVwc0ALdd9/5wt/7O7sW480ZUs
	BqRwBbr2qhUuJc/3aPI5oMJGBjxdo+AgnBg0YkSXo3vpfFMcMOmnLniQ+tSKlMgRWcqYD1fN7jbpi
	89MYsJ4k8DKLMY5aU0Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLyF-0002DR-1O; Wed, 20 Nov 2019 09:08:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLy4-0002CW-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 09:08:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DSCUinPNKai22HW1JHW+/dL4VKgNpCZryvn5/wZYgtE=; b=MZi5cqw4EjoPe1UaPXozRB3n9
 Gd5YhBXNyzUKki7Bu+X07b00jfUws///Oewg7+7tM0/fTcGtTeZs4zITQXs/+6Cy2/fkmto/LDFTX
 UBDbvUm/IrV+Q81Zb1URl6mgMvcgjesfD5TACLxHZ0hq40UXhdZbVKOp9Llz8YflxqxtaeQVkBWn9
 qrohdiEcF9bUVOVeWsnieqwU3H+VgLaGyP+A9IqgkHow+T12ieVRibjE/l6csKbMsX7sfFLxnY+YT
 7yAGuRtit6niemo7/lzOmw3LNZPKdvxja6XLt90Vam6X9pLahnGxZOQTlz7oaQ5znVS2x3A/CrdYI
 yf3JYjxuA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58688)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXLxj-0007KX-6m; Wed, 20 Nov 2019 09:07:47 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXLxh-0001ac-3A; Wed, 20 Nov 2019 09:07:45 +0000
Date: Wed, 20 Nov 2019 09:07:45 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
Message-ID: <20191120090744.GH25745@shell.armlinux.org.uk>
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
 <20191113170058.GP25745@shell.armlinux.org.uk>
 <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_010808_581218_2D4A958B 
X-CRM114-Status: GOOD (  22.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 06:02:13PM +0900, Masahiro Yamada wrote:
> Hi Arnd,
> 
> 
> 
> On Thu, Nov 14, 2019 at 2:01 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> > > Hi Russell,
> > >
> > > On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > > > function and does not need to be exported, as shown by this warning:
> > > > > > >
> > > > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > > >
> > > > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > > > >
> > > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > > >
> > > > > > Thanks for your patch!
> > > > > >
> > > > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > >
> > > > > > > --- a/arch/arm/kernel/return_address.c
> > > > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > > > >                 return NULL;
> > > > > > >  }
> > > > > > >
> > > > > >
> > > > > > Checkpatch doesn't like the empty line above:
> > > > > >
> > > > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > > > >
> > > > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > > > +
> > > > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > > > >
> > > > > > > -EXPORT_SYMBOL_GPL(return_address);
> > >
> > > > > What has happened to this patch?
> > > > >
> > > > > I still see this warning.
> > > >
> > > > Simple - it got merged, it caused build regressions, it got dropped.
> > > > A new version is pending me doing another round of patch merging.
> > >
> > > I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?
> >
> > I don't keep track of who did what, sorry.
> 
> 
> Arnd,
> 
> I believe this patch is the correct fix.
> Could you please put it into Russell's patch tracker?
> (patches@arm.linux.org.uk)

Is there something wrong with:

fb033c95c94c ARM: 8918/2: only build return_address() if needed

I haven't seen any build issues with that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
