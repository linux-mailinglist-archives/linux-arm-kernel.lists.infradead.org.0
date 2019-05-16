Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7965920E14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytCqx2RwV96wIi52XpmD4kRx/uRClg4H1mEMPqDD8v8=; b=u+5p94Oq2WqPkU
	f0D59XHBE6cCuBxB9Z+Ve9hfmcrIC8BP4DXm9nvQZTBvc8cdqbGWHW9b+IAlz6slrAxh3tY06O6uW
	0nLC2xbGtDcNv55jrIJwhg/BCpMRrihTCL1vHFBkQUETNSp4AZEVjdpMYRjLLJ34fTY2oeFVsAWxY
	GTd4WMkQujPIFhJMV7+Eu95jWC0f+g6pMUSyWI+igWOsnmi10I7dpK8Wy6V8V28Bd0BDHeC0ldBDh
	UdsW80b0S/QYBH8tYaDMzcmyJORpXfblnc/6sU0eJeEfuXreNu9EWgKV6DwXmjh7MollKMnFkXDFT
	6RcYna1k/MwtSwLFIAyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKLq-00083q-6d; Thu, 16 May 2019 17:39:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKLh-0007wn-US
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:39:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id u2so3281947ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n4kyV2+gH9O/+achKRV4DAR9WUsLHSm0sKFkMloko7c=;
 b=HrNwXNUoERnsOAO+DYmF16v80ow6GZDPlHz13QmZjJOu3/MvwlyNTenvEQWAaRK1Wv
 ceFpOEzfy0p6TDA7y7xbQBuTTNFG221kKtgaqi9k3Rt6ty/TwNGfRlnGUsL8pMzmqMhR
 g/JKj2MXOF57Jbe7tNBfCPQSINDVGTyzun+/IfOVwoTNa0XotzoGCx2VEhn9vELUpwZH
 Ln7l9R6+GuisDmH+az64fc3kEpfsYq4su1vYiNuj04LyjMdJqSwWCXQye1l8k4K+urDd
 xyIuZe5aO19JPkMJxVcVCnYdaoI6M6OuP/Txi8qu/yqeuIdOhZh7gU/kje6+XLnCH6FS
 kAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n4kyV2+gH9O/+achKRV4DAR9WUsLHSm0sKFkMloko7c=;
 b=EM5Ju+UoSYz5Tvz8xEnaGaO7cf4/uI0TV+lVHEXaz3qaqXPnxNEhF7w6eukGwrWYIq
 9HkwDHRneuphi45d+Aqtt+3vJ59aS9H+t0bnja/aQw7sLuzjHbYxH8U74Rc8/fLa543C
 O+TZnTox5hQr5ac/zQYFW4f9R/EkrhcrkcpaiJ+3K4rhyfBckYR4e1qB6tWr3PZcd4hc
 COC+3PrtHD7HGO6YlxfuUDjx3xKZKRGyfbrdlhUo4h7MMxAdJUN5RQht8szpPLtwdAbh
 BpBb22tq8UGlEVXVKGhlk56HvgWfol1WSJXp2v7+avNaqP62ZQ6R9ETuJqzrWKpjvmE3
 0FOg==
X-Gm-Message-State: APjAAAUU0qdzfz4ulla2r/nQmiOzeoIGhUNRoVsYAx3ETK7CL9ifyPhg
 Zk5t9VUnst0v7Kq7bRNv+siN0Z31zXIJEhdi+bfagw==
X-Google-Smtp-Source: APXvYqwLHVhQvM2YqHN0Q3s/d9DcoXG5S8Y32LS4Gu00TYBdggXhMCvV1iEqBAgHgbqmR15Oisi0OkmhfJNReCqMUHQ=
X-Received: by 2002:a6b:da11:: with SMTP id x17mr31451636iob.78.1558028360320; 
 Thu, 16 May 2019 10:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-4-olof@lixom.net>
 <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
In-Reply-To: <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 16 May 2019 10:39:08 -0700
Message-ID: <CAOesGMjY+OOLP6oYgz9f4+VHwj-H1rA7K+u=QHTG1t2xG9YhUw@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] ARM: SoC-related driver updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103922_121243_8D28126C 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Patrick Venture <venture@google.com>, ARM SoC <arm@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:27 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Wed, May 15, 2019 at 11:43 PM Olof Johansson <olof@lixom.net> wrote:
> >
> > Various driver updates for platforms and a couple of the small driver
> > subsystems we merge through our tree:
>
> Hmm. This moved the aspeed drivers from drivers/misc to
> drivers/soc/aspeed (in commit 524feb799408 "soc: add aspeed folder and
> misc drivers"), but in the meantime we also had a new aspeed soc
> driver added (in commit 01c60dcea9f7 "drivers/misc: Add Aspeed P2A
> control driver").
>
> I ended up resolving that "conflict" by moving the new aspeed P2A
> control driver to be with the other aspeed drivers too. That seemed to
> be the cleanest model.

Yeah, that's the approach we're heading towards with aspeed.

Part of the reason for why I wasn't 100% sure we wanted to move all
drivers over, is that most of drivers/soc has been for "soc glue
logic" code, not for the little SoC-specific drivers where we've
pushed hard to get out into their best-matching driver directories
instead.

Aspeed is an unusually "messy" SoC in that it has a handful of little
widgets used to communicate with the host (in its role as BMC), and
either we'd squint and put all of them in drivers/misc, or we could
pick them up in drivers/soc as we're now doing. Either way the code
will be in the kernel, and keeping it together might not be a bad
idea.

We might get more of a kitchen sink in drivers/soc over time with this
slight change in approach, but we've dealt with messes before and if
it happens, we'll clean it up when it gets too bad. Sometimes letting
it happen is the best way of seeing the bigger picture and not
over-engineer something upfront.

> I'm used to doing these kinds of fixups in a merge, but I have to
> admit that maybe I should have made it a separate commit, because now
> it's kind of non-obvious, and it's sometimes harder to see changes
> that are in a merge commit than in a separate commit.
>
> In particular, it looks like "git log --follow" is not smart enough to
> follow a rename through a merge. But I think that is a git problem,
> and not a very serious one at that ("git blame" has no such problem).
>
> And it means that now the merge has
>
>  drivers/{misc => soc/aspeed}/aspeed-lpc-ctrl.c                   |   0
>  drivers/{misc => soc/aspeed}/aspeed-lpc-snoop.c                  |   0
>  drivers/{misc => soc/aspeed}/aspeed-p2a-ctrl.c                   |   0
>
> when you do "git show --stat" on it, which looks correct, and it feels
> like conceptually the right merge resolution to me.
>
> Sending out this explanatory email to everybody involved, just so that
> this doesn't take you by surprise. But it looks like Patrick Venture
> is not just the author of that moved driver, he was also involved in
> the move of the two other drivers, so I'm guessing there's not going
> to be a lot of confusion here.

Yeah. I think that's fine in this case.

I've got some horror stories from botched rebases where merges ended
up containing actual code changes and that caused immense confusion,
but that's not the case here.

> HOWEVER. More subtly, as part of my *testing* for this, I also
> realized that commit 524feb799408 is buggy. In my tests, the config
> worked fine, but the aspeed drivers were never actually *built*. The
> reason is that commit 524feb799408 ends up doing
>
>    obj-$(CONFIG_ARCH_ASPEED)      += aspeed/
>
> which is completely wrong, because the Kconfig fules are
>
>         depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
>
> so those drivers can be configured even if ARCH_ASPEED *isn't* set.
> The Kconfig part works fine, because the soc/aspeed/Kconfig file is
> included unconditionally, but the actual build process then never
> builds anything in the drivers/soc/aspeed/ subdirectory.
>
> I solved _that_ problem by adding a new config option:
>
>   config SOC_ASPEED
>       def_bool y
>       depends on ARCH_ASPEED || COMPILE_TEST
>
> and using that instead of ARCH_ASPEED.

Yep, looks good -- thanks!

> End result: this was a somewhat messy merge, and the most subtle mess
> was because of that buggy 524feb799408 "soc: add aspeed folder and
> misc drivers").
>
> I *think* I sorted it all out correctly, and now I see the aspeed
> drivers being built (and cleanly at that) but I really *really* want
> people to double-check this all.
>
> Also, I think that the same "we don't actually build-test the end
> result" problem exists else-where for the same reasons.
>
> At the very least, drivers/soc/{atmel,rockchip,zte} seem to have the
> exact same pattern: the Kconfig files enable the drivers, but the
> Makefile in drivers/soc doesn't actually traverse into the
> subdirectories.
>
> End result: CONFIG_COMPILE_TEST doesn't actually do any compile
> testing for those drivers.
>
> I did not try to fix all of those things up, because I didn't do the
> driver movements there.

We'll follow up with patches for that, thanks for pointing it out.

I have to admit that most of my focus tends to be to check for new
errors, not whether everything still is built. Easy to automate, so
I'll poke around with it a bit.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
