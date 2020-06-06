Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2416E1F0610
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 12:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3l9Dmr6c6Vrge489C+fecK/OM5nty/jCL+eQAssvWs=; b=Icg/ticB9Tkmuk
	Fu2VXqW4PcsadOraxwDA0LuBKLTIS4pupIoG6I6mf8/mWoPOZ4naLVpydcX0QGnf2enaalKra0QK9
	rZOWSox/e8PP3FZy1ze2UhVVJaKCC4iOFxXoNCjZKe9w2yLUprK2ZnUcJIq0ZcJhCG8xlCMfSsoai
	nFpr5Z9yU3APKt7svPb+Qo65Ve4DmS4Nq+A59HQKr9V4VmP/Vs7AGWWNf2lmI+LhvgFGQxuN501TL
	arPTQmfO2hFn4JVUEmPJ9HB8p69OlDnWmU3sOwSbD2KN0xV+2sAzH5k9RnS3quP3viJ7URUTwxqeD
	C/8zzle+KEXuxGJNLx0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhVrS-0005pn-Vg; Sat, 06 Jun 2020 10:15:34 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhVrK-0005os-Ov
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 10:15:28 +0000
Received: from dggemi402-hub.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id EEEDD7E626AAB48BA848;
 Sat,  6 Jun 2020 18:15:12 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi402-hub.china.huawei.com ([10.3.17.135]) with mapi id 14.03.0487.000;
 Sat, 6 Jun 2020 18:15:06 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Philip Li <philip.li@intel.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: RE: [kbuild-all] Re: [PATCH 1/3] dma-direct: provide the ability to
 reserve per-numa CMA
Thread-Topic: [kbuild-all] Re: [PATCH 1/3] dma-direct: provide the ability
 to reserve per-numa CMA
Thread-Index: AQHWOVDkjt//8Ixq2UKuAS4YcS/rw6jH0AqAgAG65oD//6sagIABO3aAgADxzcA=
Date: Sat, 6 Jun 2020 10:15:06 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24E1541@DGGEMI525-MBS.china.huawei.com>
References: <20200603024231.61748-2-song.bao.hua@hisilicon.com>
 <20200604113631.GP30374@kadam>
 <B926444035E5E2439431908E3842AFD24E0011@DGGEMI525-MBS.china.huawei.com>
 <20200605085751.GQ30374@kadam> <20200606034655.GH2459@intel.com>
In-Reply-To: <20200606034655.GH2459@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.200.154]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_031526_986421_578868A9 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Dan Carpenter <error27@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
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



> -----Original Message-----
> From: Philip Li [mailto:philip.li@intel.com]
> Sent: Saturday, June 6, 2020 3:47 PM
> To: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>;
> kbuild@lists.01.org; hch@lst.de; m.szyprowski@samsung.com;
> robin.murphy@arm.com; catalin.marinas@arm.com; lkp@intel.com; Dan
> Carpenter <error27@gmail.com>; kbuild-all@lists.01.org;
> iommu@lists.linux-foundation.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Linuxarm <linuxarm@huawei.com>; Jonathan
> Cameron <jonathan.cameron@huawei.com>; John Garry
> <john.garry@huawei.com>
> Subject: Re: [kbuild-all] Re: [PATCH 1/3] dma-direct: provide the ability to
> reserve per-numa CMA
> 
> On Fri, Jun 05, 2020 at 11:57:51AM +0300, Dan Carpenter wrote:
> > On Fri, Jun 05, 2020 at 06:04:31AM +0000, Song Bao Hua (Barry Song)
> wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Dan Carpenter [mailto:dan.carpenter@oracle.com]
> > > > Sent: Thursday, June 4, 2020 11:37 PM
> > > > To: kbuild@lists.01.org; Song Bao Hua (Barry Song)
> > > > <song.bao.hua@hisilicon.com>; hch@lst.de;
> > > > m.szyprowski@samsung.com; robin.murphy@arm.com;
> > > > catalin.marinas@arm.com
> > > > Cc: lkp@intel.com; Dan Carpenter <error27@gmail.com>;
> > > > kbuild-all@lists.01.org; iommu@lists.linux-foundation.org;
> > > > linux-arm-kernel@lists.infradead.org;
> > > > linux-kernel@vger.kernel.org; Linuxarm <linuxarm@huawei.com>;
> > > > Jonathan Cameron <jonathan.cameron@huawei.com>; John Garry
> > > > <john.garry@huawei.com>
> > > > Subject: Re: [PATCH 1/3] dma-direct: provide the ability to
> > > > reserve per-numa CMA
> > > >
> > > > Hi Barry,
> > > >
> > > > url:
> > > > https://github.com/0day-ci/linux/commits/Barry-Song/support-per-nu
> > > > ma-CM
> > > > A-for-ARM-server/20200603-104821
> > > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> > > > for-next/core
> > > > config: x86_64-randconfig-m001-20200603 (attached as .config)
> > > > compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > >
> > > Dan, thanks! Good catch!
> > > as this patch has not been in mainline yet, is it correct to add these
> "reported-by" in patch v2?
> Hi Barry, we provides the suggestion here, but you may decide to add or not as
> appropriate for your situation. For the patch still under development, it is not
> that necessary to add i think.

Hi Philip, Dan,
Thanks for clarification.
> 
> >
> > These are just an automated email from the zero day bot.  I look over
> > the Smatch warnings and then forward them on.
> >
> > regards,
> > dan carpenter

Best regards
Barry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
