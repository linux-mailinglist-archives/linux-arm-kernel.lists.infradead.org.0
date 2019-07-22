Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EA06F7E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMSIsFp0zIaRC5rdDV8jFx3l6zEAMXb/JH/iitkMR0A=; b=Zjr7iPMDI4yEYn
	sfuUPLcX/FZPbFhD7/OymOKbJaoUf+R2LcgjxtMxrswvOYdYrHRypNXbsHlfKYbN5STk5VQkfdpL3
	xzA4TRE7gucyCVxdla6zJIRHUDkbzdC1W1vEO5wXAb4xsfB0iylj15wKvSnY0N9eAAOB5KtwwQqMD
	RIU9BPKUSuP+ICl/2F0nofwwinOBraK2SYngRBI7SZ4KDCloE/9CAWRLSKkGmOmPb0Wr6iOaNlb+9
	MHyqz3avST8N8d/ddLfyF4ShpyuzWSArCXCIZ1SlqjBjFzd246t5WXoewQsXegnaEgPfUvjldRstk
	MxVnDHIY41KVV1kGrrYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpOrs-0001xg-0B; Mon, 22 Jul 2019 03:20:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpOra-0001xM-3X
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:19:47 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD48421926;
 Mon, 22 Jul 2019 03:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563765585;
 bh=o9ug2UGWvRNfm5yi/YzSxu10Y1TaJv2KLaYjJ/mfy0Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QgUn3Rj4Aed2n2RovpV4pioNUoW2LcC3GtRy+3THrGzonOpPTFoYCy02l7V5upYjT
 atHVlacFtwY7jCkSzTBDM4UY73DNKHTkqhxA+s6CBDulL6HsPLWJqH6w3i81D94jKv
 Vg2NwDzTz3Lub6sWRazgE01R03KHX6XW+KMCbV6Y=
Date: Mon, 22 Jul 2019 11:19:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Message-ID: <20190722031914.GU3738@dragon>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon> <20190624022713.GO3800@dragon>
 <DB3PR0402MB39162662C69B45BDB948D002F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190722020026.GQ3738@dragon>
 <AM6PR0402MB39113A76EE8A63F9C9F589C1F5C40@AM6PR0402MB3911.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR0402MB39113A76EE8A63F9C9F589C1F5C40@AM6PR0402MB3911.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_201946_183266_6D36CDFB 
X-CRM114-Status: GOOD (  22.04  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 02:15:10AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > On Mon, Jun 24, 2019 at 02:35:10AM +0000, Anson Huang wrote:
> > > Hi, Shawn
> > >
> > > > -----Original Message-----
> > > > From: Shawn Guo <shawnguo@kernel.org>
> > > > Sent: Monday, June 24, 2019 10:27 AM
> > > > To: Anson Huang <anson.huang@nxp.com>
> > > > Cc: mark.rutland@arm.com; Aisheng Dong <aisheng.dong@nxp.com>;
> > Peng
> > > > Fan <peng.fan@nxp.com>; festevam@gmail.com; Jacky Bai
> > > > <ping.bai@nxp.com>; devicetree@vger.kernel.org; sboyd@kernel.org;
> > > > catalin.marinas@arm.com; s.hauer@pengutronix.de; linux-
> > > > kernel@vger.kernel.org; Daniel Baluta <daniel.baluta@nxp.com>;
> > > > linux- clk@vger.kernel.org; robh+dt@kernel.org; dl-linux-imx <linux-
> > > > imx@nxp.com>; kernel@pengutronix.de; Leonard Crestez
> > > > <leonard.crestez@nxp.com>; will@kernel.org; mturquette@baylibre.com;
> > > > linux-arm-kernel@lists.infradead.org; Abel Vesa <abel.vesa@nxp.com>
> > > > Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for
> > > > ARCH_MXC platforms
> > > >
> > > > On Mon, Jun 24, 2019 at 10:22:01AM +0800, Shawn Guo wrote:
> > > > > On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com
> > wrote:
> > > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > > >
> > > > > > ARCH_MXC platforms needs system counter as broadcast timer to
> > > > > > support cpuidle, enable it by default.
> > > > > >
> > > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > > ---
> > > > > >  arch/arm64/Kconfig.platforms | 1 +
> > > > > >  1 file changed, 1 insertion(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/Kconfig.platforms
> > > > > > b/arch/arm64/Kconfig.platforms index 4778c77..f5e623f 100644
> > > > > > --- a/arch/arm64/Kconfig.platforms
> > > > > > +++ b/arch/arm64/Kconfig.platforms
> > > > > > @@ -173,6 +173,7 @@ config ARCH_MXC
> > > > > >  	select PM
> > > > > >  	select PM_GENERIC_DOMAINS
> > > > > >  	select SOC_BUS
> > > > > > +	select TIMER_IMX_SYS_CTR
> > > > >
> > > > > Where is that driver?
> > > >
> > > > Okay, just found it in the mailbox.  They seem to be sent in the wrong
> > order.
> > > > Really, you should send this series only after the driver lands on mainline.
> > >
> > > OK, just noticed that mainline does NOT have it, since I did it based on next
> > tree.
> > > I will resend the patch series after the system counter driver landing on
> > mainline.
> > 
> > I just picked the series up, so no need to resend.
> 
> Something changed for this series, the system counter clock related implementation
> are changed after some comments from maintainer, so I think you should picked up
> below patch series instead, and drop this series,
> 
> https://patchwork.kernel.org/patch/11037953/

Okay, dropped clk and dts patches.  arch/arm64/Kconfig.platforms one is kept.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
