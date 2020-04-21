Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E011B1C81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+KE+gD224PFr6NdvlucRYurptLY07/WO05c/lH2Ef8=; b=W57396QLD5pISj
	bxyBIaf7coljNCY5o5uIVs3EDdCuZ1O9rJ7kgYkoykegHM0sd+hIvZrHT1GoFu2ioqazwGFh22Yi9
	30fLGNDVBfEG7ugu8Plqh88TSbwkuWBPnCfZIqs37C8/GNSe27HtOVis7FX979Mb9tyrVYyrhLSBm
	INciake5ltbLBGmt52o7+Iat+JYuW0dFfMLrisTmKGrHVQ68BI01DklhGI8+Uj+fR4DRDDTwo/oAl
	vp0mU6aQW/eaJyyBnrVr3x8K2XiB2vn+C5w809Xm0bOtjiNV4J/43qzscUTc5SEs3YXc4I3MVtma9
	O00RtT71GGt0AFVUQOIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjTd-0003E6-2m; Tue, 21 Apr 2020 03:21:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjTR-0003Df-Cv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:21:26 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11A86206F9;
 Tue, 21 Apr 2020 03:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587439285;
 bh=xEmUHAOoyZcRhEoFa4R3C3VggYvh9vMG39wtbPGgH1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yd21Ne0fDGlsG9hDF1efk/I564yGFpzgFZFsP1yBrZAVAz5nMXJ49sQTAqfnuRauF
 K4AIlzKFC8Fm2XVUUY2lL+xgOjxMvqxl0awzBrCWD/sUH3aEpbyM/4y0rlcmf8VLqu
 bTJ3cC3JKi5NI3xiVwEJxcK++wkD7P9AmlbIh+EE=
Date: Tue, 21 Apr 2020 11:21:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: imx: provide v7_cpu_resume() only on
 ARM_CPU_SUSPEND=y
Message-ID: <20200421032116.GD8571@dragon>
References: <20200323081933.31497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323081933.31497-1-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_202125_457606_2004A6D3 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Clemens Gruber <clemens.gruber@pqgruber.com>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 09:19:33AM +0100, Ahmad Fatoum wrote:
> 512a928affd5 ("ARM: imx: build v7_cpu_resume() unconditionally")
> introduced an unintended linker error for i.MX6 configurations that have
> ARM_CPU_SUSPEND=n which can happen if neither CONFIG_PM, CONFIG_CPU_IDLE,
> nor ARM_PSCI_FW are selected.
> 
> Fix this by having v7_cpu_resume() compiled only when cpu_resume() it
> calls is available as well.
> 
> The C declaration for the function remains unguarded to avoid future code
> inadvertently using a stub and introducing a regression to the bug the
> original commit fixed.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: 512a928affd5 ("ARM: imx: build v7_cpu_resume() unconditionally")
> Reported-by: Clemens Gruber <clemens.gruber@pqgruber.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
