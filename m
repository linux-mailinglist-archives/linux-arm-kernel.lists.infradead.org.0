Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6741318A874
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:42:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYS2cI6D/MJYZgycZgP04PbnFNTPSDSc3W/IeU7ERBk=; b=kUXUnFZtP1+37X
	/QVwgSMW978O0WnHghd1mGPjBwh2I9j6shnUJ72rbBTnnBT1/A1vpAdLYQHtfSezkgcoAaEE/F1sy
	yMwSCu/t+zMa4jebSJatfhCfQ1oUFZ5YnYLKU/YuXkxvUasm4pEJnBS3wcLpvbq3W4VBl6TT7VLPf
	otTyTA8oZ0F5IO3utzKkJG3rLZgTOUsi0C2rvC8kp2K6xdNNHEzkG4HUr2lmWIlLlWhq4eGq6P4/1
	AYi/tZmdC93PmziT9zBT52dzL/t1qRNaV97ODJ4HAFHO2fg5Ce4bVsOP6qAXwI96NpW0qMfVOIM5s
	oXPAafr4P/7GgWxtfgJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhO5-00079u-Ph; Wed, 18 Mar 2020 22:42:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhNw-00079M-LD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:42:02 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7603A5F;
 Wed, 18 Mar 2020 23:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584570797;
 bh=9m1GSY/Y0chTObQdUK2o5uaKcyUnJ2AtolcRgJvxcRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RqALiKWBqa3oEj6gO5QaKcF2+D0Q54zVl+tnIJcm64PY3+pAw74SREjMR0VoUXZl7
 Bxhj8v/Gih5fORg6/cH+QmbyhmHQxT1lNDBcMZe9bL+6oiBzPs4Q7CtlzJRtILAioN
 vFQ69xXygRCGcB2oHWZgVtjBQL7nPdGcBH8z+xzs=
Date: Thu, 19 Mar 2020 00:33:11 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200318223311.GH24538@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212012.GL4751@pendragon.ideasonboard.com>
 <OSBPR01MB35905D6D72DCBF154FCF7C88AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20200313212717.GO4751@pendragon.ideasonboard.com>
 <CA+V-a8veXbwMrda8UEu2mN6gGgrBJA8Mp7gdN7Q3-iXNw9c4pg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8veXbwMrda8UEu2mN6gGgrBJA8Mp7gdN7Q3-iXNw9c4pg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_154200_850771_AF78D240 
X-CRM114-Status: GOOD (  20.47  )
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

On Wed, Mar 18, 2020 at 08:13:00PM +0000, Lad, Prabhakar wrote:
> On Fri, Mar 13, 2020 at 9:27 PM Laurent Pinchart wrote:
> > On Fri, Mar 13, 2020 at 09:25:01PM +0000, Prabhakar Mahadev Lad wrote:
> >> On Sent: 13 March 2020 21:20, Laurent Pinchart wrote:
> >>> On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> >>>> Use assigned-clock-rates to specify the clock rate. Also mark
> >>>> clock-frequency property as deprecated.
> >>>
> >>> I would phrase it the other way around, this patch mainly deprecates clock-
> >>> frequency, and as a side effect recommends usage of assigned-clock-rates.
> >>>
> >>> "Deprecate usage of the clock-frequency propertly. The preferred method
> >>> to set clock rates is to use assigned-clock-rates."
> >>
> >> Agreed will do that.
> >>
> >>>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> >>>>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >>>> b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >>>> index 72ad992..e62fe82 100644
> >>>> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >>>> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >>>> @@ -8,7 +8,7 @@ Required Properties:
> >>>>  - compatible: Value should be "ovti,ov5645".
> >>>>  - clocks: Reference to the xclk clock.
> >>>>  - clock-names: Should be "xclk".
> >>>> -- clock-frequency: Frequency of the xclk clock.
> >>>> +- clock-frequency (deprecated): Frequency of the xclk clock.
> >>>
> >>> I would drop this completely. Drivers need to ensure backward compatibility,
> >>> but DT bindings should only document the latest version, the history is
> >>> available in git.
> >>
> >> Sure will drop it.
> >>
> >>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>
> >>> While at it, can I enlist you to convert these bindings to yaml ? :-)
> >>>
> >> Sure will do the honours , will make sure yaml patch is ontop of this patch too.
>
> Shall I enlist you as the maintainer  in the json-schema ?
> dt_binding_check says  'maintainers' is a required property.

Do you want to be the new maintainer ? :-) Sakari is maintaining sensor
drivers (in his spare time though) so maybe he could be listed in the DT
bindings too if he wants. Otherwise, I could do it.

> > Thank you :-)
> >
> >>>>  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> >>>>    to the hardware pin PWDNB which is physically active low.
> >>>>  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> >>>> @@ -37,7 +37,8 @@ Example:
> >>>>
> >>>>  clocks = <&clks 200>;
> >>>>  clock-names = "xclk";
> >>>> -clock-frequency = <24000000>;
> >>>> +assigned-clocks = <&clks 200>;
> >>>> +assigned-clock-rates = <24000000>;
> >>>>
> >>>>  vdddo-supply = <&camera_dovdd_1v8>;
> >>>>  vdda-supply = <&camera_avdd_2v8>;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
