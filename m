Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34D7F2928
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGJoLWRe3C+OMXv7re5mx2Zo8+ovtG1Ms2G/qqseMy4=; b=kmfTFO0uY4dnLw
	yIISeCrwxWVQlnA0blR0q7yREYIapguSAewS8MZw6U+P3/s+TCp3lOyYIvvTLMhJuYv4iWoEgRe/m
	Dblm6yIvkT+3F42Ns2F9i1TteOmJydDVJ8Oow/E/pJqBHJwuOLeb6ROMMkwobpUjXuXD4aRzF6RVY
	dmZDfyWAcdJH0Weh7vfeKhbIEHzPYC6/nW0mFxT6NwYuy6a7WMrKgc7zUfBLW2TsA7LRPaNWfH11a
	Gt/SE+v3AxmXPCn6C9W7W9rwD8DepP9jmmyMk80M1qiuWGMcmVzuCB9G4XtfZPfD4i+vvFaSLvpIO
	0dqryI3mdBvq5Knm2GJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdE6-0003UP-CT; Thu, 07 Nov 2019 08:33:10 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdDy-0003To-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:33:04 +0000
Received: by mail-oi1-f196.google.com with SMTP id 22so1241193oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:33:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5+4dGsBime4kBHPrEo+N4zVG64ktutnfCuaoHu3A8g0=;
 b=Wt+ZUQG7uhfmkxKA+6ta0SIAU+t+pGAVDqY8QEnGQ+B0SihwULHuDpVmWwbj4+ovVZ
 hgdU7EZ0OXluQpKOk3NEY94YhW/XtJFDNxkaoBvT3WIK7N6Q0krX4oL4x1QNfFxEWVlX
 oviJUWYA75BFvDH4LCQUzgTIa9ml4dm/LrbA7lixQ9E2EFJC6t2IPYuC8KzA9hChL/wL
 DcdZWzquYPqNDI/02yDtqtAZxQinDiRqO+LaFGnopXMOEg2yBskp/o0OY1Z0D63Sqzeo
 B9Qw7fkf/Wv865dRnEIBsCaba3aGynmCvl/IGT85EQPJJUNlya1TyAXWRbXJSDl5Rikx
 gV0g==
X-Gm-Message-State: APjAAAUoTegdNC88GcZFCyX8RD4ijz+5VolTiJcluXUhAScYnTcIfkh2
 mq10ohBQ8ot9mIQ+ocldL1CyZt5xgJErdq2W/s0=
X-Google-Smtp-Source: APXvYqyO8xT5jOgZzqcp7feeiRAw17hNVF02BW3icgBFrPEs3KuQWgXKnPbGQRwPrz9TjUPPorGfOaSZvWXpcnOK2QM=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr2233095oia.148.1573115581042; 
 Thu, 07 Nov 2019 00:33:01 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
 <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
In-Reply-To: <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 7 Nov 2019 09:32:50 +0100
Message-ID: <CAMuHMdW4Dt=HdM-kdLegkF9Ujxy-CMh8ftmgZkv2KKUV0Gw1Ew@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_003302_873488_028CD3E2 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 "andrew@aj.id.au" <andrew@aj.id.au>, "Vaittinen,
 Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Thu, Nov 7, 2019 at 9:26 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Wed, Nov 6, 2019 at 3:25 PM andriy.shevchenko@linux.intel.com
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Nov 06, 2019 at 12:25:18PM +0000, Vaittinen, Matti wrote:
>
> > > If no one
> > > else will take the pinctrl part then I can probably do pinctrl patches
> > > for v5.6 cycle.
> >
> > For pin control Intel, since we send PR to Linus and it won't be different to
> > him, we would like to see patch per driver.
>
> It is generally good to bundle these changes because so many
> driver maintainers are passive. (Not Intel!)
>
> If you are concerned, what about we just make a separate patch
> for the drivers under drivers/pinctrl/intel and bundle the rest?
> Possibly Geert want the sh-pfc changes separately as well
> as he build his own pinctrl changes.

I guess the sh-pfc change would be small, and limited to a part of the code
that isn't touched regularly?
So that means it can go in with the rest, bypassing me (but please CC me).
Thanks!

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
