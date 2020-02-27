Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A13172529
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuoECgJwQiSqIDZmGh9FmmE6ny8gprCoCEg1Xbk+BbU=; b=D7P+2YwU19/KJl
	1tu2Ff3XI1YLeiETxhCEM0P8+QawsI2/0E7fXUNUy5XQcMMVRl+wv9ywbarhpnVOb6nxFjnFt+fUh
	P8ZyEE15Q/3UV2tdTQFRa3wXx4qI6Vv570DH+XMrq8b4EnjBJJUkB/c9w6PQ0Sz8omxufdS0bjQVg
	EcIzYzwidWstAwCXs+sZRriY3opsS4dN42QIqfELbfMN6ltSvATyAbiIT96iCzN+w8cjlL4LBA7Vd
	Q2YP9cP6yUKRfY86Xo5VWDgHdfhDGT4icmpyyFc0BJMAbkmzmDDopu9PQEuRRwmvSz/UT3AtnIySG
	X8c1p1W5hQMVgtf2FVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N3T-0004UE-RQ; Thu, 27 Feb 2020 17:34:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N3J-0004Sz-GX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:34:26 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 12E2F80C0;
 Thu, 27 Feb 2020 17:35:06 +0000 (UTC)
Date: Thu, 27 Feb 2020 09:34:19 -0800
From: Tony Lindgren <tony@atomide.com>
To: santosh.shilimkar@oracle.com
Subject: Re: [PATCH 0/5] ARM: OMAP2+: Introduce cpuidle for am335x/am437x
Message-ID: <20200227173419.GG37466@atomide.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
 <20191213150344.GJ35479@atomide.com>
 <20200226184328.GY37466@atomide.com>
 <5d775a75-3013-fac2-91e3-ac1967b0f698@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d775a75-3013-fac2-91e3-ac1967b0f698@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093425_586406_5E520E98 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Dave Gerlach <d-gerlach@ti.com>,
 linux-kernel@vger.kernel.org, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* santosh.shilimkar@oracle.com <santosh.shilimkar@oracle.com> [200226 19:56]:
> On 2/26/20 10:43 AM, Tony Lindgren wrote:
> > Santosh,
> > 
> > * Tony Lindgren <tony@atomide.com> [191213 15:04]:
> > > * Dave Gerlach <d-gerlach@ti.com> [191212 19:07]:
> > > > Hi,
> > > > This series adds support for cpuidle on am335x and am437x using the
> > > > cpuidle_arm driver. When testing on am335x-evm and am437x-gp-evm the
> > > > follow power consumption reductions are seen on v5.5-rc1 baseline:
> > > > 
> > > > 
> > > > Idling at command line, CPUFreq userspace governor to 300MHz:
> > > >    am335x-evm:
> > > >      VDD_MPU: 48 mW -> 5 mW
> > > > 
> > > >    am437x-gp-evm:
> > > >      VDD_MPU: 32 mW -> 3 mW
> > > > 
> > > > 
> > > > Idling at command line, CPUFreq userspace governor to 1GHz:
> > > >    am335x-evm:
> > > >      VDD_MPU: 313 mW -> 18 mW
> > > > 
> > > >    am437x-gp-evm:
> > > >      VDD_MPU: 208 mW -> 10 mW
> > > 
> > > Hey this is great! A beverage on me when we get a chance :)
> > > 
> > > For merging, looks like I should take the series after folks are happy
> > > with it. Santosh, care to review and ack if it looks OK?
> > 
> > Looks like this series of changes is still pending. Care
> > to ack?
> > 
> Was scanning this series today. It looks good to me Tony.
> 
> Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

Thanks applying this series into omap-for-v5.7/pm33xx.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
