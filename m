Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872AD1B7866
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8/PHDit3iYG16xf6DhbNs6No0pQk1ncObUUenBM19k=; b=RgQJPYGS/+ak6e
	/JIb/bDkgs/iVVei8Js37SXO0ZFjYgTGKWeKdIlRVJagI/+8RHqPclN29lGGvRmyXAS780dCts9WI
	6NtFGh+xr7pj0Nga8a/0xDeK3wu66n78wYuV6ocjKkbf+lN6DP1gUwOSsG7mw6ciR6Oe6IKUkr64A
	gEmK11pkbP+hWaVvHFcP0UOWAD9gvqmhQ1/o5NQSAAFjYuN3XxTc9fzuh6MM1+Jhpts5rHsahB7Xy
	As/6pJxXnzZVGR3s0ra37ISrO2zqBVSzCmMBAPSMQLeqQc8FXh7BlC15Rgo7x3pOTNTKkuhImESTC
	uQjDn5Sp1MVo5bhB3nVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzQS-0003f8-5C; Fri, 24 Apr 2020 14:35:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzQA-0002Wq-O7; Fri, 24 Apr 2020 14:35:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5159B2A2DEF
Message-ID: <ad0310d6618cd8cd8a88c0eaf27ae83432a61344.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30
 compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date: Fri, 24 Apr 2020 11:34:59 -0300
In-Reply-To: <20200424135552.GI610776@aptenodytes>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
 <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
 <20200424135552.GI610776@aptenodytes>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_073515_005068_E8942EDF 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, justin.swartz@risingedge.co.za,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-04-24 at 15:55 +0200, Paul Kocialkowski wrote:
> Hi Ezequiel,
> 
> On Fri 24 Apr 20, 09:54, Ezequiel Garcia wrote:
> > Hey Paul,
> > 
> > Thanks for the patch!
> > 
> > On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> > > The PX30 SoC has a RGA block, so add the associated compatible to
> > > support it.
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > >  drivers/media/platform/rockchip/rga/rga.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> > > index 9d122429706e..4fb4615662b7 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.c
> > > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > > @@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm = {
> > >  };
> > >  
> > >  static const struct of_device_id rockchip_rga_match[] = {
> > > +	{
> > > +		.compatible = "rockchip,px30-rga",
> > > +	},
> > 
> > Please note that if you don't have anything px30-specific,
> > then you don't need the compatible in the driver.
> > 
> > You can have something like:
> > 
> > compatible = "rockchip,px30-rga", "rockchip,rk3288-rga"
> > 
> > so you need to add it to the bindings. See Justin Swartz
> > recent patches for rk3228.
> 
> Thanks for the instruction!
> 
> I've been a bit confused about that because RK3399 has its own compatible
> (without a 2nd rk3288 compatible) although there's nothing different with it
> either. All of these rockchip platforms come with what they call "RGA2", that
> seems to have no variation across platforms (downstream rockchip even has a
> single compatible for it).
> 

Yep, and that's an anti pattern, so you can expect to see that elsewhere.

> Should we add the rk3288 compatible to the rk3399 dtsi? I guess we
> can't remove it from the driver at this point, for backward compatibility
> with previous dts (what a strange idea...).
> 

No, we don't necesarily need/have to do anything with rk3399,
not sure if there's any gain at this point.

> > Down the road, if you find something specific for px30,
> > you can make the driver aware. 
> 
> Makes sense, yes.
> 

Cool.

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
