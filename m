Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DC7EB336
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52OWUG38tH6u4HmcfsJU031Kf3RzJdE0ycyJLrBVC/c=; b=EYhbd96GvRx0lA
	gg93W06pE5rMNtZS/XzAufz4xZMe/CLX+RFHqU9sMn+wjD/ZaeIbUX9PRbE3XjgLM9XQ/6QDt1zkd
	p+USPnRdpQhIF2+nxN1aQqIi/U2f2PT0sQhqGZS8Tx9LvLBNaF5U5uaCw4BSgIQgGs5TunNwoIM37
	J5b0PM/xzhAvwvb29EPF44vk3iDF8rXOtKJ1taJS/z0tAg5f1072D+FYKQI+6RSvmOwwCD75utGFX
	D8n593Q17lT/crFQfanXAFmIVSo+/vuVVYZIROAjIf1ZQhdv7m6SoXptBdiS7t2rUDrKvSKqq29eC
	CxOdqQM41OiJfiWpys2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBoW-0002Aw-8R; Thu, 31 Oct 2019 14:52:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBoL-00029s-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:52:31 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 0102D68BE1; Thu, 31 Oct 2019 15:52:24 +0100 (CET)
Date: Thu, 31 Oct 2019 15:52:24 +0100
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v4 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20191031145224.GA5973@lst.de>
References: <20191029153815.C631668C4E@verein.lst.de>
 <20191029153953.8EE9B68D04@verein.lst.de>
 <20191031125100.qprbdaaysg3tmhif@hendrix>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031125100.qprbdaaysg3tmhif@hendrix>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_075230_169611_E6E21780 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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

On Thu, Oct 31, 2019 at 01:51:00PM +0100, Maxime Ripard wrote:
> On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> > +
> > +  ports:
> > +    anyOf:
> > +      - port@0:
> > +        description: Video port for LVTTL input
> > +      - port@1:
> > +        description: Video port for eDP output (panel or connector).
> > +                     May be omitted if EDID works reliably.
> > +    required:
> > +      - port@0
> 
> Have you tried to validate those two ports in a DT?

Yes, it validates as expected, like I wrote. Various sources told me that
json-schema is not always straightforward so I assumed anyOf was OK.

> I'm not quite sure what you wanted to express with that anyOf, but if
> it was something like port@0 is mandatory, and port@1 is optional, it
> should be something like this:
> 
> properties:
> 
>   ...
> 
>   ports:
>     type: object
> 
>     properties:
>       port@0:
>         type: object
>         description: |
> 	  Video port for LVTTL input
> 
>       port@1:
>         type: object
>         description: |
> 	  Video port for eDP output (..)
> 
>     required:
>       - port@0
> 
> This way, you express that both port@0 and port@1 must by nodes, under
> a node called ports, and port@0 is mandatory.

That validates, too. Looks better, admittedly. I don't have a strong
opinion here. It's just that Rob wrote in
<CAL_JsqKAU3WG3L=KP8A8u4vW=q_BQWPN-m_c+ADOwTioJ2-cmg@mail.gmail.com>:

| For this case specifically, we do need to define a common graph
| schema, but haven't yet. You can assume we do and only really need to    
| capture what Maxime said above.
(your points back then were port@N descriptions and neccessity for port@0)

Are you sure that "object" is specific enough?

> You should even push this a bit further by adding
> additionalProperties: false to prevent a DT from having undocumented
> properties and children for the main node and ports node.

You mean like

| jsonschema.exceptions.SchemaError: Additional properties are not allowed ('unevaluatedProperties' was unexpected)
[...]
| On schema:
|    {'$id': 'http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#',
[...]
|      'unevaluatedProperties': False}

? ;-)

But yes, this patch series passes even with additionalProperties: false.

In which form would you like to receive the update?

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
