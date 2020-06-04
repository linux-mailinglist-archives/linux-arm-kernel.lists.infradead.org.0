Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1621EDB40
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvRkk/N2Q/qtRANk4Dzb4EWv7tBM/uf/udBnl9gSD9M=; b=m6XaQPOhm9X3LK
	kbr0YVr7FSpZHrx5GK/KQofZIhWnnKQSn0XxmK1fPrwm+X2pFDeSlhp6fGSWYGOOX7vZsXTxgdF8W
	E0APsXP3HZuAvLtthBJFnPCtQ4FyyZU9REoH5ka+ZAsh06KAnEU03UFMcNW8/1AKdueGggvDAYkoy
	q12zeg7uuPILziqFlxF7AVdF5ARw5UZosOddpEQsb8odN/7eBC3Kygr3oiPFAlepI345nIgWR1vTr
	D9BNnJ452dC1RBxO+5KCtNkW8mnfWQfE2ortFL91y6wNZLGer36+EC7B9mv58ETADrvk1ZU6sM6y5
	eEJpAtwC7Zlsx80VMY5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfjZ-0003Io-Kb; Thu, 04 Jun 2020 02:35:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfjQ-0003Hj-Id; Thu, 04 Jun 2020 02:35:50 +0000
X-UUID: 59660a979cdf416887a633ca1fcfd0f6-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SuYNiPB5NMghHlkxCe+dQYVYe8ChAYf4pPTeZHrmuOY=; 
 b=XdzrK4V6cTBmxoIBS4Q5QPz+HPhUqF2Ju5XKgrxWdDssoF2gCSqAG0Z4Ie/wg2JBR4f5TnfjXNGhaVUwXe59kABU31fjP/wAAQrs6gKuWqiSKty1Nsdrn19wLmFa4PiF93M1OjFK982/kQ45GUczLETdQlOm+0csBhPsHr8zi74=;
X-UUID: 59660a979cdf416887a633ca1fcfd0f6-20200603
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1196773227; Wed, 03 Jun 2020 18:35:43 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 19:35:45 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 4 Jun 2020 10:35:39 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 10:35:40 +0800
Message-ID: <1591238018.8804.555.camel@mhfsdcap03>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 4 Jun 2020 10:33:38 +0800
In-Reply-To: <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
 <1590570089.8804.453.camel@mhfsdcap03>
 <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F86C0FCDB567B5C188A65FAB2CBC0E5B52353EFA00CBAB634B239ED5B17F119F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_193548_621290_291EF359 
X-CRM114-Status: GOOD (  19.31  )
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

On Mon, 2020-06-01 at 20:47 +0200, Tomasz Figa wrote:
> On Wed, May 27, 2020 at 11:03 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Mon, 2020-05-25 at 13:45 +0200, Tomasz Figa wrote:
> > > On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > Thanks for the review. My replies are as below.
> > > >
> > > > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > > > Hi Dongchun, Sakari,
> > > > >
> > > > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> > > [snip]
> > > > > > +   pm_runtime_enable(dev);
> > > > > > +   if (!pm_runtime_enabled(dev)) {
> > > > > > +           ret = dw9768_runtime_resume(dev);
> > > > > > +           if (ret < 0) {
> > > > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > > > +                   goto entity_cleanup;
> > > > > > +           }
> > > > > > +   }
> > > > > > +
> > > > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > > > +   if (ret < 0)
> > > > > > +           goto entity_cleanup;
> > > > > > +
> > > > > > +   return 0;
> > > > > > +
> > > > > > +entity_cleanup:
> > > > >
> > > > > Need to power off if the code above powered on.
> > > > >
> > > >
> > > > Thanks for the reminder.
> > > > If there is something wrong with runtime PM, actuator is to be powered
> > > > on via dw9768_runtime_resume() API.
> > > > When actuator sub-device is powered on completely and async registered
> > > > successfully, we shall power off it afterwards.
> > > >
> > >
> > > The code above calls dw9768_runtime_resume() if
> > > !pm_runtime_enabled(dev), but the clean-up code below the
> > > entity_cleanup label doesn't have the corresponding
> > > dw9768_runtime_suspend() call.
> > >
> >
> > Did you mean the 'entity_cleanup' after v4l2_async_register_subdev()?
> 
> Yes.
> 
> > Actually I made some changes for OV02A V9, according to this comment.
> > Could you help review that change? Thanks.
> 
> Sure, I will take a look.
> 

Thanks.
Sorry, I just wanna make sure the change is okay for next release.
May we use the check like OV02A V9 did?
ret = v4l2_async_register_subdev(&dw9768->sd);
if (ret < 0) {
	if (!pm_runtime_enabled(dev))
		dw9768_runtime_suspend(dev);
	goto entity_cleanup;
}

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
