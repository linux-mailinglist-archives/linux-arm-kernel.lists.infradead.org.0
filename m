Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC050AE4E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 09:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00N6HYH+PDCT5UmdDMh9rd3Y4x+8agylsv5jDS+Ftr0=; b=lIwhD9NgMSB6/S
	hDmjzwCMNZS+fMa2jpHtMc1leU8Mywju2X2IWVBi0PEOsdz5oLZVD18STVzuyrDo8g/dO7SCcCWfZ
	+cKs5fbw5l1dJTZotfBLejHvLS3xqPKoYXC2765rg7XZxg5j7v4ErbjyPeav1JoSxUrqRNUmtuGT4
	LfofTKctni5RY6+gAD8Ps9oFJoYr25+n13Kqev9fe4NjKleH0S+Qw0sFdMScy3dcWWoWCpsgHf414
	3YpJzGrcYiPpfsRDxQ5DZekZl62i4Y4uP4f9n36MtTceOxLVT15wQEZn5/W1wMFP3JzjM0XgZeEmA
	4Np+OVqJOlt4yrYmd0yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7atB-00017L-KA; Tue, 10 Sep 2019 07:48:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7asx-00016b-RY
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 07:48:25 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i7asq-0002ke-3N; Tue, 10 Sep 2019 09:48:16 +0200
Message-ID: <1568101695.3062.1.camel@pengutronix.de>
Subject: Re: [PATCH] reset: uniphier-glue: Add Pro5 USB3 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Date: Tue, 10 Sep 2019 09:48:15 +0200
In-Reply-To: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_004823_897033_398190D7 
X-CRM114-Status: GOOD (  16.79  )
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kunihiko,

On Tue, 2019-09-10 at 10:55 +0900, Kunihiko Hayashi wrote:
> Pro5 SoC has same scheme of USB3 reset as Pro4, so the data for Pro5 is
> equivalent to Pro4.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

If it is exactly the same, you could keep using the same compatible:

> ---
>  Documentation/devicetree/bindings/reset/uniphier-reset.txt | 5 +++--
>  drivers/reset/reset-uniphier-glue.c                        | 4 ++++
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/uniphier-reset.txt b/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> index ea00517..e320a8c 100644
> --- a/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> +++ b/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> @@ -130,6 +130,7 @@ this layer. These clocks and resets should be described in each property.
>  Required properties:
>  - compatible: Should be
>      "socionext,uniphier-pro4-usb3-reset" - for Pro4 SoC USB3
> +    "socionext,uniphier-pro5-usb3-reset" - for Pro5 SoC USB3

+    "socionext,uniphier-pro5-usb3-reset", "socionext,uniphier-pro4-usb3-reset" - for Pro5 SoC USB3

[...]
> diff --git a/drivers/reset/reset-uniphier-glue.c b/drivers/reset/reset-uniphier-glue.c
> index a45923f..2b188b3bb 100644
> --- a/drivers/reset/reset-uniphier-glue.c
> +++ b/drivers/reset/reset-uniphier-glue.c
> @@ -141,6 +141,10 @@ static const struct of_device_id uniphier_glue_reset_match[] = {
>  		.data = &uniphier_pro4_data,
>  	},
>  	{
> +		.compatible = "socionext,uniphier-pro5-usb3-reset",
> +		.data = &uniphier_pro4_data,
> +	},
> +	{
>  		.compatible = "socionext,uniphier-pxs2-usb3-reset",
>  		.data = &uniphier_pxs2_data,
>  	},

And this change would not be necessary.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
