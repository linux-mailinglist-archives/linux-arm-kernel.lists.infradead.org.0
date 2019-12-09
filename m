Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DEB116584
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 04:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZl2pC+OyxBI68+3tRdTzf8o/u2qCr8p0WspbV5G5M=; b=JHj78rYocyuPnY
	pfL74wy1i3W22uW1WnXf2bpWkEHmpCzYvYUY2dtYya3fxnj2nyZbDfuYInTCJYaCjrhzXfFZb96dx
	chFdhD9tBYA7OhbUs8GuRo3iiaM2MqETJDhAUzfGNl4+3chi4lbcjsCTpMinTqLFqPMQGFNI0Ifzn
	TCs1RSZNHLK6dFlDa6wOB9MEErBW3y+qu9D4g15wSppArTVfAzBHt1fc5tikH/q7ZlsQOSfE6ADrR
	A9c9Ozb+sUvFDMh/JbCRXJCMt6NC0d2tCosh6e2Svwd8OItpJozUcRUIQRyKi+8EHO9HnOZib+xNO
	gKfdxJBOb/cZN+QcID2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie9u9-0002f7-3J; Mon, 09 Dec 2019 03:40:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie9tz-00027v-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 03:40:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4E1920663;
 Mon,  9 Dec 2019 03:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575862802;
 bh=d+hshf6HNbYVQ7YUWyTquZO8CIdL9NhE1d6gbrTXxqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVrbfbQPmtX1764syBxFyHfYgT9SyVYo53w4afoqGNmqZ0yOzCqhl5fqIIBBZsgh4
 uYdJoTij9+ZqM2RdNOBbmPfUJXpQIbigcbGXSwo/rL8sSo+OYACQFr0StELYspkKub
 LqZaBP9P944GTrANZ5qme08q6yAq16Ai13Jh9rv0=
Date: Mon, 9 Dec 2019 11:39:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2 00/11] clk: imx: Trivial cleanups for clk_hw based API
Message-ID: <20191209033946.GX3365@dragon>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_194003_629884_7030D56F 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 10:48:09AM +0000, Abel Vesa wrote:
> These changes are cleanups for the clk_hw based API i.MX clock drivers switch
> longterm effort. As mentioned in the commit messages, the end goal here is to
> have all the i.MX drivers use clk_hw based API only.
> 
> I've put these all in a single patchset since they do not impact in any way
> the expected behavior of the drivers and they are quite obvious trivial ones.
> More patches to follow for the older i.MX platforms but those might not be as
> harmless (and trivial) as these ones.
> 
> Changes since v1:
>  - added a patch that takes care of the register function handling when the
>    clk based API helpers are used, as suggested by Leonard Crestez.
>  - Renamed the SCCG to SSCG, as suggested by Leonard Crestez.
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

I'm fine with the series.  But it doesn't apply to my clk/imx branch.
Can you rebase and resend?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
