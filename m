Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EDC1A0CD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs8+opNKniwZWchnUTQNDlLq2JItRiJQud0Abz0mkOM=; b=eAUQPkNuSe93rX
	pcPsbe5E+IAq3ueLGRawXk0t6fT5RxLFqt38scdSZdrQZF40umSqEaJHCedniRbcdHcsye7Ix4pO4
	Blzjuap58veroNlq7QtHJNy9ZLYpldqgF57lCjo0K2KwB7MGcIuh8aTvkoIrYVTMqNpdHvBkRgGUC
	6a3q4k7B7rZfIPmfYCpHGvU+X44ePHX2hSdI+HEMdK59lKI5xM26a1HhObJgkyoKYE4c89ZaEBEGC
	i1D8XX8wcplz3Z05v4sQ/uqZvEd80lPtg3hrGM2cEDCnJI/SHMMsUzO1c9QxRgajrW0y0sL+x7n6C
	lj2cQlgLZWLOQHNFQoyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmQ8-0004qC-Ch; Tue, 07 Apr 2020 11:29:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmPu-0004m9-P0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:29:21 +0000
Received: by mail-ot1-x344.google.com with SMTP id f52so2688846otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 04:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ks+RAtref+Aa1LsW+qIjyIm12wRKmiZeJoTmqqOQJAc=;
 b=WwLZV5PqTcKdjYS0x26/v/152x7q2BE84BJKWv5T0fkwlP232BkXXojRJGU3wqXEMB
 eTJ35MYTpY5QgZ+YnFShYrtna/idnsWil9QCzqNUnMc03XPLNojGeZfwcRbIDjcZMkZC
 46p+Z6IXaKLfS4gJEZMtdVhS2lu5VoVT0vrr/k5Y8C7wH/nYomuIHrE3RFRycbRLhWqB
 F0mylWILg6s6/G5U/q64JbpqV1ZexEdkOhq1LzmjSGPnpxBbWU4FRoh6AQp+8rVWs+W0
 5zxR5JcOWhdxqupUCQTENA4KCynXCuZzWw+QmtXOcmWCSafkb3cfokad4WMcSVpr2yxv
 qpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ks+RAtref+Aa1LsW+qIjyIm12wRKmiZeJoTmqqOQJAc=;
 b=SsCddEuJKPrBMlNvYlkNIhcPXJUgJcV78Bq5CExfMuA1dDP7QnF+itI9bpSdKQdmtA
 2ZZwtc9NUb87tDctFMwuBJGOMBzSgmBi1BYqMjm5/xP/eol6VRsGPlyzVqZER2xpXthi
 88THcJB7PNtAWcUAJrpac5nWK4S/Z4992U1gQXpWig0O7+jH+UPY9h+X9/IKQRf3cSfi
 Vj9jGB8JkaZT6rfpB6PD4qVwIehEgBSuLLOkL4vy6he52LL776eyISVme+V17YvkhCKt
 u+0I3Zl2p+5RsEaFP6HXkd5Y7Nbp2sSWhFrssb1vmFdCDN61rKs8BUyELPJwlAHQyScV
 e4NA==
X-Gm-Message-State: AGi0Pub/+54TOKmaZWByFYo+aABsHTyyOiGaHMtnctidkO03TMRYr0k4
 B5vG4iXWQ86d2rEikLcWolRbaqbfRydWInpoJBqSdBYui7tFsQ==
X-Google-Smtp-Source: APiQypIbfbWm+UAuN2LQYpOJrjxSOeEswzyxBe4SbCKqH3dehDKampxrwTbrEfg8it7NBjEQyLOXANbFoJ8NHgeJKvk=
X-Received: by 2002:a9d:6c88:: with SMTP id c8mr1082037otr.272.1586258957489; 
 Tue, 07 Apr 2020 04:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
In-Reply-To: <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 7 Apr 2020 13:29:05 +0200
Message-ID: <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_042918_983369_DE63D6FA 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Maixme & Sakari,

On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Sakari,
>
> On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > limitation of our implementation, so we can instead implement
> > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > sure that our parent clock is configured at the right rate) and the
> > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > been rounded too far apart from the frequency we expect).
> > >
> > > This is doing exactly the same thing, except that we don't encode our
> > > implementation limitations in the DT, but in the driver instead.
> >
> > What I really wanted to say that a driver that doesn't get the clock
> > frequency from DT but still sets that frequency is broken.
> >
> > This frequency is highly system specific, and in many cases only a certain
> > frequency is usable, for a few reasons: On many SoCs, not all common
> > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > are being used as well), and then that frequency affects the usable CSI-2
> > bus frequencies directly --- and of those, only safe, known-good ones
> > should be used. IOW, getting the external clock frequency wrong typically
> > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > are available.
>
> So clock-frequency is not about the "Frequency of the xvclk clock in
> Hertz", but the frequency at which that clock must run on this
> particular SoC / board to be functional?
>
> If so, then yeah, we should definitely keep it, but the documentation
> of the binding should be made clearer as well.
>

Alright so, let me summarise the desired approach then.

ACPI:
  - Fetch the "clock-frequency" property
  - Verify it to be 19.2Mhz

DT:
  - Fetch the "clock-frequency" property
  - Verify it to be 19.2Mhz
  - Get xvclk clock
  - Get xvclk clock rate
  - Verify xvclk clock rate to be 19.2Mhz

Since the xvclk clock isn't available under ACPI, this is how the two
cases would be distinguished between.
Does this sound about right?

> assigned-clock-rates should still go away though.

Ack.

>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
