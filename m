Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234E21E3D54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ffwn+6gCfRsDitNuL4MpYIxZ+l0n2gQ1Ni4zI+43IDM=; b=smtOYqvI2spVvy
	h4griiI4bYyHA4K7d50OwBZcFdu+Z3Yeyzq/Ts/zveNLC0vuSVfKPNYKMKosZB4u6X4tpzgKeXqtw
	zynXV47ymCjvCtDVPaRIcPuEUJ3HQNz6uGJEiF5cbaMDcNqVQVrogBpyQ8alG7FUvMed6996P7pWZ
	bpVbcl2yEkSoy2Qz8xBD7k6719i9SO/1wlftgdP2zetzKJCN29O25WPGZ0eRVtB8hBVMxpyv7zqe8
	gll5JY26/PEWMx4VxZTe/RMN2SPBrtTQZfwEOncCoxiWbgxf5C9Qzp/cS28hYUMvhCtJJepbQhKvM
	LQ2KSQ4wWmtoXzxBICoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jds8F-0005uQ-Rb; Wed, 27 May 2020 09:13:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jds82-0005so-JX; Wed, 27 May 2020 09:13:40 +0000
X-UUID: d24be6cad85d457999452fbb36838512-20200527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=niIGUTjMuwM6Dzf6Aan1ADPLP3BVHBCxpGmXP1NJl2E=; 
 b=JNNHgxvdyaaY1E4KFGIN+iIuH39MdujciautPSaRta1Fms+78ZhpRWwlLkNPqPuubVmWPdNfdje1sg/Qqmxf8qj62ZEiE6yzl3S4jaLswbleEVeQcYsfQ3Qd+h76huQMd48qTeGmcE45H8B+hoLX4gI2DjGp/5j1UwdRjoBJQC0=;
X-UUID: d24be6cad85d457999452fbb36838512-20200527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 888760595; Wed, 27 May 2020 01:13:24 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 27 May 2020 02:03:37 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 27 May 2020 17:03:15 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 27 May 2020 17:03:13 +0800
Message-ID: <1590570089.8804.453.camel@mhfsdcap03>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 17:01:29 +0800
In-Reply-To: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C6DAD625A2A8FEE655D867D0563F7BB4655DD51B1E8845A1432CFAC0ED8261322000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_021338_650979_4B44FA0E 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Mon, 2020-05-25 at 13:45 +0200, Tomasz Figa wrote:
> On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > Thanks for the review. My replies are as below.
> >
> > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > Hi Dongchun, Sakari,
> > >
> > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> [snip]
> > > > +   pm_runtime_enable(dev);
> > > > +   if (!pm_runtime_enabled(dev)) {
> > > > +           ret = dw9768_runtime_resume(dev);
> > > > +           if (ret < 0) {
> > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > +                   goto entity_cleanup;
> > > > +           }
> > > > +   }
> > > > +
> > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > +   if (ret < 0)
> > > > +           goto entity_cleanup;
> > > > +
> > > > +   return 0;
> > > > +
> > > > +entity_cleanup:
> > >
> > > Need to power off if the code above powered on.
> > >
> >
> > Thanks for the reminder.
> > If there is something wrong with runtime PM, actuator is to be powered
> > on via dw9768_runtime_resume() API.
> > When actuator sub-device is powered on completely and async registered
> > successfully, we shall power off it afterwards.
> >
> 
> The code above calls dw9768_runtime_resume() if
> !pm_runtime_enabled(dev), but the clean-up code below the
> entity_cleanup label doesn't have the corresponding
> dw9768_runtime_suspend() call.
> 

Did you mean the 'entity_cleanup' after v4l2_async_register_subdev()?
Actually I made some changes for OV02A V9, according to this comment.
Could you help review that change? Thanks.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
