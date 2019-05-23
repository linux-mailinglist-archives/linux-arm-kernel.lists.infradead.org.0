Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C0027DCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCrGVe6fdtu2XWhInIH1OL1T+1djLbPqerDJNN5+8so=; b=Ij/8onfyUXMlbx
	JVSG2fKhoTafFPP1Xe/HR5HEWR2dS6oyjQSLWznmi7YCQL9W51GUuoayuGH/rqXVKXF4eVJjG5xhM
	d6ZzPrHwpmLe5YTRPVG8qLhhsRRs3XLz+8FApTBwCppIt8/tnNsf4A4kUotQk7056Awjw/K7dUPfg
	5FYhjN0pcJUrP60m1msGG2XwhsvO1bEydQNBONP2SjBkplnKTCYr4npIb/EzhLNsKlRzdAFudXRSX
	K+y3v0EcfRbjH88iRZ6nxkm5u2+EoeBVFED5OagHnX0un9gA9I8gEDc1hd7TFj2PYwiOHRGSP+8Fl
	11X+mVxxn7PgLp2FJRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnXI-0002oa-GW; Thu, 23 May 2019 13:13:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnXA-0002o8-VG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:13:26 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7907A20851;
 Thu, 23 May 2019 13:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558617204;
 bh=i7lYr45x2CNGJaVE1I+vswY/B6Ep0jfoFOLag/jMchc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sEUCzJUidA3eyt8eg3BWuPceRxfrp0mSFsGy5xctpfatiZ6q8QaoT4l6IBsNmcj0v
 +NZoqhxb1QNjkuPRez2oTcnledgt9qFut3OzqY7PGTbo/i0w6ksYGTj54GXV/qeYB5
 vV9GCxeGqPvKEb1knG0MxxtJrtHDNvtp2gRZc+Zw=
Date: Thu, 23 May 2019 21:12:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 0/2] clk: imx8m: Add GIC clock
Message-ID: <20190523131219.GX9261@dragon>
References: <cover.1558518323.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558518323.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061325_017861_F183E5C9 
X-CRM114-Status: UNSURE (   8.25  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 09:48:28AM +0000, Leonard Crestez wrote:
> Add gic clk and mark it as critical so that parents are not turned off
> by accident.
> 
> Changes since v1:
>  * Add imx8mq
>  * Split dt-bindings to separate patch
>  * Rebase on shawnguo/clk/imx
> Link to v1: https://patchwork.kernel.org/patch/10940303/
> 
> Leonard Crestez (2):
>   dt-bindings: clock: imx8m: Add GIC clock
>   clk: imx8m: Add GIC clock

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
