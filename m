Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B23F18A92B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Gufmb0j0T5t9dasXn6wVmMBmrkH6Ix9aqj50jQpVKk=; b=WCMY/1Xc8X+b2F
	SB1rLz7Yeomp6EjnMa7XJ2pmkq8EkzN9GoryLXxM36dZJsfVsnc+ZIkHBk1J48MnxuucjkhcrT0ef
	3YLRcGVlCLktiAlveUDeH0JwXI7b6buYP/ui4pOTrTu6Er+j3UiIEofEIzDNhIA5EQJEYKt7nFF7f
	Dc4stBVoKw+mvoJqpmyMqaO9G18F/NesDKPT++5YdAyWzFtHw+SX9i0K0TPGzvW/FC1eeUgqarE/r
	rAXFBVpOwNz6F3ZtuvSlhRfvjVifPBA4LjlFI7yjFo1zBZJxUgae0fXguKEX//HAOk3n+0gbvuP3p
	y38yxErjR4R26FsqTA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEi1W-0007EO-TV; Wed, 18 Mar 2020 23:22:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEi1M-0007Dn-6C
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:22:45 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 97FC55F;
 Thu, 19 Mar 2020 00:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584573761;
 bh=1QAaixOPnCwRw0nvHVWpdyGWaxWNnlcsHJ49Rt5k58U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oE6t/vXko3yx5XAp9J589i8nmC888tp0v4tRNpiAWr96RdlwpAmyPgSnKB6ylZ3Ed
 KCyszDJ5PVG8nNuo9n3ParRafUZPjU/cytzUaXu726C2RtCCbBFPU/TxL+ESM52ohX
 G6UZkWgj7t41IP17PvvPQAychsPHRSDWPCPYrEyI=
Date: Thu, 19 Mar 2020 01:22:36 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
Message-ID: <20200318232236.GJ24538@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
 <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <CA+V-a8t-rA-6AmZry63QeXN6pvGWVtcEEuHaDA1jsS-x+30oiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8t-rA-6AmZry63QeXN6pvGWVtcEEuHaDA1jsS-x+30oiQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_162244_374718_25E2883B 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Wed, Mar 18, 2020 at 10:41:57PM +0000, Lad, Prabhakar wrote:
> On Fri, Mar 13, 2020 at 9:31 PM Prabhakar Mahadev Lad wrote:
> > On 13 March 2020 21:24, Laurent Pinchart wrote:
> >> On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> >>> While testing on Renesas RZ/G2E platform, noticed the clock frequency
> >>> to be 24242424 as a result the probe failed. However increasing the
> >>> maximum leverage of external clock frequency to 24480000 fixes this
> >>> issue. Since this difference is small enough and is insignificant set
> >>> the same in the driver.
> >>>
> >>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>> ---
> >>>  drivers/media/i2c/ov5645.c | 6 ++++--
> >>>  1 file changed, 4 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> >>> index 4fbabf3..b49359b 100644
> >>> --- a/drivers/media/i2c/ov5645.c
> >>> +++ b/drivers/media/i2c/ov5645.c
> >>> @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> >>>  }
> >>>
> >>>  xclk_freq = clk_get_rate(ov5645->xclk);
> >>> -/* external clock must be 24MHz, allow 1% tolerance */
> >>> -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> >>> +/* external clock must be 24MHz, allow a minimum 1% and a
> >> maximum of 2%
> >>> + * tolerance
> >>
> >> So where do these numbers come from ? I understand that 2% is what you
> >> need to make your clock fit in the range, but why -1%/+2% instead of -
> >> 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> >> range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> >> that PLL parameters depend on the clock frequency, but could they be
> >> calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> >> frequency ?
> >>
> > To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
> > logs/comment says 24Mhz.
> >
> Comparing to ov5640 datasheet [1] (which I am assuming might be
> similar to ov5645),

Let's assume this to be the case, I see no reason not to :-)

> this change should affect the driver.

How do you mean ?

> [1] https://cdn.sparkfun.com/datasheets/Sensors/LightImaging/OV5640_datasheet.pdf
> 
> >>> + */
> >>> +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> >>>  dev_err(dev, "external clock frequency %u is not supported\n",
> >>>  xclk_freq);
> >>>  return -EINVAL;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
