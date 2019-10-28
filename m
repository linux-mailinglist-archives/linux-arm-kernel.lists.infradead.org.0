Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E0EE7549
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3BRrcRjHv39h3zpo6H5gSg6o5VggSK+SPWj+eUnr0Q=; b=WoU6TQ5uHCOcJM
	gDZ4JpMs1ETyzqCiNYpIcGh5fIbMusLJGIDlVLq2ETBFcBprQXAGJ0vtKAIzT8TxyXdVDfc3pdBa3
	ZmIuJDOARzZovOshrlviqBPnxC9KBdpMC+Hn8ieS1Zl35qh8Y+VW27OrHIfEDAXLmffMfd0w9oy5D
	4I314YGVsx3S0xMQz6MHvN7GsxbMuIuBsTx+mkv5Av85ifHBSbMxK86tmdLqmGdRFFL2SqwAqIkbE
	TshylJo/q5WZyezw50EujkNzapbiQ9PxyjXp5FQAD2WG60vfmMLNMHZxQXNJNj6/1SEhm033YDC57
	eu4O2Y7oES7C+S9EW/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP74Y-0001o6-Qf; Mon, 28 Oct 2019 15:36:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP74P-0001nb-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:36:38 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CEE1208C0;
 Mon, 28 Oct 2019 15:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572276996;
 bh=ymo9rl9CtwjArSQnfFPyty8tp1BY+ffoTl/pqxOlMJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dydQ8BCY/oWvaNr7y/rrFiwxqN7tEIACyy3Kx6qUkXvclMnnCBVfk6NzLkhzdBLbE
 Czf1eVRDF/OtyUbA9RcyKjUILeyDa3mGUdP5tPphPU3Ii8+ltKhyqK6SdE9c5kNXZ8
 HsQgObTenXdM8WzMQKTZpL7DpsrMfN2PKCHgVCU0=
Date: Mon, 28 Oct 2019 16:34:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock =?utf-8?Q?ex?=
 =?utf-8?Q?plicitly=C2=A0?=
Message-ID: <20191028153427.pc3tnoz2d23filhx@hendrix>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175625.8011-5-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_083637_573207_4B4E6365 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 11:26:22PM +0530, Jagan Teki wrote:
> Usage of clocks are varies between different Allwinner
> DSI controllers. Clocking in A33 would need bus and
> mod clocks where as A64 would need only bus clock.
>
> To support this kind of clocking structure variants
> in the same dsi driver,

There's no variance in the clock structure as far as the bus clock is
concerned.

> explicit handling of common clock would require since the A64
> doesn't need to mention the clock-names explicitly in dts since it
> support only one bus clock.
>
> Also pass clk_id NULL instead "bus" to regmap clock init function
> since the single clock variants no need to mention clock-names
> explicitly.

You don't need explicit clock handling. Passing NULL as the argument
in regmap_init_mmio_clk will make it use the first clock, which is the
bus clock.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
