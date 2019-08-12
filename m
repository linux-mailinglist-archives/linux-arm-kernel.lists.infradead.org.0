Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C507189FAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnJ1bWTor1UdznzTpanpIAF4nAlwN6v1xQII9W95dYo=; b=Ciij/VZ/b0yXDv
	T3lGvln/b6IDndnL04EPo3UmMz18jqB60UDwI77dJWL/7aJ2uPsd7y2pB+4PUjkHSrSkmlfpH5AmP
	Vgdyu9+R71MSHEXS8VZ3yClna0vdJ2kdD7sotfcctAwMyZIStv/35iThVTYmMSpj+WZftLEN4OuM7
	xrDKVpMWYLHuxdmQlAOiQn1fBfCMr2mWCiCI/2pCSqfOyibZEcP/PPGu4n7iNZkLtUKZ2hhBc3Z5d
	+Cagy/U6G7G1c5wkHnCJl+sT9IbgvvEhVEpYw1RJQPlckeMYy5uQsIPA3NUk6UJyzc7cTVolwYEU4
	aN4GNEpGgDIRgfrK1O6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxANG-0007aL-L6; Mon, 12 Aug 2019 13:28:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAN4-0007Zd-3v
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:28:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 97A362834A8
Message-ID: <6c78d1343b92e08c92e568a9e349fe22ac2f4aed.camel@collabora.com>
Subject: Re: [PATCH 1/7] media: cedrus: Disable engine after each slice
 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Mon, 12 Aug 2019 10:28:11 -0300
In-Reply-To: <20190603113827.2nmm5wkycf44aqox@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-2-jernej.skrabec@siol.net>
 <20190603113827.2nmm5wkycf44aqox@flea>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_062822_294544_155F4D2A 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jernej,

On Mon, 2019-06-03 at 13:38 +0200, Maxime Ripard wrote:
> Hi,
> 
> On Thu, May 30, 2019 at 11:15:10PM +0200, Jernej Skrabec wrote:
> > libvdpau-sunxi always disables engine after each decoded slice.
> > Do same in Cedrus driver.
> > 
> > Presumably this also lowers power consumption which is always nice.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> Is it fixing anything though?
> 
> I indeed saw that cedar did disable it everytime, but I couldn't find
> a reason why.
> 
> Also, the power management improvement would need to be measured, it
> can even create the opposite situation where the device will draw more
> current from being woken up than if it had just remained disabled.
> 

While reviewing this, I'm noticing that cedrus_engine_disable can
be marked for static storage (with or without this patch).

Regards,
Eze


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
