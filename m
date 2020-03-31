Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840B6198CD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i+P8tws5xXWrXzTJ1E07P0+11zEznfvmCKzJZpsI1N4=; b=P9sxnESjO+MZBrCbyR44ZApIv
	WkOzzocW5HjvvvMpvAEDslc+xFI1JUAMLbXOPazciB1yEiJDKfb6bmrPUQSM/YNMRbS+JNDUOm3jl
	vOxAx4l3Wo+vBOrBvaDZrhKx2/ud5pkFQezAgwlGybRjIYbH/8EK1rxWAf9q6nqGpG01KgoM16P3M
	VcMRF9R3pNbjxFWbW/dh5tDFdWBsG4n/SldOT6icCrMz44doCyZhbvtAd5N+zFdG+B7sVsfFFyUxv
	lN2WSwglHDcEtDGS7AvMgZVzfO3ejk0DZqt4T2gWFr2hhkC0I/V2th+E270JjTxzTlfnV7dwx78Pl
	pHw1/cmrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJB9w-0000WF-LC; Tue, 31 Mar 2020 07:18:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJB9n-0000VF-Ue; Tue, 31 Mar 2020 07:17:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 867CC296952
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
In-Reply-To: <246bf7c71620021258355c2fc32dd38ac6b0cc45.camel@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
 <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
 <877dz134xf.fsf@collabora.com>
 <246bf7c71620021258355c2fc32dd38ac6b0cc45.camel@collabora.com>
Date: Tue, 31 Mar 2020 10:19:00 +0300
Message-ID: <874ku52dqz.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_001756_118303_4D8ADCBE 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 31 Mar 2020, Ezequiel Garcia <ezequiel@collabora.com> 
wrote:
> On Tue, 2020-03-31 at 00:31 +0300, Adrian Ratiu wrote: 
>> On Mon, 30 Mar 2020, Ezequiel Garcia <ezequiel@collabora.com> 
>> wrote: 
>> > Hello Fabio, Adrian:   On Mon, 2020-03-30 at 08:49 -0300, 
>> > Fabio Estevam wrote:  
>> > > Hi Adrian,  On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
>> > > <adrian.ratiu@collabora.com> wrote:  
>> > > > This adds support for the Synopsis DesignWare MIPI DSI 
>> > > > v1.01  host controller which is embedded in i.MX 6 SoCs. 
>> > > > Based on  following patches, but updated/extended to work 
>> > > > with existing  support found in the kernel:  - drm: imx: 
>> > > > Support Synopsys  DesignWare MIPI DSI host controller  
>> > > >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>  
>> > > >  - ARM: dtsi: imx6qdl: Add support for MIPI DSI host  
>> > > > controller  
>> > > >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>  
>> > >  This one looks like a devicetree patch, but this patch 
>> > >  does  
>> > > not touch devicetree.   
>> > > > +       ret = clk_prepare_enable(dsi->pllref_clk); + 
>> > > > if  (ret) { +               dev_err(dev, "%s: Failed to 
>> > > > enable  pllref_clk\n", __func__); +               return 
>> > > > ret; +  } + +       dsi->mux_sel = 
>> > > > syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); 
>> > > > +  if (IS_ERR(dsi->mux_sel)) { +               ret = 
>> > > > PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: 
>> > > > Failed to get GPR regmap: %d\n", +  __func__, ret); + 
>> > > > return ret;  
>> > >  You should disable the dsi->pllref_clk clock prior to  
>> > > returning the error.   
>> >  Another approach could be moving the clock on and off to to 
>> > component_ops.{bind,unbind} (as rockhip driver does).    What 
>> > exactly is the PLL clock needed for? Would it make sense to 
>> > move it some of the PHY power on/off? (Maybe not, but it's 
>> > worthing checking).    Also, it seems the other IP blocks 
>> > have this PLL clock, so maybe  it could be moved to the 
>> > dw_mipi_dsi core? This could be  something for a follow-up, 
>> > to avoid creeping this series. 
>>  Hi Ezequiel,  pll is the video reference clock which drives 
>> the data lanes and  yes all drivers have it as it's a basic 
>> requirement, so moving it  to the common bridge is indeed a 
>> good idea, however this kind of  driver refactoring is out of 
>> scope for this specific patch series,  because, for now, I'd 
>> like to get the regmap and the imx6 driver  in, once that is 
>> done we can think how to further abstract away  common logic 
>> and slim down the existing drivers further.   Basically I just 
>> want to avoid feature creep as I expect v6 to be  ~ 8 patches 
>> big and the series is already over 1200 lines.  
> 
> Oh, absolutely: if there's one thing I try to avoid is feature 
> creep -- together with bikeshedding! 
> 
> Do note however, that you could move the PLL clock handling to 
> component_ops.{bind,unbind} and maybe simplify the error 
> handling. 
> 
> (BTW, great work!)

Thanks! I'll do the bind/unbind move for the new imx6 driver which 
I'm
adding in this series to make it resemble the existing rockchip 
driver a bit more, then I'll stop short of further driver 
refactorings.

>
> Cheers,
> Ezequiel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
