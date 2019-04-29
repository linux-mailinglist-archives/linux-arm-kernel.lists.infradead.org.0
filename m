Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF3CEAF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Z3aUVhO83B8yfbeBQuSdTV0s2ltEEOdiWSYc2UDZ8E=; b=aMhAyb3D933AM7
	AoooEoABcbhLLHGaj7M1oe3X4DrB+vecTUH0UBOyzKtKDSFBn/4lRw3qrlTf4HawRiJ26XO9PFmlQ
	7AM+mEAgHpKA5gImGy4+kXN7yspeJTDvbaDcDNXWpT2IwBqyIWXwMkYbLgj+1yzTQTusHQ2B/FbkE
	xo9ZybQFe1XITeI2zIiB0TN0jzXBHWbaHF60vIwvwj3pg7CfSF/GJnaa7xIrWcyQ7Qy2qYZw3Zgk0
	Gt+hsP8y/lW3bZt7XuYy4HeR6T+l6NYVq/tyxWyax0e3Wdd7Ssbuq5KPVpEJDH/qtI2CtMTyQBzTj
	JMKR44ZVWHrq2qV6Aq6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLC45-0005Gs-IH; Mon, 29 Apr 2019 19:35:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLC3x-0005Ff-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:35:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id n8so5541269plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 12:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MA2pxeJanvGEmBWrFqMsmgG7gA6LwvD5zhcslNBuoIs=;
 b=SnHph24tl5THldKuujF5MGi0qGSD2Z736RK0rifb2SRwsvTKnasXAsbjtzKJzg5S7U
 jOT3KGue0g86zHFGOFzm8oJ8l7Bfvxk6nB6Ued+/HMZMTJXZsFbjfzrkCRSLqNlAoIuG
 C16zq20doJV/Wed3YovXDqnKRnWlMz2aV/CtwoECXDX4Hkfb3O3cb6Qy7wXOj12mXbUO
 UlMlNKu0Gr/kSS1Buv4lMeq4kR7TIFQWt7ZlWApCzht7eyDDE+/U+Xle7iiVfeJQPW29
 31gKQV31tNORj9GOHXyeL1n54sfp2gKRkwxyr1FgescX732CvJdnjwd5HAQbAQDDu7rg
 7T9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MA2pxeJanvGEmBWrFqMsmgG7gA6LwvD5zhcslNBuoIs=;
 b=NCHQsE1EXq0ZHwcQmhMXNnmG3kCP3ACCotPOpncTFIoNoJAHCJSQ3vWtQjVZLxSU3X
 Z61QKnMrHGHgRi9KrzIGm5KrHxtJ7UrK3P/GafvlOxFG11HfrxgMD5OCjFkkwwn02sGY
 PtwIA9DZTcIHCfxzt7ZaH2MUDvO+4svEy3C6to4CDyFwHtgobPQJJjgIRVDKDGucG3T6
 O0LEVWzDzlPc3Y8vUgyNK8JmjGamETpMpXgtaPCLXBAyTuc5S8RT6n7nkg9d8cw+Q5Qv
 wKGT9t8vqAgjvYwpbLQ11gsS/q9KQcaf9Ixu9TCamOeX0FEsUvNPOdYJ6W+s45HFFRV7
 sN3A==
X-Gm-Message-State: APjAAAXXbpzOP31sAXwEYZoPZ/U9tLXf1cmz80p/FC/D5oxAbd9k5CDe
 i40f8CGMrkEPc5IqSqT4YQn2n3Rkv0slp/TbSFFoaQ==
X-Google-Smtp-Source: APXvYqwpxgFfPjwuWB0owzgyoxf/HEeCo7aYxdc70jVF+oVqns/qMamafl4p2sSkZ9gHdZ6mqsJ1rHDNwpTTb6m4W/8=
X-Received: by 2002:a17:902:864b:: with SMTP id
 y11mr60477895plt.1.1556566538642; 
 Mon, 29 Apr 2019 12:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
 <CAO=notwewAeeLz=LsOcSj=DakLGW0KjeDHALP5Nv2ckgkRqnFA@mail.gmail.com>
 <CAOesGMipoKED=XLg+VtEVG0Os_MUzsPgOfBFJ+qoJs_fNmP+3g@mail.gmail.com>
In-Reply-To: <CAOesGMipoKED=XLg+VtEVG0Os_MUzsPgOfBFJ+qoJs_fNmP+3g@mail.gmail.com>
From: Patrick Venture <venture@google.com>
Date: Mon, 29 Apr 2019 12:35:27 -0700
Message-ID: <CAO=notwU7LzEiBmzb6AJrgP3RGXE+66OwZVU8CqVE6RSKRvo1w@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_123541_266340_33481272 
X-CRM114-Status: GOOD (  29.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 12:27 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Mon, Apr 29, 2019 at 10:12 AM Patrick Venture <venture@google.com> wrote:
> >
> > On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
> > >
> > > On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > > > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > > > >
> > > > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > > > >
> > > > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > > > currently present into this folder.  These drivers are not generic part
> > > > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > > > >
> > > > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > > > >
> > > > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > > > >
> > > > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > > > Ack this version of the patchset since it changes when the soc/aspeed
> > > > > Makefile is followed.
> > > >
> > > > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > > > maintainers are free to take this.
> > > >
> > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >
> > > I'm totally confused. This is the second "PATCH v2" of this patch that I came
> > > across, I already applied the first.
> >
> > I think the issue here was that I added to the CC list another email
> > and so you may see the v2  without that mailing list, and a v2 with it
> > --
> >
> > Does this require a v3?  I honestly didn't think so, but this was the
> > first time I had to add more people without needing other changes.
>
> Well, v2 doesn't build. I'll fix it up locally by adding an 'endmenu'
> to drivers/soc/aspeed/Kconfig. But... brings up questions how this was
> tested before submitting?

That's a lost change issue. I'll try to be more diligent in the
future.  My dev workspace  is disconnected from the kernel used for
upstreaming patches, so if i make a change in one it isn't always
reflected in the other.  I'm working on rectifying the underlying
build space issue to let me use the same repo.

>
> scripts/kconfig/conf  --allnoconfig Kconfig
> drivers/soc/Kconfig:24: 'menu' in different file than 'menu'
> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
> drivers/Kconfig:233: 'menu' in different file than 'menu'
> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
> <none>:34: syntax error
>
> > >
> > > Patrick: Follow up with incremental patch in case there's any difference.
> > > Meanwhile, please keep in mind that you're adding a lot of work for people when
> > > you respin patches without following up on the previous version. Thanks!
> >
> > w.r.t this patch series.  I found an issue with v1, and released a v2
> > with the detail of what changed.  I thought that was the correct
> > approach.  I apologize for creating extra work, that's something
> > nobody needs.
>
> It's ok to submit newer versions, but it's convenient when they get
> threaded also in non-gmail mail readers (by using in-reply-to).

Roger that.

>
>
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
