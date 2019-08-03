Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A917803A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 03:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBZB5q6JVbrkVOjcDSaBEcuu4pazkgSyeWJvIifFkeQ=; b=MDoz21/soXZiF4
	ozhgncmwu7SMAaV7gYB+9z2W18YMskbmL2ibSN1XijDwCO+qEgW4SzFslDOwzwkX/KdhUWeP63oLm
	9OT+gjRgXCWv0gBGiYsuB86dYXKHcbENT45GNiH1Y+VVns5BjCAPcg7KqeSubNXGrrCghEL6fseBh
	55zXKs4rowUb1ha/lcIbZbCstzbjSpcrdZ1EOLMGjcCnUqHl4FCyE2vG+ynAKGdIMsbetE64ZbiFJ
	iUsmx/DFVp3DQuPsIG+k5jprufD3gj/Wd0pzPTgdR+9IgwVh8RWtDghQvhe8/h6JCUAyMGNeTlV11
	hzkE+UoDNjN/zX6zRNaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htiaG-0007yp-QV; Sat, 03 Aug 2019 01:11:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htia6-0007yE-6z
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 01:11:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 16D1612665355;
 Fri,  2 Aug 2019 18:11:33 -0700 (PDT)
Date: Fri, 02 Aug 2019 18:11:32 -0700 (PDT)
Message-Id: <20190802.181132.1425585873361511856.davem@davemloft.net>
To: natechancellor@gmail.com
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731185023.20954-1-natechancellor@gmail.com>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 02 Aug 2019 18:11:33 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_181134_257634_A3421718 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, willy@infradead.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 31 Jul 2019 11:50:24 -0700

> arm allyesconfig warns:
> 
> WARNING: unmet direct dependencies detected for MDIO_OCTEON
>   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
> && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
>   Selected by [y]:
>   - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
> NETDEVICES [=y] || COMPILE_TEST [=y])
> 
> and errors:
> 
> In file included from ../drivers/net/phy/mdio-octeon.c:14:
> ../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
> ../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
> function 'writeq'; did you mean 'writeb'?

The proper way to fix this is to include either

	linux/io-64-nonatomic-hi-lo.h

or

	linux/io-64-nonatomic-lo-hi.h

whichever is appropriate.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
