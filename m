Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C2D803CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 03:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrEVhDOTKqqR2JFUXj5xFTNN/VdWGgz0CT+ezrIKx94=; b=fQ3bNjZ1ocLPWq
	ESEIfi2RHat5fs112y/KFzUtoSlBlWAEQXWYyvzQxBBsOPaD+5xqEcPhRpwm+3QyPCNiFGyqP5w2R
	JDZgzZv2BTbnHBKG5dx+DLhf7h7Y7+MOBrHeV0bGzflU6Ijn+9wYxEt74GUGO39nB/kJ+lLmXPByF
	7HhSoz29U2xe2BGH5mub4hK/jIB88pnm7qCDf2RTdiJvcf4ezP4CfRNxtUeQVHCJNhutKOm2x6g63
	+3pBheRfkt0P2Ohdh/klOtP2TNwncR87JMB+nUsxAIDWD+AkgdLEMpAU6N9Z+lPBFgVweDgjZUfZF
	Q0YI/hHDYm/s31xGt+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htj1f-00079r-Ls; Sat, 03 Aug 2019 01:40:03 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1htj1V-00079c-0O; Sat, 03 Aug 2019 01:39:53 +0000
Date: Fri, 2 Aug 2019 18:39:52 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803013952.GF5597@bombadil.infradead.org>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
 <20190803013031.GA76252@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803013031.GA76252@archlinux-threadripper>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 gregkh@linuxfoundation.org, rdunlap@infradead.org, broonie@kernel.org,
 linux-next@vger.kernel.org, netdev@vger.kernel.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:30:31PM -0700, Nathan Chancellor wrote:
> On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> > The proper way to fix this is to include either
> > 
> > 	linux/io-64-nonatomic-hi-lo.h
> > 
> > or
> > 
> > 	linux/io-64-nonatomic-lo-hi.h
> > 
> > whichever is appropriate.
> 
> Hmmmm, is that not what I did?
> 
> Although I did not know about io-64-nonatomic-hi-lo.h. What is the
> difference and which one is needed here?

Whether you write the high or low 32 bits first.  For this, it doesn't
matter, since the compiled driver will never be run on real hardware.

> There is apparently another failure when OF_MDIO is not set, I guess I
> can try to look into that as well and respin into a series if
> necessary.

Thanks for taking care of that!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
