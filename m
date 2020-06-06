Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FFF1F0479
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 05:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7dSgtPWh0eykyUWAAeAe2MZMzhgMtxNu0p39eH4Umo=; b=G8a3lU3sbI+WkN
	/nCBZBj5GDYIA4b1ByL3HDjhcibZoYRSpnxw/9UKZRREBT0CgY5E6KOW5Uoe+fpXcezTvcoH7Ic1m
	RruaWtL1M0cU9hp3/ffzU/9XPImrLcuJJp5nsVsc0fKBT1I6vgC/TcKNBf7koLA6DfC4DbpauBxrB
	cxaa11TgoQiZ+/fkgkS+YzAxAatB6ilp/5pBRrkbeZmM46IpkeLIdjF+XjdawU0UjglcfPtgZv6Lk
	AN0re3Xe1HmeeZLl6mMfOMRcEyh9ThuNR6Q0ToQT0RIWLjRv9pW3Bz7zcN8l1emaUp0RcLTBGHzWy
	3b6jC6xW5BRBS3rS6vBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhPoI-0007WB-Pu; Sat, 06 Jun 2020 03:47:54 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhPoB-0007VX-Ft
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 03:47:48 +0000
IronPort-SDR: YP9n1VHsi1iwBYN3tETyVYs4zupTp4ReNdIbSK1JPE7jBdpXOVZdUgztnrr7n1zPTB425VGnrc
 aZqGyvD9PSIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 20:47:45 -0700
IronPort-SDR: doFUxYktMjT+9Frop2VWFJ+ZWLisjHACPXrUod+jj8Xgaxgn+uxK0KBDx7WxpnM44pJGmFiBTX
 CUa8FImuX1pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="287935558"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 20:47:41 -0700
Date: Sat, 6 Jun 2020 11:46:55 +0800
From: Philip Li <philip.li@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [kbuild-all] Re: [PATCH 1/3] dma-direct: provide the ability to
 reserve per-numa CMA
Message-ID: <20200606034655.GH2459@intel.com>
References: <20200603024231.61748-2-song.bao.hua@hisilicon.com>
 <20200604113631.GP30374@kadam>
 <B926444035E5E2439431908E3842AFD24E0011@DGGEMI525-MBS.china.huawei.com>
 <20200605085751.GQ30374@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605085751.GQ30374@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_204747_541646_CF765DF4 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: "Song Bao Hua \(Barry Song\)" <song.bao.hua@hisilicon.com>,
 Dan Carpenter <error27@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kbuild@lists.01.org" <kbuild@lists.01.org>,
 John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>, "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 11:57:51AM +0300, Dan Carpenter wrote:
> On Fri, Jun 05, 2020 at 06:04:31AM +0000, Song Bao Hua (Barry Song) wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Dan Carpenter [mailto:dan.carpenter@oracle.com]
> > > Sent: Thursday, June 4, 2020 11:37 PM
> > > To: kbuild@lists.01.org; Song Bao Hua (Barry Song)
> > > <song.bao.hua@hisilicon.com>; hch@lst.de; m.szyprowski@samsung.com;
> > > robin.murphy@arm.com; catalin.marinas@arm.com
> > > Cc: lkp@intel.com; Dan Carpenter <error27@gmail.com>;
> > > kbuild-all@lists.01.org; iommu@lists.linux-foundation.org;
> > > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> > > <linuxarm@huawei.com>; Jonathan Cameron
> > > <jonathan.cameron@huawei.com>; John Garry <john.garry@huawei.com>
> > > Subject: Re: [PATCH 1/3] dma-direct: provide the ability to reserve per-numa
> > > CMA
> > > 
> > > Hi Barry,
> > > 
> > > url:
> > > https://github.com/0day-ci/linux/commits/Barry-Song/support-per-numa-CM
> > > A-for-ARM-server/20200603-104821
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> > > for-next/core
> > > config: x86_64-randconfig-m001-20200603 (attached as .config)
> > > compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > 
> > Dan, thanks! Good catch!
> > as this patch has not been in mainline yet, is it correct to add these "reported-by" in patch v2?
Hi Barry, we provides the suggestion here, but you may decide
to add or not as appropriate for your situation. For the
patch still under development, it is not that necessary to add i think.

> 
> These are just an automated email from the zero day bot.  I look over
> the Smatch warnings and then forward them on.
> 
> regards,
> dan carpenter
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
