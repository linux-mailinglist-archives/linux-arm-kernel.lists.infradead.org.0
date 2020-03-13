Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1D1841AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:48:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X94wB9th3Y5bgMwYx/jbzT9Gh7CxZsgl1FsGUW6XbWI=; b=ef5CVmT7oYRcgp
	8nM4bKAxv02MUjUnjmb+v8sTWsUn7F9j38fzZgUB07EY1A1WNF42Tu9BILOrDplyM+X5KP74lJzGF
	jcNtPTaijYlZs6ITIXoPQdSYrmv0uz/WpfKH+MRS3JyudChfeE8g2C1wcfAOdUx7uIRgEK1OEg0uX
	crTMDOKw91amuRCYeb8qEVadtSrHRoTSA5Jdv4tybkha2jScRXUeFeBvj84EXI8hPqzl0ZF3qediJ
	BEZmbYXtlyFCz0eddl4IhOVk+Y7YMHqlbc6GzEAsqhqO1b6zWtHOpJLQLG8jTYmlQcaLJjrcBPq1c
	b2KUQ3m0XIxElHCCHgnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf35-0006Li-RR; Fri, 13 Mar 2020 07:48:03 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf2i-0006Eb-UE; Fri, 13 Mar 2020 07:47:43 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id CE83E100010;
 Fri, 13 Mar 2020 07:47:34 +0000 (UTC)
Date: Fri, 13 Mar 2020 08:47:34 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v10 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200313074734.GD3384@piout.net>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200312074407.GA3142@dell> <1584003477.6269.8.camel@mhfsdcap03>
 <20200313072230.GC3142@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313072230.GC3142@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_004741_129359_B7D10170 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/03/2020 07:22:30+0000, Lee Jones wrote:
> > > >  struct mt6397_rtc {
> > > >  	struct device           *dev;
> > > >  	struct rtc_device       *rtc_dev;
> > > > @@ -74,6 +80,7 @@ struct mt6397_rtc {
> > > >  	struct regmap           *regmap;
> > > >  	int                     irq;
> > > >  	u32                     addr_base;
> > > > +	const struct mtk_rtc_data *data;
> > > 
> > > 'data' is a terrible variable name.
> > > 
> > > Why do you need to store this?
> > > 
> > > It's one variable which is used once AFAICT.
> > 
> > I would rename 'data' to 'config'.
> > 
> > This struct will be extended in future patches to achieve more PMIC chip
> > compatibility.
> 
> On closer inspection, it looks like wrtgr (also not a great name for a
> variable by the way) is a register address.  Is that correct?
> Initially I thought it was a model number, which would have been a
> suitable candidate for entry into OF .data.
> 
> However, describing register addresses in OF .data does not sound like
> good practice.  It is usually used to identify a platform in the cases
> where platforms cannot be otherwise dynamically interrogated for model
> number via a register read.
> 
> Describing register maps via 'config' data is a slippery slope.

I'm not sure I get what you mean, there are dozens if not hundreds of
drivers doing it exactly that way. What is the difference between having
.data pointing to a register map and having .data containing a model
number and then use that model number to get the register map?

of_device_id::data definitively isn't config data as the DT describes
the hardware, not the configuration.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
