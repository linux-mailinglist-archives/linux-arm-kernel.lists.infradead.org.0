Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA00E755E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVqH5geeHOFdoAarHAWo7hGoO1k2UeK5vt7TxcgPrgg=; b=QXSUTQ5H7Gike+
	f/kBeEQtBlBhxdikDcG+SByLGcRrgYtlgTUHXzM+V17tn7og8keMqhp5pVX+0n2Jz7CjDNg16xvPO
	6YqwNyYMGLd+IEwA3lS82lVw2esDj1I7vAF0TbGkU3XUlpolk9j5kozCFbf34OMI+zoWA5EL32prk
	C63Ymt+rNjzVOYgZzZDmCfGx5oGEKqIjaFZNpeSzUcXsd1uvbCjqTZl2JDOwc1pzPyJEb5ZnwmfHH
	gDOwkuvsJh5gQ3fqjun9hSF1vXNfmQXbM0UhGPZ5IKeM+wVeiVUp41hPy95lSReurfr3L6sCpiAWL
	jZ08mEWn8NMo15KojHoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7BI-0003bZ-Lw; Mon, 28 Oct 2019 15:43:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7B4-0003b2-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:43:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7068F208C0;
 Mon, 28 Oct 2019 15:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572277410;
 bh=C+rKFmVAW85HqF5Q2tZqbzx2fR29+zHePsntThp0M3k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xDSbs4LDfq5owyR8M7SUXS6b2FrPZq5WAQu7iLhwsmwAVHF0ZrUBIlBp0NR1A2Fvg
 QdukwEXPRHwuWf3MB2P9hlffBmctRTbd3pyujaJdwwFnLTKC5Mfu4I0ph2//7Zxhvh
 XVG+ukIh+waIeL89u/0sj9tysP9mgsvREuBK8xpA=
Date: Mon, 28 Oct 2019 15:43:26 +0000
From: Will Deacon <will@kernel.org>
To: Marek Bykowski <marek.bykowski@gmail.com>
Subject: Re: [PATCHv3 1/2] perf: arm-ccn: Enable stats for CCN-512 interconnect
Message-ID: <20191028154325.GC5576@willie-the-truck>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
 <20191016110612.17381ad6@gmail.com>
 <20191016115739.0d5d2272@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016115739.0d5d2272@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_084330_972828_0CEC17FB 
X-CRM114-Status: GOOD (  14.42  )
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
Cc: mark.rutland@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org, pawel.moll@arm.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 11:57:39AM +0200, Marek Bykowski wrote:
> Add compatible string for the ARM CCN-512 interconnect
> 
> Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
> Signed-off-by: Boleslaw Malecki <boleslaw.malecki@tieto.com>

I've queued this (and the docs change), but does it really need two
sign-offs for a one-line change? Boleslaw isn't even on cc!

Will

>  drivers/perf/arm-ccn.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
> index 7dd850e02f19..b6e00f35a448 100644
> --- a/drivers/perf/arm-ccn.c
> +++ b/drivers/perf/arm-ccn.c
> @@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
>  static const struct of_device_id arm_ccn_match[] = {
>         { .compatible = "arm,ccn-502", },
>         { .compatible = "arm,ccn-504", },
> +       { .compatible = "arm,ccn-512", },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, arm_ccn_match);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
