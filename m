Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B29174200
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7ktxkgpM4iPPtktXZ6bXEv8q3T5ScfGS0P68M0Mw8A=; b=ah04VYDAVep1Ey
	ZmfBiyn5xMDI0OEHqNz/dApWaHqStwa/i5K+0o2yduq2MaqmyrM80YWXC/6yOO4HjBebHHntaLLmJ
	ujzHhAwTIsKqbKf3+NEerF1InXvyuYRnvy65oP1CAv1kLsE+iZTPqgBsW9kHQcJ8759WNheCicBqD
	fYhilmcLCT6lX8dH+8Rdm2xtp8HAgJwVDIiRCLqTxT7bvu9ggGiTrbEsh4++kTompmz9uN6y/nPjY
	/fdCjlC1fTuS1mfHpxe1WeukboTu3zZB0KE+BWzSeKVAOceOr6FI8B2LJ2a6IJw/DVoCSohac8NuS
	jdHn95o7xwB2w8+yAuag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7o8Z-0007Lj-SG; Fri, 28 Feb 2020 22:29:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7o8K-0007HN-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:29:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 14:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="227683345"
Received: from jkalwas-mobl.ger.corp.intel.com (HELO mara.localdomain)
 ([10.249.154.47])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2020 14:27:16 -0800
Received: from sailus by mara.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@linux.intel.com>)
 id 1j7o6B-0000Ha-Ij; Sat, 29 Feb 2020 00:27:13 +0200
Date: Sat, 29 Feb 2020 00:27:10 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200228222710.GA1068@mara.localdomain>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
 <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_142924_462127_C2C477D5 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

Btw. I think probably a smaller list of recipients would be just fine on the
next version.

On Fri, Feb 28, 2020 at 10:16:06AM -0800, Steve Longerbeam wrote:
> Hi Sakari,
> =

> On 2/25/20 7:07 AM, Sakari Ailus wrote:
> > Hi Steve,
> > =

> > On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> > > Instead of allocating a notifier in v4l2_async_register_fwnode_subdev=
(),
> > > have the caller provide one. This allows the caller to implement
> > > notifier ops (bind, unbind).
> > > =

> > > The caller is now responsible for first initializing its notifier wit=
h a
> > > call to v4l2_async_notifier_init().
> > > =

> > > Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> > Instead of improving v4l2_async_register_fwnode_subdev(), could you con=
vert
> > the users (IMX driver in this case) to call the preferred APIs instead?=
 As
> > the lines below show, v4l2_async_register_fwnode_subdev() has only two
> > users left --- the other one of which is the IMX driver. After converti=
ng
> > these two, we could just remove this API.
> > =

> > See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
> > drivers/media/platform/omap3isp/isp.c for examples.
> =

> Shouldn't v4l2_async_notifier_add_fwnode_remote_subdev() check for the
> availability of the remote before adding it to the notifier's asd list, as
> in:
> =

> diff --git a/drivers/media/v4l2-core/v4l2-async.c
> b/drivers/media/v4l2-core/v4l2-async.c
> index 8bde33c21ce4..b48ed68c6c6c 100644
> --- a/drivers/media/v4l2-core/v4l2-async.c
> +++ b/drivers/media/v4l2-core/v4l2-async.c
> @@ -615,7 +615,7 @@ v4l2_async_notifier_add_fwnode_remote_subdev(struct
> v4l2_async_notifier *notif,
> =A0=A0=A0=A0=A0=A0=A0 int ret;
> =

> =A0=A0=A0=A0=A0=A0=A0 remote =3D fwnode_graph_get_remote_port_parent(endp=
oint);
> -=A0=A0=A0=A0=A0=A0 if (!remote)
> +=A0=A0=A0=A0=A0=A0 if (!remote || !fwnode_device_is_available(remote))
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOTCONN;
> =

> =A0=A0=A0=A0=A0=A0=A0 asd->match_type =3D V4L2_ASYNC_MATCH_FWNODE;
> =

> =

> Otherwise we are back to the problem that the notifier will never complete
> because the remote's driver is not probed.

fwnode_graph_get_endpoint_by_id() only gives you endpoints that belong to an
enabled device (unless requested otherwise). So the there's need to check
the same in v4l2-fwnode.c.

-- =

Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
