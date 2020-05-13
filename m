Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F4F1D1208
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1rJdv3exvsVNHGuPmOXuTT92TfFdKx15QTpcq2bQQM=; b=oOSbpQiE53ID9x
	trfmkB4PkvgiYw8pJRTjCZJ/tg6kG4+stS+mWaSK7hNKxXS5m3ZP2wKarGytEySB9sd9QdgA9srbf
	VvcLCtFybuBszLsFwb69zyw8z3EKZS7eXy9C/9kq6kcbQvNZ0HR2blRIk9cTtsaO0agpAibfM9JwX
	DnZoga5THR7WMBoR9rsbJK9iaWXWOBGndZEee8mpedzMnTo2HlVRIafKlCmnB/513hcXqAtQlu4Yc
	ZF+Ejjp7ONvBM5SZZ+w4y98N/KZAlnjTiRGGzX4d0m/IxSIjXabXzdo3CUw7yKEQGl11ZcjoIoLET
	Cls8GJKxMBAhyX59yy+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYq1z-0003IQ-Oh; Wed, 13 May 2020 11:58:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYq1r-0003Hc-93; Wed, 13 May 2020 11:58:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8996620740;
 Wed, 13 May 2020 11:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589371106;
 bh=AzQ1GBsA7vb+t+sUqdhpDj5pFQccxwb/vacxaCIKKwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=veu54zijFTH9tV9hdep4oqmKRxlo+9/yg1yax/JmUfYmhty8mC9xQt4bNL0BuSlFC
 orkh9kp754J4DzatlKprBvYa+aUOjx7weYxvCNttblmgA0qv7E6YOp5j+PDrfKDu+p
 jhNi0N0h1hXgNDBNneUKt7u1RMSETOfVkcToZ7HI=
Date: Wed, 13 May 2020 13:58:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH V3] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
Message-ID: <20200513115823.GC953616@kroah.com>
References: <20200510101308.10451-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510101308.10451-1-john.oldman@polehill.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045827_338731_8C52375A 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, nsaenzjulienne@suse.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 11:13:08AM +0100, John Oldman wrote:
> Coding style issue
> This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
> v1: Initial attempt.
> v2: Resubmitted with shorter comment line, as suggested by Greg KH.
> v3: Resubmitted with descriptiuon text moved into the comment area.
> 
>  .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> index 1640906e3929..993535bbc479 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> @@ -15,10 +15,10 @@ static   int                        g_once_init;
>  static   struct mutex               g_connected_mutex;
>  
>  /****************************************************************************
> -*
> -* Function to initialize our lock.
> -*
> -***************************************************************************/
> + *
> + * Function to initialize our lock.
> + *
> + ***************************************************************************/
>  
>  static void connected_init(void)

Shouldn't that really be written as:

/* Function to initialize our lock */
static void connect_init(void);


No need for the /****** mess, and no need for the blank line.

Simple and clean is best.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
