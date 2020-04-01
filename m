Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5D119ABDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOeGprDayjxI1y/esQWm3Eq5yqttNT/7STSSDCkm8tQ=; b=ExdgLuAjHfYHF3
	vRbCoQ/pZq0SPCol+IZMgMGHB/qEytF4D3ENYpZQWmFRiK8eq6IpOsFfPTdIjEbKtGH5tBgZGRstj
	xEjwswbbNLMS/0VkksAVG8gPjfNfDBPU7XRmHRsCBTkXOwCAKn2mHBMtpOWMlUDxm/qfRxt3R1dLf
	PynbBdsz8s5XJIRErAZVrmCUUkuGNQ8HFhLO0rCoRYFXXyBN20fLJstY98R/bI1eu7sqqz1In1+2j
	aXQDBy9uWlAqJO+zU0lQ/bwrdrK5UdqH8B5GAOuai6YNORkFe+nHZU8VpBTPHiGMBpfa6PheDT5+0
	bLYFzodp3S6TufzsL/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcg9-0003Ab-Js; Wed, 01 Apr 2020 12:41:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcg3-00039v-91
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:41:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jJcfv-0002fd-Vc; Wed, 01 Apr 2020 14:40:56 +0200
Message-ID: <84ebedc52340f57487f2e75fddef2be1df825d77.camel@pengutronix.de>
Subject: Re: [Linux-stm32] [PATCH V3 13/22] ARM: dts: stm32: Enable GPU on AV96
From: Lucas Stach <l.stach@pengutronix.de>
To: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
Date: Wed, 01 Apr 2020 14:40:46 +0200
In-Reply-To: <9ed8f864-9bbe-b090-2399-6cea8b088fe2@denx.de>
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-14-marex@denx.de>
 <eb93de42-1fa2-e4ee-e104-3c8b57b64c40@st.com>
 <9ed8f864-9bbe-b090-2399-6cea8b088fe2@denx.de>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054103_319484_43178BBA 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, den 01.04.2020, 14:21 +0200 schrieb Marek Vasut:
> On 4/1/20 11:59 AM, Alexandre Torgue wrote:
> > Hi Marek
> 
> Hi,
> 
> > On 3/31/20 7:58 PM, Marek Vasut wrote:
> > > Enable the GPU present on the STM32MP1 populated on AV96.
> > > 
> > > Reviewed-by: Manivannan Sadhasivam <
> > > manivannan.sadhasivam@linaro.org>
> > > Signed-off-by: Marek Vasut <marex@denx.de>
> > > Cc: Alexandre Torgue <alexandre.torgue@st.com>
> > > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > > Cc: Patrice Chotard <patrice.chotard@st.com>
> > > Cc: Patrick Delaunay <patrick.delaunay@st.com>
> > > Cc: linux-stm32@st-md-mailman.stormreply.com
> > > To: linux-arm-kernel@lists.infradead.org
> > > ---
> > > V2: No change
> > > V3: No change
> > > ---
> > >   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 4 ++++
> > >   1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > > b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > > index 27c48f988540..19a7a130b148 100644
> > > --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > > +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > > @@ -139,6 +139,10 @@ phy0: ethernet-phy@7 {
> > >       };
> > >   };
> > >   +&gpu {
> > > +    status = "okay";
> > > +};
> > > +
> > 
> > GPU is now enable by so you can drop this patch.
> 
> Why is it enabled by default ? That's somewhat useless on headless
> systems.

The better question is: why wouldn't it be enabled by default? It's a
SoC peripheral and has no external dependencies. Even on a headless
system you can still do stuff like color conversion/balancing via GL in
a video pipeline or something like this. There is simply no good reason
to hide the existence of the GPU.

If you are really concerned about the few ms it takes to initialize the
GPU on boot, you can always choose to not build the driver, or use a
specific DT for your use-case.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
