Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AFD12F8DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 14:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnAPqYtPjmvR7U/3G9SnRxj2+v2pQT8D78SKnzswHwA=; b=gK8dl24TKq8SaT
	+flW7P0t70od2JajYceSzPNguHbfbMfbn+NoFrmzhk0P+URKgc7cLO9PTIA32GIegXTbN7vtSjZGt
	O0hRw00yYnzZgXhSAFoI22zpMTZ1iyxQ0g6SMGZGlE+l8iMt2WVFJusb6jWZwQ2+WmsPbJxgL61BW
	QinAuuRDI7vyJBNN/eAziAUBC+kr29PtfxmNRgdEzCW3jgIAq3bvfaQ0pYO1yquNCMj/osgDRCOps
	RMlOSultx6G3wIabDb0ZQmVqmtIBrO2QzWZahzfUDabFiYufcQIg/6SXBf/BL56hXUAhgX6n/nooN
	sxlkQuukOmi10pu3O8ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inNDv-0007we-8a; Fri, 03 Jan 2020 13:42:43 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inNDo-0007wD-Mn
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 13:42:38 +0000
Received: by mail-ed1-f66.google.com with SMTP id r21so41623129edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 05:42:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6IGH/4NsfGNqzq/az3laNR9DmJ2S/QIcfX6JBOSE7W8=;
 b=sbbIS4K/EdN3IeHKjxYkarEHUhS3tBjG9KjAcGcmAKQd5v0V3j0XEcnypIT14tTutr
 H9eACgR1Yf9BsWL7E/3WrIrC/1PGnseAqtEuKUaruISre69w669/d7/+EtrBw08OutwT
 T6BqXYqGPtg+KuklyiabRdonlCOZUNhocDOF5lYpe3E1Umkq7JFGR1NbLdLeOw9PtBS4
 zgGh3uHpTXCyNUF+mWZO7SzJOseP9ZYFmZ9nz1WVN+eTjUzrtZClvs5dp+T0AGeLGSFV
 1ZmQ7Un/TjJlfRy8p+JZqfTQaRpOel0opkqiUAY72FYl0PjrlfYjJsOMWBYVz3jxF+zt
 PcCg==
X-Gm-Message-State: APjAAAXcIO4k7fjTAFHY4A6HY58PT0tntzUcMJLQPN5xL9SNmmWHoj4o
 jbPprG+RdvZ2oTh+Y4yyEPA=
X-Google-Smtp-Source: APXvYqz+iEmGUlqJ2ytifXahiNdcRR8fxZzTr5tUaDMie/rQytsdQJEzwg2+nqd+R4ZjXvdf3v9MvA==
X-Received: by 2002:a17:907:20a8:: with SMTP id
 pw8mr92654258ejb.248.1578058954664; 
 Fri, 03 Jan 2020 05:42:34 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id r20sm7751571eju.60.2020.01.03.05.42.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 05:42:33 -0800 (PST)
Date: Fri, 3 Jan 2020 14:42:31 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 5/5] i2c: Enable compile testing for some of drivers
Message-ID: <20200103134231.GA2095@pi3>
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-5-krzk@kernel.org>
 <CAMuHMdUXJo3=x32xbfSUXs3O3JHaFpfxt0mHupEb+vzi=5+S4g@mail.gmail.com>
 <20191231090146.GA6872@pi3>
 <CAMuHMdWhz7x8MnGeGv2f-Gb7fBRTp=5qq_Mz55sY7tQNpRogjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWhz7x8MnGeGv2f-Gb7fBRTp=5qq_Mz55sY7tQNpRogjg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_054236_745829_8AF1CD02 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Max Staudt <max@enpas.org>,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 10:20:01AM +0100, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Tue, Dec 31, 2019 at 10:01 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Mon, Dec 30, 2019 at 08:11:03PM +0100, Geert Uytterhoeven wrote:
> > > On Mon, Dec 30, 2019 at 6:28 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > Some of the I2C bus drivers can be compile tested to increase build
> > > > coverage.  This requires also:
> > > > 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
> > > >    controllers,
> > > > 2. Adding 'if' conditional to 'default y' so they will not get enabled
> > > >    by default on all other architectures,
> > > > 3. Limiting few compile test options to supported architectures (which
> > > >    provide the readsX()/writesX() primitives).
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> > > > @@ -611,8 +612,8 @@ config I2C_EMEV2
> > > >
> > > >  config I2C_EXYNOS5
> > > >         tristate "Exynos5 high-speed I2C driver"
> > > > -       depends on ARCH_EXYNOS && OF
> > > > -       default y
> > > > +       depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> > >
> > > This means it is only useful on DT-based Exynos platforms, but compiles
> > > everywhere?
> >
> > Yes. The driver will proble only from DT.
> >
> > >
> > > Do you still have support for non-DT Exynos platforms?
> > > ARCH_EXYNOS depends on ARCH_MULTI_V7?
> >
> > No, only DT. I think dependency here is a left over from board times and
> > optional OF. Actually many drivers depend on OF and some OF-like ARCH so
> > it could be removed.
> >
> > Since driver uses OF, it's rather the choice whether to explicitly
> > mention OF.
> 
> So the !OF case is only for compile-testing.  Then it can be simplified to:
> 
>     depends on ARCH_EXYNOS || COMPILE_TEST
> 

Many other drivers do exactly the same: depend on ARCH_xxx (which is
already OF only) and on OF. Since OF now has all (or almost all) stubs
for !OF case, such "depends on OF" is purely from logical point of view:
the driver will not bind without OF. It will not be useful.

I do not have strong opinion about this but is there a point to change
only this one, while in all other places drivers depend on OF? It will
just bring inconsistency.

Best regards,
Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
