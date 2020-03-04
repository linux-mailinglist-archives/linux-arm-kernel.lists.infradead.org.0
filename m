Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4E9179005
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7aGeguQtIjvDSjC/wo3K3LjO6VzoFRaxG52DA8Nhg0=; b=TLdoUzdWk/Njh9
	lPGWUL08f87SDmp7YwkB7IOvihNQxfVV51UBfbHgJ2Xt14zF8nq3gdPHdnEFQ2Ye4qh2fNd29CniW
	TEDeHBWDKrvD3hlhupDr+yF5P2BNOkVn1HSK1m4TDwVwR6djQaS9wo2VEkKyRN9n2ycjjJ12yy7Fl
	0eU08Nl86nUaPVwXcf5RHDwe0UBYSK7PQmqk78A9g3c6+GAkgvuym/AeoZtT7l04MrI0F+Hx0ui7r
	sfSRcbvDnmy1V7AE3oYEyr/SoDS6xJSD1GEuCr0tMXt4aab3+GIEpm7/Dn2wXMGHqe5PLbUkA1044
	YiJA/9TRclWaWWhgdTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9SkP-0004jK-Ei; Wed, 04 Mar 2020 12:03:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9SkJ-0004iM-2O
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:03:28 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j9SkE-00046M-B3; Wed, 04 Mar 2020 13:03:22 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j9SkB-0006zp-D7; Wed, 04 Mar 2020 13:03:19 +0100
Message-ID: <a2878b95da2afaeb0eac1a8f2f1991ef5ff9cace.camel@pengutronix.de>
Subject: Re: [PATCH 25/89] reset: simple: Add reset callback
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Maxime Ripard <maxime@cerno.tech>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, Eric Anholt <eric@anholt.net>
Date: Wed, 04 Mar 2020 13:03:19 +0100
In-Reply-To: <e7e2c84206f2cc8c0cb36cd734226f73f3331198.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <e7e2c84206f2cc8c0cb36cd734226f73f3331198.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_040327_114220_6DD765CB 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The reset-simple code lacks a reset callback that is still pretty easy to
> implement. The only real thing to consider is the delay needed for a device
> to be reset, so let's expose that as part of the reset-simple driver data.
>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

This shoulod be done in such a way that simple reset drivers which do
not set the reset delay continue to return -ENOTSUPP from
reset_control_reset().

> ---
>  drivers/reset/reset-simple.c       | 21 +++++++++++++++++++++
>  include/linux/reset/reset-simple.h |  4 ++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
> index c854aa351640..7a8c56512ae9 100644
> --- a/drivers/reset/reset-simple.c
> +++ b/drivers/reset/reset-simple.c
> @@ -11,6 +11,7 @@
>   * Maxime Ripard <maxime.ripard@free-electrons.com>
>   */
>  
> +#include <linux/delay.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> @@ -63,6 +64,25 @@ static int reset_simple_deassert(struct reset_controller_dev *rcdev,
>  	return reset_simple_update(rcdev, id, false);
>  }
>  
> +static int reset_simple_reset(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	struct reset_simple_data *data = to_reset_simple_data(rcdev);
> +	int ret;

You could just return -ENOTSUPP here if data->reset_ms == 0.

> +	ret = reset_simple_assert(rcdev, id);
> +	if (ret)
> +		return ret;
> +
> +	mdelay(data->reset_ms);

Have you considered specifying the delay in microseconds instead?
That would allow to use usleep_range() for shorter delays.

> +	ret = reset_simple_deassert(rcdev, id);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
>  static int reset_simple_status(struct reset_controller_dev *rcdev,
>  			       unsigned long id)
>  {
> @@ -80,6 +100,7 @@ static int reset_simple_status(struct reset_controller_dev *rcdev,
>  const struct reset_control_ops reset_simple_ops = {
>  	.assert		= reset_simple_assert,
>  	.deassert	= reset_simple_deassert,
> +	.reset		= reset_simple_reset,
>  	.status		= reset_simple_status,
>  };
>  EXPORT_SYMBOL_GPL(reset_simple_ops);
> diff --git a/include/linux/reset/reset-simple.h b/include/linux/reset/reset-simple.h
> index 08ccb25a55e6..a5887f6cbe50 100644
> --- a/include/linux/reset/reset-simple.h
> +++ b/include/linux/reset/reset-simple.h
> @@ -27,6 +27,9 @@
>   * @status_active_low: if true, bits read back as cleared while the reset is
>   *                     asserted. Otherwise, bits read back as set while the
>   *                     reset is asserted.
> + * @reset_ms: Minimum delay in milliseconds needed that needs to be
> + *            waited for between an assert and a deassert to reset the
> + *            device.

If multiple consumers with different delay requirements are connected to
this reset controllers, this must the largest minimum delay. Could you
add mention for this in the comment?

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
