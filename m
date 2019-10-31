Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DED5EB105
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAFUuy0bbqGyfdYZJIDbRKvVveMjIneJdlRfNmD1t1g=; b=n2OwViz5CEJy+k
	9zSh8p1Q4mVQxlD+olX9WzTkVD9krxN2e65yl/gJ8PgWqt7qpuvHlJOwjgRWjAExtrQMwyola3dH7
	oYKz0RcsYhOeZkRA8/p/qtsMjf8hTz1z5k8ci5Th28oriCgw2vfAN2yOBZaMQET68Mh4SEsjqw+j/
	kS17dbKS1vhqopK5yn9EV6vFSjoC/5lpDS/evFmCNJBqngefEY4SnyLhlxRk9qypCJ5PSV7kY1uts
	ub/4Rt/ohEy3T8NMvcdxD6U1d7qMZhIZY/7MLeiPA8kcyknvhUj3jYr8RtFTDtPSMgfavHsTA7uTf
	IGjZqbDRkR7FSHvR82nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAKG-0002X5-RH; Thu, 31 Oct 2019 13:17:20 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAJs-0002MF-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:16:57 +0000
Received: from pendragon.ideasonboard.com
 (lmontsouris-658-1-103-151.w92-154.abo.wanadoo.fr [92.154.14.151])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7F29B320;
 Thu, 31 Oct 2019 14:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572527813;
 bh=PLmT7haSn/x6jKex7ohVnLZSNCbvD6oFv1ZIkyIdKJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rc9ZmDhqhFW5wMz4EyRD2ilAFzR4j/Mx35VYo5lruLiGrsRxblokmre5HepxFfDm6
 ALoJTDw2jErAaU8q95C2upbb0/H7emxuvdGZ2DN+SRDBvROKfpd/elRiJa52yKlQwG
 pqFFjBnvbcnIkdO9fmoVAKfHn4jcRVnPEjVQNTGk=
Date: Thu, 31 Oct 2019 15:16:44 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Message-ID: <20191031131644.GA8917@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_061656_601669_1D83A72A 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, sakari.ailus@iki.fi, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,

Thank you for the patches.

On Wed, Oct 30, 2019 at 03:19:00PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds support for IMX296 CMOS image sensor from Sony.
> Sensor can be programmed through I2C and 4-wire interface but the
> current driver only supports I2C interface. The sensor is
> capable of outputting frames in CSI2 format (1 Lane). In the case
> of sensor resolution, driver only supports 1440x1088 at 30 FPS.
> 
> The driver has been validated using Framos IMX296 module interfaced to
> 96Boards Dragonboard410c.

I've just been made aware of your work. I also worked on an IMX296
sensor driver in parallel, which I will post to the list. My driver
doesn't hardcode the resolution but computes register values at runtime,
so I wonder if it could be a better option. I'll post it now.

> Changes in v4:
> 
> * Fixed issues related to gain settings and few misc cleanups in driver
> * Documented port node and removed maxItems, default prop from dt binding
>   as per the review
> 
> Changes in v3:
> 
> * Fixed the reference to video-interfaces.txt in binding.
> 
> Changes in v2:
> 
> * Switched to YAML binding
> 
> Manivannan Sadhasivam (2):
>   dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
>   media: i2c: Add IMX296 CMOS image sensor driver
> 
>  .../devicetree/bindings/media/i2c/imx296.yaml |  94 +++
>  MAINTAINERS                                   |   8 +
>  drivers/media/i2c/Kconfig                     |  11 +
>  drivers/media/i2c/Makefile                    |   1 +
>  drivers/media/i2c/imx296.c                    | 715 ++++++++++++++++++
>  5 files changed, 829 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
>  create mode 100644 drivers/media/i2c/imx296.c

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
