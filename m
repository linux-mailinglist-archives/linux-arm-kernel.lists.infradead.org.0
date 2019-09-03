Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17125A6BD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUe+QGSPClwQobKDMIdohUltOTG+Xrwi6yEHyR0g0WQ=; b=KpKejk/RFN5/ix
	Pcgo76lzXS2q4w6GopW1Cd4FrEC5AkdfgVxxEzNrQvYcbLRhwhvqAXcjZaWXg0bdY41e1RRSWOtje
	KcpaeF3AHja/t8Kj6YZy1UtHDI4mX8HBzducSehAFOEh/9rEDrcon2N93x2RNsQsigEp1C+QeU4CH
	9bgSsNtDm4XCF6+sD01kV5tuJNb+PQ/IYeJwWVyUvVyaTazxN3MA/VmA+Y/FXSQKdqEPW8wsLiH8e
	o41xkz5fwKifcFDpzdHrsJTjQVtYItQa/8b7VLubFrzCUKIZ9scJW0emuhql27Bl5Ko+ypRc9yhBb
	yO60cVcp3/S9fZDlST1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5A7W-0006zv-Ai; Tue, 03 Sep 2019 14:49:22 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5A7J-0006yb-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:49:11 +0000
Received: by mail-vs1-xe41.google.com with SMTP id i128so11463675vsc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CQLkGwKQ606SBhDXYVZ/wIEqALYPfmqGkU+b2OoxSog=;
 b=KHMycYhG2Y7WHnw+EuBG4+CdLshJqNlVA/OT7aQHdigAAwCUgOApY5f6VL8hxznVHt
 JWNHYAo+S/rFPORr1CpNVbINUk7JIin6Cs1Eka7rCL2nl1w8qq1M62XggCgUaMnURSGi
 33Oxu+V3NVbtK/KbO0KIxVVKWLIUBG/xGRC3O2XMyB5CHGA2T0QKNWsoBVGadGaRruof
 zbTrQEfkXyKf/QmAgHwUZzOXzdt8Q40N3Kqe+pKJCALXF9OTCRj3gDDfT5/MendnZxVy
 Blc7JYR/GDFBtqv0NhshUYQInCUje++lKyDQQ5ZUTusnBi8U/Wal9R+YCiFUZ8FMUpDz
 3w8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CQLkGwKQ606SBhDXYVZ/wIEqALYPfmqGkU+b2OoxSog=;
 b=U+to4BMSD4MJQzjuTjD0k35+FFLkWDwpG1RXPheePKgbO/AKSUmWzo5s8SB9ZrIgIU
 eYQCLvDAffnCPyHbCD//RIP8NTGD44jsXvM7z8laHFflkIS4JYIdO2kRYeEY4WNF2Zdy
 GDXKTqGiVd2+WmacxOWJkChlAf6DcBJP5g0POqy2Ylm1HGXze8qFqwOXtjWRGvsHZ25o
 FpjndkdSrCWZT0aeSP5/Bb9T0u0eKQBn/f0AuTJR8uwSeBgJ9e/OCWkbLbsaFkm1rEEE
 j6CcxP0cgMj1cYE7z4Z/G2mACqgWrH2DYBS7EwW7b3AMNVPVNZhQMh5/mWdafXtEsxj/
 v7kQ==
X-Gm-Message-State: APjAAAV8BZ+X+zjJRTpvZzYsOpdV8mbosOFRSDQWTLDtQpSu9SmpmJ3a
 B62DD6Z1bEZdtC5LL3LRFTu5x861te3jaq1jLPlm4A==
X-Google-Smtp-Source: APXvYqyd0pWvJiNrUztCCQ87hmga1RG1L9BG5LyLAKxB8i0L1jom1pOqkHDVUIvJHWJhzw9BQ4YovByAtRfexvKB21U=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr19402036vsr.34.1567522148468; 
 Tue, 03 Sep 2019 07:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190902035842.2747-1-andrew@aj.id.au>
 <20190902035842.2747-2-andrew@aj.id.au>
 <CACPK8XfYgEUfaK6rtr+FdEq-Vau6d4wE2Rvfp6Q4G2-kjVLT0g@mail.gmail.com>
 <83570e25-b20a-4a17-85ea-15a9a53289bf@www.fastmail.com>
In-Reply-To: <83570e25-b20a-4a17-85ea-15a9a53289bf@www.fastmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2019 16:48:32 +0200
Message-ID: <CAPDyKFpWJu3RH4TWoO_wcJq0LDrM_fAUfsCC==e8O_6A8dLhiA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] mmc: sdhci-of-aspeed: Fix link failure for SPARC
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_074910_020846_99C4F294 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>, Arnd Bergmann <arnd@arndb.de>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 at 07:26, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Mon, 2 Sep 2019, at 13:42, Joel Stanley wrote:
> > On Mon, 2 Sep 2019 at 03:58, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > Resolves the following build error reported by the 0-day bot:
> > >
> > >     ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!
> > >
> > > SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Guard the
> > > callsite to maintain build coverage for the rest of the driver.
> > >
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  drivers/mmc/host/sdhci-of-aspeed.c | 38 ++++++++++++++++++++----------
> > >  1 file changed, 25 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> > > index d5acb5afc50f..96ca494752c5 100644
> > > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > > @@ -224,10 +224,30 @@ static struct platform_driver aspeed_sdhci_driver = {
> > >         .remove         = aspeed_sdhci_remove,
> > >  };
> > >
> > > -static int aspeed_sdc_probe(struct platform_device *pdev)
> > > -
> > > +static int aspeed_sdc_create_sdhcis(struct platform_device *pdev)
> > >  {
> > > +#if defined(CONFIG_OF_ADDRESS)
> >
> > This is going to be untested code forever, as no one will be running
> > on a chip with this hardware present but OF_ADDRESS disabled.
> >
> > How about we make the driver depend on OF_ADDRESS instead?
>
> Testing is split into two pieces here: compile-time and run-time.
> Clearly the run-time behaviour is going to be broken on configurations
> without CONFIG_OF_ADDRESS (SPARC as mentioned), but I don't think
> that means we shouldn't allow it to be compiled in that case
> (e.g. CONFIG_COMPILE_TEST performs a similar role).
>
> With respect to compile-time it's possible to compile either path as
> demonstrated by the build failure report.
>
> Having said that there's no reason we  couldn't do what you suggest,
> just it wasn't the existing solution pattern for the problem (there are
> several other drivers that suffered the same bug that were fixed in the
> style of this patch). Either way works, it's all somewhat academic.
> Your suggestion is more obvious in terms of correctness, but this
> patch is basically just code motion (the only addition is the `#if`/
> `#endif` lines over what was already there if we disregard the
> function declaration/invocation). I'll change it if there are further
> complaints and a reason to do a v3.

I am in favor of Joel's suggestion as I don't really like having
ifdefs bloating around in the driver (unless very good reasons).
Please re-spin a v3.

Another option is to implement stub function and to deal with error
codes, but that sounds more like a long term thingy, if even
applicable here.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
