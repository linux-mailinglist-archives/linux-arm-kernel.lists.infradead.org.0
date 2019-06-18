Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3C34ADF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 00:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7urNAh4ritog0Y1e/AzY0MTNIo1mX2NZpLWswJ3PsJQ=; b=sWlTKAzawywj06
	IXXXLa/KtjKHSiftdsnpxoCrdwSRGr8idtZBdsgEfVblQugfgLtHAD8S/1rjnAKP4SvuObOVvC/OR
	VYtrlyQW74zBFlziHm2r7/Z6Kwh7ZQxPP/Sg5k3c1ciFco4mn6RJzN3EZ+ouwL8/M55ZghMKzldeF
	OQQddHc4++LkTusgiL3NCY3Z/bSIvCNhp7e8J/ftmxsZFKvCMhJ9o5yQS2cdul7kp4AHUy/HNHEkD
	PEcjdf3SbBqmZBzcEtZki9181wsJRlZJVWaxBBnGY8CxloxMbDQpQhO0sXoxNy3bPI+DnJHeS/HSR
	m9rcnFblSRf4s2LOpekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdMqp-0001aR-AQ; Tue, 18 Jun 2019 22:45:15 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdMqS-0001ZU-CD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 22:44:54 +0000
Received: from 79.184.254.20.ipv4.supernova.orange.pl (79.184.254.20) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id a04ace6452f9df28; Wed, 19 Jun 2019 00:44:44 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH v4 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Date: Wed, 19 Jun 2019 00:44:44 +0200
Message-ID: <3448272.3g8bHhgBA9@kreacher>
In-Reply-To: <20190520095238.29210-1-ran.wang_1@nxp.com>
References: <20190520095238.29210-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_154452_581338_4F495345 
X-CRM114-Status: GOOD (  17.63  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, May 20, 2019 11:52:36 AM CEST Ran Wang wrote:
> Some user might want to go through all registered wakeup sources
> and doing things accordingly. For example, SoC PM driver might need to
> do HW programming to prevent powering down specific IP which wakeup
> source depending on. And is user's responsibility to identify if this
> wakeup source he is interested in.

I guess the idea here is that you need to walk wakeup devices and you noticed
that there was a wakeup source object for each of them and those wakeup
source objects were on a list, so you could walk wakeup devices by walking
the list of wakeup source objects.

That is fair enough, but the changelog above doesn't even talk about that.
 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Change in v4:
> 	- None.
> 
> Change in v3:
> 	- Adjust indentation of *attached_dev;.
> 
> Change in v2:
> 	- None.
> 
>  drivers/base/power/wakeup.c |   18 ++++++++++++++++++
>  include/linux/pm_wakeup.h   |    3 +++
>  2 files changed, 21 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> index 5b2b6a0..6904485 100644
> --- a/drivers/base/power/wakeup.c
> +++ b/drivers/base/power/wakeup.c
> @@ -14,6 +14,7 @@
>  #include <linux/suspend.h>
>  #include <linux/seq_file.h>
>  #include <linux/debugfs.h>
> +#include <linux/of_device.h>
>  #include <linux/pm_wakeirq.h>
>  #include <trace/events/power.h>
>  
> @@ -226,6 +227,22 @@ void wakeup_source_unregister(struct wakeup_source *ws)
>  	}
>  }
>  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
> +/**
> + * wakeup_source_get_next - Get next wakeup source from the list
> + * @ws: Previous wakeup source object, null means caller want first one.
> + */
> +struct wakeup_source *wakeup_source_get_next(struct wakeup_source *ws)
> +{
> +	struct list_head *ws_head = &wakeup_sources;
> +
> +	if (ws)
> +		return list_next_or_null_rcu(ws_head, &ws->entry,
> +				struct wakeup_source, entry);
> +	else
> +		return list_entry_rcu(ws_head->next,
> +				struct wakeup_source, entry);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_source_get_next);

This needs to be arranged along the lines of wakeup_sources_stats_seq_start/next/stop()
because of the SRCU protection of the list.

>  
>  /**
>   * device_wakeup_attach - Attach a wakeup source object to a device object.
> @@ -242,6 +259,7 @@ static int device_wakeup_attach(struct device *dev, struct wakeup_source *ws)
>  		return -EEXIST;
>  	}
>  	dev->power.wakeup = ws;
> +	ws->attached_dev = dev;
>  	if (dev->power.wakeirq)
>  		device_wakeup_attach_irq(dev, dev->power.wakeirq);
>  	spin_unlock_irq(&dev->power.lock);
> diff --git a/include/linux/pm_wakeup.h b/include/linux/pm_wakeup.h
> index 0ff134d..913b2fb 100644
> --- a/include/linux/pm_wakeup.h
> +++ b/include/linux/pm_wakeup.h
> @@ -50,6 +50,7 @@
>   * @wakeup_count: Number of times the wakeup source might abort suspend.
>   * @active: Status of the wakeup source.
>   * @has_timeout: The wakeup source has been activated with a timeout.
> + * @attached_dev: The device it attached to
>   */
>  struct wakeup_source {
>  	const char 		*name;
> @@ -70,6 +71,7 @@ struct wakeup_source {
>  	unsigned long		wakeup_count;
>  	bool			active:1;
>  	bool			autosleep_enabled:1;
> +	struct device		*attached_dev;

Please (a) call it just dev and (b) move it up (before wakeirq, say).

>  };
>  
>  #ifdef CONFIG_PM_SLEEP
> @@ -101,6 +103,7 @@ static inline void device_set_wakeup_path(struct device *dev)
>  extern void wakeup_source_remove(struct wakeup_source *ws);
>  extern struct wakeup_source *wakeup_source_register(const char *name);
>  extern void wakeup_source_unregister(struct wakeup_source *ws);
> +extern struct wakeup_source *wakeup_source_get_next(struct wakeup_source *ws);
>  extern int device_wakeup_enable(struct device *dev);
>  extern int device_wakeup_disable(struct device *dev);
>  extern void device_set_wakeup_capable(struct device *dev, bool capable);
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
