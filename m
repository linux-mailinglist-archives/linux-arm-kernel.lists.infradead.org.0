Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3721A711ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2+sLMCtz3FSlTrcvhHHKIgTh4wTqR59sQjFrQXw2jA=; b=ltVsyNlWP3ufVH
	zF9il0Z5K1HX7I8eBAy8DywZ0WBBu5xwyq+W4IZDnXbFvAt+m/5Y416Ow/qIcZhpwnDb69w9S/dw6
	f25rMUXctCoUxTdlw0VyOstdqi7zgP/izLPMFoyo3CqKsX6TQ1ZDPLuI4z6S3/QZoO6svGrS3xYX8
	iNlCMG4spkmFBoNCqlkeBqgusbhA1LyQSuc/+qqymH48KmdMO3gXdZfAjnxpboKM3REBwGvifoGJ4
	nexmbU2jfCf5c3jd+9CYpJUtJhUPoAx2dEmds9tndgdpM+AAshuTnYiFrV9yVER9LUS+IsQMytgqF
	XvYEUqzqdxEfzRZXEO7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpoMk-0001ii-Id; Tue, 23 Jul 2019 06:33:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpoMW-0001i9-8n
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:33:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E5352238C;
 Tue, 23 Jul 2019 06:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563863603;
 bh=5QzpEX9xB74WtsuRfUjsDi+zdmjw8E5hXLVNHVBt3YM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ovPV1Bm9y+YiX2AbuUCWsK+OGLwIr5CqHu6QAtMMcV/pxzAs69l9Wq+l4cgaDFX6+
 JuI0a3bWo9au2uNz13wvnVXObTCS1yEG3aUZ8aGRyWFfh4qRhMIRhnaVLWEWGMWqrd
 Hv+HJqVcInnUWHeKdtLKdjZr8WUeLuy7jU4Xyscc=
Date: Tue, 23 Jul 2019 14:32:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: imx8mq: Add DT node for the Mixel
 MIPI D-PHY
Message-ID: <20190723063248.GD15632@dragon>
References: <cover.1563187253.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1563187253.git.agx@sigxcpu.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_233324_330401_FF25CA39 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Pavel Machek <pavel@ucw.cz>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 12:43:04PM +0200, Guido G=FCnther wrote:
> Now that the driver is in linux-next as of 20190624 let's have a DT node
> for the i.MX8MQ and enable it on the Librem 5 devkit.
> =

> Changes from v1:
> - Add Acked-by: form Angus, thanks!

You do not need to send a new version for just collecting ack/review
tags.  I did that when applying v1.

Shawn

> =

> Guido G=FCnther (2):
>   arm64: dts: imx8mq: Add MIPI D-PHY
>   arm64: dts: imx8mq-librem5: Enable MIPI D-PHY
> =

>  .../boot/dts/freescale/imx8mq-librem5-devkit.dts    |  4 ++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi           | 13 +++++++++++++
>  2 files changed, 17 insertions(+)
> =

> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
