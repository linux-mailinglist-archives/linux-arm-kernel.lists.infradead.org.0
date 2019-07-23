Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39BB70ECD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeLGNfaHWbrU9gFwOAvdOWCwa2Hy8aWFLCloPzlTEK4=; b=IZrzXFqCZoAp+7
	EcJKPSUrLvLllZqgFgWAoYDk6aiFM8K9W+WoBqdLl9fLzPzFnwXxDEjrJFcFpN1kL8J+AklNAZHY1
	Rr7/bRZAcIN7vthy7sOUnc60iBwgXsR/UhHilnaKwqvqq8mBNq5+em4uXwrkh5W3V1qB5oI2w/mXd
	91CBhgSeWLWgI2g8h8WUqzt5GZZ/L0c8Hjxl/X4tnhTJ+r0tOx8V/HT6uWR9pEeyKYzZd6D/Fwx6L
	zJECp/G4ks75bfw9gl6CfyeuwY5DFSfwXO/afhBrjoyPQj11N9K2KP7KWug4R9AN1Jwwb7zPAyku6
	aepcgLA4Cs0x3mrBYpYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjva-00064I-70; Tue, 23 Jul 2019 01:49:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjv6-00063N-4Z
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:48:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so14263520pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 18:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tSmnjYLr4XnnXcZ+h5qygzO/vu9yBr7SlvfWk0oPsHs=;
 b=bqWosns6ku3Fc2lvihluziKAZVN5g9VBJGwdBeEg0niOa9coayRBgsZDKeNrrOGuRM
 1ys7oqabOhX396o7/uZgRtvsq+RrHfJPAzz4LMmYFniinIFq6DcopcyIKUruknf/iuXw
 mXVOugoYmvLSn3rg8nZ9e7Yj39W2wS8wj1q5swlqeZuKRIWIOafWcCH7jhheay8dMc/O
 sLsA9O5eIoQMDMKOlnvPy2nB5b1UhFtNUInIvlZ/jVC4uK3jESSTdRQPSKJQIIMYkZQI
 pSUgqeWC5dONoRzZSzfBpAWTj36R4kWNXVFiTrcaGQH2EoCrlQS09pjY0RAtlZScIcl6
 lVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tSmnjYLr4XnnXcZ+h5qygzO/vu9yBr7SlvfWk0oPsHs=;
 b=Y74U6ieQ0T7bg269+0GUibdNTHefRyDh8R+TSh3PrGW0bGhkJCu68WE4VDDDr0Vyds
 9W/7gz3uM9iTH9K4WEqMaNasqSttpYb0d38pKpdFQZRZ5P8fg0a+X1rMM1sBFP0z+l5q
 RSQ0ZAgp5Rm5jE8nws5HkNP5vbMcljRfspo3GbJyUohDYSU99zftwnVTiBY/YAZrFaee
 kfm/kl/+aUtp9rvssk70ciEoyBzKH+gtIYR19KFRZK+vXS8Z4EV53cRtpOtGfVyX6/n9
 IrZoOXZO5e/SxCbgj0d+lO6nKIIu+9pOGkZ5b0C84/sCm6uKoTOuDXLAKSXmbSOscRQL
 Zz6w==
X-Gm-Message-State: APjAAAWGTNSBVOvt42msLCRz2imvEhu773TzdD64psAu56Dxv3O65stk
 +ZYz8EGoJUdEHEvwor2glJhNeg==
X-Google-Smtp-Source: APXvYqyxp0cHGLs8U/L2DtyISYxwUziJvpXuvUsf8zTcnWojfKIhYVspEl2HKfU7BL6HG2uLn/m/1g==
X-Received: by 2002:a62:d45d:: with SMTP id u29mr3161818pfl.135.1563846527114; 
 Mon, 22 Jul 2019 18:48:47 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o14sm33661343pjp.19.2019.07.22.18.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 18:48:45 -0700 (PDT)
Date: Tue, 23 Jul 2019 07:18:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: k.konieczny@partner.samsung.com
Subject: Re: [PATCH v3 2/5] opp: core: add regulators enable and disable
Message-ID: <20190723014841.yyttacgagktbkwg2@vireshk-i7>
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5@eucas1p2.samsung.com>
 <20190719150535.15501-3-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719150535.15501-3-k.konieczny@partner.samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_184848_195674_3D1AD25D 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 19-07-19, 17:05, k.konieczny@partner.samsung.com wrote:
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). Even if bootloader
> leaves regulators enabled, they should be enabled in kernel in
> order to increase the reference count.
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
> Changes in v3:
> - corrected error path in enable
> - improved commit message
> Changes in v2:
> - move regulator enable and disable into loop
> ---
>  drivers/opp/core.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 0e7703fe733f..a8a480cdabab 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1570,6 +1570,12 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  			goto free_regulators;
>  		}
>  
> +		ret = regulator_enable(reg);
> +		if (ret < 0) {
> +			regulator_put(reg);
> +			goto free_regulators;
> +		}
> +
>  		opp_table->regulators[i] = reg;
>  	}
>  
> @@ -1583,8 +1589,10 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  	return opp_table;
>  
>  free_regulators:
> -	while (i != 0)
> -		regulator_put(opp_table->regulators[--i]);
> +	while (i--) {
> +		regulator_disable(opp_table->regulators[i]);
> +		regulator_put(opp_table->regulators[i]);
> +	}
>  
>  	kfree(opp_table->regulators);
>  	opp_table->regulators = NULL;
> @@ -1610,8 +1618,10 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>  	/* Make sure there are no concurrent readers while updating opp_table */
>  	WARN_ON(!list_empty(&opp_table->opp_list));
>  
> -	for (i = opp_table->regulator_count - 1; i >= 0; i--)
> +	for (i = opp_table->regulator_count - 1; i >= 0; i--) {
> +		regulator_disable(opp_table->regulators[i]);
>  		regulator_put(opp_table->regulators[i]);
> +	}
>  
>  	_free_set_opp_data(opp_table);

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
