Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED0319A7F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veOgayncL/uUiGG7eoi+3SRjXedqT7fsXQCkxAcLuwI=; b=tX/I5OQQ16b/wF
	uLg7AZyhPMzCfCYq1XUjgihRjmlr5A2idXxTkubRS1OWGHO4M/fltxoaGTzgk+hPDM1YOlL7nF+Xl
	rxODB/3KvD0jbPpALmc/5AO8Z7thdmS7TbvPfwl/x5PqxUi17d8pav/Z0V1dPTBL2d0QaefrqYT4a
	cVoVbUXFaXdBVvaIKDru0IifVTGc3RmrNX3Xpa1JVbhZgN1poGjqYHP5IfA0oUC7l0kxyY4MNRgZ/
	oIXbNGvQCPNMj/Pk4Y5Ak4JVMlfdz4EcifBZYoQ4gEvmCZS+OWKw2haRGmBGSCIzm/yUz0oFcV2XK
	0xUeBOXS6ls8ye27NPpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZAG-00035F-Cq; Wed, 01 Apr 2020 08:56:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZA7-00034p-5B
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:55:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5EEC20784;
 Wed,  1 Apr 2020 08:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585731350;
 bh=2lkU7aDUNcZPy67HrpmmAS88AU2gOLJri4GVeA1yePc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bth9ooTGpGk47WkFhb8ZQYTHCLL4rF2ytX6k7MDqKodh7FaLEhpwBDK9nsj5akxoq
 sJQKhJJYAEUN4P5GvCTRkwN8NCD/SyPzdzhJKHcZCAJmsT0wlGanc15oucvzFFbrqk
 z70oKRvJNBQHcZbfxpespBB/JAkbiJKjw3rf1bYg=
Date: Wed, 1 Apr 2020 10:55:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH] tty: samsung_tty: 32-bit access for TX/RX hold registers
Message-ID: <20200401085548.GC2026666@kroah.com>
References: <CGME20200401082749epcas2p2a774da515805bc3f761b6b5a8dc9e3d2@epcas2p2.samsung.com>
 <20200401082721.19431-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401082721.19431-1-hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015551_217844_56AB55D6 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, hyunki00.koo@gmail.com,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 05:27:20PM +0900, Hyunki Koo wrote:
> -	if (np)
> +	if (np) {
>  		of_property_read_u32(np,
>  			"samsung,uart-fifosize", &ourport->port.fifosize);
>  
> +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> +			switch (prop) {
> +			case 1:
> +				ourport->port.iotype = UPIO_MEM;
> +				break;
> +			case 4:
> +				ourport->port.iotype = UPIO_MEM32;
> +				break;
> +			default:
> +				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
> +						prop);
> +				ret = -EINVAL;
> +				break;
> +			}
> +		}
> +	}
> +

Does this mean that reg-io-width is now a required property for all
samsung uarts?  Does this break older dts files?  Or should you
fall-back to the previous operation if the attribute is not there?

And please fix your email client, the headers were all messed up,
causing my initial response to be only sent to you :(

thanks,

greg k-h


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
