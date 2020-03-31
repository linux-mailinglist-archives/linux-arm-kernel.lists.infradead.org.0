Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C041989E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 04:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R27JUJF0WljHgoDN9PQ5ptXceBph9g3ctjDE1EP3wY=; b=Y0JXnpp4ON2kgS
	G8Fj9Z2NSbfx0UMic6xRkOf5A2oD0vJUgyIfM5yQEYNQOhcNQX93tdMihH/9f5qX6I95+jfW/aCfe
	pE3CS3AYvVvf79LqYqidd2okIx8yMRxd95Z8xaC3b1FoqhIMeAE6mv9mudjzA139hB3hQieaZRUUE
	mXzRTvOM00Ja7p+Rz5OCxnKIyJlRvIKNAzPt9BTi0p5zhb4+7rFYoqvN4SzPLe0pM3NW3diLd/r8l
	s+3RXSILDgArZvzg7V9SMZIZ6clmPp0nRUbUaRKbvOMp0f5+Zo1N5TjUXONhIphZ/NnBAueXRVs36
	vTiF3Xu8e7UoSAkTiP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ6Xk-0001pW-3y; Tue, 31 Mar 2020 02:22:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ6XX-0001ob-Tk; Tue, 31 Mar 2020 02:22:09 +0000
X-UUID: b8824937dcbf4c9d8adb35e561586801-20200330
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Pi2gmU7gUHGbZuSoj+0wP9cb73MBtHR0fEjpiake8os=; 
 b=GMdHIBZw5IMWn6sQD7pbCNChTp5zKhE7hbHaMyfK8fyV/GrD3w+7aIfGZRqQN7ouclwJCGnCqdKXDEH8ZG04TdBss9yFTzgCYEyvxNMqzDgCcpHblbuJQ2U+zAi5X5mJgEttueYPwKWXsI4sHzEsAnqt1J+MlVzrOOoAbwF3lGk=;
X-UUID: b8824937dcbf4c9d8adb35e561586801-20200330
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1962512452; Mon, 30 Mar 2020 18:21:52 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 19:16:15 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 31 Mar 2020 10:16:12 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Mar 2020 10:16:10 +0800
Message-ID: <1585620980.5781.80.camel@mhfsdcap03>
Subject: Re: [V4, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Tue, 31 Mar 2020 10:16:20 +0800
In-Reply-To: <20200330135751.GQ1922688@smile.fi.intel.com>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-3-dongchun.zhu@mediatek.com>
 <20200330135751.GQ1922688@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B146E5EF035629031CDCFBF9CF89F0AFC588A22BD4E14778C43D5F924A3AA11C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_192207_988577_8F09FD04 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Thanks for the review.

On Mon, 2020-03-30 at 16:57 +0300, Andy Shevchenko wrote:
> On Mon, Mar 30, 2020 at 08:36:34PM +0800, Dongchun Zhu wrote:
> > This patch adds a V4L2 sub-device driver for DW9768 voice coil moter,
> > providing control to set the desired focus via I2C serial interface.
> 
> ...
> 
> > +static const struct dev_pm_ops dw9768_pm_ops = {
> > +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > +				pm_runtime_force_resume)
> > +	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
> > +};
> > +
> > +static struct i2c_driver dw9768_i2c_driver = {
> > +	.driver = {
> > +		.name = DW9768_NAME,
> 
> > +		.pm = IS_ENABLED(CONFIG_PM) ? &dw9768_pm_ops : NULL,
> 
> What is this conditional for?
> 

For the dw9768_pm_ops, here my idea is to use an IS_ENABLED() check to
avoid defining the structure when CONFIG_PM is not set.

> > +		.of_match_table = dw9768_of_table,
> > +	},
> > +	.probe_new  = dw9768_probe,
> > +	.remove = dw9768_remove,
> > +};
> 
> > +
> 
> Extra blank line.
> 

Weird, most V4L2 driver(I2C client) seems to keep this blank line.
Sakari, is it still the case or am I mistaken?

> > +module_i2c_driver(dw9768_i2c_driver);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
