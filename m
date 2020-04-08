Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D301A2220
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/4xGkiUPwhAm0d5NyMQojPP8JuH783N16CUEcaAKXs=; b=IGZdyQ+vuyoSBG
	1Zw+VzaMTKAsA0xlRmYczbEff1Y3AxYmgWFC+hEIDBN8mImDc+EJSCK2oVu67gmgLZay5Qtl/CV5b
	t1ljyFeg8278ruyUm52rJa6+8sk7Ov5mOT+uwFFIYe3LlSql9Y0bcP64gyGKN4s1fb5bLtDa7UTyO
	/q0Ual8tyB+PIAziui5LlEagPcHPTlTQ0pplvAXjncO2OPgfEAEMdGqNLNz/Eq2CXiGHM8P/WzEPZ
	o0M5iv/YYVXne9fRU5RQ1iNvqraLN4Gs0aO7HOWhNxmfiyv0GLoE/fG+9Yf6ZmmnnOAE5Z+j19aWD
	qEoXviQC6I5n1mv3ig2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9vs-0001zq-Ks; Wed, 08 Apr 2020 12:35:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9vj-0001zF-Qs
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:35:45 +0000
Received: by mail-ed1-x543.google.com with SMTP id de14so8372214edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 05:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xa0jsgSZvhAu9qLIAzgdV/p9IbYtIZxjPtuYfg0RgUo=;
 b=gRUviviqC24Bj2U3Aq5OtUVPx4mO/jN9xEiRvX1d8xksOHMUV5rC78+7W/a4siaB10
 077PCLjkA2BvcXkMnv4yQvhjlOYbiN4mpyA4F1gKZ4B/HwRcWwVNoU7bRMc54IgrN6M7
 v1vcBIktG7POpd86IWze0cJXJSEABoW2/Ykb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xa0jsgSZvhAu9qLIAzgdV/p9IbYtIZxjPtuYfg0RgUo=;
 b=cYZ62XCUYRzK7CpEeQJbd8CH/fKweWyZHvnqqiDoTScVzuqESYSmMfmGI0rvVhrr7v
 3okVD1mymfReGGCre08zJ8PSN79qRa0xu4UtqNY6c7PU/2fTHKVHwQR9d7+8/mATUA45
 IHK6DNpOQzAmItersFazOE37017w+yOA4csrQsouhkwMt4jq1YhbH8vPzhfpf73BVqUU
 V7hk4ac7BD+aczrGWlNdv3dFFX8Lp8jMmpzms/H4UL7/StdlpAUggHbH6hsVxCiEti49
 TGWAoaFvZZQDb8OKIUkFa8cW8uPACZWR9UXjGLkMdpHE36WgF4QiMPo3G6ZScCPdVu4O
 ORWQ==
X-Gm-Message-State: AGi0PuY4t+YLv1HjrVw5ruNzTGBuzo50BDuO2dZ/BAnlSO2n+BtuROKT
 jmxZpWqzieMwtJ+dlNS5RDuoTWUPR9AJdg==
X-Google-Smtp-Source: APiQypIZsAXrpu7SwYXRlXZ6U3dvMgTMDLd8DxdGFugn7EMBQGJaXUKOXrZ/sm2ZgsYcPY4UcK9EwA==
X-Received: by 2002:a17:906:82c6:: with SMTP id
 a6mr6545610ejy.245.1586349341007; 
 Wed, 08 Apr 2020 05:35:41 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id d11sm3455319ejd.2.2020.04.08.05.35.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2020 05:35:40 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id r26so5273132wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 05:35:40 -0700 (PDT)
X-Received: by 2002:a1c:9e08:: with SMTP id h8mr4273596wme.183.1586349339478; 
 Wed, 08 Apr 2020 05:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
 <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
 <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
In-Reply-To: <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 8 Apr 2020 14:35:28 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DNyQra-XksVaSfT_FCkOHTzm9mbn+tMd1vACV=pb9_8g@mail.gmail.com>
Message-ID: <CAAFQd5DNyQra-XksVaSfT_FCkOHTzm9mbn+tMd1vACV=pb9_8g@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_053543_895131_1B2C83AD 
X-CRM114-Status: GOOD (  33.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Sakari Ailus <sakari.ailus@iki.fi>,
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

On Wed, Apr 8, 2020 at 2:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Tue, Apr 07, 2020 at 08:20:35PM +0300, Sakari Ailus wrote:
> > On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> > > On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > > >
> > > > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > >
> > > > > > Hi Robert,
> > > > > >
> > > > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > > > >
> > > > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > > > >
> > > > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > > > >
> > > > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > > > are available.
> > > > > > > >
> > > > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > > > particular SoC / board to be functional?
> > > > > > > >
> > > > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > > > of the binding should be made clearer as well.
> > > > > > >
> > > > > > > Alright so, let me summarise the desired approach then.
> > > > > >
> > > > > > There's a separate discussion on the same topic here:
> > > > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > > > >
> > > > > Thanks for the link.
> > > > >
> > > > > >
> > > > > > > ACPI:
> > > > > > >   - Fetch the "clock-frequency" property
> > > > > > >   - Verify it to be 19.2Mhz
> > > > > > >
> > > > > > > DT:
> > > > > > >   - Fetch the "clock-frequency" property
> > > > > > >   - Verify it to be 19.2Mhz
> > > > > > >   - Get xvclk clock
> > > > > > >   - Get xvclk clock rate
> > > > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > > > >
> > > > > > The current status is that you should
> > > > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > > > between steps 3 and 4
> > > > >
> > > > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > > > I imagine that would cause some breakage.
> > > >
> > > > It would, yes, and it would be no more correct on DT either.
> > > >
> > > > There are basically two possibilities here; either use the clock-frequency
> > > > property and set the frequency, or rely on assigned-clock-rates, and get
> > > > the frequency instead.
> > > >
> > > > The latter, while I understand it is generally preferred, comes with having
> > > > to figure out the register list set that closest matches the frequency
> > > > obtained. The former generally gets around this silently by the clock
> > > > driver setting the closest frequency it can support.
> > >
> > > Wouldn't the former actually cause problems, because the closest
> > > frequency the clock driver can support could be pretty far from the
> > > one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> > > resulting frequency anyway.
> >
> > That's possible, yes; in this case there wouldn't be a guarantee the
> > frequency wouldn't be far off.
>
> assigned-clock-rates is really fragile... There's zero guarantee on
> how far the actual rate is going to be from the asked one, but more
> importantly you have zero guarantee on the time frame that rate is
> going to be enforced for.
>

Is there such a guarantee if clk_set_rate() is called?

> It's simply going to change the rate as a one-off thing, and if
> there's the next millisecond someone else is going to change its rate
> one way or another, it's going to do so and you won't have any
> notification.
>
> And even semantically, they do not share the same meaning at all, so
> we should really stop using assigned-clock-rates if we can, instead of
> pushing it.
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
