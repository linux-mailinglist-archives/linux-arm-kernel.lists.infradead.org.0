Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87728177A2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vf1aXWpjUZbfFLoI6aU3qPZcs/KamhcTt9ibQhCJpJ4=; b=UofWOQGtSlGtG5
	sR3+kYa7VCVRKRvItuj22etgEiKJ32xT2cBA+vDCU8Bs+n1Gh2P2sqzrWBMHAT1cbNSIftmwi1xCe
	iP5PUbghKvLD/+bYynayByLmoPRpRrMrQWTwv/fV7knPuLzhHmjP1mmMtlnKh5x/PB0nuxIw2854y
	wWhvOTj4va66j5+Bz10llx/KiViipB+NJiOhVINzgdl0GPUIRdmMg3Us6r2s4fpCtF/kc+JAFDakN
	qkPo50ryKArqqE4MLCBgulf7OZvNYZ4Q4hjMJQHqpeeRJW8ea/gd/+ia5cy+47VbP3v6Qof+AbXwh
	4TdF/1ij7R5C0RU3W+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99FD-0000Gt-Vn; Tue, 03 Mar 2020 15:14:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99F8-0000Ft-A8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:13:59 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9BD6180EE;
 Tue,  3 Mar 2020 15:14:37 +0000 (UTC)
Date: Tue, 3 Mar 2020 07:13:49 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 3/3] bus: ti-sysc: Implement display subsystem reset quirk
Message-ID: <20200303151349.GQ37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-4-tony@atomide.com>
 <7d4af3b5-5dd7-76b3-4d3f-4698bfde288c@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d4af3b5-5dd7-76b3-4d3f-4698bfde288c@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_071358_390660_87BCE216 
X-CRM114-Status: GOOD (  18.00  )
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

Hi,

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 06:03]:
> On 24/02/2020 21:12, Tony Lindgren wrote:
> > +	/* Remap the whole module range to be able to reset dispc outputs */
> > +	devm_iounmap(ddata->dev, ddata->module_va);
> > +	ddata->module_va = devm_ioremap(ddata->dev,
> > +					ddata->module_pa,
> > +					ddata->module_size);
> 
> Why is this needed? The range is not mapped when sysc_pre_reset_quirk_dss()
> is called? This will unmap and remap twice, as this function is called
> twice. And then left mapped.

That's because by default we only ioremap the module revision, sysconfig
and sysstatus register are and provide the rest as a range for the child
nodes.

In the dss quirk case we need to tinker with registers also in the dispc
range, and at the parent dss probe time dispc has not probed yet.

We may be able to eventually move the reset quirk to dispc, but then
it won't happen in the current setup until after dss top level driver
has loaded.

We leave the module range ioremapped as we still need to access
sysconfig related registers for PM runtime.

> > +	if (!ddata->module_va)
> > +		return -EIO;
> > +
> > +	/* DISP_CONTROL */
> > +	val = sysc_read(ddata, dispc_offset + 0x40);
> 
> Defines for dss/dispc register offsets could have been copied from the
> platform display.c and used in this file.

Yeah I though about that, but decided to keep everything local to
the quirk handling. We could have them defined in some dss header
though.

> > +	/* Clear IRQSTATUS */
> > +	sysc_write(ddata, 0x1000 + 0x18, irq_mask);
> 
> dispc_offset instead of 0x1000.

OK

> > +
> > +	/* Disable outputs */
> > +	val = sysc_quirk_dispc(ddata, dispc_offset, true);
> > +
> > +	/* Poll IRQSTATUS */
> > +	error = readl_poll_timeout(ddata->module_va + dispc_offset + 0x18,
> > +				   val, val != irq_mask, 100, 50);
> > +	if (error)
> > +		dev_warn(ddata->dev, "%s: timed out %08x !+ %08x\n",
> > +			 __func__, val, irq_mask);
> > +
> > +	if (sysc_soc->soc == SOC_3430) {
> > +		/* Clear DSS_SDI_CONTROL */
> > +		sysc_write(ddata, dispc_offset + 0x44, 0);
> > +
> > +		/* Clear DSS_PLL_CONTROL */
> > +		sysc_write(ddata, dispc_offset + 0x48, 0);
> 
> These are not dispc registers, but dss registers.

Ouch. Thanks for catching this, will include in the fix.

> > +	}
> > +
> > +	/* Clear DSS_CONTROL to switch DSS clock sources to PRCM if not */
> > +	sysc_write(ddata, dispc_offset + 0x40, 0);
> 
> Same here.

OK

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
