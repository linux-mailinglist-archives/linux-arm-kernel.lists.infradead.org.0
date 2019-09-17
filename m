Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88967B570F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4IkjU+y1mBP1UNk3QspAd+9OfwFnVwGzOOK5Sqbd0A=; b=OSeRIA5Z3Gqv/c
	LJGaL63j1o8uaZfdzyPYX9qqLDhHIRQMbRLo4WqYMhovSbMagMEl24POObWfFghFQdgH876xVnIy5
	awSOuDbj+Wa0r5Wpvre1FIJuZ2Aiurxt5UbbB3tejDCAacdRrspKG0ABPNz9mJiDJgz44zzg7LPb5
	7uuYBqZnkHZDQ+Na1ksKlcZWKVFaXzVZy6ynOXElIeJYvzlkeAL6dtIvqmQSJ7XfeQ6jiDBb75Ayb
	epMrd8kf6Td8jUd83sFD3jxfFDaxvZ0bCwRIvLTIzJ5bRtUvSf23a1Sa2HV1si31z1cyiBTp+VDAo
	ds6ep6aXJkmb1Z3l6hrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKFh-0005Bt-Ec; Tue, 17 Sep 2019 20:39:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKFT-0005BA-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:38:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CF702054F;
 Tue, 17 Sep 2019 20:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568752734;
 bh=kVUefUbXR0mBH5Ui5KzFtZDJlyTMzgtjcJqAGMFeGQc=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=DqQiSuG8aBiB88+nJ8OiopeOGKmBr7luh2PMR/vvYacQpSyOGMkttJlq/epSiU9ML
 Z7kCDaXWsgcZ5v+U/SpGFQgKncN1BZ0e1ajvmg3ZtM5x8dWtKKSlFLDUvhEuHrFMSF
 79UguoiFq3rajxJtBDsAZoxbmPHKwTS9xAB/pQms=
MIME-Version: 1.0
In-Reply-To: <20190916161447.32715-3-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-3-manivannan.sadhasivam@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 2/8] clk: Warn if clk_init_data is not zero initialized
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 13:38:53 -0700
Message-Id: <20190917203854.8CF702054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_133855_079351_D21701E6 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-09-16 09:14:41)
> The new implementation for determining parent map uses multiple ways
> to pass parent info. The order in which it gets processed depends on
> the first available member. Hence, it is necessary to zero init the
> clk_init_data struct so that the expected member gets processed correctly.
> So, add a warning if multiple clk_init_data members are available during
> clk registration.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/clk/clk.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index c0990703ce54..7d6d6984c979 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
>         if (!num_parents)
>                 return 0;
>  
> +       /*
> +        * Check for non-zero initialized clk_init_data struct. This is
> +        * required because, we only require one of the (parent_names/
> +        * parent_data/parent_hws) to be set at a time. Otherwise, the
> +        * current code would use first available member.
> +        */
> +       WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
> +

This will warn for many drivers because they set clk_init_data on the
stack and assign parent_names but let junk from the stack be assigned to
parent_data. The code uses parent_names first and then looks for
parent_data or parent_hws because of this fact of life that we've never
required clk_init_data to be initialized to all zero.

>         /*
>          * Avoid unnecessary string look-ups of clk_core's possible parents by
>          * having a cache of names/clk_hw pointers to clk_core pointers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
