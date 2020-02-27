Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D8E1711C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 08:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVl4TxzFZTM8/8fATIwcLbBbJaItfAVX9g762zrMwjE=; b=WWTGPGM5XRxjWE
	FnzwZDz1x2m/9CkBRxkJ6NxERTPF1BHbPGGSlO0qVVZ0Eh2DKgyl3f26DYQzHa2dYGe9eB+6Jd/H4
	6KFG72HOflTuNecSG0tkhXk3Brc+ZS705TREAmBskMpH139BDiK7gOfQyEsCIhzMljozpuLZ5baz3
	4VzHx0HPEaAK9GNLSG1MExVzr0BipN/mMXt4ZuqOWNiFbb6nSwXq4pIvoCHbcX2IEupoa8tj34wJN
	Ll3mlDqAJdzTXWCGtZay+xozMH3gVdlwhrQLg7CayvjagAocGr2B5ITBqjUb9MBq34fiP383WkDYx
	o6QIKP71zaw/AsbZbE8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Dwy-00012A-QC; Thu, 27 Feb 2020 07:51:16 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Dwn-00011o-9p
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 07:51:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:51:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,491,1574150400"; d="scan'208";a="285249023"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:51:00 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id C5F30209DF; Thu, 27 Feb 2020 09:50:58 +0200 (EET)
Date: Thu, 27 Feb 2020 09:50:58 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200227075058.GD5379@paasikivi.fi.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
 <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_235105_350499_91B4C17D 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:50:04PM -0800, Steve Longerbeam wrote:
> Hi Sakari,
> 
> Thanks for the feedback.
> 
> 
> On 2/25/20 7:07 AM, Sakari Ailus wrote:
> > Hi Steve,
> > 
> > On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> > > Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
> > > have the caller provide one. This allows the caller to implement
> > > notifier ops (bind, unbind).
> > > 
> > > The caller is now responsible for first initializing its notifier with a
> > > call to v4l2_async_notifier_init().
> > > 
> > > Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> > Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
> > the users (IMX driver in this case) to call the preferred APIs instead?
> 
> I presume you mean using v4l2_async_notifier_add_fwnode_remote_subdev(). Ok,
> I'll convert to use that API.

Thanks, Steve!

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
