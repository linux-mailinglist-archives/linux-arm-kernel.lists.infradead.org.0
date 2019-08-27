Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEF49E4AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=en8/5NHr1bLdo7K8ebNdKgBfwn+4LgvAfokGNkSIRU4=; b=SO6UC517CvAuGj
	MPuaHiGNOWmtp+zZCzY8WeU/PG1O1vLSCEL4BgQmnM/+Bu2YZsapRCedLZ0iriyXf533+7b7gmQq9
	XYsKV8g83t8zbfor4Lvq9GfK9vniuXx79LazIp7PlNxEgxko80qnB1VcWmqtLG64wpNpAr2p7Jg2K
	Nr7kUqmNUZkvP84hreYa1GbDW+P5AervJP1ttKt86rgFmKVQbEc257mbLtAg1oBHVtawNB2SR7j09
	Li7SNfMSrUoQPICx4A7EuhtYCiYxgdawJa1bSW8NnEc/lcCTfQ89Gk6AVIdR6KvFwKzcBSi341r8s
	KrUR3D8WxXYwl9vXSgLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y0X-000243-AF; Tue, 27 Aug 2019 09:43:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y0K-00023W-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:43:09 +0000
Received: by mail-qt1-x842.google.com with SMTP id i4so20623156qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VQbThBmodK1cGm7FX6e5YCfvTa6MdPeqoA0giiD+h8M=;
 b=neTYbrOKJWKXZZZ4LoBFKuVPC4vt2+MyG7d7EY6y09XoRJRN8fFcIYms8IEefljeCi
 FVAvOxxb9zvgB3h4NQldDrMVj1uSH3/viMtbmTvrzxhvrt9o5dZ9STkKB2Cd7kPAS9Bz
 FYesIPPZUndgktejsxMKl17A7Tptl3q7TsNPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQbThBmodK1cGm7FX6e5YCfvTa6MdPeqoA0giiD+h8M=;
 b=FTOhbT/IWGnQhNktACyOfyvyoHFRUeX7ppeNOH1ZHjquOKT+sKOzNSidRKHF81QdBZ
 MWatSpBVjFvlFUrqLh01GMnLaPX55I5UrhQjuGMV4O9yYXZI5V4y/X3BeR/6IY2jYxVA
 kS1dpK9YYUTgWOC4C0jhAKFtxfFRoSChlMXS1ZaqBtDSRPWzD9+gRZTiGmrpNxzjX/kw
 p+zMy9giiBysMuu1W890u0YHBi6AifZOodEcUAUImXCsqxx125FwGPFvfSXusN0EPMnD
 TsCUYxuQ4h0F7QRhUFgohPq6IjqOZa3JqdD/UuKrdsDYX3246FWcXUvOg7A2sqxgpBTI
 R9lQ==
X-Gm-Message-State: APjAAAX+/pHduUU60vPzhMhPqAYUmrL3cmrugoapIRVW0r3JXrPFCjoa
 J/dSvCMBQLxH6ZQxiZTD0kD++ykThFzrZttrYGKTFA==
X-Google-Smtp-Source: APXvYqyDaHatHsrnecm26Moq3/ZuuZ7L+TrFmY3Ax7BZvVeLkJaUarkDOkO6Lf+CgOQJ0XoE5BcmxL/dcPCTgNmODp4=
X-Received: by 2002:ac8:1e1c:: with SMTP id n28mr21813190qtl.78.1566898986215; 
 Tue, 27 Aug 2019 02:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190823062452.127528-1-hsinyi@chromium.org>
 <20190823062452.127528-3-hsinyi@chromium.org>
 <20190823154158.wgcnxfzpcttpnhga@willie-the-truck>
 <CAMuHMdXkKomZm_5dhmYd3ryy7PCygA1JBRnpJVvaCXm8nXvTxw@mail.gmail.com>
In-Reply-To: <CAMuHMdXkKomZm_5dhmYd3ryy7PCygA1JBRnpJVvaCXm8nXvTxw@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 27 Aug 2019 17:42:40 +0800
Message-ID: <CAJMQK-gz7DiPfrAwiqJVSdeOiivZ1EEe_Ewp__sX5x13eLLO_Q@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] fdt: add support for rng-seed
To: Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_024308_450390_EC36C787 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

I probably shouldn't move of_fdt_crc32 from early_init_dt_verify() to
early_init_dt_scan() after early_init_dt_scan_nodes().
Since arm doesn't call early_init_dt_scan(). It calls
early_init_dt_verify() and early_init_dt_scan_nodes(). While arm64
calls early_init_dt_scan().
Sorry for not checking on arm.

Since it's early_init_dt_scan_nodes() that would modify DT, I'll still
leave of_fdt_crc32 be in early_init_dt_verify() and update it in
early_init_dt_scan_chosen() if rng-seed is wiped from dt.


On Tue, Aug 27, 2019 at 5:18 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Will, Hsin-Yi,
>
> On Fri, Aug 23, 2019 at 5:42 PM Will Deacon <will@kernel.org> wrote:
> > On Fri, Aug 23, 2019 at 02:24:51PM +0800, Hsin-Yi Wang wrote:
> > > Introducing a chosen node, rng-seed, which is an entropy that can be
> > > passed to kernel called very early to increase initial device
> > > randomness. Bootloader should provide this entropy and the value is
> > > read from /chosen/rng-seed in DT.
> > >
> > > Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
> > > since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.
> > >
> > > Add a new interface add_bootloader_randomness() for rng-seed use case.
> > > Depends on whether the seed is trustworthy, rng seed would be passed to
> > > add_hwgenerator_randomness(). Otherwise it would be passed to
> > > add_device_randomness(). Decision is controlled by kernel config
> > > RANDOM_TRUST_BOOTLOADER.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > ---
> > > Change from v9:
> > > * reword kconfig
> > > * use IS_ENABLED for config
> >
> > Given that these aren't functional changes, I've kept Ted's ack from v9
> > and I'll queue these via arm64 assuming they pass testing.
>
> This is now commit 428826f5358c922d ("fdt: add support for rng-seed")
> in arm64/for-next/core, and causes the following regression on arm32
> (e.g. r8a7791/koelsch, and sh73a0/kzm9g):
>
>     OF: fdt: not creating '/sys/firmware/fdt': CRC check failed
>
> Seems to work fine on arm64 (r8a7795/h3-salvator-xs), though.
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
