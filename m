Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4127D12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHvzyr0k/6KCztV6mWj35AsY7EW/ZtV+G7MBZ3A8uX8=; b=ic7laLZY85csVS
	JLcVIMA1QLA7kLiwaf5qZSG8iiW779w9BnePdh7pgEQ64kif6M2fxFxuUVxq9M0oOCpj73mOBII63
	hcMVcYmRe83oCJUMg9hkRDBin6Nw3Ghlucj09bGTzZkt2/6T2nPS/8WjpgBAFmg5n8MmI//COnoDk
	TBFlz1WSdK4SSErJbbyU/jbTLr8vMR9wTTw2ygz7iWFJjZlwN116vbYrUAeas4KhxcWB57zKpP7+s
	vs1EAf4fLQSv8sxaWLm2Lu7onevo2GZ2XZ/yFIMskUCtHFPCtZDMXieyPT+3heH93sA7rF4v7SXYz
	pv5NrJLIOS+iCEVUkU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTn6J-0000Lf-P5; Thu, 23 May 2019 12:45:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTn6D-0000LG-1w
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:45:34 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 139CB68AFE; Thu, 23 May 2019 14:45:09 +0200 (CEST)
Date: Thu, 23 May 2019 14:45:08 +0200
From: Torsten Duwe <duwe@lst.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 4/6] drm/bridge: Add Analogix anx6345 support
Message-ID: <20190523124508.GC15685@lst.de>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065356.0734568BFE@newverein.lst.de>
 <20190523075041.GC4745@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523075041.GC4745@pendragon.ideasonboard.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_054533_249016_51315FCE 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:50:41AM +0300, Laurent Pinchart wrote:
> Hi Torsten,
> 
> Thank you for the patch.

Thank you for the thorough review!

> On Thu, May 23, 2019 at 08:53:56AM +0200, Torsten Duwe wrote:
> > +{
> > +	struct anx6345 *anx6345 = connector_to_anx6345(connector);
> > +	int err, num_modes = 0;
> > +	bool power_off = false;
> > +
> > +	mutex_lock(&anx6345->lock);
> > +
> > +	if (!anx6345->edid) {
> 
> Could the chip be used with a hot-pluggable display, or is it guaranteed
> that EDID will never change ?

The chip itself is capable of (e)DP hot-plugging, so the signals suggest.
See the previous discussions about what to expect on the output side.
Currently, the driver does not handle hot-plugging.

> > +
> > +	err = drm_of_find_panel_or_bridge(client->dev.of_node, 1, 0,
> > +					  &anx6345->panel, NULL);
> > +	if (err == -EPROBE_DEFER)
> > +		return err;
> > +
> > +	if (err)
> > +		DRM_DEBUG("No panel found\n");
> 
> Shouldn't this be fatal ?

No, basically same as above. On the output side, there can be a panel,
another bridge, or some eDP plug. If the DT didn't explicitly specify
a panel or a bridge, we can still generate video output as soon as
there is valid EDID data.

Your other points went straight onto my TODO list.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
