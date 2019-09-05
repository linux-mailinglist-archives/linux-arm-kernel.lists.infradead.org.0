Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB067AAEC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 00:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ie397Yxo+AdmBjD8JX9KnCAD5GEp4+TNO3mEGiSD/jI=; b=nLE/rWe648IX/d
	cDc26Evtp3ya2qP5MredCNjmdiHco+hTEYcMwYjizqcf1/yhuhWIvSf0Kf4lxdyuHb2c/vIIZLyai
	sY5f33aVob3PHmZUOSFz767S2gMcEdgmCLOrGmnxats9WsgAWCYfC0U/cwVtOOMqyUh2RYrRRE1PW
	4lSQCfcsp1fG/B6v2ki7DBPL2LaY+d37u8kS33ZMWywJanjPeinHWuaYdbsVt+txpdxLMr6/VIsWm
	uHbHilHovzJ8wH5gAxTOOoS/zCorNOJYDQPmM19Z7Md1/jp6fzbf7IOeyhPRqxTk8dml+xMzT9qZE
	kyXaAFZKdDT834o0rJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60ht-00024A-Ca; Thu, 05 Sep 2019 22:58:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60hl-00022b-1w
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 22:58:18 +0000
Received: by mail-qt1-x841.google.com with SMTP id k10so4941302qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 15:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cQJ+zFOVB6K6WcAR5pcUdxaScO8yDgBnUHh3PD1RXoI=;
 b=DRLNWLd8+ETk0QluxLV9XbJORwoyXqRnnMYnVOBDD3zYwbylkOWFJ9gnaLgf67l6lx
 nXrg/tuOjFYwZIV0I+VrcVrJkKhHNQpBWin4HyZMDKQBhKhYx5WvbWrP0f46reaSkrFx
 E+fkGTnUHj+R9/vYM863tugJRlR8AfObMEQe0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQJ+zFOVB6K6WcAR5pcUdxaScO8yDgBnUHh3PD1RXoI=;
 b=TLj6BwwQlWvIAjSLRh9LDOLjpKfWVhKTICql5e+pXkOJ/H1oAxoX4BdqzzXbcdPnGM
 9mQFn+5/0BrgtoEz3xV0mvRnLYePS0OEChyGy2l04hh9GWV1/NZHiiWmlq1jhQfX/q+T
 CsCebG1yYUqP5ZdhQT8rDcqPyry7JLMlibNGgE5gT5IdFxyQlkP5CDBzZpZ/f/ktBDaL
 T3/7cTd+1MuQUqiBRGiArHUnEG9qXoKaSyr/qPEeUSS+wHSUNVPQadVYXSLwoPlidxUz
 WKj4vXK1Jk73P8oRCDhe7D84NJdg/oCdULVPTvO/ZYhvxIstvkYItN+QeeQowcSGsfV3
 4l7A==
X-Gm-Message-State: APjAAAWBgDrACk7m9z4jvluxXdF2pbmpIIQrqubN8BDA2uMpy7/Hcm2A
 AM768D5RcJvbqkZ70/+4FwBxjdLBajkQWI2ilPtpng==
X-Google-Smtp-Source: APXvYqzxEctUy2fVNhmlBa2d060jbs6jhMPm3vNuZR/XdvJM98rLVHL7XY+TYTWbR9KnwSaB7/U5fV5KOs5bQUPWGMg=
X-Received: by 2002:ad4:540c:: with SMTP id f12mr3741489qvt.104.1567724296065; 
 Thu, 05 Sep 2019 15:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190819083009.GC6133@paasikivi.fi.intel.com>
 <1567676465.21623.100.camel@mhfsdcap03>
 <20190905104546.GA5475@paasikivi.fi.intel.com>
 <CAAFQd5Bh-11D9RR9WVH5A3DbXZoxWhbMhXSNKUV25mempMi+ag@mail.gmail.com>
 <20190905160512.GG5475@paasikivi.fi.intel.com>
In-Reply-To: <20190905160512.GG5475@paasikivi.fi.intel.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Sep 2019 06:58:05 +0800
Message-ID: <CANMq1KDVMGkeBvu1nO5WHopWwec9mxHfhmLmX2BzvaYVLzxoXw@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_155817_125476_BABDC0D2 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Tomasz Figa <tfiga@chromium.org>, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 12:05 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> On Thu, Sep 05, 2019 at 07:53:37PM +0900, Tomasz Figa wrote:
> > On Thu, Sep 5, 2019 at 7:45 PM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > Hi Dongchun,
> > >
> > > On Thu, Sep 05, 2019 at 05:41:05PM +0800, Dongchun Zhu wrote:
> > >
> > > ...
> > >
> > > > > > + ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > > > + if (ret < 0) {
> > > > > > +         dev_err(dev, "Failed to enable regulators\n");
> > > > > > +         goto disable_clk;
> > > > > > + }
> > > > > > + msleep_range(7);
> > > > >
> > > > > This has some potential of clashing with more generic functions in the
> > > > > future. Please use usleep_range directly, or msleep.
> > > > >
> > > >
> > > > Did you mean using usleep_range(7*1000, 8*1000), as used in patch v1?
> > > > https://patchwork.kernel.org/patch/10957225/
> > >
> > > Yes, please.
> >
> > Why not just msleep()?
>
> msleep() is usually less accurate. I'm not sure it makes a big different in
> this case. Perhaps, if someone wants that the sensor is powered on and
> streaming as soon as possible.

https://elixir.bootlin.com/linux/latest/source/Documentation/timers/timers-howto.txt#L70

Use usleep_range for delays up to 20ms (at least that's what the
documentation (still) says?)

> --
> Sakari Ailus
> sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
