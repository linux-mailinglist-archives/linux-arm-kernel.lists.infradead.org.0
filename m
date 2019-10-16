Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B9D993D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 20:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqTN1odXhhuxpwibzA7hT0CRUgXCkgJnaV0t4TBmWEQ=; b=d8P9eWiiMVc974
	RXzqzx1sYiBDx8roJZUNciHe882tVy6O6H1nsyrmepxKb4ggrPe5jqPUuvX/gdOQWY5jRYbX/qJ4A
	DLWAKInEJYqUnQJ4CIAxwC3e5egAe+lxTxaxOddiZI9aj6UKcZLjWscPaiZEzZkzeXGrjD17oZWoz
	cWCo8iqTaL2G5UyXaFasCDKhMhsDvtRXTdkdO8Qn7FSyiWH/Tatrz/Ux0F6iPRIGz94z0pokri9Ku
	HzI14lwaelK7GwoPVXvtbpL7Bc3ip94VFiIhbOdhEaGFrj8DTnasV3yCfM5V4kVXk8F1i0AvM82Hp
	7d+Fc10m+Vo4gggKf9UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKo5A-0001cW-IV; Wed, 16 Oct 2019 18:31:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKo50-0001bm-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 18:31:28 +0000
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6BFE21D7A;
 Wed, 16 Oct 2019 18:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571250685;
 bh=2wAyGU0cUCFqc/8Sq42nh9uu/5+uzjYvLgMet1RoezY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=znZ2ibZLzc9MrZ18ZkPUt9B1GkhgYfZs48gTIYNPKAhAJj+ur1wnb2WgjiTvyD7rE
 /VJ1ImpjowBfY0Yy0lbF6tGBpvspvNwQTnIQUI/StDFOYY+4cb2Pgx1n3dlW6CKi2T
 Lz1SOiwZwIAybVdgHpd15pwIQMy6k5tTIYdf2uEQ=
Date: Wed, 16 Oct 2019 11:31:21 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [stable 4.19][PATCH 1/4] ARM: dts: am4372: Set memory bandwidth
 limit for DISPC
Message-ID: <20191016183121.GD801860@kroah.com>
References: <20191015065937.23169-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015065937.23169-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_113126_977181_04884E88 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 12:59:34AM -0600, Mathieu Poirier wrote:
> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> commit f90ec6cdf674248dcad85bf9af6e064bf472b841 upstream
> 
> Set memory bandwidth limit to filter out resolutions above 720p@60Hz to
> avoid underflow errors due to the bandwidth needs of higher resolutions.
> 
> am43xx can not provide enough bandwidth to DISPC to correctly handle
> 'high' resolutions.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> Cc: stable <stable@vger.kernel.org> # 4.19
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  arch/arm/boot/dts/am4372.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

What about 5.3?  Is this ok there?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
