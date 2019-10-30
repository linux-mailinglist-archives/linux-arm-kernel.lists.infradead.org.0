Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35692E9CC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7iGyX4LVPK/X06PBmdny3frxRZeFDOJXhQorj4foWo=; b=EwnW5BgpdV5/ly
	fRykqUIdo4iNG843CWq2aZmsC4m7WVVyNpzvhVuiAHMfD0XjYyO9ipmluThcNxB0JVAKS4NzF4cO+
	TD7tA2gi0UMBL2ip8Z29CRxz8nXklsatDVPQ9rZeJMJ9t08JPrHgUldVKblyXo8svL8VV18Ihlt5S
	7RWAIVtr95gGS4+xZSD7n8sNUK+xN/9Siew9S+yDHjaKDiUIyb+gLmf6CYgEbUF0zDhQ2COM49319
	98V2hDW6Vdjp/d1L60l/YrBs3VCmsTYxM0oaFJiiMG8RAFLr8xNu4QHXGJG2X8ZvnFEtUWXk6ooJi
	ptCvPns49n+GMoncPYwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoSS-0007wf-GS; Wed, 30 Oct 2019 13:56:20 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoSK-0007wD-NT; Wed, 30 Oct 2019 13:56:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 06:56:04 -0700
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="193975489"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 06:55:58 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id BEC0E208A0; Wed, 30 Oct 2019 15:55:27 +0200 (EET)
Date: Wed, 30 Oct 2019 15:55:27 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V2, 2/2] media: i2c: Add more sensor modes for ov8856 camera
 sensor
Message-ID: <20191030135527.GH10211@paasikivi.fi.intel.com>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
 <20190910174450.GJ2680@smile.fi.intel.com>
 <1572440653.21623.272.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572440653.21623.272.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_065612_773571_324069AD 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 09:04:13PM +0800, Dongchun Zhu wrote:
> > > +	ov8856->is_1B_revision = (val == OV8856_1B_MODULE) ? 1 : 0;
> > 
> > !! will give same result without using ternary operator.
> > 
> 
> Fixed in next release.

But casting to bool will have the same effect. Integers are also not
needed. I.e. this can be written as:

	ov8856->is_1B_revision = val == OV8856_1B_MODULE;

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
