Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFB27E2A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 20:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNoqX48RAji+RMVT6NEzwZ82Rf7BmZ/W6/ieSC8cm1M=; b=XgoUJvQIZN+AL0
	yD/AHSa/EzPEexGM4t3SupBnMK0akiFqpAGYuhkl9CQHC0okzmRnMf7/+L85VH7gO9Dm+nNlNaZy1
	II3OPQveXxBGvDAHjEByNhdrMCouzQEK8gsDA+5uTxtxH0FGrhuPMMpiuF8vcYyBefrueB8ozGVa/
	ZD+Od4p3x/gggXg9IgQHawFiPO9afOC6VELV5Y7XPI9u2S3jPKD8MopHiSwZVdu4Y3wNxH3sGlfDx
	6lCbM089Tj+mGdfXTN/+b16z076/OFbqylko/k3CMmzeecyTozW7JPGnOvAxjoN9RnPTzRcortxrN
	cbfCtyr5Arp4pY121T+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htGAA-00049G-L0; Thu, 01 Aug 2019 18:50:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htGA4-00048x-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 18:50:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1115D20838;
 Thu,  1 Aug 2019 18:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564685447;
 bh=iypaX9flkaK3Q8qCBiTKr/aCzLz0wU1aeK0olKXwf4I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W1EcYfl8m+R1ejSLs288z28KJrQOliwaTdsPShcIStDrdQ0FyNIrJUvrs2MiJqx5Y
 dP0PoIjSZmzKkRKY98jeYpb3CvXDzBhLgB4DOIrarq6SFOeqMP2E4Iqkhvqos/35vR
 eJrKxCiqqx24N66vQnCKplbFRmC+PKUzR7xLi128=
Date: Thu, 1 Aug 2019 20:50:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 1/1] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Message-ID: <20190801185045.GA31197@kroah.com>
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801172323.18359-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801172323.18359-2-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_115048_255990_3FC95B7A 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 11:23:23AM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
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

That should be:
Fixes: bb8e370bdc14 ("coresight: perf: Add "sinks" group to PMU directory")

I can go fix it up...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
