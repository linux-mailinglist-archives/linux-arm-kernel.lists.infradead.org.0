Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660AA13181A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLI4xiNk9vetWmnOhLXqPWd88Mk5TzleZy71p/BiOII=; b=OTIMVLstzQzOUk
	tODZLY8SHmZtkXSGjO0MdkRRK4PJDrCTkt3MaOt7Bk/IMJd6mkyxbML3FmD+11oPQTvs1MezNdEIX
	RYoptbCDl+q2qXWMc6OTnR3Im/3tW604U9gr0FViyEMhV5KMOYRa3Mhy1hHFt6qr1qR7hkZ3nl6HH
	+fW6R/71nLG2Qt4RWapkD72S7NWqwzLJ6QTk+qePi6ebG7hWrzNEwiRnv6JLXOGMZyANmEXeJfaI/
	lJOznJ+85hp4DMJmIOUE1Hd2WnXNjX4wk7etLFef2ztG9//WFKqBFY+hqCuftleFvyylf5pD8aMRJ
	w/nswDyYo+Uk+cgZtrpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXeS-00073A-7j; Mon, 06 Jan 2020 19:02:56 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXeK-00071w-FF
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:02:50 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 7ABA180566;
 Mon,  6 Jan 2020 20:02:36 +0100 (CET)
Date: Mon, 6 Jan 2020 20:02:34 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Message-ID: <20200106190234.GA15881@ravnborg.org>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
 <20200102090848.GC29446@ravnborg.org>
 <20200104171205.GA8724@ravnborg.org>
 <4f8603b2-9ae6-97bf-73c0-1b204595dce1@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f8603b2-9ae6-97bf-73c0-1b204595dce1@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=NYWZX5WbLEMB8WfXhvMA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_110248_691182_99B65342 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, lee.jones@linaro.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Claudiu.
On Mon, Jan 06, 2020 at 09:25:40AM +0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 04.01.2020 19:12, Sam Ravnborg wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > Hi Claudiu
> > 
> > On Thu, Jan 02, 2020 at 10:08:48AM +0100, Sam Ravnborg wrote:
> >> On Wed, Dec 18, 2019 at 02:28:28PM +0200, Claudiu Beznea wrote:
> >>> From: Peter Rosin <peda@axentia.se>
> >>>
> >>> The intention was to only select a higher pixel-clock rate than the
> >>> requested, if a slight overclocking would result in a rate significantly
> >>> closer to the requested rate than if the conservative lower pixel-clock
> >>> rate is selected. The fixed patch has the logic the other way around and
> >>> actually prefers the higher frequency. Fix that.
> >>>
> >>> Fixes: f6f7ad323461 ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
> >> The id is wrong here - the right one is: 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de
> >> The wrong id above was used before - so I think it is a copy'n'paste
> >> thing.
> >>
> >> Hint: try "dim fixes 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de"
> >>
> >> If I get a quick response from Lee I can fix it up while applying.
> >>
> >>       Sam
> >>
> >>> Reported-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >>> Tested-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >>> Signed-off-by: Peter Rosin <peda@axentia.se>
> > 
> > One other detail.
> > The patch has passed through your hands, so you have to add your s-o-b
> > to document this.
> > The chain of s-o-b shall document the path the patch has taken towards
> > the kernel.
> > 
> > In this case:
> > Peter => Claudiu => Sam => Applied.
> > 
> > Please resend or reply where you say OK that I add your s-o-b.
> 
> Sure! Please add my Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

Thanks - all four DRM patches pushed to drm-misc-next.
I used "dim fixes" so we could Cc relevant stable versions.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
