Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F7D1A1094
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 17:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBFIWojGuycBAf9jCJS/abedhramxzwsfgPvTUV66Kc=; b=dV9zq7NRsyMwb3
	VILIdO6/5itUxdHCtVqxFH+6PAE8KW5vp/VCnvJHR6VIQRhVJKgOulmYiuL5YYyN8jF7obgyiIX0q
	H89mFO+m123HEukP+myLM/ojPYTd3k0PStyqSVFjpzwd6o5sU8Aaio/roB2KbtVjYqlLOBp/YJ/4v
	Dvh1eCcVmD8NKLW2TCWb19yTF16ZcAaG+C1P6ZX07uGYTrSHKOWW/wxKmCb5UgqdmR0LgfI+S6NIR
	672vVV0pY26VpqUxMLWpG5+zK7AtQSNPsm9PKKQIn5sPnkIVmtCWXXiYZVFZS1qylboS37Xj+65Lo
	6XmB/6pJA34ACuRJwZtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqSK-00075S-TZ; Tue, 07 Apr 2020 15:48:04 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqSA-00074B-D6
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 15:47:56 +0000
Received: by mail-oi1-x241.google.com with SMTP id d63so1908623oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 08:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C5+Tj/x0seqvn19MWhPZoKn+VlDCEMR9Hc+Aq3tkzY8=;
 b=AqvyHOEKa5D4KldSTXCJnWs49QR2eXk+zF16yQDJ/jO2g384gpvbB+mCb9j8OEA43m
 A6MJ5P+j9YHQ9ALT8li8x+DrQzx4FYzIUF4jzdSTBguXP75zfrh9l/P+mR2yC9oUFmbh
 Yn8a9rA4p42mGrhMH+ty00/pUaHnx9ZPa4dmFBsdcEWiR/R8eLwj7ps7YItEsiliVj9x
 hc7+ZDQQTkrx9SU1xDncAFv/vXs+HvkGPU5/2aEF17mo20t2DhLi36900gUTcWnRYfiV
 5jI4l5PaOBVH08bwik0C/yypiQ4cZP+kcrCOPLy8/Bm/UM9YAF3+Nh+1nBPDRQ+FHO80
 SCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C5+Tj/x0seqvn19MWhPZoKn+VlDCEMR9Hc+Aq3tkzY8=;
 b=GEwWTWumjU+YU6i3GKUZCiLSUSQgl7F49ARapz4hOF0TYbgNAqpIj8k2P9c8x2Uq9q
 vvyEQVV1R3V2k8s/F5oZRag5gbC+oT2GlbPHnGxUAHxIO9VKHpxsAyezSR0Kson+xWlh
 lOD6fgh1ADIfUdXpi4YyrNl9y7fUvgYg653SVrMIZVas0cWK0OtgleEyYkFYwa5CJWe2
 POT4LBP5eB7AWUF13Q33WLWmT/ZsYND0rCYz8Q6cGX102jPDRzIFlsgbP+mAFgRQ9M7o
 FxtV+ticqRyb+qrygLSWwZC/b56j5EJvlKtn1UnG2IM2PC6a6O0/IQVKEdiUi6AsIyRN
 7kuA==
X-Gm-Message-State: AGi0PuZ7OqwF3jGlpnheJEKyLQ87ch4Ms6USiUriDIKPuYwAKCVVO+vI
 WUD3VnBXudto/3EDy4Q8dfmSL87POXr/AWu1LnIsog==
X-Google-Smtp-Source: APiQypJu3SjURBCeHG9XCeUMhTFUk1+T5l/kcmiOEHAKUxA8FMQScTewM/7d0CG0YpkFEyil0R95v+JbbO4tHHpx7Qg=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr2087293oie.133.1586274473098; 
 Tue, 07 Apr 2020 08:47:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
In-Reply-To: <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 7 Apr 2020 17:47:41 +0200
Message-ID: <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_084754_611588_8E38EC5C 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Robert,
>
> On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > limitation of our implementation, so we can instead implement
> > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > sure that our parent clock is configured at the right rate) and the
> > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > been rounded too far apart from the frequency we expect).
> > > > >
> > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > implementation limitations in the DT, but in the driver instead.
> > > >
> > > > What I really wanted to say that a driver that doesn't get the clock
> > > > frequency from DT but still sets that frequency is broken.
> > > >
> > > > This frequency is highly system specific, and in many cases only a certain
> > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > are available.
> > >
> > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > Hertz", but the frequency at which that clock must run on this
> > > particular SoC / board to be functional?
> > >
> > > If so, then yeah, we should definitely keep it, but the documentation
> > > of the binding should be made clearer as well.
> >
> > Alright so, let me summarise the desired approach then.
>
> There's a separate discussion on the same topic here:
> https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/

Thanks for the link.

>
> > ACPI:
> >   - Fetch the "clock-frequency" property
> >   - Verify it to be 19.2Mhz
> >
> > DT:
> >   - Fetch the "clock-frequency" property
> >   - Verify it to be 19.2Mhz
> >   - Get xvclk clock
> >   - Get xvclk clock rate
> >   - Verify xvclk clock rate to be 19.2Mhz
>
> The current status is that you should
> 's/clock-frequency/link-frequencies/', and in order to replace
> assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> between steps 3 and 4

Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
I imagine that would cause some breakage.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
