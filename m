Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8F31A2A48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 22:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qYjbJ3u+gufPHgzZiCEw9df6WCDMrs1QmYvz1ldbPg=; b=UslUoUPzI8woh8
	zXr/ZfWLIAoQm9yGuN4fn1DJcQ42xo7wTgPuITmGi9PIVRsoCJHw9oPId8c2IECBtGkp5/VHTMo6r
	PgL6A4ed3rOmssuqRCHUswwwAfa3bD3c7KMhjGo+rzc2K48VF+XeGanBu8nmRH/StvWqvQ6MBkf0e
	nNxnDkqcSZSuThF+Dv75fOuJKOlkanB5FDPbSr7cTsFViq9bWF351b4ubwby5wvJ4wuzrUoTqS5Zf
	+GRc03g548QuyxU6/JaxdajG+BKPderBKetJ3/yItizHo1RHu45J6WMqeOIw8LV5HvsXN+SuxdbDC
	jZvWtVl31HhluRuMVfvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMHG1-0003ip-Ad; Wed, 08 Apr 2020 20:25:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHFn-0003hf-Am
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 20:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FCin5CxUiqOa42dOBAJeAv8hLhn4PzxcsTEw9e4NZJY=; b=XoxkBf1bGxRc+ttmmvia5OvZE
 oitOH2Yx9geESlq3nazl+qwL1Zcf4HXXYRApOnK0i4z8MNlEFJt2LTp+u/ERpFq03tgqzs7llZQap
 cVk83dH1h6HRrumDZSkAtJgvPqQO66fXqOIcB5Q68w3pPPEHI5k5ZEcghDm8DVCHT54DCGxe1o8cq
 jhfarDU/C7T60Vf4T11sKFZNZK7YgjCb1UE/pU1wXm2MVZAQfHzfqTjeRG0bPOtHHOVKntwYNr9Ol
 qAA9d4r8PbrRWrO7nUwQQpmj1vzZlPyOv45WxEnHXV7WODgTgGxs3J/xXOsefCD0EU2J8SlMI7rnw
 DLBHbG05g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47442)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jMHFO-0008KP-0G; Wed, 08 Apr 2020 21:24:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jMHFF-00027f-Jb; Wed, 08 Apr 2020 21:24:21 +0100
Date: Wed, 8 Apr 2020 21:24:21 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: fsl: dpio: avoid stack usage warning
Message-ID: <20200408202421.GU25745@shell.armlinux.org.uk>
References: <20200408185834.434784-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408185834.434784-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_132455_372496_2E72729E 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>, linux-kernel@vger.kernel.org,
 Youri Querry <youri.querry_1@nxp.com>, soc@kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 08:58:16PM +0200, Arnd Bergmann wrote:
> A 1024 byte variable on the stack will warn on any 32-bit architecture
> during compile-testing, and is generally a bad idea anyway:
> 
> fsl/dpio/dpio-service.c: In function 'dpaa2_io_service_enqueue_multiple_desc_fq':
> fsl/dpio/dpio-service.c:495:1: error: the frame size of 1032 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> 
> There are currently no callers of this function, so I cannot tell whether
> dynamic memory allocation is allowed once callers are added. Change
> it to kcalloc for now, if anyone gets a warning about calling this in
> atomic context after they start using it, they can fix it later.
> 
> Fixes: 9d98809711ae ("soc: fsl: dpio: Adding QMAN multiple enqueue interface")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/soc/fsl/dpio/dpio-service.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/soc/fsl/dpio/dpio-service.c b/drivers/soc/fsl/dpio/dpio-service.c
> index cd4f6410e8c2..ff0ef8cbdbff 100644
> --- a/drivers/soc/fsl/dpio/dpio-service.c
> +++ b/drivers/soc/fsl/dpio/dpio-service.c
> @@ -478,12 +478,17 @@ int dpaa2_io_service_enqueue_multiple_desc_fq(struct dpaa2_io *d,
>  				const struct dpaa2_fd *fd,
>  				int nb)
>  {
> -	int i;
> -	struct qbman_eq_desc ed[32];
> +	struct qbman_eq_desc *ed = kcalloc(sizeof(struct qbman_eq_desc), 32, GFP_KERNEL);

I think you need to rearrange this to be more compliant with the coding
style.

> +	int i, ret;
> +
> +	if (!ed)
> +		return -ENOMEM;
>  
>  	d = service_select(d);
> -	if (!d)
> -		return -ENODEV;
> +	if (!d) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
>  
>  	for (i = 0; i < nb; i++) {
>  		qbman_eq_desc_clear(&ed[i]);
> @@ -491,7 +496,10 @@ int dpaa2_io_service_enqueue_multiple_desc_fq(struct dpaa2_io *d,
>  		qbman_eq_desc_set_fq(&ed[i], fqid[i]);
>  	}
>  
> -	return qbman_swp_enqueue_multiple_desc(d->swp, &ed[0], fd, nb);
> +	ret = qbman_swp_enqueue_multiple_desc(d->swp, &ed[0], fd, nb);
> +out:
> +	kfree(ed);
> +	return ret;
>  }
>  EXPORT_SYMBOL(dpaa2_io_service_enqueue_multiple_desc_fq);
>  
> -- 
> 2.26.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
