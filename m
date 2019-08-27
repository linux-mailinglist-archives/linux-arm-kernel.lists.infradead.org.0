Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5519E3CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtAGnGVEJD13F06l/NPLqS6NPIa2nN1bq6DsZB28hiE=; b=eyHuvhWIy6KawI
	Xv9Bh2kf30/FnPSW8XyzOIGL1Zhm54Tuy9AvRn3gBGNqDiZIhzIRaZH9oD6DITC82pEFmlNopAbYT
	qjSaK7U5645V0NWGe3XIWFRJ8CCGhInnlrTrFbvb3xDlNJfTNL+6haxmrdAv0+o+Z2CL1u8kkiu7K
	0NZbB2lUm4Dqs72+S0OJj+ro2qGmvNzg68M9ogHkmI1SvGlelYRbTq9awNBvZxgjolawRGkLOn/RS
	aowxKUf1QD3MaT4Cgwu1UqIczDxtl4R75LYRNoYe/sN8qZKxzLiU7BMZ1iEETK4UvydxCugrjQX/K
	mF5tdgeSh9FswzGwox9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XcX-0008Se-Im; Tue, 27 Aug 2019 09:18:33 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Xc5-0008SF-Lq
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:18:07 +0000
Received: by mail-ot1-f66.google.com with SMTP id w4so17965787ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nhT1Rd3Lj1UELV0LVFye/yoAPnbJ5QOFnr3bTqW/MP0=;
 b=eSL2ylzoRavp0kDIX7dlty/0BXmUFf3tPG09af+CeCWsorz7RRIVdaE37BKlGGoPrK
 mGninknsZmsFFffuqczL+SHR/E7uaQN7QppI+sRd+AF5jGOqybvL8wZXYNc1IkXyaCXg
 HL2w5wyK5e8cD8297Y2gtipa2goe+VPYJEaUu/eHOF1BLgir1xt5R1byuF50Jmtg3RRb
 JmYaicI3Lw7pAehUlnV8ljFV+NCJ4HNkhOqj81u0vcatBECtKnIF1esqEFHVuwpM0J2t
 WTyoEHfVxwhWWlHULNpRYX9OrRA5nmkJ02FvynG6ydu2IdObkM994CagKPti11v7Z9Pz
 hzQA==
X-Gm-Message-State: APjAAAVpCi82r7NMQLL4xNuvLfUa2AwwQf5zTGhJMOCOuDncVeBaARuE
 n8lLvLHUXdWvMMyNik9fTrbmt5h70LG+L2isXuc=
X-Google-Smtp-Source: APXvYqwFViP1qbcFMRhaF/ExVaw43p6ehTGxxsw0pX25FAJsnmhcf6UkL24tDYawFwgVn841oUSayrAX0uCEl5n71L4=
X-Received: by 2002:a9d:7a90:: with SMTP id l16mr19232407otn.297.1566897484288; 
 Tue, 27 Aug 2019 02:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190823062452.127528-1-hsinyi@chromium.org>
 <20190823062452.127528-3-hsinyi@chromium.org>
 <20190823154158.wgcnxfzpcttpnhga@willie-the-truck>
In-Reply-To: <20190823154158.wgcnxfzpcttpnhga@willie-the-truck>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2019 11:17:53 +0200
Message-ID: <CAMuHMdXkKomZm_5dhmYd3ryy7PCygA1JBRnpJVvaCXm8nXvTxw@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] fdt: add support for rng-seed
To: Will Deacon <will@kernel.org>, Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_021805_714741_AB92BC41 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Stephen Boyd <swboyd@chromium.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Theodore Tso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Hsin-Yi,

On Fri, Aug 23, 2019 at 5:42 PM Will Deacon <will@kernel.org> wrote:
> On Fri, Aug 23, 2019 at 02:24:51PM +0800, Hsin-Yi Wang wrote:
> > Introducing a chosen node, rng-seed, which is an entropy that can be
> > passed to kernel called very early to increase initial device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
> >
> > Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
> > since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.
> >
> > Add a new interface add_bootloader_randomness() for rng-seed use case.
> > Depends on whether the seed is trustworthy, rng seed would be passed to
> > add_hwgenerator_randomness(). Otherwise it would be passed to
> > add_device_randomness(). Decision is controlled by kernel config
> > RANDOM_TRUST_BOOTLOADER.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > Change from v9:
> > * reword kconfig
> > * use IS_ENABLED for config
>
> Given that these aren't functional changes, I've kept Ted's ack from v9
> and I'll queue these via arm64 assuming they pass testing.

This is now commit 428826f5358c922d ("fdt: add support for rng-seed")
in arm64/for-next/core, and causes the following regression on arm32
(e.g. r8a7791/koelsch, and sh73a0/kzm9g):

    OF: fdt: not creating '/sys/firmware/fdt': CRC check failed

Seems to work fine on arm64 (r8a7795/h3-salvator-xs), though.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
