Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F11A113D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrWZ95HKPEn/sCbumM4m+ZncbTXjw88MwPoEApSK9UA=; b=l7r0m15G2RsHS/
	v+/ZcWP24bM8YURlGdfFYJ23PJ83NvU+kfx0Sv1eGXd1EMYFhXRxwpKPg2wSotNray5fdY3mGATjQ
	fAumWSj+X+Dgc2Z/lqyNIrucTEz58CnM54CSeqEXs7kO6RvQpNzZg6WNLSqRlBkiGXCarJd8i69r0
	wzdANAt5LsNTPdx/SirF5qRzqZVvuqF/YBPkvYbLxzUK1eu7c+vONxnFEbSQLUNCMlm9Hv9n53DX7
	dmgfuAYzpJ25WJ2R2nOdGtqoUXLz0Mo1GHdrmyCbAS3GNkFcpcDH/CDig1PwP4fr41QIUMpBQPdh3
	yQerLapCfcNZKmi/Hzkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqzQ-0003l9-Kt; Tue, 07 Apr 2020 16:22:16 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqzH-0003kP-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:22:09 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 9AC4A634C89;
 Tue,  7 Apr 2020 19:20:50 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jLqy1-0002MB-Ja; Tue, 07 Apr 2020 19:20:49 +0300
Date: Tue, 7 Apr 2020 19:20:49 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200407162049.GK6127@valkosipuli.retiisi.org.uk>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_092208_146419_D0F165BD 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
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

Hi Maxime,

On Tue, Apr 07, 2020 at 02:32:32PM +0200, Maxime Ripard wrote:
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

The (CSI-2) link frequency is specified in the endpoint, and is already
being read by the V4L2 fwnode framework.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
