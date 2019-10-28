Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23127E6A55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 01:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXmrW+EDns/6nB3Xnd0lX353RUQsyEr/mN2z9nhj08E=; b=bXSVkmchbFPlcw
	d2CdWmNQPbxfqhceYrnAiFlNP4F8ho4RU/dWWf42MvOCVRhjS1B0K6bHmuQzkFIts4BhNSqJ/98lE
	EaafuPaj8tz/gTL3QKuWMciM6kv+YKwuq7zbT3IFFUyTEuRZlyPWmlO8p1PvjPq8srd3+qiRTUVvK
	qS0nMo5tbd0Rx+CW1LtK4tgE+nFDXzTYWosdK1vzo6bAc+p1n5Kzle6cIpBIzeVUCcLbd2FYaMfEo
	jBeBb4i2uc9+rdBtqfQGstJx5SCdC7ywpLLx00rT2R/2H1VD9jRgJkkEV4py/PrMc1HYg12z2CPpx
	ZGVKGgK1XI25JqTFmkfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOtBA-0002RA-NY; Mon, 28 Oct 2019 00:46:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOtB0-0002Qp-S0
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 00:46:32 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 133F12070B;
 Mon, 28 Oct 2019 00:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572223588;
 bh=dUrfIt9ulQVATvgyr+HDIEG155LRe+2kRKFH8+5OlIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zruWzOHfKq5ZGevrQIPMaNo/nYXLq6hunFdZSO9sRqfWCqJDHhfKpONYcxXQJu1nB
 U8e7tbgw1BWYtj1XikjiixINEDkDq1oqI9chrE/Axx0CO0di6bwn3Cng1SionQqYjG
 yYXyVKOCsPsHYvaMk/FDlW7TZ0sUXMpiIG6sHrxI=
Date: Mon, 28 Oct 2019 08:46:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: zii-ultra: Add node for accelerometer
Message-ID: <20191028004604.GA16985@dragon>
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
 <20191015152654.26726-3-andrew.smirnov@gmail.com>
 <20191026115524.GJ14401@dragon>
 <CAHQ1cqHQar8ZoVa3p+LfuPyJixcwfeWv7spkmwyJc60cekEywQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHQar8ZoVa3p+LfuPyJixcwfeWv7spkmwyJc60cekEywQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_174630_930176_897E31E8 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 11:54:13AM -0700, Andrey Smirnov wrote:
> On Sat, Oct 26, 2019 at 4:55 AM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Tue, Oct 15, 2019 at 08:26:53AM -0700, Andrey Smirnov wrote:
> > > Add I2C node for accelerometer present on both Zest and RMB3 boards.
> > >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > Cc: Fabio Estevam <festevam@gmail.com>
> > > Cc: Chris Healy <cphealy@gmail.com>
> > > Cc: Lucas Stach <l.stach@pengutronix.de>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Cc: linux-arm-kernel@lists.infradead.org,
> > > Cc: linux-kernel@vger.kernel.org
> > > ---
> > >  .../boot/dts/freescale/imx8mq-zii-ultra.dtsi   | 18 ++++++++++++++++++
> > >  1 file changed, 18 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > index 21eb52341ba8..8395c5a73ba6 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > @@ -262,6 +262,18 @@
> > >       pinctrl-0 = <&pinctrl_i2c1>;
> > >       status = "okay";
> > >
> > > +     accel@1c {
> >
> > s/accel/accelerometer
> >
> > I fixed it up and applied the series.
> >
> 
> I'm fine with that change, but FYI, I originally had it as
> "accelerometer', but changed to "accel" to match the name in DT for
> RDU2.

We should change RDU2 instead, IMO.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
