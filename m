Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D211A9F9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 03:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQcHcmp/IuPWNGvYXqi03eXRhNJ7UaKUxgM8MEda0fg=; b=Owa99vPePrZrcz
	7MKvbs2EievxMqZk9q5+wyFUAA0qy1uiTdoBxR0vcooIeoVbihcQHiekVJUtkFVQCfctqkpz0nsja
	mGRfLBqt8v34sVJbtiKLTpsd6I78bieOrPMrcem+tPuO2YEC8f5tD8wl4tGOy8n+V+y3ozCZhgBOW
	8GtnEsQdUH/7EZss+cmLESkuLMBmdr5itG0zxQ4GlZLWswzzjZ93/ChrOJfHiBhYRHSMWjbPB18Er
	aphBvvFB1ZTwX5KLuvDpWZTvUqL79gB6+j7dYJSiU0csYW2xWH4cuay1YsSN1M3j3l2COtiODAzCm
	yBEuQgvXAg8oQwMFvHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPdK3-0006dr-Oz; Sun, 12 May 2019 01:30:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPdJw-0006dV-5O
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 01:30:33 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4527A2146F;
 Sun, 12 May 2019 01:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557624631;
 bh=sa7egvkcBjJP+/4O4tBOAUF0eYA7a90YlTdMgsQcJes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i55OgSq1V5HkURHE2MoeBK+V2oS9cbSJyIO+AlYhTFS4hA2W/2k7uJwwVLNi+ucIK
 O7JMKaewb8NzZPlv6QM0/sC69O+SHZ74/s7a4AtWFLTT1uZCF95ZLqqlRcDyJpnqaq
 KKHS8JFK4QHXE1PDVRW28BfKJhnCLL2DiIEg768U=
Date: Sun, 12 May 2019 09:30:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 0/2] Enable wm8524 codec on i.MX8MM EVK
Message-ID: <20190512012959.GM15856@dragon>
References: <20190424150350.7963-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424150350.7963-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_183032_222125_CC6A8F9B 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 03:04:12PM +0000, Daniel Baluta wrote:
> This patch series introduces the SAI nodes on i.MX8MM EVK then
> creates the wm8524 codec node and finally uses simple card machine
> driver to create a sound card.
> 
> Changes since v2:
> 	- place compatible strings one a single lines
> 	- move GPIO pinctrl in a node of its own
> 	- remove codec phandle
> 
> Changes since v1:
>         - use "fsl,imx8mm-sai", "fsl,imx8mq-sai" compatbile strings and
>           remove "fsl,imx6sx-sai" because SAI module on i.MX8M is not
>           compatbile with SAI modules form i.MX6
> 
> Daniel Baluta (2):
>   arm64: dts: imx8mm: Add SAI nodes
>   arm64: dts: imx8mm-evk: Enable audio codec wm8524

Hi Marco,

Are you fine with this version?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
