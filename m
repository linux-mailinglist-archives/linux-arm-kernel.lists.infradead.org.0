Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538E34C0C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paTxmhKRoccUdXxk+v+L2br/CkL53Mv5FGXVrNNb/6w=; b=qfwX+IDg+VG6Uz
	+pQqHol4pGR1Ur7tPExhWPbDUC+c8WEy2hXAkUytWZDC6R9/LXz9fxOq0sqEWmGuAdXt92f3OHigi
	JYizfA/hvpmVGZLf302/eAnaAnFUgbNoEak2iGLHijQ3aKp6mrJ06JhACOWnSyvOU+jOV+xeQMLfl
	k94kUEZW7yq2c8HVyBUlW3OAUh1ynM3y5Va4gNozROzIW1YGyk1qLCayiuwLdDT7gV0q97aXJdWo8
	0oWIiuKf5zz+MuM6dZVjI0nANW7Lt1ehWm6qoG+0RMlchK8caH87xAwIv9+vmGv6x5SNb2DuMqurh
	THQX8Jflq86cAMrPUHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfJq-0002Yk-D9; Wed, 19 Jun 2019 18:28:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfJU-0002YK-1A
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:28:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20C25214AF;
 Wed, 19 Jun 2019 18:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560968883;
 bh=/wNSfQX+r+Mdb+QviSo4bqAAG6leBKa5hm2EX2QSK1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1+2CDxiPq70B6Htl+9JImYWJVjtBI4H8KkHTE14ZAtYWcpQ1hmV2J+pIjrNC6HGUV
 KQMceQcoEevsDncJTM5lO1TRn0Y3D49EeTAlHgvZ1K4mY3HJxiDdM3hgiy/neDnOC8
 vtYVSzKL8hWQ7yGBnI1//nvA79WuSsLYrJKhkBOI=
Date: Wed, 19 Jun 2019 20:28:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 01/45] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
Message-ID: <20190619182801.GB18202@kroah.com>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619172949.4522-2-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_112804_143398_5CC77036 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:29:05AM -0600, Mathieu Poirier wrote:
> Unify amongst sink drivers how the AUX ring buffer head is communicated
> to user space.  That way the same algorithm in user space can be used to
> determine where the latest data is and how much of it to access.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Tested-by: Leo Yan <leo.yan@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-etb10.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 4ee4c80a4354..60e753b1768d 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
>  	writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
>  
>  	/*
> -	 * In snapshot mode we have to update the handle->head to point
> -	 * to the new location.
> +	 * In snapshot mode we simply increment the head by the number of byte
> +	 * that were written.  User space function  cs_etm_find_snapshot() will
                                                  ^^
						  two spaces?  :)

happens everywhere you cut/pasted this comment.  Not a big deal...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
