Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9F20D20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/ezQI1ulolXPyv9Utwwh+hRHI8pndCscLubx7MyHAE=; b=usE/tztDZkFmKT
	AWynoEfE3kelKjBRokOMxszNr5YCjvro/oaiz8r/WT3Po3h1+MFaLTSAI4ligJtrsrz/kVKZyK/8X
	ZrHTma2CjVthRSzOs5O+F6sdTrS72DeS9OFK7FGtHWqMxlwfcFtWw6wzQpOsT3JBq1aZuEwj3ge2p
	qIpwmpcppGVZuDaJGaWByrHskqaHYN9WW9OggFS0b+PfT2q3yj/v6mBC/iJDf9+ylN0DgOTrT3Xaf
	+FngPzUoWwE0FGUNKODMxecgqUW/Jm26AbY9RImTYDld5NrUHWAu6Au2KrSfgMNOXKXP4jAATh3vz
	YWkmY1iqzAecslMkuVrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJM1-0003tu-Ee; Thu, 16 May 2019 16:35:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJLs-0003tE-PA
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:35:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so2121947pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9J9a2LzssNOHKN9GbYjxdjZY+TIqtIW8RPeTXwMxezA=;
 b=qR6Y1RLypIHQr2YPzAk8GpNVBjwc4L5nEdW/ex0nmNmkVo/WwDQy1FrRZLP2h1qp7k
 PGmjKb6Oqbjuu8AdQkHCsmRc7GTWWt2mjyw4TTboutPDVoACPunBKROxB8bXZMc63IKB
 LjsPTilg+C4hsTZbBiNT52ieyyelwr654xuw/vXZOd/sPdHe3yC3W1fioPqjzM04W4iw
 4OPSmjJyt0u8yUBefe36+UrsAHX++oDf0LGM3xPB4PmYIkOcR1FK3J9L8GJUm+Yx9S3O
 +9lABDVEmY3tDFYXnamhK/BuMDLDmr3pYehi+5YnkEIEzI1UzRB4weU2zotTzPvXZmdz
 D9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9J9a2LzssNOHKN9GbYjxdjZY+TIqtIW8RPeTXwMxezA=;
 b=IOUKB9yVe1pUuZaHV3xQoi2Y+5Sgw+O34M7xg8bk3KDkh2w5xwbY4DsXLi2YIs+mrS
 y50Y3TVcHkwlqtFc201G9GlnKz0Uxhq6hCFf10J+HpssMm8IP0Bq0OX5uV9DbSOJcKxH
 F/YXUZTCp8UdTaHeDgu6VcQFP1d+3sV+8BqtS7+98cOdWvrsNPwSoaLtxfupbUjYjgIO
 x9ne12oavBCs94ZP4Woj1SHdixFfAmSAHyRa4nzwpylq8+ZYbNvRo7ifNAtZZY/z2pEY
 acNRRZL6D+/NxBR8CoN6SpZKEsc46wK7ykYi/4feWWQ48yTZZpj6buYjwrGgF/1EoPOh
 x2JA==
X-Gm-Message-State: APjAAAVnh2ul5bjwIuc8KFm8NQsNe45SuWKuINcq+NoHcriLl6/hIQBF
 0JBtcN0PlQWS9r9tErOw8pkFj1KKWrNrwbevJRi6kw==
X-Google-Smtp-Source: APXvYqxyN5EOxa0PrXjKgoD0rTtQ/ipxRkM3fY5lzBGw8U4s4Dco01va6mjU04w4hYtLsK2wtFzvy6r0gsdwMO1l+lc=
X-Received: by 2002:a62:7a8f:: with SMTP id
 v137mr55367829pfc.243.1558024525130; 
 Thu, 16 May 2019 09:35:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-4-olof@lixom.net>
 <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
In-Reply-To: <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
From: Patrick Venture <venture@google.com>
Date: Thu, 16 May 2019 09:35:14 -0700
Message-ID: <CAO=notySOzSjJS9jBCF9fyXEUK7VDZQiJp3WaSLs4Y7X7PC8=Q@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] ARM: SoC-related driver updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093528_845168_7DBEFE4D 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Olof Johansson <olof@lixom.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, ARM SoC <arm@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, May 16, 2019 at 9:27 AM
To: Olof Johansson, Patrick Venture, Greg Kroah-Hartman
Cc: ARM SoC, Linux List Kernel Mailing, linux-alpha@vger.kernel.org

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

Thank you.  I agree.  There was some back-and-forth about the SoC move
w.r.t any new aspeed misc drivers. Whether moving them into SoC was a
good approach versus leaving the growing list in misc.  Another aspeed
driver, controlling UART was headed to misc and received push-back
that it was sufficiently specialized to go into SoC
(https://patchwork.ozlabs.org/patch/969238/).  This feedback triggered
this staging move.

I think storing the growing misc drivers for these SoCs (Aspeed,
Nuvoton) in a SoC folder is a reasonable grouping.

>
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
>
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

Thank you, that makes perfect sense.  When moving the drivers, I was
only considering the case where one is compiling them for use and
forgot to check for COMPILE_TEST.

>
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
>
>                   Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
