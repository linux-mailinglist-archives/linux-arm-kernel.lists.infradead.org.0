Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8FF1C01CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIU6uAMapg6rr3edML2lcW8OwL5rws8FTFMMjiYde7o=; b=IeNI/47C9uPB8M
	QM3bLAJ/bY+OoOw3ITbqR/KsJiq9Fo6IPsdloy9tOPnYY/HYEtc409/PY/SntEqBj2tivMyuzG1xF
	tIDP2q5R87xs0Dl+q+NQYHZCcJnTR8x+/oCLK1csle+PAiZL/tigbvUjrsJLK0wdtAdaOeVGqTiJI
	W5h2avXSl1zbST7n/c8Q5gNr9SAiM23R/fxpMzC/PB/e7x95NmBcz6+U+uoUVtcNLZb6s8abjkbUq
	PC1H+OZGohCFu004MYAIDPqGKPPipyXbzQ2rzP2le7l4vGhTsiqOGpZcNPAzFy4zjkpFO4dbSpEdk
	DWFCdSbviUOsJrMoGvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBmm-0006Xe-Ac; Thu, 30 Apr 2020 16:11:40 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBmZ-0006Wh-Dh
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:11:28 +0000
Received: by mail-ot1-x342.google.com with SMTP id g14so5353783otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJJ2h/RywV36voKthnSah9RB9XIE3vlA2oANqch/TM8=;
 b=CYltEK4lC6uNdm1mZD87iAO3gl4/SEpFxwxAVQriTh0uwE0bwfs7T4If8r4qzRFUut
 7IdUYmj/x2ICjOeMUbaYNeSSXqPNUqJVYYXpcaRLSAFQTLmZrMjTnV1tfi0Tf3Le51BT
 fnw4RULB5jHBAOJYEjxqmzhlwrKAtNE1V28c2UBw53QpFhPzOfTcxfXZwBGGOnA1Vwu+
 y6nGq2YIx5qbnEoyz7wgr+bLsBZ+LdEd7DjAFR6azx2r7uylWSU37XbQ0boP7RSMx5TI
 n/nsLqXgERcuFpp0+gG67xFFEliHMoxB1booz8Jm7sQHobePp+4cGPl9DGrIK4KJeMc6
 slZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJJ2h/RywV36voKthnSah9RB9XIE3vlA2oANqch/TM8=;
 b=Q9qdez5Jyr3lhXt0SybVJaqfditTGgZlMIXlv9e5yiRRf+REAzp31qg73hVTop7SNV
 /enZqLy8LqL1JxhbI8P+7udnfbqYzBKg6EpAbQuUfy/qp75Kkad9pCjyuZAVuAil3WLC
 ocW3/T0dOOS57OZey2cwy743tuOgY35fX53gIId5kwU0wHxXqQYxFgleM80o31P2210X
 6z/lQAvTzrfKTgyCt+dNSfedzooGCqEuhWAILpGszQu4rDMHt86qb+ZpnQjppSg2Rreb
 fd7L/Mq7qQAb7Sq0V22OuJV2jVRikwQeIL1DyPIKwZ08HCrJuGsf94nn6K+ydvwBhE+t
 XEWQ==
X-Gm-Message-State: AGi0PuYDBs8PMUqrHSQeGCLOPX1UVsUH6lB3P0fZI9qwHJQnUbU2tdUG
 FJKU0dmO4sGAShgJWWGmY5nm+A7qnOnJt6q7zlEcgg==
X-Google-Smtp-Source: APiQypImvZrbPbUvob8q7lUT988oyJugoOnuZpnTvOCTRRSEV39r/EJBJ5kkKQTYtVWYsNXk8krIMSPhXpH7Dv5VP5A=
X-Received: by 2002:a05:6830:1d7:: with SMTP id
 r23mr3174295ota.68.1588263085714; 
 Thu, 30 Apr 2020 09:11:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200429162437.2025699-1-robert.foss@linaro.org>
 <20200429162437.2025699-3-robert.foss@linaro.org>
 <20200430093524.GB2188@pengutronix.de>
 <20200430094549.GF867@valkosipuli.retiisi.org.uk>
 <20200430095332.GC2188@pengutronix.de>
 <20200430095907.GG867@valkosipuli.retiisi.org.uk>
 <20200430101157.GD2188@pengutronix.de>
 <20200430102018.GI867@valkosipuli.retiisi.org.uk>
 <20200430120740.GG2188@pengutronix.de>
In-Reply-To: <20200430120740.GG2188@pengutronix.de>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 30 Apr 2020 18:11:14 +0200
Message-ID: <CAG3jFytP9=pL=9Qh64BKqQchs7J7E45USfirK_SnGn3NMeCdcg@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] media: ov8856: Add devicetree support
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091127_460972_B19BD1F9 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marco,

On Thu, 30 Apr 2020 at 14:07, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> On 20-04-30 13:20, Sakari Ailus wrote:
> > On Thu, Apr 30, 2020 at 12:11:57PM +0200, Marco Felsch wrote:
> > > On 20-04-30 12:59, Sakari Ailus wrote:
> > > > Hi Marco,
> > > >
> > > > On Thu, Apr 30, 2020 at 11:53:32AM +0200, Marco Felsch wrote:
> > > > > Hi Sakari,
> > > > >
> > > > > On 20-04-30 12:45, Sakari Ailus wrote:
> > > > > > Hi Marco,
> > > > > >
> > > > > > On Thu, Apr 30, 2020 at 11:35:24AM +0200, Marco Felsch wrote:
> > >
> > > ...
> > >
> > > > > > > > - if (mclk != OV8856_MCLK) {
> > > > > > > > -         dev_err(dev, "external clock %d is not supported", mclk);
> > > > > > > > -         return -EINVAL;
> > > > > > > > + if (!is_acpi_node(fwnode)) {
> > > > > > > > +         ov8856->xvclk = devm_clk_get(dev, "xvclk");
> > > > > > > > +         if (IS_ERR(ov8856->xvclk)) {
> > > > > > > > +                 dev_err(dev, "could not get xvclk clock (%pe)\n",
> > > > > > > > +                                 ov8856->xvclk);
> > > > > > > > +                 return PTR_ERR(ov8856->xvclk);
> > > > > > > > +         }
> > > > > > > > +
> > > > > > > > +         clk_set_rate(ov8856->xvclk, xvclk_rate);
> > > > > > > > +         xvclk_rate = clk_get_rate(ov8856->xvclk);
> > > > > > > >   }
> > > > > > >
> > > > > > > Why do we handle the clock only in DT case? Is there a problem with the
> > > > > > > clock handling and ACPI?
> > > > > >
> > > > > > Not really, it's just that ACPI does not provide an interface to the clocks
> > > > > > as such.
> > > > >
> > > > > But you will get a clk by devm_clk_get()?
> > > >
> > > > No, because ACPI does not expose one to drivers. Effectively the entire
> > > > power sequences are implemented in ACPI, not in the driver.
> > > >
> > >
> > > Ah okay, thanks for the explanation. I'm really not into the ACPI
> > > stuff.. So this means the __power_off / power_on should only be done if
> > > we are using DT's?
> >
> > Correct. That's why it bails out early. It could be yet earlier though,
> > without doing anything.
>
> Yes I see. For easier and error less prone handling I would prefer:
>
> if (is_acpi_node())
>         return 0;
>
> as first instruction for __power_off/on().

__ov8856_power_on() does make a check like that, albeit only after
having run clk_prepare_enable() which won't do anything due to
ov8856->xvclk==NULL. So this should be fixed and be moved to after the
ACPI check.

__ov8856_power_off() has no ACPI check, but all of the calls it makes
are going to do nothing due to v8856->reset_gpio / v8856->reset_gpio /
ov8856->xvclk all being NULL or dummies. For the sake of clarity an
early ACPI check+return could be added, but if clarity is the goal a
comment would work too.

>
> Also I would refactor the ov8856_check_hwcfg() so the common part can be
> used by this function and by a ov8856_parse_of() function. But thats
> only my opinion.

I'm trying to grok the above paragraph. You'd like to see something in
the style of tc358743_probe_of()?

>
> Regards,
>   Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
