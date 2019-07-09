Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B5C63012
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 07:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VBr3HoBt8lgI5TUWjrv75nbcIN9x0dSpvoLABN1hBA=; b=dWmjkrncVq5KZ9
	mXJORp3anUGNecZVHG9JM47mzvt7QGGnAaQP2lEqw/BK9E2xhDvQtJEyvIsl//MGnQFT6KDI9Xins
	5A35l1uJXHdtGh0doZYx96k8tif1G3sUlmvn3SMpGcke/aBuXCzqAAhzmrOJZ/G0LHmmvCaW6Gdz9
	3ZlW3MAVjVyyg/Edal3jra3BLeDlzjVdifB7PRG18oaB9V6D4QLKe9ChS21hIX37dICYjF2Ur/wEb
	tH+m4lfqOGz9H3sq13bR8YE0ymHuQU2jgSKMjjory01tRow0xCNTAxBNB8pr7VRo0yVlZdJ8Eu/Et
	wD0Nk1EZYjylA/CHZRMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkire-0001GZ-Ar; Tue, 09 Jul 2019 05:40:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkirS-0001G1-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 05:40:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so9451297plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 22:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oNfoBSAVs4HwlcfNYsclg/dP1n0XavIgjkMDpD1mPiY=;
 b=qj/En8SAcjlo3abd1feAIjM0u/Mro4Llh0ow4E5dJPGEUYTgknUTKxU1/i+J3jWMBN
 p25OPQsFgd7UEZdsGY6Ix40FcQTMNKciT4LNWrGbY+OeyG9jIxEI2RBpPnmpn5e8ORa4
 k0mt57EeQt3A48ZZOsXkdS5epjRbA1SLO1Ka2SyShqNIbp0lVHJWqYVmsT6VR8FFtQsK
 DFhDLtC7yfbeY27Br1XDph3bkoPnKvgG1iMFUaOUBpyUvVBo8OUPEIO6Xvo+5OHjrrUe
 qRGZfmT4Bcz6Y4Fkj1e6/gkz2Y8JL8TLEthi+V2VYj2DUGcr0fiiOU+Jeg2nsd4X3lBK
 Jjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oNfoBSAVs4HwlcfNYsclg/dP1n0XavIgjkMDpD1mPiY=;
 b=tFdt9fYPSZ+CgUvRyArEf2b9ZpSKWfOOvn+uJGpemE/ul9d26uuV7YtjUVWehmy4Ax
 s0fj6IorNQ2WvyooL1FNdJfq7QeJ86iKjGAnE3WpEtdtGR9TeLFe2hUqMusBaaaCC1ne
 DUfTAQ2NF8H2+Cs7HB6i4vpiFB8/7t/3xe1J++IfCIFBVGf5Lf5BH7RvHRwKDGJlb+Ix
 VSeMkmCNrAUjVOHNyG4FMnEe4Rd2ttCn1ENXjUbk13lp0gaMDRopitnhKJjiOAIAZaAe
 XaesoFJI6U3FrYDhOJv3vBwaVBP+pQVZJPfCPTt5CNDroxhAiCRsriIJg0VzZLvQ3Zlo
 AjJQ==
X-Gm-Message-State: APjAAAW9ASCmDD8424X4B0kE9IOLSpb0GraQlMKz39BFIA5NPOuZbvvz
 vqFfTJLtnSszi9nUQRAcDQYPwg==
X-Google-Smtp-Source: APXvYqyV89mc4OQKczZ8sRKuZ6VoDj+GFu/P2sqMf45IqdFh8iCwtAvZ5SJ+Cb5vmTNA4cnNYsunBw==
X-Received: by 2002:a17:902:b20c:: with SMTP id
 t12mr29930984plr.285.1562650818025; 
 Mon, 08 Jul 2019 22:40:18 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id l31sm41547789pgm.63.2019.07.08.22.40.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 22:40:16 -0700 (PDT)
Date: Tue, 9 Jul 2019 11:10:14 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: k.konieczny@partner.samsung.com
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
Message-ID: <20190709054014.o3g4e6gbovrq3vvn@vireshk-i7>
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708141140.24379-2-k.konieczny@partner.samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_224018_941595_58FA65FA 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-07-19, 16:11, k.konieczny@partner.samsung.com wrote:
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
> 
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). This prepares for
> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
>  drivers/opp/core.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 0e7703fe733f..947cac452854 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  	if (ret)
>  		goto free_regulators;
>  
> +	for (i = 0; i < opp_table->regulator_count; i++) {
> +		ret = regulator_enable(opp_table->regulators[i]);
> +		if (ret < 0)
> +			goto disable;
> +	}

I am wondering on why is this really required as this isn't done for
any other platform, probably because the regulators are enabled by
bootloader and are always on.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
