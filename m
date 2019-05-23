Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86D27CE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NE/aEYzDc5p5vVhUefDEG8r9RndbQmCCRCkRkDFflN8=; b=Vv/36MCeSyHg+2
	a7jwd21ghAQgGxe9kGi57HqciKGjdDrLjEZjh/i1R1KPAjT0vwaSGwMfgy95W9sFls9I5mP6DE/FE
	XL9UR3jdI4WMvOUPax2ge1sn30XHO4KpXCYFuDGQIstOu26qIinNnPbTIbQh3oFCMXFjVJJXIYOyh
	6dPIDsvjEMaPTs+pj+QWXYzerZo86g7tijBgPDkW+P6DN/4PPXpazojINTBs8/IvJzKvBBdkREQpC
	uO3FGAXypT4PkssJAolx6nEVYHUsiY3PBQhjzR/H1aBEnv2CSE0iwM8l1Fr121AShgXMLHLlcsPNG
	aU03D8n8UqXg3hfnqBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmsL-00030s-5S; Thu, 23 May 2019 12:31:13 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmsD-000304-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:31:07 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 97A7A68AFE; Thu, 23 May 2019 14:30:41 +0200 (CEST)
Date: Thu, 23 May 2019 14:30:41 +0200
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 5/6] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20190523123041.GB15685@lst.de>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065400.BD9EB68B05@newverein.lst.de>
 <20190523090540.nhxrjpz3scx6jt23@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523090540.nhxrjpz3scx6jt23@flea>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_053105_945538_B4F602E6 
X-CRM114-Status: GOOD (  14.72  )
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:05:40AM +0200, Maxime Ripard wrote:
> > +Optional properties:
> > +
> > + - Video ports for RGB input and eDP output using the DT bindings
> > +   defined in [1]
> 
> The output node can be optional, but the input one is probably going
> to be needed all the time, since otherwise you won't be able to fill
> the output port of the upstream device in the graph.

I guess so. A sibling product brief (anx9804)
https://www.analogix.com/en/ttlconvertersbridges
references it as
| LVTTL to DisplayPort 1.2 _transmitter_
so it will probably always be used on the output side.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
