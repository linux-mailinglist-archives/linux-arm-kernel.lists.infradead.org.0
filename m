Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9DB36C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJ61/9STZ3gUrt1S7TSVMbWaHecsCk70LCCAJa7h8Qg=; b=NX3PbaS+SjRfuL
	IzQweQ6lkJxtcg4ApjE33ryJa7SJHgEfUOTuxDUwn4ag3WO9jrESIVyV0R21UD88YwDdYXSA6r6IY
	pFDJodBWQIS5aGtI1F5Vr+jsxoV0hkI1iK316lXjkc5S4HHquboIo7tx7EqeNH0BIetgPFFAS3tZm
	E6IOXm7IIPKa21GQkOtQOmlU/iDfbhioqWsiI73YNw3SQn79HIRI11Yg2k4S3hocTjgbNeY9dEXo4
	LOaLWXK+tYKLrWeK+nZ3eijIEIIImoa+JdSlsXYceUHR2/59+7JRBVyPWvk/zMNznpm9Vv8LUOjCS
	Qd1Dic2wbRwaPvFllU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9mtb-00037U-FV; Mon, 16 Sep 2019 09:02:07 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9mtO-00036W-5Q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:01:55 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 9B6193E8F9;
 Mon, 16 Sep 2019 09:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1568624511;
 bh=u3nzc9gqP8MUC4JhGKxS32T+hxVY4syKzPf8LbbTamQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aOBRGkMlz/PhmAyVxvgfThua6X09O9qLt8s9Z4+G/dU8zpnBGCcD6NpbPyO3rS0Qw
 /GzuKCU0+FITC5ilWRJR5bvkSsGr0+bVtYVhSl/2Boz+5tl0ZiyVzEOgwWP1hg2fOz
 E5dvSFXBtHXZtL88w+C57HA9DPyvfZwZz6KJQBQA=
Date: Mon, 16 Sep 2019 05:01:50 -0400
From: Brian Masney <masneyb@onstation.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 00/11] ARM: dts: qcom: msm8974: add support for external
 display
Message-ID: <20190916090150.GA349@onstation.org>
References: <CGME20190815004916epcas3p4d8a62e215eff5e227721d3449e6bfbd3@epcas3p4.samsung.com>
 <20190815004854.19860-1-masneyb@onstation.org>
 <2da29e80-73fb-8620-532e-0b5f54b00841@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2da29e80-73fb-8620-532e-0b5f54b00841@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_020154_275154_CF1699B3 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, jonas@kwiboo.se, agross@kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 robdclark@gmail.com, robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, linux-arm-msm@vger.kernel.org, enric.balletbo@collabora.com,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

On Mon, Sep 16, 2019 at 10:13:58AM +0200, Andrzej Hajda wrote:
> Hi Brian,
> 
> On 15.08.2019 02:48, Brian Masney wrote:
> > This patch series begins to add support for the external display over
> > HDMI that is supported on msm8974 SoCs. I'm testing this series on the
> > Nexus 5, and I'm able to communicate with the HDMI bridge via the
> > analogix-anx78xx driver, however the external display is not working
> > yet.
> >
> > When I plug in the HDMI cable, the monitor detects that a device is
> > hooked up, but nothing is shown on the external monitor. The hot plug
> > detect GPIO (hpd-gpios) on the analogix-anx78xx bridge and MSM HDMI
> > drivers do not change state when the slimport adapter or HDMI cable is
> > plugged in or removed. I wonder if a regulator is not enabled somewhere?
> > I have a comment in patch 10 regarding 'hpd-gdsc-supply' that may
> > potentially be an issue.
> >
> > I'm still digging in on this, however I'd appreciate any feedback if
> > anyone has time. Most of these patches are ready now, so I marked the
> > ones that aren't ready with 'PATCH RFC'.
> >
> > I'm using an Analogix Semiconductor SP6001 SlimPort Micro-USB to 4K HDMI
> > Adapter to connect my phone to an external display via a standard HDMI
> > cable. This works just fine with the downstream MSM kernel using
> > Android.
> 
> 
> This patchset risks to be forgotten. To avoid it, at least partially, I
> can merge patches 1-5, is it OK for you?

That would be great if you could do that.

Thanks,

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
