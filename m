Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1183C129271
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0Wnn0PNaLb1/53XaOMOMjRM9c+S5kA85jV46AdNRSM=; b=GH58DVaxwUHwWz
	1FvfPTp46kiSplFgO0AMeXnSeEpomLHWQYqWCOImLrqOshf7joKKMd+4/Ql/C1uWnwn9/WuGhQjj/
	WEa+5Mgm8AIRBDEREzAQ8Loi2OZRNzZsep6AZ3Wrsi6K5GyXkQxTyyBlPv3d06TqdgxTc+tVXL3lV
	ZiRTcs1pcgGSjpYVU/X6lOhQ0Q0vZ/WdJliz5W/eLJFsvXcdkWUrZAXPi5Cbix92TrOJis+f5E3xq
	E1q4WVLPQ/hFIicX11mfUDLjKpX36elJTDZrz7NRzazlZXXQ34FCYCf9goLqJmHt647FXXprMTpSH
	w2GhJGgMBLQruTM4opNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIR1-00059r-IO; Mon, 23 Dec 2019 07:47:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIQn-000596-8G
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:47:10 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CF9C206CB;
 Mon, 23 Dec 2019 07:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087228;
 bh=7KjJ2JevPcRa1TlUfOqwa3BNNiJI7zpa+MkXa581+DA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DXXln2Mp8LEVVHx37cf+06aDsA+WOYCtPYmpVGH6B6CyjalHgtn9MF+xdogurzE8X
 klpf77y5ZZbB2D78d0x/EKhQ78hzwseFH23OzYbk1/PDO0AZYsssWjdP9Pw5eeusmi
 /3vMYmH/urHdt3ghAtHFpV2fHV7XVU1nwJb/ginE=
Date: Mon, 23 Dec 2019 13:17:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 11/14] dmaengine: ti: omap-dma: Allocate channels directly
Message-ID: <20191223074704.GA2536@vkoul-mobl>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-12-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217001925.44558-12-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234709_312039_9DD8C005 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-12-19, 16:19, Tony Lindgren wrote:
> With the legacy IRQ handling gone, we can now start allocating channels
> directly in the dmaengine driver for device tree based SoCs.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
