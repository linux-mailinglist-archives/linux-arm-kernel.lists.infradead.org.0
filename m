Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58ED11CCAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ3bY1HMdGw/PP/RW8my6tBrFRa3V5OljJBc6CYfeBQ=; b=I9/UcGX2O8frTU
	0569o6ucSmgt4v9tOncOwt1EOV5rYJk2VYwXYazSf4IoA6duvI+Qf8tpbZfR34ZeE+DMZL3P8zl/q
	k95GMnVusEtvz7ti6/MG0wVtAFP1C1fsBjQ+VAE8o+DBGVPwv8eKG5e92RCZqioEYtinpTnIqGcsg
	awPZzShMRx5QwQlUytvlCtSFgd4Zx5ZUGcUb5bdV6vf1ozwNyX1e7NIttGALrW/PUUFePf7awy3lW
	ByV6YMO0JiUr7NdS0u0EBxkQwcaunXflGAxjcA6VmTMxFC072PlK6D8xCXkXUlU7BvAE9+EXbasdM
	vsq2bZZu98Za1IBZsUxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifN8m-0007Ec-Gd; Thu, 12 Dec 2019 12:00:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifN8b-0006er-1p
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 12:00:10 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ifN8R-00078C-2V; Thu, 12 Dec 2019 12:59:59 +0100
Message-ID: <50977f1c8f17cbc1e3ac4f68d6642f1c3bd01b79.camel@pengutronix.de>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>, Chuhong Yuan
 <hslester96@gmail.com>
Date: Thu, 12 Dec 2019 12:59:55 +0100
In-Reply-To: <20191212115134.GA1895@kadam>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_040009_111453_9D1A4869 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-12 at 14:51 +0300, Dan Carpenter wrote:
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> > All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
> > the notifier except this driver.
> > This should be a miss and we need to add the call to fix it.
> > 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> > index 99166afca071..2bfa85bb84e7 100644
> > --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> > +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> > @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
> >  	mipi_csis_debugfs_exit(state);
> >  	v4l2_async_unregister_subdev(&state->mipi_sd);
> >  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> > +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
> >  
> 
> In this case the "state->subdev_notifier" was never initialized or used
> so both v4l2_async_notifier_unregister() and v4l2_async_notifier_cleanup()
> are no-ops.
> 
> We should just delete "subdev_notifier".

I agree with Dan and Hans, the subdev_notifier field and the
v4l2_async_notifier_unregister() call should be removed. Since
this issue was there from the start, the patch can be tagged
as fixing commit 7807063b862b.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
