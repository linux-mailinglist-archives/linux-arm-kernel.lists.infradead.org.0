Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E8B16E98D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=No7FZ1Jmxbmr/Xi2Axg3JbRHL29/psP+HEEtJLA+frQ=; b=bM2dcLOwADlEzS
	UDZGFOCZAmPTrdyVn9/PLhRWMHbBAG0SFf1tW0GBLflxJDI2wuSGcSf9hpPu/gof00kzZ5eqiplkj
	0R9pwW42JXubIuP8nGIb89sRGTSMui/wnOWpYtMOa0LYin8dezZ6nRcvfos/SNXRjwfmVUFM8r+Bd
	dS6Nkc+tnw9aqTSP6un2zUUH+K4NdeDF9mDkUwd/BVd2E7Ub2qHootzfTD05sAxSUBvxboGOh6wTc
	BU1BbzNvEgn/hc+bC0Nfu5xhTbPmhumzptC63u3s/luLYJYjTsCrUgtmLTfOfc6xO2JvfJDjs1/Zc
	r27yMVLDI8Ql2Vou/bGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bo8-00074l-SG; Tue, 25 Feb 2020 15:07:36 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bo0-00074I-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:07:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 07:07:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284693145"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 07:07:22 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 39A9D2089D; Tue, 25 Feb 2020 17:07:21 +0200 (EET)
Date: Tue, 25 Feb 2020 17:07:21 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200225150721.GO5379@paasikivi.fi.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200215194136.10131-3-slongerbeam@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_070728_085848_72EE0A14 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Steve,

On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
> have the caller provide one. This allows the caller to implement
> notifier ops (bind, unbind).
> 
> The caller is now responsible for first initializing its notifier with a
> call to v4l2_async_notifier_init().
> 
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>

Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
the users (IMX driver in this case) to call the preferred APIs instead? As
the lines below show, v4l2_async_register_fwnode_subdev() has only two
users left --- the other one of which is the IMX driver. After converting
these two, we could just remove this API.

See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
drivers/media/platform/omap3isp/isp.c for examples.

> ---
> Changes in v3:
> - added the missing calls to unregister/cleanup the new subdev notifiers.
>   Reported by Rui Silva.
> ---
>  drivers/media/platform/video-mux.c         |  8 +++++++-
>  drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
>  drivers/staging/media/imx/imx6-mipi-csi2.c |  7 ++++++-
>  drivers/staging/media/imx/imx7-media-csi.c |  7 ++++++-
>  drivers/staging/media/imx/imx7-mipi-csis.c |  9 ++++++++-
>  include/media/v4l2-fwnode.h                | 12 ++++++++----
>  6 files changed, 36 insertions(+), 18 deletions(-)

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
