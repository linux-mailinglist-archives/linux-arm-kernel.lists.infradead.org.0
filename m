Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D4811D6D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtXBMEyK6mQmJ7Yop+kMPp2lMm2Nxd1mmSKLEkPtwMw=; b=Vx5XazWDUQWDgZ
	/YQAmpkUtHBId5hR9HMz+a2FJw71TZTlaKUrxPNf+yf2uA3GPQmE3NzZ42hdvr0/1w/dc0XAhyIsw
	G2/6LkDvAoeMkzr26PInAkKeLX15SiALxPQUpC1t2j3SWg1hAAQmeEMoP8djIbTCmg/mGAJ+fNUGR
	joNcd5C/qOKrrN5rrYrVYx2G45mxlL4HbO0oYcjcGP3Ctb8YrvzSCwuahwZFf3BuFHZrpTbDQf2TR
	l0QkCOz1N4BvETqfp3bPQu58bsTWSkg3MO1+/mTlEeYO3hSEftPjfPa4SAwXYqqtLO+CUOD3HfpFd
	FPk0XQcI1+CRI6MhoSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTpq-00023N-Ce; Thu, 12 Dec 2019 19:09:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTph-00022o-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 19:09:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id d5so3808878wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 11:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IxK9FtGpYJeOUfvnF7MggY9vmvu7+uyxyDOUYBGOZPw=;
 b=XShq7tcKoeE+Txh1DEN5WhLp0eR/w69ZPSSfE+iXxHgHs0gOju6ZXq+p1U1RcRKBWV
 Pf+WEL7yhcSNaso+niPZhq2I8ig9HcwcmRZj7C4V/UAuLNCRpAZKF9uNqdj4kI6+qitF
 wssJMmQKMq541gCc68PXUiZilDMwnSycahaOS/M8D87+Jx+RGR+vA4bDuWm2rJNcMcaI
 XYnurMLbUaQz1lQ1tReQLskTknW118Rbuf61l+6gaoVBCXcTiXVGR8QggDfpmKcnGAiY
 ScpzgnYUw8E4wE6BVOB7oojAGJ256kAey11+LG3HL4J6s1/0DZfZmQKGk6BLrKGcA65Q
 lHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IxK9FtGpYJeOUfvnF7MggY9vmvu7+uyxyDOUYBGOZPw=;
 b=QzijMa/2DZjb+TKt/RcO1hAwvZuo89diCctVv8h44kterk4Ry5T9aC+xptOv3uy7zF
 hQ9H9lWkuEfZgwxdNu5B7PN6JrEOSVqdQabsWZiLO3dYmtgmdbjR3kYFWtKRu++1nzz+
 YlO8d29KGKcgjEI3ZC52fZioCx+qDk/FhHsZs8TRJkHjQ1A7Zn2LEQWHiopile4EBb8x
 zAM4GOvM7iZFRdWyESYfj8yblCC8crjuxV9xPi6XVDwV0ECfF3SA5+kZqMvF3b/S6iM6
 QZ7sE1FLCvJjUqs7QzyQwzDKPpc6po+I5Gvme4gMjdFV2Kb9g6SkBKXvaFQc+VKpsJr3
 X95Q==
X-Gm-Message-State: APjAAAU4dhDBOnljvwIsolvnvZM8l40SlLSg9fYo6goAD02EqLEAT4DX
 eHLEujsgG5G9PJiLbXnVR5Q=
X-Google-Smtp-Source: APXvYqwsF9/+E9ejZwZFR/MJTQSnIfDekPVMn7yz+SlJiFAcLzJ1ytlyj48O3iuSD4HZvW680PcnvQ==
X-Received: by 2002:a1c:2705:: with SMTP id n5mr8858556wmn.68.1576177742710;
 Thu, 12 Dec 2019 11:09:02 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o66sm3322584wmo.20.2019.12.12.11.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:09:01 -0800 (PST)
Date: Thu, 12 Dec 2019 19:08:58 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Message-ID: <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212115134.GA1895@kadam>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_110905_380159_121E3332 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,
Thanks for the inputs.
On Thu, Dec 12, 2019 at 02:51:34PM +0300, Dan Carpenter wrote:
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> > All drivers in imx call v4l2_async_notifier_cleanup() after
> > unregistering the notifier except this driver.  This should be a
> > miss and we need to add the call to fix it.
> > 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com> ---
> > drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c
> > b/drivers/staging/media/imx/imx7-mipi-csis.c index
> > 99166afca071..2bfa85bb84e7 100644 ---
> > a/drivers/staging/media/imx/imx7-mipi-csis.c +++
> > b/drivers/staging/media/imx/imx7-mipi-csis.c @@ -1105,6 +1105,7 @@
> > static int mipi_csis_remove(struct platform_device *pdev)
> > mipi_csis_debugfs_exit(state);
> > v4l2_async_unregister_subdev(&state->mipi_sd);
> > v4l2_async_notifier_unregister(&state->subdev_notifier); +
> > v4l2_async_notifier_cleanup(&state->subdev_notifier);
> >  
> 
> In this case the "state->subdev_notifier" was never initialized or
> used so both v4l2_async_notifier_unregister() and
> v4l2_async_notifier_cleanup() are no-ops.

I have applied this patch on top of Steve's series [0], since by the
timeline I was expecting to be applied before this one, that series
adds a bound notifier, even though, it is not named the same, eheh.

That trigged me to think that this cleanup was correct since a
notifier was initialized in probe.

But as you say, it is a no-ops in the end.

@Steve, that said, it looks that in [0], you will need to add some
unregister and cleanup for the notifiers that you are adding in
several places.

A patch to fix this will follow.

------
Cheers,
     Rui



[0]: https://patchwork.kernel.org/project/linux-media/list/?series=207517

> 
> We should just delete "subdev_notifier".
> 
> regards, dan carpenter
> 
> _______________________________________________ devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
