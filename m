Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B3FE9898
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SezP7WJRwlyKelINQoDPkRb8wPq+GVyJ+BuaBz9Nyp0=; b=SWoEsYv/GazfQp
	qzAu+jsE5pBpW7DhOv2fJ4cj5Nx0S3L7CWYeSsFJ+/ixFRMbI1ttZ+Ca0m+96Ao09vJ9aj64571F0
	EbL7n0UBWvVraIpkZTybqt2XO02ykg+ck6D9UTCb2/NUE9RP01Vc5HKMpZYGCif/h44LM9PmdFbYT
	GVylM6cXJAP0/KaOcZFmJg+5ztFdeFGk4RHNPThXnrzpERWMWR89QYuK8EUF9dmC7Z4F1E2SF+HSV
	xLo3wuEN2Uu2/kJ/p4m5sngIqqKRHG/8gV1pADWRYOsk5oYW6hQWwD+O+W2htLHSSUnhwz8zo5Htb
	/Bt9T58vWRcmbw0m6FnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjqO-0003Ef-DR; Wed, 30 Oct 2019 09:00:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjqC-0003DM-PU; Wed, 30 Oct 2019 09:00:34 +0000
X-UUID: 3ca93dc7175b48baadc7d9ec9d2ad89c-20191030
X-UUID: 3ca93dc7175b48baadc7d9ec9d2ad89c-20191030
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 438463194; Wed, 30 Oct 2019 01:00:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 30 Oct 2019 02:00:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 30 Oct 2019 17:00:22 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 30 Oct 2019 17:00:21 +0800
Message-ID: <1572426023.21623.257.camel@mhfsdcap03>
Subject: Re: [V2, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 30 Oct 2019 17:00:23 +0800
In-Reply-To: <20190917144412.GA23952@bogus>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-2-dongchun.zhu@mediatek.com>
 <20190910173743.GI2680@smile.fi.intel.com>
 <20190917120205.GO5781@paasikivi.fi.intel.com>
 <20190917144412.GA23952@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EBDC59C3BCA94102C3AB13CA12A967D7417CB8D1D0988A04DF1CB39C3D08FD852000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020032_833787_72A97657 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, 2019-09-17 at 09:44 -0500, Rob Herring wrote:
> On Tue, Sep 17, 2019 at 03:02:06PM +0300, Sakari Ailus wrote:
> > On Tue, Sep 10, 2019 at 08:37:43PM +0300, Andy Shevchenko wrote:
> > > On Tue, Sep 10, 2019 at 09:04:45PM +0800, dongchun.zhu@mediatek.com wrote:
> > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > 
> > > > This patch adds device tree bindings documentation for the ov8856 CMOS
> > > > image sensor.
> > > 
> > > New bindings in YAML, please.
> > 
> > My understanding is text documents are still fine.
> 
> Schema are preferred, but still up to the subsystem for now.
>  

It seems that there are no bindings in YAML under the path:
Documentation/devicetree/bindings/media/i2c.
So we would keep the text documents for OV8856.

> > We don't have things like graph.txt or video-interfaces.txt in YAML yet
> > either.
> 
> That doesn't really matter too much. You can assume common properties 
> will have a common schema and just define what's device specific. The 
> device specific bindings have to define 'port' or 'port@N' nodes.
> 
> Rob



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
