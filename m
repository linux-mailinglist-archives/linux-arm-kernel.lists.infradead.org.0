Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DBA1A0FF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 17:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGwmvqnFnx3RPNMw4ijlKWstl75UsI2ga0Kur44so1k=; b=FM996LbExzbEBQ
	7w7E0USFcAzyVCxkZi4ReK0odRt69/wP773aFgq1krCXP1byGstRxnFst0+qQSYTTZepuW+azgpxr
	GWe8kMD8qXnQdn1hPXgpx6qQKiPqzvL3y+b9sDYUsLIZ08urIVfLlT6RZYD3InFwr8YlYAz3gq+mZ
	nvKhO9BBMAr6LTug6en2X+w1z5SIgi9nHaskOcQ1sXilsUqU0x7sXONNdxBrmdcIU/RTuGoHtZ5Ff
	cbe4wmw7+kJh5EyUVIEiuLx7dza25aQliyizvaqIdTaN2IEEp8dlz6Xco1KdzYSVG8p45jOYkI65G
	99GNkVEgAG2AhAPHfn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpvc-0006rp-OM; Tue, 07 Apr 2020 15:14:16 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpvW-0006qz-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 15:14:11 +0000
IronPort-SDR: +grV0Yi2MYf9b51PxmIlWZO6ICTMsw0bafE0pBETNFYE5sIuVBk8FZ1ih493LSUaxpC77m5dWu
 4CElS2ED99dg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:14:08 -0700
IronPort-SDR: 8ckQHmyoRKj0DtORzCgo/m3++m+vmgjbBLXTRWkuf7wtA3ynA8bzDDWhMm9y+5VxyZAfQLA732
 8roctUPLzFZw==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="243790804"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:14:03 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 4C0FF205C7; Tue,  7 Apr 2020 18:14:01 +0300 (EEST)
Date: Tue, 7 Apr 2020 18:14:01 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200407151401.GA5206@paasikivi.fi.intel.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406165108.GA7646@kekkonen.localdomain>
 <20200406173234.GD16885@pendragon.ideasonboard.com>
 <20200407062241.GA8883@kekkonen.localdomain>
 <20200407122106.GD4751@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407122106.GD4751@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_081410_420400_CD2D0F4D 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Hi Laurent,

On Tue, Apr 07, 2020 at 03:21:06PM +0300, Laurent Pinchart wrote:
> Hi Sakari,
> 
> On Tue, Apr 07, 2020 at 09:22:41AM +0300, Sakari Ailus wrote:
> > On Mon, Apr 06, 2020 at 08:32:34PM +0300, Laurent Pinchart wrote:
> > > On Mon, Apr 06, 2020 at 07:51:08PM +0300, Sakari Ailus wrote:
> > > > On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> > > > > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > > > > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > > > > 24MHz. So instead making clock-frequency as dt-property just let the
> > > > > driver enforce the required clock frequency.
> > > > 
> > > > Even if some current systems where the driver is used are using 24 MHz
> > > > clock, that doesn't mean there wouldn't be systems using another frequency
> > > > that the driver does not support right now.
> > > > 
> > > > The driver really should not set the frequency unless it gets it from DT,
> > > > but I think the preferred means is to use assigned-clock-rates instead, and
> > > > not to involve the driver with setting the frequency.
> > > > 
> > > > Otherwise we'll make it impossible to support other frequencies, at least
> > > > without more or less random defaults.
> > > 
> > > We're running in circles here.
> > > 
> > > As the driver only supports 24MHz at the moment, the frequency should be
> > > set by the driver, as it's a driver limitation. We can then work on
> > > supporting additional frequencies, which will require DT to provide a
> > > list of supported frequencies for the system, but that can be done on
> > > top.
> > 
> > I guess it would be possible to use different external clock frequencies on
> > a sensor in a given system but that seems to be a bit far fetched, to the
> > extent I've never seen anyone doing that in practice.
> > 
> > Originally, the driver set the frequency based on the clock-frequency
> > property. If we're removing that but use a fixed frequency instead, then
> > how is that going to work going forward when someone adds support for other
> > frequencies in the driver and has a system requiring that, while there are
> > some other platforms relying on the driver setting a particular frequency?
> 
> The standard property for this is link-frequencies, not clock-frequency.
> Deprecating clock-frequency now paves the way to use the standard
> property later when/if someone implements support for additional
> frequencies.

The external clock frequency and link frequency are different indeed, but
they are related. The link frequency has been selected in a way that it is
possible to generate that exact frequency using the chosen external clock
frequency. If you change the external clock frequency, chances are good
there is no PLL configuration to generate that link frequency.

> 
> > Although, if you're saying that this driver only needs to work with DT that
> > comes with the kernel and you don't care about DT binary compatibility,
> > this would be fine.
> 
> I believe this series to not break backward compatibility, as the driver
> only works with a 24MHz clock, so I expect all DTs to specify that.

What you're still doing here is defining the DT bindings based on the
current driver implementation, not the device properties.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
