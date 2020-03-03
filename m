Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54194177AC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23yrbk4sf/3h51uPKJpx7b2lvWvfOUkWHjVfhN76Ibs=; b=lgC99IzhZgtOh3
	l22aUDnYUCtkVYxlBDeLxLUnhPufNKVkaqHNr7mkPQRr/lMvv7GXD2eZbDYqVgI8aCVHTdPj8G1In
	BbdiegC17oz/Vf5XZJMAkQPaFuaUFzz1jNv5NVJovK10mjFS4WqPZA9YY0jm0RYPDpfvkFzcxdKDY
	E8U3nNbU2XbbaIzVgl4giuSWieZVIsPejG5lcmkmd1g+E1ado3ryygx68083/DgraDUNmvvKy7Oxv
	+dvkMhg/Wf7RTrscu4/TMkBUPmZ0wNzUUTgPoEIl2Zv3dxvRnkuenxojUvb10SsOKJBuLnRFf3lxP
	iGUWpoITY5+SaiHIpuBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99ih-00051X-OL; Tue, 03 Mar 2020 15:44:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99ia-000510-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:44:25 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A551480EE;
 Tue,  3 Mar 2020 15:45:08 +0000 (UTC)
Date: Tue, 3 Mar 2020 07:44:20 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 3/3] bus: ti-sysc: Implement display subsystem reset quirk
Message-ID: <20200303154420.GS37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-4-tony@atomide.com>
 <7d4af3b5-5dd7-76b3-4d3f-4698bfde288c@ti.com>
 <20200303151349.GQ37466@atomide.com>
 <8cadd536-668a-4309-1878-7db2362717d2@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8cadd536-668a-4309-1878-7db2362717d2@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_074424_805004_1039781F 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 15:36]:
> On 03/03/2020 17:13, Tony Lindgren wrote:
> > Hi,
> > 
> > * Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 06:03]:
> > > On 24/02/2020 21:12, Tony Lindgren wrote:
> > > > +	/* Remap the whole module range to be able to reset dispc outputs */
> > > > +	devm_iounmap(ddata->dev, ddata->module_va);
> > > > +	ddata->module_va = devm_ioremap(ddata->dev,
> > > > +					ddata->module_pa,
> > > > +					ddata->module_size);
> > > 
> > > Why is this needed? The range is not mapped when sysc_pre_reset_quirk_dss()
> > > is called? This will unmap and remap twice, as this function is called
> > > twice. And then left mapped.
> > 
> > That's because by default we only ioremap the module revision, sysconfig
> > and sysstatus register are and provide the rest as a range for the child
> > nodes.
> > 
> > In the dss quirk case we need to tinker with registers also in the dispc
> > range, and at the parent dss probe time dispc has not probed yet.
> > 
> > We may be able to eventually move the reset quirk to dispc, but then
> > it won't happen in the current setup until after dss top level driver
> > has loaded.
> > 
> > We leave the module range ioremapped as we still need to access
> > sysconfig related registers for PM runtime.
> 
> Ok, makes sense. I guess a minor improvement would be to unmap & remap once
> in sysc_pre_reset_quirk_dss before calling sysc_quirk_dispc.

Yeah well we'd have to sprawl the module specific quirk checks
there too then.

I thought about using the whole module range for modules with a large
IO range, but so far DSS is the only one needing a quirk hadling
covering also child modules like this.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
