Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC474AA063
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZMaTeV575rHUuXd5F0AQfFFKz8wTKAXiNVaoHQEGq8=; b=a+UM9nS/zHT7GG
	VBkERZNMwky1zGXOwzWN0dDkoEU2qIn2yoiyItE3lOwDxmauKyHs78D76yir6ung0UgJHBV2dArL+
	e7RhZSKoT69HPatUHOOyeq4T6qnii9MQDoGmJWub5OatPKmFTA01VK9xViG0UcFw6IbH6K0Az/PFO
	8GhImrzMrvwR/Ebop5vryDWGssL5vuEN4C5y4ddIYqlwt8RBuXUsqgVFmlsvszPSig1C++/rainYw
	M9SvNnThmTz+c9ZDjpHnsmijhwgfrNOgKFdFt4TWVRiWRnrSsolxrheZtYsXpgSFOOFdWVBrxurpk
	L3Aq7Au8N6mM1a3hi6kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pJk-0004hh-4e; Thu, 05 Sep 2019 10:48:44 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pJc-0004cx-HV; Thu, 05 Sep 2019 10:48:37 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:48:35 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="207830033"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:48:32 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 1EDA220584; Thu,  5 Sep 2019 13:48:30 +0300 (EEST)
Date: Thu, 5 Sep 2019 13:48:30 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20190905104829.GB5475@paasikivi.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com>
 <20190905101406.GA2680@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905101406.GA2680@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034836_597048_2F74E541 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:14:06PM +0300, Andy Shevchenko wrote:
> On Thu, Sep 05, 2019 at 03:21:41PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > 
> > This patch is to add the Devicetree binding documentation and
> > MAINTAINERS entry for dw9768 actuator.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 +++++++++
> >  MAINTAINERS                                                     | 7 +++++++
> 
> This should be:
> 1) two separate patches

Why? The MAINTAINERS entry is usually added in the first patch needing it,
isn't it?

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
