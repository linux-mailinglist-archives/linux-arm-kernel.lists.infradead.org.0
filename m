Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6805BAA24D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84Z44QlRi0W+dUTcgE0VjkZK8RnPep6mbBjjZbiLcWQ=; b=aPzz11UOpQX65U
	n9eLJ+JwUqkriUxtxuSuuyplAzDtCpLrFN3pTklRrSaGCV89eIqTJn4CqLIpEBS5nP2cILF7YaAKL
	YRqQlDOLQWj1NrqS2ici3+yZdack2ClFnyIe0/aHm2boV3HzqFSKzgsxWrQ1DUykvagMkdXWQpPJa
	WXUi167CtMPF4YUOZ47T1uGwNTxfGa2CAonPvXV+XNsv7e46loaQ4eutVoygkm19svp4b8HxcHice
	BcCl1SgEwVDp2mqohqdFwJBE1naOc0g70PBMBCff8Ln4M7P0zCtXY93dwFr4ifG1Zy5smhh6pMRik
	CeMXsZjCznEaljTpQp1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qRc-0007Ti-G8; Thu, 05 Sep 2019 12:00:56 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qR3-0007BT-TN; Thu, 05 Sep 2019 12:00:23 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:00:20 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="187955306"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:00:15 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id DC18520584; Thu,  5 Sep 2019 15:00:12 +0300 (EEST)
Date: Thu, 5 Sep 2019 15:00:12 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Javier Martinez Canillas <javier@dowhile0.org>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20190905120012.GD5475@paasikivi.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com>
 <20190905101406.GA2680@smile.fi.intel.com>
 <20190905104829.GB5475@paasikivi.fi.intel.com>
 <20190905113509.GD2680@smile.fi.intel.com>
 <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_050022_396915_A36E770A 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 drinkcat@chromium.org, srv_heupstream@mediatek.com, sam.hung@mediatek.com,
 shengnan.wang@mediatek.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Tomasz Figa <tfiga@chromium.org>, sj.huang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 bingbu.cao@intel.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:49:28PM +0200, Javier Martinez Canillas wrote:
> On Thu, Sep 5, 2019 at 1:35 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Thu, Sep 05, 2019 at 01:48:30PM +0300, Sakari Ailus wrote:
> > > On Thu, Sep 05, 2019 at 01:14:06PM +0300, Andy Shevchenko wrote:
> > > > On Thu, Sep 05, 2019 at 03:21:41PM +0800, dongchun.zhu@mediatek.com wrote:
> > > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > >
> > > > > This patch is to add the Devicetree binding documentation and
> > > > > MAINTAINERS entry for dw9768 actuator.
> > > > >
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 +++++++++
> > > > >  MAINTAINERS                                                     | 7 +++++++
> > > >
> > > > This should be:
> > > > 1) two separate patches
> > >
> > > Why? The MAINTAINERS entry is usually added in the first patch needing it,
> > > isn't it?
> >
> > Bindings are required to be a separate patch.
> > Rob, is it still the case or am I mistaken?
> >
> 
> According to the rule 0 in [1] it should be a separate patch indeed
> and also use as subject "dt-bindings: <binding dir>: ..." which this
> patch also doesn't follow.
> So if I'm reading that document correctly, then I think the
> maintainers entry should be added in patch 2/2 along with the driver.

I understand [1] discussing the need for the bindings to be a "separate
patch" means a separate patch from the _driver_ for the device, not the
MAINTAINERS change.

Bindings come before the driver, and MAINTAINERS entry needs to be there no
later than the files. And I see no reason to add a separate patch just for
MAINTAINERS change.

> 
> [1]: https://www.kernel.org/doc/Documentation/devicetree/bindings/submitting-patches.txt

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
