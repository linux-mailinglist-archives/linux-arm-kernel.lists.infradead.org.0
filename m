Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AB315E899
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3CMmBMSTdORPJee/v8Jnp2UUoJpWO4CgGYB+a8fJnM=; b=GH2M5kWw7qI763
	5EehCoxV3iwcO24OWG+gpnVBrEpawbKzLmGVm8unK0jdYRKkiVmoHNswhADBf0emXbrpqMk5ZmaiS
	5eVNXdIckl+yDLfY3k6ZugOQ+srtgqecbQGzjtK1+HFSeqMGixfHoyJ7S7ZVN+bpJTUxbYh0HnvBB
	vZgdWkkYTdHJaN7W50zluACFdRKeK7iSvCJEZq2QKrJDo7w+bXiEomePGe8C9l2JeRQ22QN+CitID
	aYIXDaNk8LeCVWDH/0FkSw9qMY2xiWTjQD1qHLU6SumJhYy3B/wEZK2EEqVc5JZ8qCQr7SCpyvOsd
	E9xTYjS4SD9Yw0KvF3SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eLM-0002ke-E5; Fri, 14 Feb 2020 17:01:32 +0000
Received: from mailoutvs40.siol.net ([185.57.226.231] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2e2q-0003sR-Cw
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:42:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3F1E752389C;
 Fri, 14 Feb 2020 17:42:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gPTKP3VPISxT; Fri, 14 Feb 2020 17:42:15 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D26BF52389B;
 Fri, 14 Feb 2020 17:42:15 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 8286452389D;
 Fri, 14 Feb 2020 17:42:14 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/2] rtc: sun6i: Make external 32k oscillator optional
Date: Fri, 14 Feb 2020 17:42:13 +0100
Message-ID: <5326350.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20200214081443.ajz2sxh5ztk6qb2i@gilmour.lan>
References: <20200213211427.33004-1-jernej.skrabec@siol.net>
 <20200213211427.33004-2-jernej.skrabec@siol.net>
 <20200214081443.ajz2sxh5ztk6qb2i@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_084224_603963_F1E905C0 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.231 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Dne petek, 14. februar 2020 ob 09:14:43 CET je Maxime Ripard napisal(a):
> Hi Jernej,
> 
> Thanks for taking care of this
> 
> On Thu, Feb 13, 2020 at 10:14:26PM +0100, Jernej Skrabec wrote:
> > Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
> > (H6) don't have external 32kHz oscillator. Till H6, it didn't really
> > matter if external oscillator was enabled because HW detected error and
> > fall back to internal one. H6 has same functionality but it's the first
> > SoC which have "auto switch bypass" bit documented and always enabled in
> > driver. This prevents RTC to work correctly if external crystal is not
> > present on board. There are other side effects - all peripherals which
> > depends on this clock also don't work (HDMI CEC for example).
> > 
> > Make clocks property optional. If it is present, select external
> > oscillator. If not, stay on internal.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/rtc/rtc-sun6i.c | 14 ++++++--------
> >  1 file changed, 6 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> > index 852f5f3b3592..538cf7e19034 100644
> > --- a/drivers/rtc/rtc-sun6i.c
> > +++ b/drivers/rtc/rtc-sun6i.c
> > @@ -250,19 +250,17 @@ static void __init sun6i_rtc_clk_init(struct
> > device_node *node,> 
> >  		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> >  	
> >  	}
> > 
> > -	/* Switch to the external, more precise, oscillator */
> > -	reg |= SUN6I_LOSC_CTRL_EXT_OSC;
> > -	if (rtc->data->has_losc_en)
> > -		reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> > +	/* Switch to the external, more precise, oscillator, if present */
> > +	if (of_get_property(node, "clocks", NULL)) {
> > +		reg |= SUN6I_LOSC_CTRL_EXT_OSC;
> > +		if (rtc->data->has_losc_en)
> > +			reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> > +	}
> > 
> >  	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> >  	
> >  	/* Yes, I know, this is ugly. */
> >  	sun6i_rtc = rtc;
> > 
> > -	/* Deal with old DTs */
> > -	if (!of_get_property(node, "clocks", NULL))
> > -		goto err;
> > -
> 
> Doesn't that prevent the parents to be properly set if there's an
> external crystal?

No, why?

Check these two clk_summary:
http://ix.io/2bHY Tanix TX6 (no external crystal)
http://ix.io/2bI2 OrangePi 3 (external crystal present)

Please disregard ac200_clk in first case, it's part of another work.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
