Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812D4103738
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoQVlsCbS2CxCo79IxiCqdHl6QUddaaQWr0gPuwnT9Q=; b=OC1HUPR05JzPIy
	U9yreJiCbOLLerenoxWm882ZTJS4W3Y8K2TPRWTnW347iWHehu+Ot16hTN14wT9rV14B0U8DvRaXu
	xgNgyfO7DBq+lDf2WUE8wyQgVFAQ3rJ6sgMWt6M3AU5C1oWvxqa/LnNsFtEwI3FBN4xXwUZ+ohuVr
	XSOaI24f4mP51/0/YsfrxxRcwoqpgnlWx317zbstU3ckv1H/GZGigRTW5gap72hAbVSVjqNinajUY
	tEly7X9/msSnVZtaA8xUV8mbK7gKk7ZwD/k7BcsElspo8mt/ji/Iaxsv/GJVtRMTdMI44wOpZ0llt
	/7F0kWpOE4EoWamK6B9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMtz-0007xg-MU; Wed, 20 Nov 2019 10:07:59 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMto-0007wl-Ns
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 10:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ssC/M2h61XOyKhzXkYWgXPf4O19C3WuSNJBncm2Y03E=; b=GTE25ay1kQ7CbhB5/tp4/CIes
 V1WHJTK/yRH+cfgpd/+mWhi7gNXF6ego/a+WcqsL1/awSA7awNmDeueSIQ299h8FgO2i9CBCnIUZy
 wLTCQ5ws/vMGO7QJVY0X/uJqcAGbLA84+q85mUYA4rnivQBwBC+hvSkjGGsI5H9oitI5Z6nNfrtCj
 0vsjQ+psZlowNpMq5EaJPXKQx4IDvrI6jroLhxt8obERbtG+aOGU49DoMn4ffu08cc+33MFKNlz/Q
 aRZ2HTuJq2RPgXvFcXa0lzx4R8lWnHrxnAUR+s0J/uVwcz4I+LtWqnHliipfxSZPpeG/rX1JNXIi3
 EW9Yc+pXA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42134)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXMte-0007c8-00; Wed, 20 Nov 2019 10:07:38 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXMtd-0001dF-8A; Wed, 20 Nov 2019 10:07:37 +0000
Date: Wed, 20 Nov 2019 10:07:37 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
Message-ID: <20191120100737.GL25745@shell.armlinux.org.uk>
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
 <20191113170058.GP25745@shell.armlinux.org.uk>
 <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
 <20191120090744.GH25745@shell.armlinux.org.uk>
 <CAK7LNARMjaCe8spDPMAKdViUN+uUycYL9LSCXumcR8DNDNKaPA@mail.gmail.com>
 <20191120095111.GI25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120095111.GI25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_020748_780578_974A05C6 
X-CRM114-Status: GOOD (  27.22  )
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

On Wed, Nov 20, 2019 at 09:51:11AM +0000, Russell King - ARM Linux admin wrote:
> On Wed, Nov 20, 2019 at 06:42:52PM +0900, Masahiro Yamada wrote:
> > Hi Russell,
> > 
> > 
> > On Wed, Nov 20, 2019 at 6:07 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Nov 20, 2019 at 06:02:13PM +0900, Masahiro Yamada wrote:
> > > > Hi Arnd,
> > > >
> > > >
> > > >
> > > > On Thu, Nov 14, 2019 at 2:01 AM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> > > > > > Hi Russell,
> > > > > >
> > > > > > On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > > > > > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > > > > > > function and does not need to be exported, as shown by this warning:
> > > > > > > > > >
> > > > > > > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > > > > > >
> > > > > > > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > > > >
> > > > > > > > > Thanks for your patch!
> > > > > > > > >
> > > > > > > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > > > > >
> > > > > > > > > > --- a/arch/arm/kernel/return_address.c
> > > > > > > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > > > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > > > > > > >                 return NULL;
> > > > > > > > > >  }
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Checkpatch doesn't like the empty line above:
> > > > > > > > >
> > > > > > > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > > > > > > >
> > > > > > > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > > > > > > +
> > > > > > > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > > > > > > >
> > > > > > > > > > -EXPORT_SYMBOL_GPL(return_address);
> > > > > >
> > > > > > > > What has happened to this patch?
> > > > > > > >
> > > > > > > > I still see this warning.
> > > > > > >
> > > > > > > Simple - it got merged, it caused build regressions, it got dropped.
> > > > > > > A new version is pending me doing another round of patch merging.
> > > > > >
> > > > > > I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?
> > > > >
> > > > > I don't keep track of who did what, sorry.
> > > >
> > > >
> > > > Arnd,
> > > >
> > > > I believe this patch is the correct fix.
> > > > Could you please put it into Russell's patch tracker?
> > > > (patches@arm.linux.org.uk)
> > >
> > > Is there something wrong with:
> > >
> > > fb033c95c94c ARM: 8918/2: only build return_address() if needed
> > >
> > > I haven't seen any build issues with that.
> > 
> > 
> > Sorry, I had not checked Ben's patch because you said
> > "Simple - it got merged, it caused build regressions, it got dropped."
> 
> That was 8918/1.  Ben fixed his patch, and submitted an updated
> version.
> 
> > Yup, I've checked it right now,
> > and it looks good to me.
> > 
> > But, I do not see that commit in the latest linux-next
> > (next-20191120).
> > 
> > Could you really apply it if you have not.
> 
> It was applied last Friday and was pushed out there and then.
> 
> $ git ls-remote zeniv | grep for-next
> 022eb8ae8b5ee8c5c813923c69b5ebb1e9612c4c        refs/heads/for-next
> $ git lg for-next
> 022eb8ae8b5e ARM: 8938/1: kernel: initialize broadcast hrtimer based
> clock event device
> ...
> fb033c95c94c ARM: 8918/2: only build return_address() if needed
> 
> I've no idea why linux-next doesn't have it.

Okay, apparently linux-next _does_ have it:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/arch/arm/kernel/Makefile

so I think you're confused.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
