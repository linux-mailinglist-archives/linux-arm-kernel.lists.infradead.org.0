Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6C8B7B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGzX2yS1yS1tt4yAYerWeSgAAQms31kg60mDoP2Gm8E=; b=dqwDBibq7FV/+p
	3ky4OWBHoJZ4KuPn/H3VaRPe9c0u9jDKFjNDVlonuo88MvtNNLuh8w+hjeBhXkL5I/6/A+I2V/nyV
	9ccy2KD54AdJkOueVtgY+RgfUX5xIFjV6QunpsRTznJ23tqXWJo54qYs2L0hZKNbrIPuluF2GUZ9o
	FwxciyVW3DreGAmAEsgD7wOqVA0A/B0RkolaQQcVpEy5JP6yHQh+Nx7jhg+u0a8uTI1gQ/0c3ZSMt
	vOUN5+aIrtCfn+8JCLBGaHxI2jpWFXdfBPtJCTVv6BTfNpr+tJfujrJovNzOAeMJ+AGqhTETT137Y
	bVNfgnXGseccXRASa+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVSU-0003NQ-3u; Tue, 13 Aug 2019 11:59:22 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVSG-0003E2-3m; Tue, 13 Aug 2019 11:59:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 04:57:07 -0700
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="183849614"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 04:57:03 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 73081210F0; Tue, 13 Aug 2019 14:55:54 +0300 (EEST)
Date: Tue, 13 Aug 2019 14:55:54 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V1, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
Message-ID: <20190813115554.GA6133@paasikivi.fi.intel.com>
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
 <20190808092215.5608-2-dongchun.zhu@mediatek.com>
 <20190808165416.GA1845@kekkonen.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808165416.GA1845@kekkonen.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045909_184174_C66217D4 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
 Ben Kao <ben.kao@intel.com>, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 07:54:16PM +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> (Cc'ing Ben, too.)
> 
> On Thu, Aug 08, 2019 at 05:22:14PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > 
> > Add device tree binding documentation for the ov8856 camera sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov8856.txt       | 41 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  1 +
> >  2 files changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.txt b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > new file mode 100644
> > index 0000000..96b10e0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > @@ -0,0 +1,41 @@
> > +* Omnivision OV8856 MIPI CSI-2 sensor
> > +
> > +Required Properties:
> > +- compatible: shall be "ovti,ov8856"
> > +- clocks: reference to the xvclk input clock
> > +- clock-names: shall be "xvclk"
> 
> Could you add "clock-frequency" property here, please, and specify the
> upper and lower limits?

Can you also add the link-frequencies property, please?

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
