Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660AD806F4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 17:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNx65o9+2O08wzJIkbwtZXqj331Jrm3EmDqCkHhGxCc=; b=L4ZTbBahMBuWWh
	aCl7Qr+kzhbp9y2E7/ANG9rxzVMAJGh/od6FujZI4BJB89mEBWPdn04NSRaNiu5RJqjgrdi831Lzj
	dxZY1V/uWcGJUviibzFkiy/0t9hI0kDHvnXrTfrk4Z8oKM1I9K090TTvtlJ6/lzFywJxwsOjnmtbV
	zAttc9gc9UyD0lMvqwb2JUEbh0kqEDFqIsi6xBoLoLa7vvJE0+GZTZnAarMBGL2kCm27JYwmtmTl0
	mYocuzQ44s2MxYbKcwF36WpGDjALjKx0xgrJTQPgWSPnQdYoPTRU+4u0TIs8TtaWeds15vh0G3cvv
	Vm5G+/Rxgsp2hOCS77yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvek-00018T-KS; Sat, 03 Aug 2019 15:09:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htveX-000189-K9
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 15:09:02 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 713E02073D;
 Sat,  3 Aug 2019 15:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564844941;
 bh=CvSRvoCvfnH3vwE3GQcII3LWELkHv2KpyM7B73oc39Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eRVFMsPqAdbGsKqXqMeeyjWwYOGsUZnOTZnB338p05uZO3bYwtZ2nx7WQ1jpJwna+
 vq8frhCNXjQov4cP6XEJ3JZ2iDdttYGdEp69eXqQN+vUUscxfKuUejKYahJW00hEuA
 czIwbxTA9UcIgFUU5Pf2O5ozROEvd9IeZzPRc0IY=
Date: Sat, 3 Aug 2019 17:08:55 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH] ARM: dts: imx25-pdk: native-mode is part of
 display-timings
Message-ID: <20190803150852.GQ8870@X250.getinternet.no>
References: <20190729142316.21900-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729142316.21900-1-martin@kaiser.cx>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_080901_685333_F284EDED 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 04:23:16PM +0200, Martin Kaiser wrote:
> Move the native-mode property inside the display-timings node.
> 
> According to
> Documentation/devicetree/bindings/display/panel/display-timing.txt.
> native-mode is a property of the display-timings node.
> 
> If it's located outside of display-timings, the native-mode setting is
> ignored and the first display timing is used (which is a problem only if
> someone adds another display timing).
> 
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
