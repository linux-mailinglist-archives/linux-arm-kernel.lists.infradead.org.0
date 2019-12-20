Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2201275A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 07:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNvJWoue3eX9fiyQlQmiAiyD+fbWTTvMTYY+ZqHIUis=; b=E46qM/kZLZH+5v
	8jsvR+4OOLx31rNCbsaYE4PByXmg9btQ022rVqN/LtMRaLeCwjjMU1bzNYar1yVxeoGKx7fMXW8tI
	mFeSEUZwARmDmwm7qdQFZjD3PSJFITI4h7tk3DY00sjYGPjJwoAh2SgEbKeSE8n7cb88cmtN/DddY
	thSy4gDZNTWAqbGMsgyyPb9q01JJM1RUCvhGorfxFGQwAbJNQV/Zh3eVXO25SPksP0mg1Wa3shPzk
	4hGBYuKu0q3jLiI9L9mnSgP31lJBDFYe5LwCqCtUSQduy4GPZESR2+WdIujU901YNroFJtbMgzUpS
	Ks8ti4zVMJnhT2UgLs9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiBe3-0008Nb-Sz; Fri, 20 Dec 2019 06:20:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiBdv-0007j6-V2; Fri, 20 Dec 2019 06:20:09 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBF5B2465E;
 Fri, 20 Dec 2019 06:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576822805;
 bh=v9ILot23daJ7rPOYHq9Zm727Nt33IBlYozS2RKD16XI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pd4Ab08D8JT1mUVlvsnKCYN58TmiBIRhxItpjz7RrKbV2i1JzG9nx79licIl7Ht0k
 y8S42U7bllNuEcYFc9+/fflwaz5Y/kgqCXQM0zkY4OE31cqMLZBlxCxaKCF7KoBkZ2
 5PiUB9R0UbCG5WSIvYCAGdySMvEM/RJVXrabcuBo=
Date: Fri, 20 Dec 2019 07:20:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
Subject: Re: [PATCH 4/4] Staging: vc04_services: Fix checkpatch.pl error
Message-ID: <20191220062003.GA2183431@kroah.com>
References: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_222008_038097_C56FF856 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 f.fainelli@gmail.com, sbranden@broadcom.com, tiwai@suse.de, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, nsaenzjulienne@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 10:44:14AM +0530, Simran Sandhu wrote:
> CHECKPATH ERROR: Alignment should match open parenthesis was fixed by entroducing tabs and spaces on the location
> drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c:349

That is a list of a checkpatch error, but does not say what you did.  Or
if it does, it is not properly linewrapped :(

> 
> Signed-off-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

And where are patches 1-3 of this series?

Please fix up and resend the whole series.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
