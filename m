Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5003118B3DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd5swdH8XFqKKjBnnfcf2M5ZwbJCcUq1e4pQNptfvmg=; b=GU4zD4k1CCAxHB
	EXgqsWOEL8o+DTSzff6VzDhy66pOegwb8Cw0l9IG9jyYiuCWfTjpcyVCtPKyoIi0F1syTTMKfOXCp
	ecDcKj3XMr5WPWUFqm3CftJv301yJGrI6OvG7Bxo3IhVd8xlE3yvmtsI39zxDyhu1HDzmttQKsgJq
	jS/L/yoYs8dmXMatSfZCopjj3gsTY7ldwBQvqy15eVGYKUAlvaZgYZfKbb7pPm5u29b+mH+7q8t0G
	7anIXbewtw9Kmj3qOVuMSb3ad4BUtxIiqlDxW8yoBG6bW6GxdXL7WwzVRR3EzvBYBtA13nE2J38BP
	iKv7iMFUwnH3Qhzh5B4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuqK-0004It-3T; Thu, 19 Mar 2020 13:04:12 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuq9-0004HM-DL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:04:02 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B98EA53;
 Thu, 19 Mar 2020 14:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584623034;
 bh=D1jU5CecA8xmxcxpuPAP4tWuL8Jb5B+/4IYit8jX3O8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f/2X+PGB9yBjdoPWDUPQluoD2ZTKNIlyTlrfleMbp07PhAnFnYboOGvf4RuR5sczj
 pz3qd7BHaRLVYrTMmPRH85jd7mrnmw50+rai0pAUEjPAaD3Jr/xdWmF+kqzURJ1A5w
 BfrL2lEgZgAp36XWI89ffk9rD1B1wz9CGhDMMLsA=
Date: Thu, 19 Mar 2020 15:03:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200319130348.GC4872@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_060401_605005_981DC19F 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > Use assigned-clock-rates to specify the clock rate. Also mark
> > clock-frequency property as deprecated.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > index 72ad992..e62fe82 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > @@ -8,7 +8,7 @@ Required Properties:
> >  - compatible: Value should be "ovti,ov5645".
> >  - clocks: Reference to the xclk clock.
> >  - clock-names: Should be "xclk".
> > -- clock-frequency: Frequency of the xclk clock.
> > +- clock-frequency (deprecated): Frequency of the xclk clock.
> >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> >    to the hardware pin PWDNB which is physically active low.
> >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > @@ -37,7 +37,8 @@ Example:
> >
> >  			clocks = <&clks 200>;
> >  			clock-names = "xclk";
> > -			clock-frequency = <24000000>;
> > +			assigned-clocks = <&clks 200>;
> > +			assigned-clock-rates = <24000000>;
> >
> >  			vdddo-supply = <&camera_dovdd_1v8>;
> >  			vdda-supply = <&camera_avdd_2v8>;
> 
> clock-frequency is quite different from assigned-clock-rates though,
> semantically speaking. clock-frequency is only about what the clock
> frequency is, while assigned-clock-rates will change the rate as well,
> and you have no idea how long it will last.

The driver currently reads the clock-frequency property and then calls
clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
think it's less of a hack than what we currently have.

As discussed on IRC, maybe the best option in this specific case is to
drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
with a hardcoded frequency of 24MHz in the driver, as that's the only
frequency the driver supports.

> If you want to retrieve that through the clock framework, then just
> making clock-frequency optional is enough and falling back to
> clk_get_rate on the clocks property already provided is enough.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
