Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD486198AD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CQvDlGSMZKt5CN9+ny5OS2QU8PuK6/AWM0AXVmf+ys=; b=dijZAq1okeNBjj
	+Cc+Z/wNArnUQPY+k9ExJB7uB19V/j6Ii2R0LKUuAic14hip+mPlSG2jtLe/pBZgZW2/Gu2bFhxth
	SCZs0TOjelW9I5gxavnzAhdRXGyfalkZsrs1BuOWQ37+Vq+iSCci9kQ65n1kZ9OzzqrlQOJtru5xX
	WriRa0w197OTnNOsZ9DyFMbMA5P2oQ5K2WnHYoE8dWKPJONKooi0yudw1YGaMccGLTdrfDXOyS9HU
	I3rHsDnEiN9FPI88ze4syJP2G3RtKU3ASjbGrmOeaP6Qo+Nnh0916juor6uXCoIZ/SgoX7NhnIQD1
	xQdelnB/nmKC2+SCO03Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8AC-0003Pb-Pn; Tue, 31 Mar 2020 04:06:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8A1-0003Oa-6M; Tue, 31 Mar 2020 04:05:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 614BC29497A
Message-ID: <246bf7c71620021258355c2fc32dd38ac6b0cc45.camel@collabora.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Date: Tue, 31 Mar 2020 01:05:39 -0300
In-Reply-To: <877dz134xf.fsf@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
 <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
 <877dz134xf.fsf@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_210557_368172_2A435CCD 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 "moderated list:ARM/FREESCALE IMX
 / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-31 at 00:31 +0300, Adrian Ratiu wrote:
> On Mon, 30 Mar 2020, Ezequiel Garcia <ezequiel@collabora.com> 
> wrote:
> > Hello Fabio, Adrian: 
> > 
> > On Mon, 2020-03-30 at 08:49 -0300, Fabio Estevam wrote: 
> > > Hi Adrian,  On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
> > > <adrian.ratiu@collabora.com> wrote: 
> > > > This adds support for the Synopsis DesignWare MIPI DSI v1.01 
> > > > host controller which is embedded in i.MX 6 SoCs.   Based on 
> > > > following patches, but updated/extended to work with existing 
> > > > support found in the kernel:  - drm: imx: Support Synopsys 
> > > > DesignWare MIPI DSI host controller 
> > > >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
> > > >  - ARM: dtsi: imx6qdl: Add support for MIPI DSI host 
> > > > controller 
> > > >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
> > >  This one looks like a devicetree patch, but this patch does 
> > > not touch devicetree.  
> > > > +       ret = clk_prepare_enable(dsi->pllref_clk); +       if 
> > > > (ret) { +               dev_err(dev, "%s: Failed to enable 
> > > > pllref_clk\n", __func__); +               return ret; + 
> > > > } + +       dsi->mux_sel = 
> > > > syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); + 
> > > > if (IS_ERR(dsi->mux_sel)) { +               ret = 
> > > > PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: 
> > > > Failed to get GPR regmap: %d\n", + 
> > > > __func__, ret); +               return ret; 
> > >  You should disable the dsi->pllref_clk clock prior to 
> > > returning the error.  
> > 
> > Another approach could be moving the clock on and off to to 
> > component_ops.{bind,unbind} (as rockhip driver does). 
> > 
> > What exactly is the PLL clock needed for? Would it make sense to 
> > move it some of the PHY power on/off? (Maybe not, but it's 
> > worthing checking). 
> > 
> > Also, it seems the other IP blocks have this PLL clock, so maybe 
> > it could be moved to the dw_mipi_dsi core? This could be 
> > something for a follow-up, to avoid creeping this series.
> 
> Hi Ezequiel,
> 
> pll is the video reference clock which drives the data lanes and 
> yes all drivers have it as it's a basic requirement, so moving it 
> to the common bridge is indeed a good idea, however this kind of 
> driver refactoring is out of scope for this specific patch series, 
> because, for now, I'd like to get the regmap and the imx6 driver 
> in, once that is done we can think how to further abstract away 
> common logic and slim down the existing drivers further.
> 
> Basically I just want to avoid feature creep as I expect v6 to be 
> ~ 8 patches big and the series is already over 1200 lines.
> 

Oh, absolutely: if there's one thing I try to avoid is
feature creep -- together with bikeshedding!

Do note however, that you could move the PLL clock handling
to component_ops.{bind,unbind} and maybe simplify the error
handling.

(BTW, great work!)

Cheers,
Ezequiel




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
