Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDAF46037
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyWd7KbuaJXAWQ1g9CJB7UCc6wwQcqRjsmKsfThpazw=; b=J2ZtxaVIzzb5hw
	TyqeznFPxbEpQZDYTOUNPrmdgddm+NcljKntHgKXQ5VImU2YCw3eyzk5lCPyPuW8WbyzUd04euoah
	LWZxPZyGX/ZB/QO3T8bSsM4qIXHWln5E7SVD+IxH5EWFPaEEaBi55BWQRjUx7kU3EB+wMsLYiO+Q/
	sWMcqR1/2O3vkmUoWEypZbYOljLcteqxqwVNZLBvXhofBQBwDWwK066DR1ucIgIS9RPSAkbunDEd+
	LR2cout84t29VQfTGsz3G4EAsT9H88vkVaHN4QbBKVmquGTzuE2xORPspKmd8HfpjGA0QW/xeXPTA
	z/Pq3CCGAMWTrLPazwiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmva-0006Wx-NI; Fri, 14 Jun 2019 14:11:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmv9-0006HE-C8
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:11:13 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hbmv0-0001nW-0Z; Fri, 14 Jun 2019 16:11:02 +0200
Message-ID: <1560521459.18257.1.camel@pengutronix.de>
Subject: Re: [PATCH v8 5/5] media: imx: Try colorimetry at both sink and
 source pads
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Steve Longerbeam <slongerbeam@gmail.com>, linux-media@vger.kernel.org
Date: Fri, 14 Jun 2019 16:10:59 +0200
In-Reply-To: <20190522010317.23710-6-slongerbeam@gmail.com>
References: <20190522010317.23710-1-slongerbeam@gmail.com>
 <20190522010317.23710-6-slongerbeam@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_071111_455182_6169E3D0 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Tue, 2019-05-21 at 18:03 -0700, Steve Longerbeam wrote:
> Retask imx_media_fill_default_mbus_fields() to try colorimetry parameters,
> renaming it to to imx_media_try_colorimetry(), and call it at both sink and
> source pad try_fmt's. The unrelated check for uninitialized field value is
> moved out to appropriate places in each subdev try_fmt.
> 
> The IC now supports Rec.709 and BT.601 Y'CbCr encoding, and both limited
> and full range quantization for both YUV and RGB space, so allow those
> for pipelines that route through the IC.
> 
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>

I've applied them on the imx-drm/next branch with Hans' Acked-by on 5/5.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
