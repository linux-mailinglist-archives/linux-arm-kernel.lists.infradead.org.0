Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D452D1860EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/ORssJ2H53ISs61MaowTwa0ZqK8lUiaA9M6iveWr7Q=; b=Ui4CtlGnc9NKkQ
	g+sG79mzJ9m05OfsRlQqfgQogCGIBfgFQudfi5S9edncT6TMw5rYR1wVhXQav67I7H/BElYm9Ts/k
	WbDpZ30/LSCvRL4BPE6YOGTVmbPua4f403woCVwiQrzmiMCKZKLDqlK9qFIhZFglmlpFeX1f35/3n
	EWm0V4KO+J2zAUt1WRcLICh1SnKA8fjd5UXfRQHlhe/Cm2MbrEmpJVIkNoGSo8hrvrpiExLlwiFoE
	eVNG7chwhJtGIE24i5cVoHECTJ8SnDY+0jhkMkqAWJSIJw03JwO/SvAJ8SsgGF/ntGBlq0GyJeq30
	qusqrvRF5IMXiv1XsYYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvl-0005bv-OA; Mon, 16 Mar 2020 00:48:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv8-0004xq-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:47:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 482C5205C9;
 Mon, 16 Mar 2020 00:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584319674;
 bh=s6CPDhXjtVNGRU8In3e3kagDf6tr13gZhiw5JX4K0CE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PrS1n0O2hE5xdVizU0WiA0Sw+DkXi1c4YNJff2vFXIO2Xj7F7wQRLvdFP35Vwh243
 qLoTQivc06Fq14FXUG+O+Dmrwv6xNzEQ7CWo39tJ74VCwtH0x4E8Wr6NyzbY5fGz9W
 RCy6SNICzkZb75Fp1K0ug7Kd5x5Rymmfl2PweuHo=
Date: Mon, 16 Mar 2020 08:47:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] clk: imx: gate2: Fix a few typos
Message-ID: <20200316004745.GB17221@dragon>
References: <20200308214927.16688-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308214927.16688-1-j.neuschaefer@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174754_952342_7936DA9C 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Enrico Weigelt <info@metux.net>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 10:49:26PM +0100, Jonathan Neusch=E4fer wrote:
> Signed-off-by: Jonathan Neusch=E4fer <j.neuschaefer@gmx.net>

Sorry.  We do not take patch with empty commit log.

Shawn

> ---
>  drivers/clk/imx/clk-gate2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
> index 7d44ce814806..a1230cc215c4 100644
> --- a/drivers/clk/imx/clk-gate2.c
> +++ b/drivers/clk/imx/clk-gate2.c
> @@ -15,7 +15,7 @@
>  #include "clk.h"
> =

>  /**
> - * DOC: basic gatable clock which can gate and ungate it's ouput
> + * DOC: basic gateable clock which can gate and ungate its output
>   *
>   * Traits of this clock:
>   * prepare - clk_(un)prepare only ensures parent is (un)prepared
> --
> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
