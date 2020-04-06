Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482CE19FBA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jogdvvcdk92J/BaJaZ+NS/Tph2oTKx4dcKmHa00No8Y=; b=bh5oBF/dCjh1gc
	EAYEyF1amWZ+tY2O62Uo69gfR/I8jK09+Omxt+oyun6ZMfA69V6KxAglCmJ+rQ5vFChfCa/o17VKg
	r+QWkwGcgRK12ZnMSVCK+D68XVadlEZUKgtd+eK0v+Md1K4Pz0ROxzIf/4UI5BPyRbNd14Xy24raf
	nznrhWodOXNGl4pfKoKIerH/ak6AyYdymzM4kLY2OBIACegGgkcgXef0C4Il1bzF71HQAfwksEF8c
	wxCxBAxOJBHr484ixqaLGWVSXFuuKenqcPKdDPHeEbUF6A7tXByXwyz+fNZQwhKxlGCaXlEaOUVDF
	vAkl4RBO/SCQNhc3PGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVcL-00011y-5S; Mon, 06 Apr 2020 17:33:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVcE-0000qY-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:32:55 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 01CED1031;
 Mon,  6 Apr 2020 19:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586194364;
 bh=UvEmac5uaQ/qcTzqBjGKkxMOGVtF/DXYqGMo+nzYdoo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VYRfYJdnA256/yTKJfooJh72XMp690mHO4hGlWRTr6xEALlY8+OECMVFRsfOSoUg9
 C23doRU9Itdwlp9uOi/wyyoNqynKJMZXhHMQakFiP0w474D/QpFXXBLj0eK3mwTq3A
 oImf7aE8hpD/jc9SLOs8Zabkl0X4r989K1fM2wTw=
Date: Mon, 6 Apr 2020 20:32:34 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200406173234.GD16885@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406165108.GA7646@kekkonen.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406165108.GA7646@kekkonen.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_103254_218962_398A1B0F 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

(CC'ing Maxime)

On Mon, Apr 06, 2020 at 07:51:08PM +0300, Sakari Ailus wrote:
> On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > 24MHz. So instead making clock-frequency as dt-property just let the
> > driver enforce the required clock frequency.
> 
> Even if some current systems where the driver is used are using 24 MHz
> clock, that doesn't mean there wouldn't be systems using another frequency
> that the driver does not support right now.
> 
> The driver really should not set the frequency unless it gets it from DT,
> but I think the preferred means is to use assigned-clock-rates instead, and
> not to involve the driver with setting the frequency.
> 
> Otherwise we'll make it impossible to support other frequencies, at least
> without more or less random defaults.

We're running in circles here.

As the driver only supports 24MHz at the moment, the frequency should be
set by the driver, as it's a driver limitation. We can then work on
supporting additional frequencies, which will require DT to provide a
list of supported frequencies for the system, but that can be done on
top.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
