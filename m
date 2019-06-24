Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F1750271
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkD4eTIf0K8mKJTYAPexa3nTr5MIyZL6hw1O9ni1B0M=; b=cfTNDOPqX0WWyr
	l3kjhh41yHH+ku3VtnShkP/8GArZAzD46tIRD7Fah8ZrMuxOLgB1PheckUAfGO+pnR9yPp7fwypq7
	TxtDLd0ZWgAWx6uZfH9xWGYB8GdOWsnJtXudJDjjRKGP1TMTQKMvjDV7VMQoLM+/DMtrgBEkGS/ka
	n1kwGkobT0h0WPo0ry2bqr0uhDFKHauijFNNcS04U55HF34YEWFuxqR/uArb9d58OY1E2cQQSq8e2
	ER0FdWHTo+hPh8aqNLwyeFgqc0oRHJODkfXVRCRepgk8bZWqzvOt2jC+GJjXCLmBCCf6Au11nOW1X
	kW0UVG8JLSMRDbRj53/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfId6-000801-Qj; Mon, 24 Jun 2019 06:39:04 +0000
Received: from 178.115.242.59.static.drei.at ([178.115.242.59]
 helo=mail.osadl.at)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIcr-0007yt-KX; Mon, 24 Jun 2019 06:38:52 +0000
Received: by mail.osadl.at (Postfix, from userid 1001)
 id C37BB5C02F0; Mon, 24 Jun 2019 08:37:18 +0200 (CEST)
Date: Mon, 24 Jun 2019 08:37:18 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while
 holding a spin_lock
Message-ID: <20190624063718.GD31913@osadl.at>
References: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_233849_862191_A00FB1DA 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, tuomas.tynkkynen@iki.fi, rjui@broadcom.com,
 hofrat@osadl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, tobias.buettner@fau.de, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 07:33:51AM +0200, Christophe JAILLET wrote:
> Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
> sleep. Use GFP_NOWAIT instead.
>

checking for this in the rest of the kernel with a cocci spatch
<snip>
virtual report

@nonatomic@
position p;
identifier var;
@@

  spin_lock(...)
  ... when != spin_unlock(...)
* var = idr_alloc@p(...,GFP_KERNEL);
  ... when != spin_unlock(...)
  spin_unlock(...);
<snip>
this seems to be the only instance of this specific problem.

> Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")

The GFP_KERNEL actually was there befor this patch so not sure if this Fixes
ref is correct - I think the GFP_KERNEL was introduced in:
4e6bafdfb9f3 ("staging: bcm2835_camera: Use a mapping table for context field of mmal_msg_header")

> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>

> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 16af735af5c3..438d548c6e24 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -186,7 +186,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
>  	 */
>  	spin_lock(&instance->context_map_lock);
>  	handle = idr_alloc(&instance->context_map, msg_context,
> -			   0, 0, GFP_KERNEL);
> +			   0, 0, GFP_NOWAIT);
>  	spin_unlock(&instance->context_map_lock);
>  
>  	if (handle < 0) {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
