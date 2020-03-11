Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027831813F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwHdYMIPgWGXSYHONjYk50Ao6iQvdw+6p1fY6pPSn6Y=; b=GUH2HiZ+hiU70e
	r+eUhtq8ul3Hy5ck/Vl1qXnH9djasaloA9KJOwJevQKaMZF/9faGpIBem4pAS4aOmHW+v+Xi2bWor
	QjQQd4x2LTbsweWCtHZIVql68RHckU2i3g/3v9FoIeR81QiToBPJG6CcQ9xrsUDvkEtgOlsO9yuuH
	D+4l6JUe91xAkV6WvM1WgNyIW6R4lTF5SgKGEwpW/6Md5HsVIJvfcghrotgTR/8FBEhb025DHSPP7
	7xtyAZw1hltRNV4ywD0iB2tPV03JE3xmiGWE7QYEaFxlkOXDDeRNRCQzB7CaiG8NsSmkCYHL1reWe
	N7kv3tqsgkTgzWFerKmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxJl-0004K8-L2; Wed, 11 Mar 2020 09:06:21 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxJZ-0004GL-Bu; Wed, 11 Mar 2020 09:06:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 02:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="234652853"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007.fm.intel.com with ESMTP; 11 Mar 2020 02:05:49 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jBxJG-008h6u-OT; Wed, 11 Mar 2020 11:05:50 +0200
Date: Wed, 11 Mar 2020 11:05:50 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
Message-ID: <20200311090550.GB1922688@smile.fi.intel.com>
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
 <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020609_416291_12E415F7 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, matthias.bgg@gmail.com, mchehab@kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 04:55:20PM +0100, Robert Foss wrote:
> On Tue, 10 Mar 2020 at 15:26, Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Tue, Mar 10, 2020 at 02:46:02PM +0100, Robert Foss wrote:

...

> > > +     ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> > > +     if (IS_ERR(ov8856->xvclk)) {
> > > +             dev_err(&client->dev, "failed to get xvclk\n");
> > > +             return -EINVAL;
> > > +     }
> >
> > Previously it worked without clock provider, now you make a dependency.
> >
> > This won't work.
> 
> So the ideal behavior would be to only use the xclk if it is provided?

Yes, make it optional.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
