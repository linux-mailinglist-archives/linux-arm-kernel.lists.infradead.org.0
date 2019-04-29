Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EB1E866
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9f0V2ihg00v1lMHnkVJnoowsVej9VIZt6imm+7Sa98=; b=sPwjtXkezlb8bq
	rEoDvg5Mhg/vhMo+y64vwWNfl3wyNmhs69QL1BebeL8XamVnDXfFR+dblONxIjB/UPcl4V13KewV+
	HBOggL6lfaomb2KjJyUb/LEmgqfd3YLyFxm2p34awy3yMt1nK1CmZ1+srQJH/34F+VHiUqUT8bi0I
	HeTFGbtj1AO112l118BW6iPKhVVSh8VP8irfBSMOkMd23Pw/gjslgb2/zoHDOW91RgaxDcOCZ7wM3
	6J1blSXMkEwInI+FF48zUc2LnjVzTBfNAme+eSQw1QkoIv4CBGea2E03erTUIuZncE56eNGKiyeTh
	qc8+F3nZd0yWbDWZY6XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9ls-0003wf-2Q; Mon, 29 Apr 2019 17:08:52 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ko-0002mD-RG
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id h21so10026196ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YeKK3tAfy5x+3pFMDByyIL1i7Necl4Ot8V4uzh6dPdI=;
 b=SpTxWnNXCT+s7eNFLiBVrhtEPFWtmdu0QV5L9p4KNsv8soOLUaV7vq7TgE8vGgM+sc
 //ZqQu3TjxSrZycLZJXRoccECIY2xm9wxF92OvuZrTbZ7qqLlFjsp6LR5ixPsPAukXXw
 cWBjtTSRskVqm6pjgQsYuPUQ18Zw2ywbwr5mTOX2X/OXIqdRhKT/rR0QfvGYhF6/MA3P
 mfZ1+2b4XfT0zwXc/FzIlna+GiQ0pnsstcwAFj79OddVAskq1Y/vBPe3ghVRQjuRlAxD
 7KwSilnAsQjLlGU+5fxwimueGL8UCDf4rpFTDZRQhg9UvCwus5/SU6uK6iWjxQhq4Hxc
 9uQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YeKK3tAfy5x+3pFMDByyIL1i7Necl4Ot8V4uzh6dPdI=;
 b=Q77EDFsZY2Lg9RW8i20k2q7CjOxZalwJlXukiXzAaRw9s9e8lVcZIqdBNIBYkUkdRH
 wbj3FGRolpLzi8q7Di1eRx3tPYIuLB4QrzDFAkSFHmqGNcYMOT8+eUYpY5wjxK23l+mN
 uRdlloX0ET/KqM0dm+7IMm2Rb2H3rfDF7SAeKjxUXrYqu1ZM5ebD+a1Yo1fPkm73QoOR
 Dj3PR8vFr30fL0IgzQjL+lmn0uAUQy3lHJsNWvhmr6lyT3KHAcEzuc5HKWkiTzBIzfHd
 cadSvNTdDyBlxMZn6XoAj5QsFTSzROIrBWTp6PLnDG2/1ssvN9atxaOcTpRgXSrNTPTF
 Krjw==
X-Gm-Message-State: APjAAAU2KeYHEM0JzqyNh4Xb6Ne+e/VE1gYFl65Ml9z1T25pm0/lqvlG
 H4JzKUKQH4nCyRm0Thwvaa/DcrXTFp370/HJ
X-Google-Smtp-Source: APXvYqxr2kAiL2bmKb1U2ragx5zvjsV94YGmZpTib0GYs7NAZyHDj9Or280CmF4buq1qXwRq5LKh4Q==
X-Received: by 2002:a2e:7503:: with SMTP id q3mr32471107ljc.190.1556557665256; 
 Mon, 29 Apr 2019 10:07:45 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h14sm6902864ljg.10.2019.04.29.10.07.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:43 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:31:27 -0700
From: Olof Johansson <olof@lixom.net>
To: Patrick Venture <venture@google.com>
Subject: Re: [PATCH] soc: add aspeed folder and misc drivers
Message-ID: <20190429163127.r6k7yfriz5ha5xul@localhost>
References: <20190422173838.182736-1-venture@google.com>
 <CAK8P3a0k_8+R9FeyZsL6Egvi1Z-G0VrvR0TWXzGHryqxTr6thg@mail.gmail.com>
 <CAO=notxuYsBzWBnNran5jH0RujSBeti6-HsjasCRP6Sq0MwGNA@mail.gmail.com>
 <CAK8P3a24h=0JLZnZWOmzRqM70uhw3QZ_HcYDXST7F6TgSuW6YA@mail.gmail.com>
 <CAO=noty2QN6H_x3RMjqOrY9b0xLLz=MBk6Fb6yCdW9+J0a-bSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO=noty2QN6H_x3RMjqOrY9b0xLLz=MBk6Fb6yCdW9+J0a-bSA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100746_904458_45128BBF 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, gregkh <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 08:40:25AM -0700, Patrick Venture wrote:
> On Tue, Apr 23, 2019 at 8:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Tue, Apr 23, 2019 at 4:24 PM Patrick Venture <venture@google.com> wrote:
> > >
> > > On Tue, Apr 23, 2019 at 1:08 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Mon, Apr 22, 2019 at 7:38 PM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > currently present into this folder.  These drivers are not generic part
> > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > >
> > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > >
> > > > Looks ok, but please resend to arm@kernel.org or soc@kernel.org
> > > > so we can track the submission and make sure it gets applied if
> > > > you want this to go through the arm-soc tree.
> > >
> > > Thanks, I didn't see those come up in the get_maintainers output.
> > >
> > > I had a longer question related to this patch progression -- if I am
> > > moving the aspeed gpio driver to the soc folder, the soc tree may have
> > > the soc/aspeed folder in their next, but the gpio tree wouldn't
> > > necessarily.  I know the branches sync up when things are merged at
> > > the top, but I wasn't sure if there was another mechanism for this?
> >
> > We can generally deal with merge conflicts like this, or you can ask
> > the respective maintainers about it and let us figure something out.
> 
> Thanks for explaining that.
> 
> >
> > In this particular case, why would you move the gpio driver into
> > the soc folder? If there is a proper subsystem for a driver, it should
> > not be in drivers/misc or drivers/soc.
> 
> Ok, that makes sense. I was trying to get a sense of what belonged in
> soc versus the subsystem folders.  My thinking from the limited
> reading was the purpose of a SoC folder was to contain the drivers
> that were only associated with a system-on-a-chip and not a part you
> could buy and place on any board.  A tmp421 sensor is just a generic
> part, versus the pwm controller, which is only for the specific SoCs.
> 
> That said, there are quite a few misc drivers associated with the
> Aspeed parts -- and there are two under review now, so there's a
> strong motivation to move those at least into the soc/aspeed folder.
> Thanks for these clarifying remarks.

drivers/soc is more about platform-level glue and SoC configuration, etc.
Specific IP blocks and drivers normally don't go into there, unless it's
a shared resource that a lot of drivers need access to.

So, for most of the small drivers around the SoC, other directories than
drivers/soc are still the best answer.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
