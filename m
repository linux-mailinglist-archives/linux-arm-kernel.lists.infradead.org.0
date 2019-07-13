Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A2367BE9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 22:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo7AiYh+qWYDgKzUwSkjGVY2VK946u3Q7/MoETG4oxA=; b=Lw3fu2+TZ+2exE
	IwlyRZeYh0F4zyHlz79L1mw2RAMNhZpWjEFVQiJkM2Lkpp2QGy35lRw59mh+/GKJtO3ifHtf02Lpa
	10WLfdJrEJZD0quEJIj67fmGN4laSbUfMyym50L2Dy/RQdGpSKxWRlwNSrcE0afcvmimirLvbwsFD
	GlPkqz5ScDGqD8rsnGWuP9bSg3LV6OTJTJqAhs8tABnrjK/+/JzF1eoB/RYywvtK7okPdXuTd6e5B
	3U0E0LphqkT5NBkhWS864OtBjOhR640i8rUtVRzqjkLNu/hjrvlWqQU28rZMpe5oOkEuVbtJN/Y/q
	0Lu1b/hX1Lk+cnfWiSLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmOXv-0004IK-52; Sat, 13 Jul 2019 20:23:03 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmOXj-0004Hx-42
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 20:22:52 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jul 2019 13:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,487,1557212400"; d="scan'208";a="169238922"
Received: from mwajdecz-mobl1.ger.corp.intel.com (HELO mara.localdomain)
 ([10.249.128.127])
 by orsmga003.jf.intel.com with ESMTP; 13 Jul 2019 13:22:18 -0700
Received: from sailus by mara.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@linux.intel.com>)
 id 1hmOX3-0000J8-6W; Sat, 13 Jul 2019 23:22:09 +0300
Date: Sat, 13 Jul 2019 23:22:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <20190713202207.v7t2t3r24amctxvf@mara.localdomain>
References: <1562923580-47746-1-git-send-email-prime.zeng@hisilicon.com>
 <20190712072145.gr3dbfvdfgrye6yi@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712072145.gr3dbfvdfgrye6yi@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_132251_208911_23C45476 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, kishon@ti.com,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Zeng Tao <prime.zeng@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 09:21:45AM +0200, Maxime Ripard wrote:
> On Fri, Jul 12, 2019 at 05:26:04PM +0800, Zeng Tao wrote:
> > The phy framework now allows runtime configurations, but only limited
> > to mipi now, and it's not reasonable to introduce user specified
> > configurations into the union phy_configure_opts structure. An simple
> > way is to replace with a void *.
> >
> > We have already got some phy drivers which introduce private phy API
> > for runtime configurations, and with this patch, they can switch to
> > the phy_configure as a replace.
> >
> > Signed-off-by: Zeng Tao <prime.zeng@hisilicon.com>
> 
> I still don't believe this is the right approach, for the reasons
> exposed in my first review of that patch.

I agree.

The very reason for having PHY type specific structs is to allow configuring
the PHY independently of the PHY device. This patch breaks that.

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
