Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB74CF69B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxR1gb99mHUQS1eGoLQ95NTzWUWhKZpkhKmxzWC1CXY=; b=SGNDGKuk/bkNUZ
	DVRC4qfo0sjcGekFBf2LfZ0UbLFvR9usEsdquSELYB+UoAXNPlbO8c75zknBHy5N22yEy6wIYl+rw
	e9Tot3XL/nodpX23ZZJbPeVvd735buj9l07o8XN2frdNRg0yTXjSZKjMYUQ0EUT/YF+JDzKLacaGK
	mTY9VKlMq3yHcewprggavVs52nsgRCN1DtmKyu/JYFpto+rtzrznmKkfBMrbY7HmOV1EnGNPLOIxF
	l9dEOmuLG92F9n3ulCz0ZgQ5MEwHT7ErD+rEWb9tq/Z5CF8b+I1H0cjd+so/8DyqjVOFmGVZVzZ4G
	Rf1iXPIzCLn2uW971Jog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmFx-0005j3-V0; Tue, 08 Oct 2019 09:58:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmFq-0005ir-7j
 for linux-arm-kernel@bombadil.infradead.org; Tue, 08 Oct 2019 09:58:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pf5GEoOnVxeIBht4jwCA5ysKFfSaYv+iwSVXE67jwmU=; b=AwasWZhGssBGdFSqU5v21Gee4
 SyltwURBVaEezLVm+ohG5eX9u2t4vk6tSrxdWLEA8NJc68AQen1FDouw/BfHVQObhOBwkVEVGsN5y
 IWclBcqhA5Sqt3ukvwlq6ps6VGhecyU6zCN/YHtE7LpPpqux5u/LDLa8TsvGjCWdr75Z+lNEWRdV1
 KcykDC86EoJ170WOS0OdgzwuAM+PgvhhsaFrxIIBCDLLXJfzcZEG//b6wHSuNTxjAcL5y60eFzlQD
 6qDzPeZacyRFsYgS1Xs1KHHQsq5WOWWfJYp1zEVHRDh+2DUaprm3Itou3UtSIp0mCPgTVNrfkEzsF
 g4YNAtWyA==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmFn-0005wk-BK
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:58:04 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B0FC8E0005;
 Tue,  8 Oct 2019 09:57:29 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, jason@lakedaemon.net,
 andrew@lunn.ch, sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: Re: [PATCH 0/3] ARM: dts: SDRAM and L2 cache EDAC for Armada SoCs
In-Reply-To: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
References: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
Date: Tue, 08 Oct 2019 11:57:27 +0200
Message-ID: <87ftk3tv94.fsf@FE-laptop>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

> This series was waiting for the armada_xp edac driver to be accepted.
> Now that it has the relevant nodes can be added to the Armada SoCs. So
> that boards can use the EDAC driver if they have the hardware support.
>
> The db-xc3-24g4xg.dts board doesn't have an ECC chip for it's DDR but it
> can use the L2 cache parity and ecc support.
>
> Chris Packham (3):
>   ARM: dts: armada-xp: enable L2 cache parity and ecc on db-xc3-24g4xg
>   ARM: dts: mvebu: add sdram controller node to Armada-38x
>   ARM: dts: armada-xp: add label to sdram-controller node

Series applied on mvebu/dt

Thanks,

Gregory


>
>  arch/arm/boot/dts/armada-38x.dtsi             | 5 +++++
>  arch/arm/boot/dts/armada-xp-98dx3236.dtsi     | 2 +-
>  arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts | 5 +++++
>  arch/arm/boot/dts/armada-xp.dtsi              | 2 +-
>  4 files changed, 12 insertions(+), 2 deletions(-)
>
> -- 
> 2.23.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
