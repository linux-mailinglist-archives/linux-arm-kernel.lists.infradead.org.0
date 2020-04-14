Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4471A7EAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z40dWU7F7oo+/Cvxzfs4E0AVNhu3Y2krqwkF3I/bijA=; b=nqmph8CW/Os60B
	S/pKMgSzj+K5eyLYsCV4oZzHW85ZXwzJlnpf5oWOn3fjPyaovmYNoxVjE1LptbZeQaVF3paT64N1p
	I9HMmnBQ6w1UfaJtgLxlacmOsTihckYrPpTKyQsp2lAYE+OkBfCOdao56J8YU63hKlUblLU/6e9PS
	wcruZqep8uIcyPz8zVn1davvGMz6YiyWQBUINEU34leU1ikQJBgGyGWsKszJO/2tTxryT/XTMRC+f
	WcchB1hJCvvWFeanoMAA2ojlb6I7oeHKO9vWFJNy4nu2UXItmXlrCn634zN3TdmnEloTIoCrITwvA
	2RznHY8H9W/umC8cy1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLri-0005kg-0q; Tue, 14 Apr 2020 13:44:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLra-0005k7-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:44:31 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1308E20578;
 Tue, 14 Apr 2020 13:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586871869;
 bh=O3yHi+pTjZnUBnBeMdG1JkADKFH2MW5YvDy4Z2qPrcs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mfe1f9rXR6Rra2tHviW4TL5Mj7F4YzPbqAcxAjObaQXpS/bLsktEHfVM3Ba806NIR
 vsZlKqqILcmKeAT0+EYEcpZcs8TFwty2bcMbyzhesFoegESQi9aDHhkFQM6DHO+Nbl
 I45djuh1LHdiZ/JgMfFRBZ2vr4RdLzA57vQLrKz8=
Date: Tue, 14 Apr 2020 21:44:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 0/4] ARM: imx7ulp: support HSRUN mode
Message-ID: <20200414134419.GE30676@dragon>
References: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_064430_570040_3338C1EB 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 02:49:04PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V2:
>  Fix dt_bindings check

Confusing.  The series posted on Mar. 16 was already numbered v3.  Now,
it goes back to v2.  You should at least have a note to explain how they
are related.

Shawn

> 
> This is a splited part from V2:
> ARM: imx7ulp: add cpufreq using cpufreq-dt
> https://patchwork.kernel.org/cover/11390589/
> Nothing changed
> 
> 
> The original V2 patchset is to support i.MX7ULP cpufreq,
> still waiting the virtual clk being accepted. so to decouple,
> this patchset only takes the run mode part.
> 
> Peng Fan (4):
>   dt-bindings: fsl: add i.MX7ULP PMC binding doc
>   ARM: dts: imx7ulp: add pmc node
>   ARM: imx: imx7ulp: support HSRUN mode
>   ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
> 
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
>  arch/arm/boot/dts/imx7ulp.dtsi                     | 10 +++++++
>  arch/arm/mach-imx/common.h                         |  1 +
>  arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 ++++++++--
>  arch/arm/mach-imx/pm-imx7ulp.c                     | 25 +++++++++++++++++
>  5 files changed, 79 insertions(+), 3 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
