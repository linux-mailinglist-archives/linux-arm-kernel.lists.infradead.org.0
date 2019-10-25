Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3436E41C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n989O47UBO/xZ/I2lGLuKCCIN8KvEm+CJHgT/YvnW5o=; b=JXYfrAA+U2jLnD
	OFD7wSem/FV0Sp5KEW5H92Qv2vrt5mkwFfwrl1O+XnIlgWXwakdlnPhYEQPFztPfciwslsArfGvKd
	h8LJVIqlHGrWYDNd8A1GUO9KQ61KgwBRsPbsfQfXavkobRcDTXd0FrntumrYydlGeMAWA7lRe4YA5
	ZjfNgecrZz7edQV2U1vL/DwnROhCVP8X1c1v1+FOjaIjfLEyOhC2CuVB/Hxu9ibiEzw/UEJ10jnY2
	sc6FixAa1HRDfUyXUihqS0GSmOxKrEpMewiRV9e5ZL55ysbCEmFZ8R1M5+BuGYEX8BHp+p0XL5CEh
	84+AfPYrAMW1o6IJyQJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpef-00080U-4y; Fri, 25 Oct 2019 02:48:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpeQ-0007zn-JW; Fri, 25 Oct 2019 02:48:32 +0000
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45FF521D71;
 Fri, 25 Oct 2019 02:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971709;
 bh=YjIrWYi+vq47WqR5MSAO03FVUzkLa1Xz/MTdPOUAoMM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDzhOoB0Qe5Ftev/sS98DxeVb7fInMY1jJghpagE8EWRAVSaRFhU74QDCu7wnn66+
 M2Wut3on9i4CjvY6rEFQ4+F0xdXE+FxPKpAuHOD9miNQfXFMbMgsI9j1h+CvgwY2mE
 xxrpQ6ZvN3zg1cNmlE2oJdugoCTkIYYRCdh+Riqg=
Date: Thu, 24 Oct 2019 22:42:05 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: add space to fix check warning
Message-ID: <20191025024205.GA331827@kroah.com>
References: <20191015230922.11261-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015230922.11261-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_194830_662232_C5954CB1 
X-CRM114-Status: GOOD (  13.47  )
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 12:09:22AM +0100, Jules Irenge wrote:
> Add space betwen operator to fix check warning.
> Issue detected by checkpatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> index dbb6a5f07a79..192c287503a5 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> @@ -163,9 +163,9 @@
>   * by suspending parsing as the comment above says, but we don't.
>   * This sweeps the issue under the carpet.
>   */
> -#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
> +#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
>  #  undef VCHI_RX_MSG_QUEUE_SIZE
> -#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
> +#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
>  #endif
>  
>  /* How many bulk transmits can we have pending. Once exhausted,
> -- 
> 2.21.0

Path does not apply to my tree at all :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
