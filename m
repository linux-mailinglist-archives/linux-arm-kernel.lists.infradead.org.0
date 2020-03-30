Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71987197D8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMwQEIXnB5y6fxq6v385Qf84L5J3CAyO4e9NQiGypag=; b=gvncnsHIR53mzH
	IQiPoczuD4U1g1XAwmVr6d8GtGHLerRe/o+jRM5cRsSeMlON6eR4z+43oekyTDXuYN/O0IdTvmPam
	PTEIkLvwD1URrhD/Y9x5jgo+ddh78n7l/IlUStSDQzpf9KQOq2NlR+p0vxoYTV42A/d8rjkSj2IE/
	aKmGDV6eglJW2aB7n5gADhhVOJD4ATIWiKC/uiWVAY37La+QW95HTFHEYPyhSJcfSxV0nwkGvT8kz
	pN6mfwPITPRYMi4HujTRpGPMXY+RPU9TU3HlCLntXLavnlAO0pUz6cZn43Uzlzli1/5d0XaMzuqML
	42kpDVpc2W6XEKXkic5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIupS-0003wE-R8; Mon, 30 Mar 2020 13:51:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIupE-0003sM-5E; Mon, 30 Mar 2020 13:51:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 36C842965EC
Message-ID: <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Fabio Estevam <festevam@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Date: Mon, 30 Mar 2020 10:51:23 -0300
In-Reply-To: <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065136_339950_DB312C13 
X-CRM114-Status: GOOD (  15.50  )
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
Cc: "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>, linux-rockchip@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Fabio, Adrian:

On Mon, 2020-03-30 at 08:49 -0300, Fabio Estevam wrote:
> Hi Adrian,
> 
> On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> > controller which is embedded in i.MX 6 SoCs.
> > 
> > Based on following patches, but updated/extended to work with existing
> > support found in the kernel:
> > 
> > - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
> > 
> > - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
> 
> This one looks like a devicetree patch, but this patch does not touch
> devicetree.
> 
> > +       ret = clk_prepare_enable(dsi->pllref_clk);
> > +       if (ret) {
> > +               dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
> > +               return ret;
> > +       }
> > +
> > +       dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
> > +       if (IS_ERR(dsi->mux_sel)) {
> > +               ret = PTR_ERR(dsi->mux_sel);
> > +               dev_err(dev, "%s: Failed to get GPR regmap: %d\n",
> > +                       __func__, ret);
> > +               return ret;
> 
> You should disable the dsi->pllref_clk clock prior to returning the error.
> 

Another approach could be moving the clock on and off to
to component_ops.{bind,unbind} (as rockhip driver does).

What exactly is the PLL clock needed for? Would it make sense
to move it some of the PHY power on/off? (Maybe not, but it's worthing
checking).

Also, it seems the other IP blocks have this PLL clock, so maybe
it could be moved to the dw_mipi_dsi core? This could be something
for a follow-up, to avoid creeping this series.

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
