Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302CC18A248
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:24:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loHb1Y1eJb+Baor2SXDsOuWr0B2b8953peRl25XdC8c=; b=gLyQqt2FALHJ2e
	Ow7XF56sgpbpCKnx1FLPmgyg+vMYEQmJWMHGnLBVSWfN08o6Xbhl8tzmiScXWr/Z65xYhEjmzYMji
	kplb1sKhAJIZirBJ+Ow6p3HyF/vDEYHXPhfzb6DjuqzzqKwaJGIRd4j5UVLfJGzQ4xgjOWFyP2evk
	52iy6sI9CkrY8cGWJ199bW83q1+KP4Lu5tOorcdeIDwssnwg5f4Ukk2YsQc+68LZRXm5Qeu+BdjTP
	LPxg67JvAV8pOTBpLXw3X2KXqMQlCK57XIWhVs/Uz0GAMYdvHcx1qbUsJzjtXuAadJuD9OLPxiSrD
	/i8YflXvqmCxUhTLQ8SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdMG-0007Sb-3Q; Wed, 18 Mar 2020 18:24:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdM0-0007Rq-5x
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:23:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69E1A2077E;
 Wed, 18 Mar 2020 18:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584555823;
 bh=aZEDZJRdrXhE++b4T7A09QeifAD5cam+S1ZxdnS3pkc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCEGogAGA0oyySUCABWIV7CNnFz/PEdTbzV5FyZ6IYymyFiZPAdeNG2hbcHE13lGM
 jhsV0G4iIvYyPJ9b4nuOdz3SnpXh+3epIidbNmtfZc3OAlHHbeYAorcTocoWGhizGd
 vOfrAhn/INttfPs2++1NwDyoFBVgtho/+55WtUwg=
Date: Wed, 18 Mar 2020 19:23:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 01/13] coresight: cti: Initial CoreSight CTI Driver
Message-ID: <20200318182341.GB3235688@kroah.com>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-2-mathieu.poirier@linaro.org>
 <20200318132241.GB2789508@kroah.com> <20200318181226.GA18359@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318181226.GA18359@xps15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_112344_237983_9B682B6A 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:12:26PM -0600, Mathieu Poirier wrote:
> > And shouldn't this just be a single value, this looks like it is 2
> > values in one line, that then needs to be parsed, is that to be
> > expected?
> 
> There is no shortage of files under /sys/device/ with output that needs parsing,

Then they need to be fixed.  Seriously, we've been doing this and
fighting this for 15 years, not giving up yet! :)


> but this can be split in two entries.

Please do.

> > Where is the documentation for this new sysfs file?
> 
> All the documentation for sysfs files are lumped together in a single patch [1]
> that is also part of this set.
> 
> [1]. https://lkml.org/lkml/2020/3/9/643

As I reported in the other email, that is not the correct format to use.

> 
> > 
> > > +const struct attribute_group *coresight_cti_groups[] = {
> > > +	&coresight_cti_group,
> > > +	NULL,
> > > +};
> > 
> > ATTRIBUTE_GROUPS()?
> 
> As with all the other coresight devices, groups are communicated to
> coresight_register() and added to the csdev->dev in that function.

Ah, ok, missed that, sorry.

> > > +static struct amba_driver cti_driver = {
> > > +	.drv = {
> > > +		.name	= "coresight-cti",
> > > +		.owner = THIS_MODULE,
> > 
> > Aren't amba drivers smart enough to set this properly on their own?
> > {sigh}
> 
> Would you mind indicating where?  builtin_amba_driver() calls
> amba_driver_register() and  that doesn't set the owner field.

Yes, it doesn't, I'm saying that the amba bus code should be fixed, not
that this is a bug here, just complaining in general :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
