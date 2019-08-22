Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DDC99280
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhPeGMqeb9Kx2oinzjbUknbbnvY5lh3d+kaiunHTWHM=; b=uFci1sz7YDz/Ot
	i8G+7mmnXpc7uB5bYXWAx79ATchQIlmKZ6nD/3fcwF1xFGOHQM0k1T4vdJDCJdhfbfKdU2jx6vIs+
	iVEDucZedWHbaijYiZY0kdHR1fgdTXFG91pBYe9XlPH/fcstGBT4vFgBMcM5nnA4U3n8oLQkfPTlD
	nMLinOAe+8k95WAnm8TkazYUkBicSzs2pZynD+Ym0MnjC9jZEizNurycTviqIZhUxLVTU3v5u/k2v
	63A/TUCaMcxItzfDIlLshlKSUHjIiPVPE0h/jgzVXqbGESlqxY6dzEkeVUbwxyofBUtToh66Fy+3h
	MIM2Z0cfr/nXFJ+jMVRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lZl-0007fX-CY; Thu, 22 Aug 2019 11:48:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lZS-0007f1-Se; Thu, 22 Aug 2019 11:48:04 +0000
X-UUID: e3791cdcf61148e5a61f3aef234d242d-20190822
X-UUID: e3791cdcf61148e5a61f3aef234d242d-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1644723840; Thu, 22 Aug 2019 03:47:49 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 04:47:47 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n2.mediatek.inc
 (172.21.101.79) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 19:47:46 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 19:47:44 +0800
Message-ID: <1566474469.12318.7.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/4] rtc: Add support for the MediaTek MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 22 Aug 2019 19:47:49 +0800
In-Reply-To: <c4e8b041-4a35-578e-07a3-2ebc99848ee2@gmail.com>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-3-ran.bi@mediatek.com>
 <c4e8b041-4a35-578e-07a3-2ebc99848ee2@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 07BEDA87CE6DE420B3D64B7B18F56819C1B1580EC0478AB37A2E93247614A2FB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_044802_930848_CD288158 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, YT Shen <yt.shen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 11:12 +0200, Matthias Brugger wrote:
> 
> On 01/08/2019 13:01, Ran Bi wrote:
> > This add support for the MediaTek MT2712 RTC. It was SoC based RTC, but
> > had different architecture compared with MT7622 RTC.
> > 
> > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > ---
> >  drivers/rtc/Kconfig      |  10 +
> >  drivers/rtc/Makefile     |   1 +
> >  drivers/rtc/rtc-mt2712.c | 444 +++++++++++++++++++++++++++++++++++++++
> 
> Can't we just adjust rtc-mt7622.c (and rename it) to unify the source for both
> devices. What is the difference that we need to write a driver of our own?
> 
> Regards,
> Matthias

We cannot merge rtc-mt7622.c and rtc-mt2712.c together. These two rtc
hardwares have totally different design. Registers naming, registers
offset and operating method are different.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
