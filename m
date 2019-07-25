Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DE9751BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkOzmyzqXWCngYlks6pr9q202erfJk6Yg4JarGvvuT8=; b=qWQ6z4gByh/v/P
	e2ErEpEKy4EQoNTEM/B0e3pOx7Ude0b1XzeVv5EED/sSLmiyflQTrzVUSyI8JQhYbk3+CYRR8Ydqa
	dsyh2lLOeuuaNid+a9n1FR19CODnTcMS0Zn1EieApijJKEQ3iKLz3EgSTRGNBadI4flxLc0XndRIy
	IGKBkaX5BGnIestM4LCez6174QzQkyMzbFCMGL+p76IfNPaDj9zDV5VhTjcbEriGUU4DXipBjIPam
	acLWWNNP7ncQjhjL5KBNvHFX1izs8hM4tK8HP4Vv/3Nbt6lDFl94orQPtRyy9ox4aI4iZhNvxNeJG
	0MCzkbplJR/mqne9Wlvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf3i-0007Jx-SZ; Thu, 25 Jul 2019 14:49:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf3V-0007JY-9z; Thu, 25 Jul 2019 14:49:18 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14462229F9;
 Thu, 25 Jul 2019 14:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564066156;
 bh=w2m48S5hBD6xMNgWFaIjnAEL4n6W/YAcLr/Tg/RrQBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FS8YW7aAsciXRty67KBaUlHnGuFwkgHhA5ojo57vz4fDy2cMTKVn4PZrg4EjtPIuG
 rlCAZrpvqsB6mFSORv9pg1XxuKHlRA76nriRktFLnpyTSXEMORpvGIqLceW15oD6zj
 F6DQqWrpoeGqmXP3amThU978Ja3e1S4R5Ryuseok=
Date: Thu, 25 Jul 2019 16:49:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: vc04_services: fix used-but-set-variable
 warning
Message-ID: <20190725144913.GC29688@kroah.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725142716.49276-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074917_361454_67BE9921 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 10:27:16PM +0800, YueHaibing wrote:
> use variables 'local_entity_uc' and 'local_uc',
> mute gcc used-but-set-variable warning:
> 
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>  variable local_uc set but not used [-Wunused-but-set-variable]
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index cc4383d..04e6427 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2861,15 +2861,13 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
>  		} else {
>  			vchiq_log_info(vchiq_susp_log_level,
>  				"%s %s count %d, state count %d - suspending",
> -				__func__, entity, *entity_uc,
> -				arm_state->videocore_use_count);
> +				__func__, entity, local_entity_uc, local_uc);
>  			vchiq_arm_vcsuspend(state);
>  		}
>  	} else
>  		vchiq_log_trace(vchiq_susp_log_level,
>  			"%s %s count %d, state count %d",
> -			__func__, entity, *entity_uc,
> -			arm_state->videocore_use_count);
> +			__func__, entity, local_entity_uc, local_uc);

Are you sure this is the correct way to solve this?

Why not just remove the local variables instead, as obviously they are
not being used.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
