Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4CB15B391
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqfpZaj7/iuZWD9Uq+nSKOjCNVhCEebPx4bPA+l6SKk=; b=tspHXAkyFqDHDj
	cjAfmMS5FUaaatmZlxiwtrtSJ/7eIGq0GHPs7V4vdM3Y8+g2lRdtKCEbCrMvrqp1O5ymDV82DweVf
	OZl6lO1HgRi15Wc/ej/oe7OH1g6d4lyL4PPNUFOJTFEqMitLAR0319EBsEfAg3+KxaWKfYiug+2Av
	Wd7rJZWWYuf+u71BU6n/+f+JrZBBcGql1pzcOWmE7oGyyj1lGSZfpKpaK2HAB3kjbzTNHgQEtMGTy
	Kpp2pvTMzHYs8sW4j21s+tVv9i46/BlUt4ZdZlhXFGu85BTFdQpG4yoLARNzzcU3askcCPPxze2IA
	UCG5kEtP4FltbEmQsbhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20Qy-0001WT-9q; Wed, 12 Feb 2020 22:24:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20Qp-0001Vm-Ch; Wed, 12 Feb 2020 22:24:33 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j20Qj-0001sJ-So; Wed, 12 Feb 2020 23:24:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexis Ballier <aballier@gentoo.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3399-orangepi: Add ethernet
 phy.
Date: Wed, 12 Feb 2020 23:24:25 +0100
Message-ID: <4035287.ZI63WRSm04@phil>
In-Reply-To: <20200206151025.3813-1-aballier@gentoo.org>
References: <20200206151025.3813-1-aballier@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142431_582451_3F45CADF 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 6. Februar 2020, 16:10:24 CET schrieb Alexis Ballier:
> Enables INTB.
> The wiring is the same as the nanopi4, so this is heavily based on:
> - [1a4e6203f0c] arm64: dts: rockchip: Add nanopi4 ethernet phy
> - [bc43cee88aa] arm64: dts: rockchip: Update nanopi4 phy reset properties
> by Robin Murphy.
> 
> Signed-off-by: Alexis Ballier <aballier@gentoo.org>
> Cc: devicetree@vger.kernel.org
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

applied both for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
