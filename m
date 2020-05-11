Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FAB1CE4D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wYhInpTYM/qkv0ujxBmPeYkP4C5boGAHIokw+rsO8U=; b=HmHELfFvw26ON7
	hcN3KQMeZwk0vRxIJi3bkj70MhQdczIlBS+ZDG1vciS9cZ++akU+kbjT1QqCDy6/AZRbgL3a+lrgM
	eSsAlfxjFAJ0kKx4qH5miHF6466J3taY4SuCES0WBXrLmhXSxxeVPexzwX3AP6HtpIZ2mFxnrGCtS
	NUXbRZXQlALdCL9U48mvLttPG+eYqdXk54uk/yssk++alSezeuqhlxu5kx3k9ApyDBZ8Nlp0a0FNZ
	gIy+b1x14Qz1tHsKs0a/yQV/HqRGonAjzS8OZyd5gHyx+81I8HPKQyRrarf+hlw9d5WNhd/lZ0sVv
	2RckMwzbbqoTZ+4Nytqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEVv-0003AX-P8; Mon, 11 May 2020 19:54:59 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEVf-00034N-RP; Mon, 11 May 2020 19:54:45 +0000
IronPort-SDR: UElmRGwKI8itmawec1haeatDuepvJ3umdpywgKM0SMSVJgiAS6fUml0YkzQ2rQK1wSNOjbD+R1
 YSxdIylU3LvA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 12:54:40 -0700
IronPort-SDR: nrkVhs2KY64uvbGWb8TbDdcpt1XqGWxWNDd41wC2FKPz9dUaJM9u6VAMspAPx6nHD6QH2LMvZ+
 w72qZcPRYfEQ==
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="297792634"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 12:54:36 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 379F6204C7; Mon, 11 May 2020 22:54:34 +0300 (EEST)
Date: Mon, 11 May 2020 22:54:34 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200511195434.GG11272@paasikivi.fi.intel.com>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511160207.GA32476@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_125443_920433_166209FD 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 linus.walleij@linaro.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 bgolaszewski@baylibre.com, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 louis.kuo@mediatek.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, May 11, 2020 at 11:02:07AM -0500, Rob Herring wrote:
> On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
...

> > +    properties:
> > +      endpoint:
> > +        type: object
> > +
> > +        properties:
> > +          data-lanes:
> > +            description: |-
> > +              The driver only supports 1-lane operation.
> 
> What the driver supports is not relevant.
> 
> > +            items:
> > +              - const: 1
> > +              - const: 2
> > +              - const: 3
> > +              - const: 4
> > +
> > +          clock-noncontinuous:
> > +            type: boolean
> > +            description: |-
> > +              MIPI CSI-2 clock is non-continuous if this property is present,
> > +              otherwise it's continuous.
> 
> Assume this has a common definition, so just need:
> 
> clock-noncontinuous: true
> 

...

> > +                    data-lanes = <1>;
> 
> This doesn't match the schema which says this should be 4 entries.

I believe the intent has been to say there would be 1, 2, 3 or 4 entries
--- i.e. the number of lanes.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
