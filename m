Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883DEABD89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 18:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4QZ5jGsO4h1YLgwbLIuaBQr4vSiPekfMUVCFngh7o8=; b=dPzDDsVK3/nJte
	PVaEE5tbgK+q+6n7Xu/Gz7WHR8viZCEudTZOZMDJvWVi348EeSoAs1NcwvexhJRAozL7nBTuxFeZD
	GObU2sSHRt1p+SiBcODJbry6CLTTU94E8hBP2puLvuHwEpAnOzdKppRPu0DHOLK3WTS4FCQGMjCOE
	eqowTXq/x9akFzpsm8f0LJR80K9mqp6HNecdDWSNm/U3pYfs5aRhFAZ2qIuk/2FwmlLjsnGRHcCRy
	Mkq87I/wx+NSWArIfrF+HsRGIfjFdxP4x5nv1WjVciorCfRplGefbHObD6ewjn7RuXr6+0yCir1Rs
	ySOWNR1ilh4aYSSL4Njw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Gvr-0003eU-5F; Fri, 06 Sep 2019 16:17:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Gvi-0003dY-HN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 16:17:47 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5A3A280CC;
 Fri,  6 Sep 2019 16:18:15 +0000 (UTC)
Date: Fri, 6 Sep 2019 09:17:42 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/3] ARM: omap2plus_defconfig: Fix missing video
Message-ID: <20190906161742.GE52127@atomide.com>
References: <20190828183351.822-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828183351.822-1-aford173@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_091746_618264_7585D59E 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [190828 11:34]:
> When the panel-dpi driver was removed, the simple-panels driver
> was never enabled, so anyone who used the panel-dpi driver lost
> video, and those who used it inconjunction with simple-panels
> would have to manually enable CONFIG_DRM_PANEL_SIMPLE.
> 
> This patch makes CONFIG_DRM_PANEL_SIMPLE a module in the same
> way the deprecated panel-dpi was.
> 
> Fixes: 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")

Applying all three into fixes. Not going to send out a pull
request for the fixes until next week so it may not land
until after the merge window starts. But looks like these
have been broken since 2018, so not super urgent.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
