Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0CF1E02C3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 22:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQGNUwnLd8bYdceEGSw9jj7rtVU3RAyap4Ox5tdjTtA=; b=q2+CktSDZfR3Z4
	q3AsJL3SlWMqJD/Gt+D7cXcuJUgoSicjv3c6lHOcmIA1qZiKAc1SemYkxqn5F82WEP7BDMa23wcyT
	4m8R4sK3ZcqFbrRHqpvR0+xhzhdyjtScFjRWNDQ1y9yqGD1ItNTTjjtem5XdP+PlU1rTItzThLGut
	W3Q0Rko14vAU2eaByBInX0W5KfvRlpqrsrzWsVOtyd996Xs4/6bbsd2iK/Tt/LPNubilOl9Xm0kIt
	qKl4d9QAF5q0+3Po2Kze2wlh60a9GlV8Re5CSMtWstOUKRGVUfQ0btNCcyP4aF/AF8CqI3NUf5h0d
	U5KEVRgrnZOSxNU6OpGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcxJp-0000dl-NW; Sun, 24 May 2020 20:34:01 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcxJh-0000dJ-Mx; Sun, 24 May 2020 20:33:54 +0000
IronPort-SDR: MXlUsN45YX5w7/DWhd7wLz5Z596ipRFk+BF+hLtwQ+dRWG4UVwa0epoje4mb0V2zJFKmmDVlJY
 aIBOPip/bq0g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 13:33:50 -0700
IronPort-SDR: hGO7Y3wYazKbBMeBckgS76jnZK8vgx3/d2+Tum7KpIZBE7Os41Bbvt3Qwb/u2VDS+n2UM4fhvq
 Z18P3EudgMLg==
X-IronPort-AV: E=Sophos;i="5.73,430,1583222400"; d="scan'208";a="254745249"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 13:33:46 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 554C820736; Sun, 24 May 2020 23:33:44 +0300 (EEST)
Date: Sun, 24 May 2020 23:33:44 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200524203344.GB7618@paasikivi.fi.intel.com>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
 <1589251221.8804.289.camel@mhfsdcap03>
 <CAAFQd5DgrDwPEpdN9ErJWsHbMDpo2s_u3pwsqtpNwVk4g3_CdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5DgrDwPEpdN9ErJWsHbMDpo2s_u3pwsqtpNwVk4g3_CdQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_133353_762774_00298EB2 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 08:59:56PM +0200, Tomasz Figa wrote:
> Hi Dongchun, Rob,
> 
> On Tue, May 12, 2020 at 4:41 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Rob,
> >
> > Thanks for the review.
> >
> > On Mon, 2020-05-11 at 11:02 -0500, Rob Herring wrote:
> > > On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
> [snip]
> > > > +            port {
> > > > +                wcam_out: endpoint {
> > > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > > +                    data-lanes = <1>;
> > >
> > > This doesn't match the schema which says this should be 4 entries.
> > >
> >
> > Property "data-lanes" shows the number of lanes that sensor supports.
> > If this property is omitted, four-lane operation is assumed.
> > For OV02A10, it is one-lane operation, so the property is supposed to be
> > set to <1>.
> >
> 
> To clarify on this, the ov02a10 sensor supports only 1 lane. It's not
> a driver limitation.

If there's nothing to configure there, then the property should be omitted.
I understood the sensor supported one to four lanes...

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
