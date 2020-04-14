Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9B31A8CEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSwC9wjtjRrp+PDl1BBw4ODOCxP6mzekEIrdePBAflM=; b=DcSzxzkheFsD96
	OcXVibl2RU9ZnAlj7Fr+isze4QOFpAhsiEXduvXQR1MkxZYvHWqbSkbSYOsrmCgZdi90Jchl/iSyC
	8s3opoGiM0aAukT1WNCyO9Rv06USG73n/riK5n5nLhlAE1t6RCQK2FXI/Iqh28lyCX3mgWtBVGNf5
	X0kltA+LI5FbTkMk7FmDiRkhEyTz7gwn7mMhUbeNQgUO5/4xt9+SHVqcm4n4uZq0lKK58eKmgcqpf
	1nl2UtchlXI0pWX6kwnyXI31dFeYY7ZuptBVhDOYJehrCYKo/E1YxzwR2J4JIEpDUIhsNc95zV6An
	2eieGvbXXg4ll58bTPmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSbS-0002qy-Eo; Tue, 14 Apr 2020 20:56:18 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSbH-0002qQ-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:56:08 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92C34521;
 Tue, 14 Apr 2020 22:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586897764;
 bh=9MCdqBysYUB1/Yp+/aFnc/DzMGk2zM7gWb4HYthYFuA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wlltAl4d7yJ3Ttu5SYoIhj+TK1xMzDFzXGKXxIJi1KWk4ymBxQ//ax6cUr+er8YA0
 o6OThwNGl4FX2g1oOnqzHFceM9lcrMFuX0zPhjsWOz67Pzl1yPKSCJdCjZm9cBm8rb
 ZhPzOrQPT3rho7m5xZFfbE+WTFwYem9kTlj0OzBo=
Date: Tue, 14 Apr 2020 23:55:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200414205552.GN19819@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406165108.GA7646@kekkonen.localdomain>
 <20200406173234.GD16885@pendragon.ideasonboard.com>
 <20200407062241.GA8883@kekkonen.localdomain>
 <20200407122106.GD4751@pendragon.ideasonboard.com>
 <20200407151401.GA5206@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407151401.GA5206@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_135607_563383_BFFB5389 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Tue, Apr 07, 2020 at 06:14:01PM +0300, Sakari Ailus wrote:
> On Tue, Apr 07, 2020 at 03:21:06PM +0300, Laurent Pinchart wrote:
> > On Tue, Apr 07, 2020 at 09:22:41AM +0300, Sakari Ailus wrote:
> >> On Mon, Apr 06, 2020 at 08:32:34PM +0300, Laurent Pinchart wrote:
> >>> On Mon, Apr 06, 2020 at 07:51:08PM +0300, Sakari Ailus wrote:
> >>>> On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> >>>>> Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> >>>>> as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> >>>>> 24MHz. So instead making clock-frequency as dt-property just let the
> >>>>> driver enforce the required clock frequency.
> >>>> 
> >>>> Even if some current systems where the driver is used are using 24 MHz
> >>>> clock, that doesn't mean there wouldn't be systems using another frequency
> >>>> that the driver does not support right now.
> >>>> 
> >>>> The driver really should not set the frequency unless it gets it from DT,
> >>>> but I think the preferred means is to use assigned-clock-rates instead, and
> >>>> not to involve the driver with setting the frequency.
> >>>> 
> >>>> Otherwise we'll make it impossible to support other frequencies, at least
> >>>> without more or less random defaults.
> >>> 
> >>> We're running in circles here.
> >>> 
> >>> As the driver only supports 24MHz at the moment, the frequency should be
> >>> set by the driver, as it's a driver limitation. We can then work on
> >>> supporting additional frequencies, which will require DT to provide a
> >>> list of supported frequencies for the system, but that can be done on
> >>> top.
> >> 
> >> I guess it would be possible to use different external clock frequencies on
> >> a sensor in a given system but that seems to be a bit far fetched, to the
> >> extent I've never seen anyone doing that in practice.
> >> 
> >> Originally, the driver set the frequency based on the clock-frequency
> >> property. If we're removing that but use a fixed frequency instead, then
> >> how is that going to work going forward when someone adds support for other
> >> frequencies in the driver and has a system requiring that, while there are
> >> some other platforms relying on the driver setting a particular frequency?
> > 
> > The standard property for this is link-frequencies, not clock-frequency.
> > Deprecating clock-frequency now paves the way to use the standard
> > property later when/if someone implements support for additional
> > frequencies.
> 
> The external clock frequency and link frequency are different indeed, but
> they are related. The link frequency has been selected in a way that it is
> possible to generate that exact frequency using the chosen external clock
> frequency. If you change the external clock frequency, chances are good
> there is no PLL configuration to generate that link frequency.

But aren't we supposed to pick the clock frequency based on the link
frequency specified in DT ?

In any case, this policy needs to be carefully documented.

> >> Although, if you're saying that this driver only needs to work with DT that
> >> comes with the kernel and you don't care about DT binary compatibility,
> >> this would be fine.
> > 
> > I believe this series to not break backward compatibility, as the driver
> > only works with a 24MHz clock, so I expect all DTs to specify that.
> 
> What you're still doing here is defining the DT bindings based on the
> current driver implementation, not the device properties.

Quite the contrary, the device doesn't require any particular input
clock frequency, so we're removing that from DT :-) Specifying the clock
frequency in DT is in my opinion a manual workaround for not computing
it at runtime based on the desired link frequency, while the link
frequency is a property of the system as it specifies the range of link
frequencies that are safe to use from an EMC point of view.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
