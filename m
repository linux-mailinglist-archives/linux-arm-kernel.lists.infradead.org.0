Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6102357B8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOC3WJlE128qgUlZX5b5HNffq6Rv9I8Qn+Xvizkeebo=; b=H+KHbwC3P+ArA4
	AS8YOR0LfYisLg0PxIo/wSOQ8eiWZz1Mlp49jvmyZgpjasVbK3yLidFbS0fAS9D8jqJl+7h378q40
	mZicgYtlAMzI6wlpV+rXk+9rTqbq33+85OTBbxBNOLNIbDPTF+w15Uo69WerLTJ8EDg1FX1xSKZFW
	3+rIaRlCrTSKAHzYeV4xLJ6VaLnVX4buvPnqnkZfiAGnnD+J0PehaFhkKwEMVXF9mucJpOWiDr5Xv
	Qi59K93GGU5VmL0/duZrc9aQuhzO8la+9vnqNrgRzn+FATrQiRW7Pf4GEA4uFTblSDA8K1PO2KmAs
	cE+LWx/f6F/74yDIs24g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN4O-0006tQ-Hk; Thu, 27 Jun 2019 05:35:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsq-0006Q2-QO; Thu, 27 Jun 2019 05:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zKEGWgGLOO8wa/Z64LmAqpyKt1+meTfl+pjPw+yA3JA=; b=GGYXpYa6SXJ3rY1SZNUwQhzY05
 +oE4Dckitzej71Mn5j7hYi5YR9IB4+5ZNZ1Az0NJN5lRGUHnEXrtl2tAMzfoYCPUK8JYrTNjIrs+t
 RXuVlmTnMMu2bkDWrdeXvdvmqwrS9vqSowEuXi66+sUKqXEEzUN64OKG+BSV31xaCyemUDeQDjfen
 9XMuFHzsL6BUqRDahvT3XEH5RzQZBTzjwuzXkJ2G72XdPDYoMYRjKHdxHyYs0qmATexpLwys/XVtD
 WxzeDFkrzLbmPTvXyBaLSGAUoUefEdhOBfgaTFZrwvg/FNTjYZRkr24G2dq2GJeS3gsbwxyXrZlUR
 Gs3YGLXA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGJR-0006pn-2o; Wed, 26 Jun 2019 22:22:46 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGJJ-0004QM-GH; Thu, 27 Jun 2019 00:22:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
Date: Thu, 27 Jun 2019 00:22:36 +0200
Message-ID: <1609807.FCSDk0ZevM@phil>
In-Reply-To: <20190626130443.22025-1-pgwipeout@gmail.com>
References: <20190626130443.22025-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232245_191176_19B3B8A2 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 "Leonidas P . Papadakos" <papadakospan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 26. Juni 2019, 15:04:43 CEST schrieb Peter Geis:
> Currently the rk3328-roc-cc ethernet is enabled using "snps,force_thresh_dma_mode".
> While this works, the performance leaves a lot to be desired.
> A previous attempt to improve performance used "snps,txpbl = <0x4>".
> This also allowed networking to function, but performance varied between boards.
> 
> This patch takes that one step further.
> Set txpbl and rxpbl to 0x4.
> This can also be accomplished with "snps,pbl =<0x4>" which affects both.
> Also set "snps,aal" which forces address aligned DMA mode.
> 
> Fixes: 4bc4d6013b7f (arm64: dts: rockchip: fix rk3328-roc-cc gmac2io stability issues)
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> 
> Tested-by: Leonidas P. Papadakos <papadakospan@gmail.com>

applied for 5.3 after sorting the new properties alphabetically.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
