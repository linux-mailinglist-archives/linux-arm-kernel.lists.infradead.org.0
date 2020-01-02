Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F1312E8A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEqmiCI/v2on5Oac+IolllkQfc0jRAKSIY7cE33yJaQ=; b=L5QjhsZHmxmMk6
	pX31kmt8KsFweuQYjft4qTYXuqtdkGM0Z+ksxfF4LasL8V4SIIxJXds+wQB8w28i0CKvfBVCrIg4w
	Lcv7q//rHRKn4k5jgZjQW8uk0Ycfd4Vbn2UN4kxYhhel9Hk2uuR7ryatjxBY0L0Vw5hdLKkxrX2Jg
	NunMoz7xxMskgUuwZTZoVxeaHgF5+ogC5719n/+3wxC/Ws0/CY9MX5VB8z0bSgA56IdKEExQsvrzH
	4UVNUde3oOkQk6sZyUj74MOX4aAgyh4KkNXe4nUibyEWwsU7vCyMnAalz3MBgA+c/kHCcCdpnEplK
	EUwOYSXs/FzhvtTeO0kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3EO-0008RC-HW; Thu, 02 Jan 2020 16:21:52 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3EH-0008Q4-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:21:47 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id ECD25804DA;
 Thu,  2 Jan 2020 17:21:35 +0100 (CET)
Date: Thu, 2 Jan 2020 17:21:34 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 0/6] fixes for atmel-hlcdc
Message-ID: <20200102162134.GA13454@ravnborg.org>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <20200102090554.GB29446@ravnborg.org> <20200102160534.GJ22390@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102160534.GJ22390@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=sy_eDPmhS6KF6TahjTwA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_082145_583497_05229926 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, peda@axentia.se,
 boris.brezillon@bootlin.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lee.

> > >   ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
> > > 
> > > Claudiu Beznea (5):
> > >   drm: atmel-hlcdc: use double rate for pixel clock only if supported
> > >   drm: atmel-hlcdc: enable clock before configuring timing engine
> > 
> > >   mfd: atmel-hlcdc: add struct device member to struct
> > >     atmel_hlcdc_regmap
> > >   mfd: atmel-hlcdc: return in case of error
> > 
> > Would it be OK to apply the to drm-misc-next, or shal they go in via
> > your mfd tree?
> 
> How are they related to the other patches?  Do they have build-time
> dependencies on any of the other patches, or vice versa? 
No build time dependencies.

But from the description of "atmel-hlcdc: return in case of error":
"
For HLCDC timing engine configurations bit ATMEL_HLCDC_SIP of
ATMEL_HLCDC_SR needs to be polled before applying new config.
"
I get that changing timing for the HLCDC may fail if these
patches are not applied.
So it is only to have updated hlcdc support in drm-misc-next
for further testing.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
