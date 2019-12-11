Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8711AB6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlTaRYhulSFopAJXlX9nQxLwxWybNHpAdrDcxuPrsM0=; b=eL8Qg0Qh9UXLsz
	dxriilVsassrjqZXwOsZFAqJEF1Wnvtoav3F7W0SDJjHua4isuxI5N/27i5FTwYqp19beFshwf2Qr
	QRUqZvm7TqzIdxP1mjhlE1tINat+ebk8UdmrICaPtJKioB6Zu2q9kjKUPuxkHiNpHQeFMoSUz92LJ
	o7JRMbuRtuGc4mTB6UtDDb7039kc69H9lB+OspWt+1MSElkLuSY1VQNj6ySshSIJdMm3g4FX6yzV8
	odSJn90NC6e16AzZLOb34Z10DjSE6PYB4a27wa4kzn7Ou0XqnYK2MbFXZ31/APdxkrq9WKoIXS9cY
	HWclhCHRpOFTtPIy4Uew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1aH-0003iB-6a; Wed, 11 Dec 2019 12:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1aA-0003hk-6d
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:59:11 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D1062077B;
 Wed, 11 Dec 2019 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576069149;
 bh=qiT+xSbAZvNk4JKVs9YsOP6T2z7d+7SiVART93y9REw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t+yblEiw4zA7nSQwN9zoBEaTpnJNvwnFK6kGbSNdGSSsUh47Z6aP9z+ZQZjXsg6CM
 lAxPzRkLxMn/X8mYoyzYL/49c+WFOcYc7EJnid7Ikamc5RGKMoUaRIlWuN2UdCZ11Q
 D0kzUxiU0RcwGQ/han+2LdHO2vbI5NekX2MZt9MQ=
Date: Wed, 11 Dec 2019 20:58:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [RESEND v2 00/11] clk: imx: Trivial cleanups for clk_hw based API
Message-ID: <20191211112029.GY15858@dragon>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_045910_316113_E480AE00 
X-CRM114-Status: UNSURE (   7.06  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:25:39AM +0200, Abel Vesa wrote:
> Shawn, just rebased on your clk/imx branch as requested.
> 
> Abel Vesa (11):
>   clk: imx: Add correct failure handling for clk based helpers
>   clk: imx: Rename the SCCG to SSCG
>   clk: imx: Replace all the clk based helpers with macros
>   clk: imx: pllv1: Switch to clk_hw based API
>   clk: imx: pllv2: Switch to clk_hw based API
>   clk: imx: imx7ulp composite: Rename to show is clk_hw based
>   clk: imx: Rename sccg and frac pll register to suggest clk_hw
>   clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw based
>   clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw based
>   clk: imx: Rename the imx_clk_divider_gate to imply it's clk_hw based
>   clk: imx7up: Rename the clks to hws

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
