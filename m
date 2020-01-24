Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA5514770F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPGjWUVWz6Rl7Tplns85g1Sj6mDebioMRLSWDwAIGyI=; b=iK2Abc0L5GpTKV
	FphQfB+khSaoormnTMonmmh31SCmLpAUmn2dGeAsBkdZ9c4Ld298GtjLsvFYS2Z/SNx/9fnnYcEo/
	9LQpClQ3oZ6QXpMOwIBn22mZY9d8nknn6YOy3CqA8PruseOoBIQj6h2lAb65wxBUqPG1dSBR64vrJ
	NhruiA65Va6U6d43YmOlNeYa8RutIZ9UpLigWuIi3NHfZ63tPHjoXW/mDlLkw5Pcrl+0BmS4PHQmV
	NzFQQf1qo2AFj899UB5quB27GdxWzLvom3C7+5YLDRzMmsLSg+WgMcCsZ6Aaw39+vtkOAp4kvSSCO
	ILwqxOhT4uiDTxsFMiYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupEo-0002fB-TW; Fri, 24 Jan 2020 03:02:26 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupEf-0002eR-3m
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:02:18 +0000
Received: by mail-pj1-x1041.google.com with SMTP id r67so393128pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 19:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vTpqRdteOFP7ZcUKKdjIBwigRkGTjIfqlFVk01LKeUs=;
 b=AWLYeAtQi+DDW+tQOMkc23VJYZNYDwCGM1IVtnrGRGaFNMOla/hH2Vou0nCBvIQmjf
 YcDzV0SCP2nK9OxCkILwOybQSLYbGkUyvVvJvkk+77Rth+MRvlobNyHkjSULTYLJyNzE
 uhSAGwwHPXEcN5uOdYI34kEB2c7m8UJ3t+kWvzunHmlg3sV6J97JLTJJzAwyvBu7Qs1p
 K6Rmj6RmO/FGB9n4vAQr+LstTBdURtNnSleaRwgyqNdifUBujb/SkopMMvbEf48ctpPu
 dDoB9r3QSA89vOLu7YeDPFZTWLaguagfmV+1V3eDrnwVjj1/aLk74nGznbvgLlYWVtk1
 1rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vTpqRdteOFP7ZcUKKdjIBwigRkGTjIfqlFVk01LKeUs=;
 b=XJffN5xRMEo/BKL06xqvPmwxAzqmACIp4R9cEKBsXPVwuWFMz1EpuUAHNN3+U2a1RY
 XqvmL3FKrhCxcoYLYnUDPNN62htIl82x4GOJ5BuOJtdjfVBsYbdSVT1hfQQgHmT+oKIm
 CpxOe1x1+4SGNBrPX8/wt0ZLGTYhFCFo/vYUbShzxnpvrft8PNz49Yp4HA/jpyIToMfp
 HGHFOpVY9PqXLfml2g5sn4zyyQp5+0iNErDEf1jPi2HOLXe9+gSSc5+oEkDfcS0mX9Ip
 Eo54zjWkqs4BMk/wsp74HYVAeGKo2OtZYt+uYCST23F7V57oeZyFbmpIM1p5F1lu7gQz
 ONjQ==
X-Gm-Message-State: APjAAAUHaOmnTylxnaM6VhgGqCuzZ9w/XBaM1eyShUtsTL8BA1nc5sgJ
 8ugvPugBnfI/19ksN064qzzfSA==
X-Google-Smtp-Source: APXvYqxFmHyQNmdE9Cw5xHuQqhPiMRcWFPKciwPTJk2JTeinIi9gmZqfrNUUJiK4j5ttuD1ioSjAZA==
X-Received: by 2002:a17:902:708c:: with SMTP id
 z12mr1285339plk.15.1579834934905; 
 Thu, 23 Jan 2020 19:02:14 -0800 (PST)
Received: from localhost ([122.167.18.14])
 by smtp.gmail.com with ESMTPSA id o184sm4239310pgo.62.2020.01.23.19.02.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 19:02:13 -0800 (PST)
Date: Fri, 24 Jan 2020 08:32:12 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200124030212.qjlzz75dgt5kla7t@vireshk-i7>
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <20200122121538.GA31240@bogus> <20200123103033.GA7511@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123103033.GA7511@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_190217_166305_4F10C033 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-01-20, 10:30, Sudeep Holla wrote:
> WARNING: CPU: 1 PID: 187 at drivers/base/dd.c:519 really_probe+0x11c/0x418
> Modules linked in:
> CPU: 1 PID: 187 Comm: kworker/1:2 Not tainted 5.5.0-rc7-00026-gf7231cd3108d-dirty #20
> Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Jan 16 2020
> Workqueue: events deferred_probe_work_func
> pstate: 80000005 (Nzcv daif -PAN -UAO)
> pc : really_probe+0x11c/0x418
> lr : really_probe+0x10c/0x418
> Call trace:
>  really_probe+0x11c/0x418
>  driver_probe_device+0xe4/0x138
>  __device_attach_driver+0x90/0x110
>  bus_for_each_drv+0x80/0xd0
>  __device_attach+0xdc/0x160
>  device_initial_probe+0x18/0x20
>  bus_probe_device+0x98/0xa0
>  deferred_probe_work_func+0x90/0xe0
>  process_one_work+0x1ec/0x4a8
>  worker_thread+0x210/0x490
>  kthread+0x110/0x118
>  ret_from_fork+0x10/0x18
> ---[ end trace 06f96d55ce6093a8 ]---

linux-next didn't had a WARN at line 519 and so I looked at the
difference between your and my branch and reached to this patch:

commit 7c35e699c88bd60734277b26962783c60e04b494
Author: Geert Uytterhoeven <geert+renesas@glider.be>
Date:   Fri Dec 6 14:22:19 2019 +0100

    driver core: Print device when resources present in really_probe()
    
    If a device already has devres items attached before probing, a warning
    backtrace is printed.  However, this backtrace does not reveal the
    offending device, leaving the user uninformed.  Furthermore, using
    WARN_ON() causes systems with panic-on-warn to reboot.
    
    Fix this by replacing the WARN_ON() by a dev_crit() message.
    Abort probing the device, to prevent doing more damage to the device's
    resources.
    
    Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
    Link: https://lore.kernel.org/r/20191206132219.28908-1-geert+renesas@glider.be
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/base/dd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index d811e60610d3..b25bcab2a26b 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -516,7 +516,10 @@ static int really_probe(struct device *dev, struct device_driver *drv)
        atomic_inc(&probe_count);
        pr_debug("bus: '%s': %s: probing driver %s with device %s\n",
                 drv->bus->name, __func__, drv->name, dev_name(dev));
-       WARN_ON(!list_empty(&dev->devres_head));
+       if (!list_empty(&dev->devres_head)) {
+               dev_crit(dev, "Resources present before probing\n");
+               return -EBUSY;
+       }
 
 re_probe:
        dev->driver = drv;


-------------------------8<-------------------------

I think this defines the problem somewhat, though I wasn't able to
reproduce the problem on my platform :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
