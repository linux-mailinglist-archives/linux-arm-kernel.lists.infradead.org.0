Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF36F790D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQyMdvqFrPEc89DnV3QefjCajSt6tuD7BKR6m5yI++Y=; b=qmqYXTn92mmTpL
	fb4h5quouzbY+NSZ0uTSeEdLmd5s0UX6zqEoReNolsohjDl+62G9rSKCnf4jVEJWofy99bC9JNVN0
	tVryw2wwi2gs51+3rYct6oFgBoiu2YcqMcz7NepGkKrb+QMj/TS9G2tYkDiGWjjcvkql5GHwSuFri
	5Phcvfz2Et+SIaBsWDPP/o0AXTvHSOLk9pa89Ne1mDR0NJRuxLZDR30aL/SbLbYbLqr0uu5GBFpMo
	fWuSOlIDZCYJkaTFu+2jx29nNzdbEbYrFNrMoriZXOP+V+hzGLDzR1DxIDId05pvhrdfQZ1iM8r7K
	D1UklN9a7ytUT7D5fwqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Vx-00026C-0K; Mon, 29 Jul 2019 16:28:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Us-0001aE-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:27:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so28301576pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3R1d2gIar4D1s2Pr7MwL/Qft11Lgk/ucazsksts5btY=;
 b=WvtzHlLFXfc6ogQWXbD6YGVxFxozfcTuGDDxKTkCITOA732N/FcNrRUPOC3rtyvNXR
 NmrOkO/pMgXEd57krXAZQ7o/dQ1QkSC41mi5wZqr+8giBed1BGj5Bg+9QmhexxO+A9yR
 ZdAXqP26iJ2233EiMom7yADUUUE7VpnJCWJxummP/sJHd+eaANR9wIsFFxWvUBYWszlf
 rBcKDPtVkPf4rI4+Lx6b96AWxXbRp+Ocy6pcCwEHWCylHAnDrBuHdXRzKGaYmUsmVHTw
 K4+9fvfzZmOAKKe+VwCJcL3oibpyaauWBTN/7n+YG2snHE+OO25XqHhW+R2izEq45ubV
 0u/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3R1d2gIar4D1s2Pr7MwL/Qft11Lgk/ucazsksts5btY=;
 b=IUjG3WF4AtNOQ2eIPkXL27tWDLBnjQ1cPeGXFp6eHuB6GgCSo+w1ClazSict2xWsp/
 VnmcR/CHNPg0h99WqveKnuJm5f60JaAAed0mKIgNqnRwpGsH6JZDPJRcSVuRQqhcwW2i
 bK2kp3gAFAd0j0SC8NvN/Jg7D0J9zb7QQO1ZTvmC4KUTu+adMZBOkUdGvNI8Q5EGURDN
 GhGqlP+qUOIjbzVNAkMfMc9L2shOGExoMw6d+iiSLiuMpgn549HJJfhs9LLxSwA96Kr0
 87OgwXzZ/ELaQdq4ekgyflMt/24Gdd3t37umAnzPmgEIKwwgE/3HmENKk3KzN1p7yP68
 gM+A==
X-Gm-Message-State: APjAAAXtsMCFqERcY3yZqqe8JnRYSqJ3C+tTWzyO2aiEgIHNxdeLewOY
 9XxgjYboRXP7RDQzdqynYYOAUj2gAIc=
X-Google-Smtp-Source: APXvYqx9kdeABE4I39yRlC5dnx5PhjrNntIB1YUFkOZE3pIYMa8tEIdlgqRjc6+wRTtMFDZW67GGyA==
X-Received: by 2002:aa7:97aa:: with SMTP id d10mr19648468pfq.176.1564417657286; 
 Mon, 29 Jul 2019 09:27:37 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p19sm70887105pfn.99.2019.07.29.09.27.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:27:36 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:27:34 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 1/5] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Message-ID: <20190729162734.GA26214@xps15>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
 <20190724114312.1024-2-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724114312.1024-2-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092739_132140_C519067D 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, Jul 24, 2019 at 12:43:08PM +0100, Suzuki K Poulose wrote:
> While running the linux-nex with CONFIG_DEBUG_LOCKS_ALLOC enabled,
> I get the following splat.
> 
>  BUG: key ffffcb5636929298 has not been registered!
>  ------------[ cut here ]------------
>  DEBUG_LOCKS_WARN_ON(1)
>  WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
>  CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G        W         5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
>  Workqueue: events amba_deferred_retry_func
>  pstate: 60c00005 (nZCv daif +PAN +UAO)
>  pc : lockdep_init_map+0x164/0x1f0
>  lr : lockdep_init_map+0x164/0x1f0
> 
>  [ trimmed ]
> 
>  Call trace:
>   lockdep_init_map+0x164/0x1f0
>   __kernfs_create_file+0x9c/0x158
>   sysfs_add_file_mode_ns+0xa8/0x1d0
>   sysfs_add_file_to_group+0x88/0xd8
>   etm_perf_add_symlink_sink+0xcc/0x138
>   coresight_register+0x110/0x280
>   tmc_probe+0x160/0x420
> 
>  [ trimmed ]
> 
>  ---[ end trace ab4cc669615ba1b0 ]---
> 
> Fix this by initialising the dynamically allocated attribute properly.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Fixes: bb8e370bdc141ddf ("coresight: perf: Add "sinks" group to PMU directory")
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
> index 5c1ca0df5cb0..84f1dcb69827 100644
> --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
> +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
> @@ -544,6 +544,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
>  	/* See function coresight_get_sink_by_id() to know where this is used */
>  	hash = hashlen_hash(hashlen_string(NULL, name));
>  
> +	sysfs_attr_init(&ea->attr.attr);
>  	ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
>  	if (!ea->attr.attr.name)
>  		return -ENOMEM;

I've picked this up and marked it for stable.

Thanks,
Mathieu

> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
