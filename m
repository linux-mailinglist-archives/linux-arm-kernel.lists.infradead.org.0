Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87266596A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYBxEwarmFyxcmBql1WXTndd64dQVB0i8kwZhLQiVZ8=; b=KdXWzN/P0ym91Z
	vv+sKKDQgj4kIo4ah/aJm4+EzMkkahiaAh7GHLt9i54VuhQ+fWhphtnTvdUX+M0RffBWmk0mmG5rN
	pode1avBsUtSlbOTy9gssauqEGyMPJ2MhFAWIvYwagTcWlDjSUi3UP0UD3pOg0UAYW/pbmjbCznrU
	Ob2VjrfyAENl6aLMP3GoYXkmF9zX1K+iFCIcQQB7AKiNB3flV2H40ACSPFwxFM0v56p2MA5l29m6j
	1C3trJNYKvFr2mf3vCmSWpP3Klb09UadtJKhzsyGjzkFYeuMX7GxxLPmrbQrHcj08tBYAqWSVpzmW
	VeeajZruVkLk9jdSLmmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmkD-0004Sk-E9; Fri, 28 Jun 2019 09:00:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmjx-0004S4-84
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:00:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6837E2B;
 Fri, 28 Jun 2019 02:00:16 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD1ED3F706;
 Fri, 28 Jun 2019 02:00:15 -0700 (PDT)
Date: Fri, 28 Jun 2019 10:00:14 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190628090013.GI34530@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
 <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
 <20190628085154.GD32370@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628085154.GD32370@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_020019_050556_F0319436 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, stable@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 04:51:54PM +0800, Leo Yan wrote:
> Hi Andrew,
> 
> On Fri, Jun 28, 2019 at 09:35:24AM +0100, Andrew Murray wrote:
> 
> [...]
> 
> > > > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> > > >  	control &= ~0x1;
> > > >  
> > > >  	/* make sure everything completes before disabling */
> > > > -	mb();
> > > > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > > > +	dsb(sy);
> > > 
> > > Here the old code should be right, mb() is the same thing with
> > > dsb(sy).
> > > 
> > > So we don't need to change at here?
> > 
> > Correct - on arm64 there is no difference between mb and dsb(sy) so no
> > functional change on this hunk.
> > 
> > In repsonse to Suzuki's feedback on this patch, I've updated the commit
> > message to describe why I've made this change, as follows:
> >      
> > "On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
> > only used on armv8 let's directly use dsb(sy) instead of mb(). This
> > removes some ambiguity and makes it easier to correlate the code with
> > the TRM."
> > 
> > Does that make sense?
> 
> On reason for preferring to use mb() rather than dsb(sy) is for
> compatibility cross different architectures (armv7, armv8, and
> so on ...).  Seems to me mb() is a general API and transparent for
> architecture's difference.
> 
> dsb(sy) is quite dependent on specific Arm architecture, e.g. some old
> Arm architecures might don't support dsb(sy); and we are not sure later
> it will change for new architectures.

Yes but please note that the KConfig for this driver depends on ARM64.

Thanks,

Andrew Murray

> 
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
