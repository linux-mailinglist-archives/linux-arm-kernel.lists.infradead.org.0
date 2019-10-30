Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA49EE98DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JyhkMjlUNzcPvpRSuCW7+V9N6wH7tv038y2ATeMgbI=; b=ELEJRiXq1wuuO5
	jrBcS0v8FF5il7lkBgfNWnz2+uTv31AoG1lQZJPKwM4UWQK7rRfBT3PdhC+QgJVNaCf0vYEQ0cDgY
	VmbvE0co1wR5Pov2Y868HJsUj0gh37ZD+wp8uNSnPmOQObUeoiOAwwoFRrFy+aiDbUeqmIGEFHSJd
	7Mf7fM2RN5V+uwcfaTl0ReTjbCTEnZTJCKKSE7ZXTNcKqZ/eJiTv4vYtRl6EpJOGKdNEO1NwSIKL2
	9XH/QeBUR9IuqFYLFUedBEZnFYBHfu0/72dnWUL1cC3VkACLgH6j093YNV2qrbE5NepWW+YTG05WE
	jWyNhE/u78wrNRnhTIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjyT-0007dO-J4; Wed, 30 Oct 2019 09:09:05 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjyE-0007cU-2d; Wed, 30 Oct 2019 09:08:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 02:08:49 -0700
X-IronPort-AV: E=Sophos;i="5.68,246,1569308400"; d="scan'208";a="401441344"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 02:08:45 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 97D7A208A0; Wed, 30 Oct 2019 11:08:43 +0200 (EET)
Date: Wed, 30 Oct 2019 11:08:43 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V2, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
Message-ID: <20191030090843.GG10211@paasikivi.fi.intel.com>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-2-dongchun.zhu@mediatek.com>
 <20190910173743.GI2680@smile.fi.intel.com>
 <20190917120205.GO5781@paasikivi.fi.intel.com>
 <20190917144412.GA23952@bogus>
 <1572426023.21623.257.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572426023.21623.257.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020850_131396_F7695402 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Wed, Oct 30, 2019 at 05:00:23PM +0800, Dongchun Zhu wrote:
> Hi Rob,
> 
> On Tue, 2019-09-17 at 09:44 -0500, Rob Herring wrote:
> > On Tue, Sep 17, 2019 at 03:02:06PM +0300, Sakari Ailus wrote:
> > > On Tue, Sep 10, 2019 at 08:37:43PM +0300, Andy Shevchenko wrote:
> > > > On Tue, Sep 10, 2019 at 09:04:45PM +0800, dongchun.zhu@mediatek.com wrote:
> > > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > 
> > > > > This patch adds device tree bindings documentation for the ov8856 CMOS
> > > > > image sensor.
> > > > 
> > > > New bindings in YAML, please.
> > > 
> > > My understanding is text documents are still fine.
> > 
> > Schema are preferred, but still up to the subsystem for now.
> >  
> 
> It seems that there are no bindings in YAML under the path:
> Documentation/devicetree/bindings/media/i2c.
> So we would keep the text documents for OV8856.

That is going to change very soon with the addition of IMX296 bindings:

<URL:https://lore.kernel.org/linux-media/20191029220928.GA17996@bogus/T/#mdd27731659215b1e35049892ef82bb6b62e80b61>

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
