Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D76F878A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fhj5+u4stu92gJ5n3+1VOAnAiRteR5ZCchmyyIHx5gE=; b=UwuI9c3ilK1WUc
	bCSeNV4oE7AnyfWelZyy6q8p8VBuud50w1CuV4Fk3l200iCJc6IkDrxl3JGo/qNGZlBYMyHFvsl6h
	gRkNi7OZxKgbJSZX1pWEKJt+fRJhXYQtXBTD9w+zvPw/e5cl58WYEZ8lKUB/piOvjaexIfdJ4E4gR
	864UG5TaaTXgmQ3k+XSONs6YoY+YaFxdMI3RVNG4F+rzEZorLmqVuXMNx8p/kgzERgb5xdLpI/nGc
	KB/QM3lqxoG2XrkX402+aJz0yPBeU3DKoyHwR/tvWicnbx6YYPE5bry+QF08ENRkODO9mkVjUw9s2
	F+Tk+VzzHhOv8Gc5epWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw37T-0001ZV-Sv; Fri, 09 Aug 2019 11:31:40 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw35T-0007Dg-1a
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:36 +0000
Received: by mail-qk1-f193.google.com with SMTP id s14so900420qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 04:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S9OL1q0b89StTOskN3x54TpYnbWG2EtxXE4LeFSFHD8=;
 b=lXYOYALYh2q+UKLzJem4dr1DJM6qEsA6HYztnMFWLg6PizWa9Y4ciH4g5M9R6uTq+2
 HTonQ+Lm4MG2tQbEd63/EVJE0Ir4eGzMkPSREcwfIM4eLi55EtHSbwv6OP0peLqXXrHA
 Nh7Bi+BzGqtpZZoIbKjb5n9iq5BhuvXjFj3vKBt6lDOGYYKggbypanCLk0jnngZ7zXI9
 RVSgnmNLsXU+pRFcHCvdusyLPnTUkaZ1RZaCsLku+2yDhL7CfP1aAEG+D/B6nzcMr4Aj
 8dxS6XtL457aX4n+2qVS9qXvWiDPIFwcKfCquVyR6Ncln3BYv3zmJ44ndgRZ6g1jYV+h
 AUeQ==
X-Gm-Message-State: APjAAAXHI81unY+1Pf//O0IZXHp1uReuULhmUDsTUJGZwfuEf7QkQvsT
 2J1Xk901A/3DEYljOM6cgNiRui0CKWXRQpDzliA=
X-Google-Smtp-Source: APXvYqxl5obkgUvxS66Qeexv0igWPgPwk/RdVpkXMBFke1nhX+eNFdxUQ8CpQGywVOsc9uUsHUW2XXLFGod7PMkEzPY=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr17802595qki.352.1565350170063; 
 Fri, 09 Aug 2019 04:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-8-arnd@arndb.de>
 <20190808222408.GS3795@sirena.co.uk>
In-Reply-To: <20190808222408.GS3795@sirena.co.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 13:29:13 +0200
Message-ID: <CAK8P3a0qTvDFMj4GrKfD=2mkPpKN=eRJ--mp0r7mqAH+b2r=kg@mail.gmail.com>
Subject: Re: [PATCH 07/22] ARM: omap1: move perseus spi pinconf to board file
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042935_164304_DF513757 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 12:24 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Aug 08, 2019 at 11:22:16PM +0200, Arnd Bergmann wrote:
> > The driver has always had a FIXME about this, and it seems
> > like this trivial code move avoids a mach header inclusion,
> > so just do it.
>
> This appears to be part of a series but I've no cover letter or anything
> else from it.  What's the story for dependencies and merging?

Sorry for missing you on the cover letter. The patch is part of a series
to make omap1 part of ARCH_MULTIPLATFORM. I'd like to merge the entire
series through the arm-soc tree to avoid dependencies:

https://lore.kernel.org/linux-arm-kernel/20190808212234.2213262-1-arnd@arndb.de/T

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
