Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFFEB1AB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZmry3b05px4+DIsjgUMq4eJPhVb29tHLC1uehhmITA=; b=RYxI+tCQegpnp+
	za+d79Frn15WzGgQM2CY9rNOL5u3C8+zAB5hlWMZr7bd5uTb5gGALmvLqs9pOFJSTc/pLM4Lu+rc1
	GVGnqUUuI+5kwgnIJWSW/j3R2+nvZx2TB908+T9T5Q6EW5eYsnYmGZsgK5/SDZV6s/yPRVfujo0Hp
	SlJESqbsyaS+YkZISdl9NEuLiqLGxqbRQoVEL7W89LP31t8K0rYfAAIKtotqudcHZ65Z6UMNSCSYp
	8mDOyRBuKr8UruRxpx0TOHHzairKK0q8WKsphDxYa2NvD6UPIqhP0S0YvBhUr1MeGslJVnBwh5e7V
	K1y8AaO3AqhSZuwx/PAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hnr-00073M-Fw; Fri, 13 Sep 2019 09:23:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hnA-0006tb-HM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:23:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2FFAF28;
 Fri, 13 Sep 2019 02:23:00 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C1213F59C;
 Fri, 13 Sep 2019 02:22:59 -0700 (PDT)
Date: Fri, 13 Sep 2019 10:22:57 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Message-ID: <20190913092257.GK9720@e119886-lin.cambridge.arm.com>
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-3-andrew.murray@arm.com>
 <20190820215930.GB12159@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820215930.GB12159@xps15>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_022300_835744_547182C8 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Al.Grant@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 03:59:30PM -0600, Mathieu Poirier wrote:
> On Fri, Aug 16, 2019 at 04:46:14PM +0100, Andrew Murray wrote:
> > Some coresight components, because of choices made during hardware
> > integration, require their state to be saved and restored across CPU low
> > power states.
> > 
> > The software has no reliable method of detecting when save/restore is
> > required thus let's add a binding to inform the kernel.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > index fcc3bacfd8bc..d02c42d21f2f 100644
> > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > @@ -87,6 +87,15 @@ its hardware characteristcs.
> >  
> >  	* port or ports: see "Graph bindings for Coresight" below.
> >  
> > +* Optional properties for all components:
> > +
> > +	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
> > +	  hardware will lose register context on CPU power down (e.g. CPUIdle).
> > +	  An example of where this may be needed are systems which contain a
> > +	  coresight component and CPU in the same power domain. When the CPU
> > +	  powers down the coresight component also powers down and loses its
> > +	  context. This property is currently only used for the ETM 4.x driver.
> > +
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> When you resend this set make sure to include the device tree mailing list as
> instructed by get_maintainer.pl.  Since this set did not CC the DT list, none of
> the maintainers over there will look at your patches. 
> 

Sure I'll do that.

Thanks,

Andrew Murray

> 
> >  * Optional properties for ETM/PTMs:
> >  
> >  	* arm,cp14: must be present if the system accesses ETM/PTM management
> > -- 
> > 2.21.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
