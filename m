Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571D51A0D70
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+29cbZOkbWTvhQNCNZF1csegP02fSHddiDDwABkAfw=; b=IOLmdapCyglYEg
	f/BAE7PJRZXc5JzqdrpZkuVl4dnA14OTuLHDV0Up3Y2POg9Zidd1B7gvE4suJPxpSm1dK/Inae1he
	H7WjESL9l/b4yHLNiqubOz4wM891aI2fncXiMJXj64XY7vmortCO47v+/xCRBUxU4NKDpYWT9fchD
	is38fs5/NbyxgCYNRiMn1HBvW81Jndgw2iY5jeqcNd2yFi/I4lNgV573oysgw1f+xnUXIkdc+7rIf
	Beh8hVjDsxNRRrXWOA6IT/6THFwwXNmcowYXCaFQ2/22lZ019Az57ZHmUaASYkTdBt5nfKnBq4WNu
	uqrJ43Yu/pN0gPisEdsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnBe-0000wU-5y; Tue, 07 Apr 2020 12:18:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnBX-0000vi-MO
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:18:33 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ACABD59E;
 Tue,  7 Apr 2020 14:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586261909;
 bh=fPdYE8A3jszFhj8Ia41Q61eXHMMvA97zhV0Z1oSNhpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ki3AHBrZ4A1pHq9QyVUJmBRoyYy6r5XgnCvPLxfUMdFWAd+t6vap0lPuXVl4Exjrn
 QGGFNT4zOWrpzji+6HaLIZro4VSBmpIW0R27U01g31cKRxQ33UG9t2g5bFRqwJzII4
 BTM6sXy8JiOEaVdicsbrqxvEd0mfTiJATCkYEotA=
Date: Tue, 7 Apr 2020 15:18:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200407121818.GC4751@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWiVLt23a0JBDX6ZiKDiru9-ecgt3XF4Y5qzVOWXhLcCw@mail.gmail.com>
 <CA+V-a8tHb1OomhfdsWV5duyuypTKC_EWT4o=mMjWVsxu+aOnBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8tHb1OomhfdsWV5duyuypTKC_EWT4o=mMjWVsxu+aOnBQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_051831_876302_C8D4CDA3 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Tue, Apr 07, 2020 at 08:40:06AM +0100, Lad, Prabhakar wrote:
> On Tue, Apr 7, 2020 at 8:17 AM Geert Uytterhoeven wrote:
> > On Mon, Apr 6, 2020 at 6:43 PM Lad Prabhakar wrote:
> > > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > > 24MHz. So instead making clock-frequency as dt-property just let the
> > > driver enforce the required clock frequency.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > However, still wondering about the "xvclk" name above and in the definition
> > below.  Is this the naming from the datasheet?
> > The DT bindings nor the driver use the "xvclk" naming.
> >
> xvclk naming is from the datasheet, although the 0v5645 datasheet on
> publicly available I have referred [1]/[2].
> If I am not wrong all the ov sensors have the same naming convention as xvclk.
> 
> [1] https://cdn.sparkfun.com/datasheets/Sensors/LightImaging/OV5640_datasheet.pdf
> [2] https://www.ovt.com/download/sensorpdf/126/OmniVision_OV5645.pdf

The clock in DT should really have been named xvclk, but it's too late
to change that. We can follow one of two approaches, either naming
everything xclk, and naming everything but the DT property xvclk. Both
have pros and cons, feel free to pick your preferred option, but in any
case a comment to explain the issue would be useful.

> > > --- a/drivers/media/i2c/ov5645.c
> > > +++ b/drivers/media/i2c/ov5645.c
> > > @@ -61,6 +61,8 @@
> > >  #define OV5645_SDE_SAT_U               0x5583
> > >  #define OV5645_SDE_SAT_V               0x5584
> > >
> > > +#define OV5645_XVCLK_FREQ              24000000
> > > +

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
