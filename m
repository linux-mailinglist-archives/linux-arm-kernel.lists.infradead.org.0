Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F96112134
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 02:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qTMuEqjKmdGBnqmF4HClZ3xSF97RKWuwUOb/2o2I6Q=; b=O9z3pHRs75gkjJ
	wB1yXAW8iffTbLc/bgLdhCK8C3bOjM6pxV1+HjHWgFfLD8DsNN1cBcNZrCpv32YuIT2aVbRnHsuKT
	+Jft+n0owWMIoM7QVB6JHLcfwqy62qhYl2NUHYkMi5GN0GcK+Vvf/nb2SudpqYpR2il4udG+sDUzm
	y69ZgGDkjYabDA+HKkwiNQAPnJgWAq1rlRlyX+yR8TZ68wadTTV5L3kfLyzw8SNmRCbuTRexVi4YM
	XQMTRPnmg1E4zKWu9Jz8wsdYTl9UcA7TU+J9ZE6JsZmY33rpuAGz7cCS54Uzclnjw+7UQT17/sqFH
	uZ6XwWkRxL5HT5UUngYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icJu1-00047A-9P; Wed, 04 Dec 2019 01:56:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icJts-00046A-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 01:56:23 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D486205ED;
 Wed,  4 Dec 2019 01:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575424575;
 bh=JMIovwGkg6BkV85by6dfJ05laRnmJWc/lf3o2OZmB4E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uPTi0jOL2X/jVyN9vBibhLaI+ju/EaX6koENDUesJUYB3Wp+RK0audVVpyoazZKp0
 O2nEDH9Brf2x7c4gY419nOypEdGmrVTnFnmQ405YoMzTKU5ye+d1dINd5kVDSavJcJ
 KgJk/JFvsYj3Ym89x2eTjJ1f8cnVaRqIk7AeQkyY=
Date: Wed, 4 Dec 2019 09:56:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Message-ID: <20191204015605.GJ9767@dragon>
References: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
 <20191202081948.GD9767@dragon>
 <20191203090339.A36CA20661@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203090339.A36CA20661@mail.kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_175620_209149_376E6010 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 01:03:38AM -0800, Stephen Boyd wrote:
> Quoting Shawn Guo (2019-12-02 00:19:49)
> > On Fri, Nov 01, 2019 at 10:16:19AM +0000, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > > 
> > > There is a lock to diviver in the composite driver, but that's not
> > 
> > s/diviver/divider
> > 
> > > enought. lock to gate/mux are also needed to provide exclusive access
> > 
> > s/enought/enough
> > 
> > > to the register.
> > > 
> > > Fixes: d3ff9728134e ("clk: imx: Add imx composite clock")
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > 
> > Other than above typos,
> > 
> > Acked-by: Shawn Guo <shawnguo@kernel.org>
> > 
> > Stephen,
> > 
> > I assume you will take it a fix.  Otherwise, please let me know.
> > 
> 
> Is this a critical fix for this merge window? I'm not sure it is
> important so I marked it as "awaiting upstream" and assumed you would
> send it on up later.

Okay.  I queued it up.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
