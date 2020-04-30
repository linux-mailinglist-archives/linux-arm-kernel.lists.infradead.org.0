Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63581BF385
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaSeEfMvMfpHlVdKkh49pyR4BECcyxO79VTZdI4mbiE=; b=L1+8xehwUFe4J+
	gGn7EuW/2pea5qsO9oUf6rcDQvlOngXyhHIqWrwR76WTKBQ8V4/sM4/J4TLuh/oKNL70ZObY03S8R
	RQf9xB/POhW/iuIXAeo1AVYrpo2jJ044JaoOxD0e+9f8BxNMv0tGXU6CKEgjmAm6Yssyq15fLQzeH
	c316wWqmMyvzouc/mFdkPOQ8KmHStc3U1WasJAUqgVWev5mIJaLGFcNfJPKbDP5To/2wvk3bfGpFg
	d4vOz/c4n27/MzKVgb8Lo39N5pDIaTxZRFYZAryvbuG/BKvYXLylmtK0AF8wQu4w1gzbC7kgZVKxd
	GCkLQkwzUKTAzUBAWrmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4v5-0003CE-5B; Thu, 30 Apr 2020 08:51:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4tV-0000Ra-3m; Thu, 30 Apr 2020 08:50:11 +0000
X-UUID: 56bbe1b7c2144b25b49a3942c0b40f8a-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=qEHPZ0vJ9YaDzRAN0qw3MdQ9byhSepyxaXxCWBvrE5g=; 
 b=gfi1O1nLD0z/k7SSqXn5aLDlASNVa2jqazrXSiMBWSm2XEQeEdl1nmbd/eRtrSKW8kCDgzRlk64tC4QkpcBTyJiyIDu/1D+epSsbdGihsrDXZjExysMK/1tSULoN4dqicEskW9a98ZDMWz9z8uDTrLhlRfcoIIEN7QS2JwW0hH4=;
X-UUID: 56bbe1b7c2144b25b49a3942c0b40f8a-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 667662918; Thu, 30 Apr 2020 00:49:59 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:48:40 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 30 Apr 2020 16:48:37 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:48:36 +0800
Message-ID: <1588236466.8804.92.camel@mhfsdcap03>
Subject: Re: [V4, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Thu, 30 Apr 2020 16:47:46 +0800
In-Reply-To: <20200331101456.GG1922688@smile.fi.intel.com>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-3-dongchun.zhu@mediatek.com>
 <20200330135751.GQ1922688@smile.fi.intel.com>
 <1585620980.5781.80.camel@mhfsdcap03>
 <20200331101456.GG1922688@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E3566C996091720B35FA9D701A04146A9F434F3E2FE424D79D363A9BF88C6DB62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_015009_244689_898EC6EF 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hello Andy,

Thanks for the review.

On Tue, 2020-03-31 at 13:14 +0300, Andy Shevchenko wrote:
> On Tue, Mar 31, 2020 at 10:16:20AM +0800, Dongchun Zhu wrote:
> > On Mon, 2020-03-30 at 16:57 +0300, Andy Shevchenko wrote:
> > > On Mon, Mar 30, 2020 at 08:36:34PM +0800, Dongchun Zhu wrote:
> > > > This patch adds a V4L2 sub-device driver for DW9768 voice coil moter,
> > > > providing control to set the desired focus via I2C serial interface.
> > > 
> > > ...
> > > 
> > > > +static const struct dev_pm_ops dw9768_pm_ops = {
> > > > +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > > > +				pm_runtime_force_resume)
> > > > +	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
> > > > +};
> > > > +
> > > > +static struct i2c_driver dw9768_i2c_driver = {
> > > > +	.driver = {
> > > > +		.name = DW9768_NAME,
> > > 
> > > > +		.pm = IS_ENABLED(CONFIG_PM) ? &dw9768_pm_ops : NULL,
> > > 
> > > What is this conditional for?
> > > 
> > 
> > For the dw9768_pm_ops, here my idea is to use an IS_ENABLED() check to
> > avoid defining the structure when CONFIG_PM is not set.
> 
> Have you looked at the implementation of SET_SYSTEM_SLEEP_OPS() and another one?
> 
> Have you tried to actually compile with !CONFIG_PM? In your case the warning
> should be issued.
> 

Understood.
Follow Sakari's advice, the condition would be dropped in next release.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
