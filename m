Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCDE8296F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 03:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSMw1gLadKZFzbIcxb9DyG6zXm1MHN3SV8zdvWjGTGk=; b=iQoaA3IFo0a1Mm
	n6JsWZZ/KJtNgPwHVqZ8MDCgaxsweLXBY0yntuavOmwabNo+XxejGwL7Ns/bJ7MsFI/HCS1FplYOO
	qDiM+/7o8k+efqezh3ppbv4MKPZOhC3mD2/igy0enOvlCDYGKv8LKjKx606W3rdYqxBvdmy2cKFs/
	kXBFDamwLnBd8rzJ0gh/+xkZTq2rZSE8uNZnWDXyyG1lHymdk3jNEC/MLmoZa5S0KJ6H+Mm3TaCCY
	Z03k1mVPSxTPBCrBbYCwf5N02ptjPOwd8XAu3+gHW57iL9nnlTjtw5RsXIP3DuJ/1HEcU52C7uJnc
	M6cPdgday/CYzF6jd6tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huofo-0006B1-Fo; Tue, 06 Aug 2019 01:54:00 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huofi-0006AG-B3
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 01:53:55 +0000
Received: by mail-qk1-x744.google.com with SMTP id d15so61681931qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 18:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d7kc24UT0Ui3ma1mQirb3g1ID4GWXa9XQcfUit7kQkw=;
 b=riia59qcc0cQpXINkDNLStgnmv/95VnlG86qMLMOWsOC6J2f3POgXMdllI6p2YOwIW
 frVwwBvzxO5HICfRqE04MJgk+hdxxDjsS8AQLDN6r5cnWb8kAMsbSyfvtAI6PoRkkmx6
 Z1U7yNnr47jc8mXTieDX/7gJ108OSmafDwp5Kg3I7/PJhZIppW4FwVmgk2d+OmkLAQur
 Q6EUXlofGz2375qWDcViMtohrFcNwHsKWvSMQCFUNF70kAkstnoX8UfFlk7OnRxGlSCY
 ANeRCSqE4Ql6Cj4hx/tyyJTPa2IutfMB+3fQQLsnHC4fGlM/v+26jxInQydAo6OLF0MD
 AO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d7kc24UT0Ui3ma1mQirb3g1ID4GWXa9XQcfUit7kQkw=;
 b=bVMO2V84Kn12N2zqoS38AOT0/6pgFJYHe15Nl9GteVlbRtNnfDoEzGfnIvNYl8q7kw
 hsFwpEMBGo0G/AT+75MHWiqgyV7bsEveL6PuieJg/v0QIcuAQdazIQg0TG1ivyR1bxn6
 AJkW8ib4hZP0+v6sAErIKob4fNPIZqx4eHwKOYGCx+L2/ID9V/ar7i701Z/Ny1++MRjF
 rIxV/X3wUdiRLXI+wo2o2/GwsaNNB8HDZlSsQFcUpdWb4BlIeYgCdpZsyO+efD173/L+
 lcgObUqY23yU3B+6vVmTzR58ywXKlQdMfdXeISKUFMJD3FZD1THZZ97POSXOAbZ4N6TW
 LCvQ==
X-Gm-Message-State: APjAAAXCwriVgKA6fYhI4utmNkrVj/9i+0ShIR6wuCRYAvHeqBBOu3vY
 OJGo8DEVb4+FlUY4vdJVEc57Sd5Vg3YQrQUxdZI=
X-Google-Smtp-Source: APXvYqxWZi4lUfIEh6D4yIIdP4OZZqI7XWtZ6Vxz6LrMCABfvh7TOEVKMH6djoJTvdzrMbkzbFkYc+lGJCn7FidzSew=
X-Received: by 2002:a37:3c9:: with SMTP id 192mr1116843qkd.37.1565056431753;
 Mon, 05 Aug 2019 18:53:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190730044326.1805-1-luaraneda@gmail.com>
 <20190730104746.GA1330@shell.armlinux.org.uk>
 <CAHbBuxoMBiq23Rkt7-jm42O4ePY=23ZsgNEVf3UJKQ2Dg+3fbg@mail.gmail.com>
 <26427757-9ed1-36fa-3e4d-7357703ec548@xilinx.com>
In-Reply-To: <26427757-9ed1-36fa-3e4d-7357703ec548@xilinx.com>
From: Luis Araneda <luaraneda@gmail.com>
Date: Mon, 5 Aug 2019 21:52:58 -0400
Message-ID: <CAHbBuxpNQnWwTe5U_4S42-BLK1j7+cGOde49KbYnxtE6eFCCPw@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_185354_407617_41FCBA1C 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

Thanks for the review.

On Mon, Aug 5, 2019 at 5:53 AM Michal Simek <michal.simek@xilinx.com> wrote:
>
> On 31. 07. 19 6:12, Luis Araneda wrote:
> > Hi Russell,
> >
> > Thanks for reviewing.
> >
> > On Tue, Jul 30, 2019 at 6:47 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >>
> >> On Tue, Jul 30, 2019 at 12:43:26AM -0400, Luis Araneda wrote:
> >>> This fixes a kernel panic (read overflow) on memcpy when
> >>> FORTIFY_SOURCE is enabled.
> > [...]
> >>
> >> I'm not convinced that this is correct.  It looks like
> >> zynq_secondary_trampoline could be either ARM or Thumb code - there is
> >> no .arm directive before it.  If it's ARM code, then this is fine.  If
> >> Thumb code, then zynq_secondary_trampoline will be offset by one, and
> >> we will miss copying the first byte of code.
> >
> > You're right, I tested what happens if the zynq_secondary_trampoline
> > is ARM or Thumb by editing the file where it's defined, headsmp.S
> >
> > When the .arm directive is used, the CPU is brought-up correctly,
> > but if I use .thumb, I get the following message (no panic):
> >> CPU1: failed to come online
> >
> > This seems unrelated to solving the panic, as the message
> > even appears with memcpy and FORTIFY_SOURCE disabled.
> >
> > I could add the .arm directive to headsmp.S
> > Is that your expected solution?
> > Should that change be on a separate commit?
> >
> > I'd like to know Michal's opinion, as he wrote the code.
> >
>
> There are two things together. Thanks Russel to pointing to it.
> 1. How to support SMP in thumb2 mode?
> Adding .arm mode to headsmp.S which ensure that cpu starts in proper
> mode and correct code size is copied.
> And also point to secondary_startup_arm in zynq_boot_secondary to switch
> cpu from arm to thumb mode.
>
> 2. And the second is this patch to fix FORTIFY_SOURCE.
>
> Feel free to create the first patch too or I will do it myself.

I'll be sending the two patches as a series (I already tested that
they work), so they can be picked by the stable trees.

Thanks,
Luis Araneda.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
