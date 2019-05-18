Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E1822268
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 10:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rilgM4FRVFPNBHh6NFc0L/s+/Lt55XiFpfeEDmeuBH8=; b=QW/pX9wN832xPn
	79eBn5IYnDg4Pg7IurGnyxAEcW9HAQ7p9yCHseivr3Wd5HYGx4g6dKLrMT+cenS+IsVvQrAS1OwLl
	DM3H7vXXAg/ImIQ5cbpekeY3jRYMhwMzydgCz2eOD5mUMqM1tkEJiO7+PO2T2MqpTSD/oCdxH/Jcr
	yWsyaa5P3u5zEyqxvNQhdJ0dLE0DVz0IWcxq7NX4zcQgWlRFNyqsALwexi4oDRKXMN4mn7zyk2vxX
	7L1p6GL6/mPrxA+CZAovl5LMhw/QAw7SERwM/C0L2tNzpQZwpfprLBrhSqtRx/JMczr4HCtB7ImJz
	kouGZUZoK1Hbnj/4RAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRv8I-0003Dw-90; Sat, 18 May 2019 08:55:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRv89-0003D6-OT
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 08:55:51 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91DFD206BF;
 Sat, 18 May 2019 08:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558169748;
 bh=eW30US+1ShrTXtzi6QRLnFCjDmgs7AvKH0a+6LYVU78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qkRdxRCf61Dw+UE7QahGm1+1IgCaOiisoeS+nF+67YaTq//Yc7Teyv656RypU9OlI
 Yt2pMfWn8pJGLm9EEsdcbh9O75Vd+WsacyGIt4txI+jh26+JF1oOX+s8lzGv9DCDeb
 GblPmZ4cKBDJxhs5sXb2u3MoDAIVch9vYwSwrKtw=
Date: Sat, 18 May 2019 09:55:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] iio: adc: sun4i-gpadc-iio convert to SPDX license tags
Message-ID: <20190518095540.26dc2055@archlinux>
In-Reply-To: <20190512132505.q2j2tpplw3gkl245@flea>
References: <20190512083241.9191-1-tiny.windzz@gmail.com>
 <20190512132505.q2j2tpplw3gkl245@flea>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_015549_815018_9B36C3AF 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: lars@metafoo.de, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, wens@csie.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 12 May 2019 15:25:05 +0200
Maxime Ripard <maxime.ripard@bootlin.com> wrote:

> On Sun, May 12, 2019 at 04:32:41AM -0400, Yangtao Li wrote:
> > Updates license to use SPDX-License-Identifier.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>  
> 
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> Maxime
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
