Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECB021924
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsA78ovJREP99gvtDy1l+HLNVesw0LN8/kJp39MkWTQ=; b=MJXQw2zEVHLrdv
	5i0C9lO9xU0d+AfrrrUxLyEWm6e37ssT+zjR/eWie483VxO6ikVOem9KEuk3I5oeGsifaaosPhmXI
	e5C6P3Cghx4DxglVLTYyuEC9JUH0z5MMW+dgnA4ejRR+pxchd3XfjD6xyf5MuCVrzfjD4u4LN1qZx
	LCegxgIiMMwRHTeJYlidb5NteyPXyN91BWW30VIiqSvGJM2yrMZbl1rciGB2C4By9G3m+gGHAXV5u
	rCg5IwYXqKAP+2FMZYwYoq+1jiZOe/Jkv3AmTaf6E3w+/r7mGUebZQe5fV3NSQdBmWucR7nfuafAH
	5DIMVsimxrVTy2ALfBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcsv-0005da-Cg; Fri, 17 May 2019 13:26:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcso-0005dB-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 13:26:47 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13C8420833;
 Fri, 17 May 2019 13:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558099606;
 bh=L1T/CjI2CXrURC2xwi9wBISFCiQw8PtNr3cvrnKls5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TIzksbOW7giCcM+++rVfSgWMogXCiWutl93YyWFUw5XmIPxqpco5nySQVyAlrYERV
 SsNVuubXH5KuDqNkMyQiftrGolKjit6RlWB2p40xlxCyfweUGPROqLX0iDD8fC7IIR
 WGvdBE0GY12X5Cq+P7nl1KaF8bVxkMFrCwtLeNEg=
Date: Fri, 17 May 2019 21:26:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: Introduce the NXP LS1021A-TSN board
Message-ID: <20190517132600.GD15856@dragon>
References: <20190506010800.2433-1-olteanv@gmail.com>
 <20190517010450.GT15856@dragon>
 <CA+h21hos=kHRGq089=3Js2pPnW71BBv02rqiMqPcZFe_bzBUHA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hos=kHRGq089=3Js2pPnW71BBv02rqiMqPcZFe_bzBUHA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_062646_453691_0F6FD93A 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 03:05:59PM +0300, Vladimir Oltean wrote:
> Hi Shawn,
> 
> Thanks for the feedback!
> Do you want a v2 now (will you merge it for 5.2) or should I send it
> after the merge window closes?

It's a 5.3 material.

Shawn

> The "nxp,sja1105t" compatible is not undocumented but belongs to
> drivers/net/dsa/sja1105/ which was recently merged into mainline via
> the netdev tree (hence it's not in your tree yet).
> The situation with "ad7924" is more funny. The compatible is indeed
> undocumented but belongs to drivers/iio/adc/ad7923.c. I don't know why
> it lacks an entry in Documentation/devicetree/bindings/iio/adc/.
> However I mistook the chip and it's not a Analog Devices AD7924 ADC
> with a SPI interface, but a TI ADS7924 ADC with an I2C interface. I
> can remove it from v2 since it does not have a Linux driver as far as
> I can tell.
> 
> -Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
