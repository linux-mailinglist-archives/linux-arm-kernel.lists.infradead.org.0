Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A70D175DC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B67XrOCtcopvbNzZww9hoHqhKWi32mpN7ntEqi6zHPQ=; b=IT1zAeXwq86zf3
	qlxwIlMWF/4WqAoTL9NRz4VXjXmFjbuXSDuCH0bcJjoWTYVyio6/pEfjmS4YfzqbcSLZDVPypABiS
	UjCmBQB39TbMO47ua3yBDddaBoqvsRcL7jIdFU0ZXo8JmQJJtP3jFX5FwlM7ckDIOx24XqyyotU3k
	NuczOkQt0cFSIS90oaQBHSXL7G9i65RAj2HsNudTtpJoWcPyudHzf2DXWmhyRlb+Ifog2dZkSJng1
	NQ1vu/wroO7Vpa28+oe8TIN7VaGdFQnR4tL//6VPM3LVfhx8//EsfzimK27ngYePIR3T1zpXTbi50
	yETKlDXPj2Cd3unYXtWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mZt-000166-BS; Mon, 02 Mar 2020 15:01:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mZm-00013C-61
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 15:01:47 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 664C6809F;
 Mon,  2 Mar 2020 15:02:25 +0000 (UTC)
Date: Mon, 2 Mar 2020 07:01:37 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy
 platform data
Message-ID: <20200302150137.GP37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-2-tony@atomide.com>
 <20200224233111.gkctx27usfxj2wgz@earth.universe>
 <20200224234333.GD37466@atomide.com>
 <20200227174424.GI37466@atomide.com>
 <8b27dba3-2e2b-84ce-0927-685f4bfe3ab2@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b27dba3-2e2b-84ce-0927-685f4bfe3ab2@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_070146_268581_E929F030 
X-CRM114-Status: GOOD (  13.82  )
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
 Suman Anna <s-anna@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Jyri Sarha <jsarha@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200302 10:29]:
> On 27/02/2020 19:44, Tony Lindgren wrote:
> 
> > > > FWIW, I dropped omapdss-boot-init.c in my patch series updating DSI
> > > > code to use common panel infrastructure, so this will conflict.
> > > 
> > > Hey that's great :) Sounds like we can set up an immutable branch
> > > for just this $subject patch against v5.6-rc1 to resolve the
> > > conflict. I can set it up for Tomi or Tomi can set it up for me,
> > > whichever Tomi prefers.
> > 
> > Do you want me to send you a pull request for just this one patch
> > against v5.6-rc1?
> 
> It's probably easier if Sebastian drops the removal patch, and instead
> creates a patch that removes the panel-dsi-cm from
> omapdss_of_fixups_whitelist. That change should not conflict, and
> effectively makes the omapdss-boot-init.c a no-op.
> 
> We can then remove the file later.

OK for resolving the merge commit that works too.

Tomi, so do you care to ack the $subject patch though so I can set
up an immutable branch for us for the $subject patch?

Or Tomi, do you want to set up an immutable branch for me for the
$subject patch?

Regards,

Tony


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
