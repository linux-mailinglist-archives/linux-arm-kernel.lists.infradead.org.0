Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B7B1E4FE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGkoS5UzyybMZ4SFJKXgZRLWorTyJxkIhrvki5QUnqM=; b=L1XQ79L5H3X11J
	ssYB1Fa+nAGZ9Cyiyzgo+lbwRXafbTIGvsdyqTERMzxG2pa8Rm5QkQBtQ0GQVx4dpp5x87EsiIjFo
	RNCwAOetmBXQKvcg4NAgXqqVZDdkbQUERwphs4jx5HyigbQG30HwFOMUtZxV55RXeHcXUzz5jaWJz
	DvI9wSuH/NCq12eCmVk/IB0ZXFd35IeMgUGgDv/DwU5bZ8Ro3X5zoCQnnC3kwsbhv+MtRI3RtnYns
	GFSsw0qG6vQul8OKbMeFXTytgt4zJOxcn8yNeIFaCqJnwOYSr9UT/r+PV5LxzcSTOKButfrC9LMiQ
	QKgL3Wh4+XjGucagqCTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Pp-0000Wq-Or; Wed, 27 May 2020 21:16:45 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3Pf-0000WU-UA; Wed, 27 May 2020 21:16:37 +0000
IronPort-SDR: XLbsj49dxAyL4bNSCHPV3SqYZnw37u/vAgQ1NRgZf+qt0M+MoWVgkwZFPI0MuKONG1Vin6sWDC
 a9SHKD4LnlDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:16:35 -0700
IronPort-SDR: XCm8vub/jNoIWjRW3pQgdNpxd20fY5viVZZhDBe1JUEsvjmEBvyvBAAIgEeyHz31GajEQ6Ggny
 cgVGkXlUxPsA==
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="468887887"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:16:31 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9D86F206EA; Thu, 28 May 2020 00:16:28 +0300 (EEST)
Date: Thu, 28 May 2020 00:16:28 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Rob Herring <robh@kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200527211628.GT7618@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus>
 <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141635_984950_7DA77ED9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Dongchun,

On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > +    properties:
> > > > +      endpoint:
> > > > +        type: object
> > > > +        additionalProperties: false
> > > > +
> > > > +        properties:
> >
> > Actually I wonder whether we need to declare 'clock-lanes' here?
> 
> Yes, if you are using it.

Dongchun, can you confirm the chip has a single data and a single clock
lane and that it does not support lane reordering?

So if there's nothing to convey to the driver, also the data-lanes should
be removed IMO.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
