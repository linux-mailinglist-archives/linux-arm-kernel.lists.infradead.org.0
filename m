Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631FF9A7AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 08:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzXasXdBNnfVgDx7+IndxdupP4cjRaff9n/TsmVYxAk=; b=KIWvY1YvKJte0W
	FiooqPYXxBrHpnr/VZts/m18kDVo9FEMhAnrm/AxoM2ainRN5BPExz7OrItAjq5WVD9HqvilI2r5s
	wzFf0yscL3UCcqbJxk1WRu8Q7YafNaB1YC6IFXKLPKvnrUKgWKa4ivWuRMkx5Hln4aapDSEBuamkH
	sVFWxiBvlD7qaGcgGgtl4vLxmEqlRiTCX7l7cibGPEI+gUg51kmMtsxi9p6Nh2+YP6YeXltGDivbk
	YiAHJrvdWQMUTuTndXO7LCpoUif4ZK3sneq5fW5H1YqwdyONn1iOhLQHwGu8kHMiQ42Eko25QZkWZ
	4zwY5rLicAyIY7wKYSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13Cj-0006yg-VV; Fri, 23 Aug 2019 06:37:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13CT-0006y7-NM; Fri, 23 Aug 2019 06:37:30 +0000
X-UUID: a9120a304a4e4d17815b9a55214e3d47-20190822
X-UUID: a9120a304a4e4d17815b9a55214e3d47-20190822
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1798994645; Thu, 22 Aug 2019 22:37:19 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 23:37:18 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 23 Aug 2019 14:37:16 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 14:37:15 +0800
Message-ID: <1566542240.12318.53.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/4] rtc: Add support for the MediaTek MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Fri, 23 Aug 2019 14:37:20 +0800
In-Reply-To: <20190822133649.GT27031@piout.net>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-3-ran.bi@mediatek.com>
 <20190820201744.GZ3545@piout.net> <1566477254.12318.41.camel@mhfsdcap03>
 <20190822124628.GS27031@piout.net> <1566480361.12318.50.camel@mhfsdcap03>
 <20190822133649.GT27031@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_233729_764610_89E9CCE1 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>,
 YT Shen <yt.shen@mediatek.com>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 15:36 +0200, Alexandre Belloni wrote:
> On 22/08/2019 21:26:01+0800, Ran Bi wrote:
> > On Thu, 2019-08-22 at 14:46 +0200, Alexandre Belloni wrote:
> > > On 22/08/2019 20:34:14+0800, Ran Bi wrote:
> > > > > > +	/* RTC need POWERKEY1/2 match, then goto normal work mode */
> > > > > > +	mt2712_writel(rtc, MT2712_POWERKEY1, MT2712_POWERKEY1_KEY);
> > > > > > +	mt2712_writel(rtc, MT2712_POWERKEY2, MT2712_POWERKEY2_KEY);
> > > > > 
> > > > > This should be written when setting the time after power was lost.
> > > > > 
> > > > 
> > > > I suppose we can move this into mt2712_rtc_read_time function's "if
> > > > (p1 != MT2712_POWERKEY1_KEY || p2 != MT2712_POWERKEY2_KEY)" condition
> > > > which will be added at next patch. We need additional flag to mark this
> > > > condition or another if condition in mt2712_rtc_set_time fucntion if we
> > > > put these code in mt2712_rtc_set_time function.
> > > > 
> > > 
> > > It is fine to test both in read_time and in set_time.
> > > 
> > 
> > Do you mean that we can test powerkey and then set powerkey both in
> > read_time and in set_time?
> > 
> 
> I mean that can test in read_time and test and set in set_time
> 
> 

Ok, I will change it at next patch.

Best Regards,
Ran


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
