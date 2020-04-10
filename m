Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E811A3E1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVJ12kZLwit6j2fw/n5QgHEIoLS5uXvfcJtzvR4JJLU=; b=UxJZbkmLgjzyzI
	eohNDi3b+5Me4ThXhdbn0cOBc6RktdU3XQ+3UhbCfEGgDY/uXRC+PpAU9mxXviKCddnW7jE432I/R
	VImcunyhkBZ0/dVo2hGztNAzh3usATkHddbXiPL0FryscVZmpGbT9XOUXQI5HouAr9JSxhWch9eC9
	LOER+wCqZoeHbVk8v4TcQyUj2DV+VDzRgRvxbGAvSsLHlp6pgTgblCLIFMIhtcWJqEVS6ROnlJUd9
	Dhue6IfvfI4l+RPs/xp9QBbtzBE45BVsyCYa4zVy5lKKdBZoufZOU43KUn+R3zFJ1JiBGBUjLM71m
	vZ/M9g/093ZtRGC8hFpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjDk-0006fu-3j; Fri, 10 Apr 2020 02:16:40 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjDZ-0006eX-E4
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:16:30 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q16so1452230pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 19:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g3ezOHVTu/DVs9eQ5bfvyVgR22CPV+9l8W/1ERsAjaM=;
 b=EjhWVyK8B16rqGj6Gwx5TFqcG4pWyYbL0yI3j0qO+Vgv03KmaDbFUV31ZOkNUKSTQG
 Oo+dPvSSEBlfQd3X2Y1b5mv/P6y/uU73n8TD8YHf0etFsRWXJ4Uyy/N5YbKVNmoqaP/R
 q2BH8emgUM1SUM5ig2Z4BNPG1a9ZMURsoXsRbaZuVAlmJTbpeAowU825GDC+URy4HxIS
 fRsDmlxFFWLYCxO4zl711XVyLlJTr+cWWmvskWRcCz5gAyrKvSGmj3ZgM6vpygv+9L1U
 3hoiykwzzPGrmxqac7T5E6Qk1yb/jIxb4cxrZSDC8ykI1ZO4S5hfyJtW7okCq7W/uaKy
 sGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g3ezOHVTu/DVs9eQ5bfvyVgR22CPV+9l8W/1ERsAjaM=;
 b=s0nC3cndhY7JF2wIqdecT3oEAmi51n9HL9MPP0AiqB1qAwTMP77JvObIf0VSDM6lz4
 WOQlTBtwkOWHChkU1bWhV6nvCBJBrVwVCLzLW2tvOYDJqGUrx3mEy96KwjQJhCz1bpKi
 iTQ27W34Od2IeOOLmpphSghaOgQ7VL3TkbZCRnkUmsN0g50Y1OH6c5BsvR0V79ekzG2A
 BPHYJwB9aqZnY3sy7QP4EHvzvknLrrbeQOcsNNVIdbZq17mZMMDK8hB9KvRdTU94QaZG
 9pvDRVSt07txGrkPoyTmgEFqd2ezkgTFTSh1ONTbnf/jro4a1hp9n6ZoPkqDO4iqHH3D
 m8vw==
X-Gm-Message-State: AGi0PuZBozlgjoajwMQXA58NK4jxDqUD8wpVYeNmqWk2ZQN7O+AgC+cE
 tu8l1MI7SWyqD04ssrs9V17ooA==
X-Google-Smtp-Source: APiQypJNHYZiUTXCViITxQIb0jbA9ZW5wv2BarRhmw9hMnx+q5iry/q6pNmWq864Mk8uqzFlF3vOkg==
X-Received: by 2002:a17:90a:8a08:: with SMTP id
 w8mr2762112pjn.119.1586484988292; 
 Thu, 09 Apr 2020 19:16:28 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm403583pfx.69.2020.04.09.19.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:16:27 -0700 (PDT)
Date: Thu, 9 Apr 2020 19:16:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [PATCH] rpmsg: pull in slab.h
Message-ID: <20200410021636.GZ20625@builder.lan>
References: <20200409211045.12025-1-mst@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409211045.12025-1-mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191629_473854_935D185D 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 09 Apr 14:10 PDT 2020, Michael S. Tsirkin wrote:

> In preparation to virtio header changes, include slab.h directly as
> this module is using it.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

I presume you have some series where you need these? Otherwise let me
know and I'll pick them up.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/rpmsg/mtk_rpmsg.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
> index 232aa4e40133..83f2b8804ee9 100644
> --- a/drivers/rpmsg/mtk_rpmsg.c
> +++ b/drivers/rpmsg/mtk_rpmsg.c
> @@ -8,6 +8,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/remoteproc.h>
>  #include <linux/rpmsg/mtk_rpmsg.h>
> +#include <linux/slab.h>
>  #include <linux/workqueue.h>
>  
>  #include "rpmsg_internal.h"
> -- 
> MST
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
