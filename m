Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300D89191D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 21:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wzFhlfgJ1XxFRECIdQ0H5jbuYWkZh6IBBcgSrj0veg=; b=mWoHVdZFZ8/zxD
	7OJUrS7DL2Z2rEcYYRqeYQqQQ/Lsg9bdtKSxm6MirjWz1exmtM0uDPIRNB3iSWZw/eemDdE2WVIrK
	ODyTuhlGBMXQI4pj0fWDvkV/UKxy+C7D/AplNyRXHqFni/evBASnM7GVEa44UBhcEyJvFleeT+Er0
	3/+hM2beVzXqAq6wZVFvBDK049VbufbULzHZKw4ARtmLFR0GR1LxFOpAEYyAO6v1da9ci10ifPPrf
	yExfk+VpYMOi0Sew4O+Uq+ioQpXr/4Nh2tanVQ0FLZAk3s2MQWJMj1VAPkIouFtfRRlttTbDfFGhz
	1KaW1dzxZWRLLNDpnUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzQPW-0002GA-Of; Sun, 18 Aug 2019 19:00:14 +0000
Received: from mailoutvs35.siol.net ([185.57.226.226] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzQPF-0002FI-UJ
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 19:00:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DD634523A82;
 Sun, 18 Aug 2019 20:59:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 2HPR71-A2-_F; Sun, 18 Aug 2019 20:59:45 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 88748523A8A;
 Sun, 18 Aug 2019 20:59:45 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 9A39B523A83;
 Sun, 18 Aug 2019 20:59:43 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h6: Introduce Tanix TX6 board
Date: Sun, 18 Aug 2019 20:59:42 +0200
Message-ID: <7640522.c0V0aH5rf2@jernej-laptop>
In-Reply-To: <201908190222.ZdIp2gT1%lkp@intel.com>
References: <20190816205342.29552-3-jernej.skrabec@siol.net>
 <201908190222.ZdIp2gT1%lkp@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_115958_136477_C329E5B8 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne nedelja, 18. avgust 2019 ob 20:42:49 CEST je kbuild test robot napisal(a):
> Hi Jernej,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc4 next-20190816]
> [if your patch is applied to the wrong git tree, please drop us a note to
> help improve the system]
> 
> url:   
> https://github.com/0day-ci/linux/commits/Jernej-Skrabec/dt-bindings-arm-sun
> xi-Add-compatible-for-Tanix-TX6-board/20190819-002034 config:
> arm64-defconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O
> ~/bin/make.cross chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> >> Error: arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts:83.1-6 Label
> >> or path r_ir not found FATAL ERROR: Syntax error parsing input tree

Strange, Allwinner tree has commit, which introduces r_ir node:
https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?
h=sunxi/dt-for-5.4&id=9267811aad3524c857cf2e16bbadd8c569e15ab9

Maybe kbuild test robot tree doesn't have it?

Best regards,
Jernej

> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology
> Center https://lists.01.org/pipermail/kbuild-all                   Intel
> Corporation





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
