Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E78E6D9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfGXOBDtUJOmW7Fcrv0iRY4MuqUgcqGY4XDRhLF5hfE=; b=bghuDsb8l6ySHX
	JpJ+RJiCVrMPHeRXM9q5NwENBxNO1yGP8LQw+oZ8YKwnFN9S8YMyX7KPr6MhMU7/qG0JVD4+QwQuJ
	Fcr6rg83HttCPyl3qbKWWMjJJAqnVAsrickgbdDjrEBUOfzlM4I2ckbtC9HF/SOC1tb4r4C8utLKN
	f276ZqTjPhSrjXsvsmpPpWqB50hw0yFBFHLUlraVSgZYv5pPJ4ZuUiXkKCgL1cpwDsPtjB7X8+AAK
	fVc7RLVUu/QGHMKIaB/qqlkPv//fo/wNMRM3eNnsd+7mtOt6v+7szUgpE7WnHVVNVmMZlGmXEi7uQ
	NYGkid0jStdX3uZCZxdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzto-0005J7-R1; Mon, 28 Oct 2019 07:57:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOztf-0005IY-MS
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:57:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A96620650;
 Mon, 28 Oct 2019 07:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572249423;
 bh=7WSAwIvIMmCnPFbnYVFD8qYwityLxzs0vjC/ubdcMoA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gx3AXM/ir5pciLBeAaR22OBYiMfLES8rhG0Iv3VHtB96zQoTXZS3w1aCpbsvSN8e5
 ky/KDRl2xKeD+GUeARJYhc5rbRRRlQqhTDfskXucyXRD/4nBjXhB1w1ETnyBRYz8XK
 w+YvPKXqQnWo2HIIsMdnRQ2zoAYX1HEbk5uxsoYc=
Date: Mon, 28 Oct 2019 15:56:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rogerio Pimentel da Silva <rpimentel.silva@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq-evk: Add remote control
Message-ID: <20191028075638.GS16985@dragon>
References: <20191022192038.30094-1-rpimentel.silva@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022192038.30094-1-rpimentel.silva@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_005703_757876_DB512F7E 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Baruch Siach <baruch@tkos.co.il>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 04:20:34PM -0300, Rogerio Pimentel da Silva wrote:
> Add remote control to i.MX8M EVK device tree.
> 
> The rc protocol must be selected by writing to:
> /sys/devices/platform/ir-receiver/rc/rc0/protocols
> 
> On my tests, I used "nec" rc protocol:
> echo nec > protocols
> 
> Tested using evetest:
> evtest /dev/input/event0
> 
> Output log for each key pressed:
> Event: 
> time 1568122608.267845, -------------- SYN_REPORT ------------
> Event: 
> time 1568122610.503835, type 4 (EV_MSC), code 4 (MSC_SCAN), value 440
> 
> Signed-off-by: Rogerio Pimentel da Silva <rpimentel.silva@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
