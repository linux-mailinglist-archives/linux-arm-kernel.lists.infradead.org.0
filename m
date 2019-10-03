Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EC0CB01A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wwcj4bSH7b9z7AuM4d1dQq2tN3rF/sTzd9v4+z8cK3s=; b=LrDaZ+gk4dM3Io
	Lo7TYum2Wy4E86Gin/9bL6kL5oQ4m8goon3Y2ABekv3a+q5GKhrOZnWC+GDM6+VbzYXc24Ys5gLm6
	JKB9D9KElAEstEgkgUFY6lrrccVskRKPEo3VP5UwnderOqxm8mlDb+CXHYTrsFIjW9FAhw1rWOJjO
	0pRVqTGOp6+oFLKGaKbl37IgPwiTSCFjKnuKgguV3cRf3SvpKVMgvHD9bInf2nooOC71Efhlk8X9E
	m8tI1UecVB3KdVC9BriASdI/fT/QKkU5fIvBDFW3VLLWf0cAqEQADPNirM9R9gr/7aOP8RPItZjOq
	5LuQiiuFf83RvxfLbLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7gK-0004Rh-LY; Thu, 03 Oct 2019 20:26:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7gE-0004Qs-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:26:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2ABB20862;
 Thu,  3 Oct 2019 20:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570134387;
 bh=jFnbR5AMDd9ph3gWWRIGQf/AuwZ+qx+EEfIXSSgKEvE=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=VVK3HtIfxAnUqKczTjdKvK7SEdDp9rpAOnzBiCCqWdMQg/B+th7HzaDNExPinXFSj
 eFa2iUZXAXdxsLGZPULQw4XPD/lpHP8Alvc+6LasxLI0CK9llGRLCwO2+DiGRRladw
 S54vgwpqtDNHa/ta84AZuWFR2ahw45thPtmtPDeQ=
MIME-Version: 1.0
In-Reply-To: <20191003201837.86824-1-swarren@wwwdotorg.org>
References: <20191003201837.86824-1-swarren@wwwdotorg.org>
From: Stephen Boyd <sboyd@kernel.org>
To: Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>, Stephen Warren <swarren@wwwdotorg.org>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH V2 1/4] clk: tegra: mark fuse clock as critical
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 13:26:26 -0700
Message-Id: <20191003202627.A2ABB20862@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_132630_260713_45FEF7AD 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-tegra@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Warren (2019-10-03 13:18:34)
> diff --git a/drivers/clk/tegra/clk-tegra-periph.c b/drivers/clk/tegra/clk-tegra-periph.c
> index 1ed85f120a1b..76dd91eebd13 100644
> --- a/drivers/clk/tegra/clk-tegra-periph.c
> +++ b/drivers/clk/tegra/clk-tegra-periph.c
> @@ -785,7 +785,7 @@ static struct tegra_periph_init_data gate_clks[] = {
>         GATE("ahbdma", "hclk", 33, 0, tegra_clk_ahbdma, 0),
>         GATE("apbdma", "pclk", 34, 0, tegra_clk_apbdma, 0),
>         GATE("kbc", "clk_32k", 36, TEGRA_PERIPH_ON_APB | TEGRA_PERIPH_NO_RESET, tegra_clk_kbc, 0),
> -       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, 0),
> +       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, CLK_IS_CRITICAL),

Please comment in the code why it's critical so we don't have to dig
through commit history to figure this out.

>         GATE("fuse_burn", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse_burn, 0),
>         GATE("kfuse", "clk_m", 40, TEGRA_PERIPH_ON_APB, tegra_clk_kfuse, 0),
>         GATE("apbif", "clk_m", 107, TEGRA_PERIPH_ON_APB, tegra_clk_apbif, 0),

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
