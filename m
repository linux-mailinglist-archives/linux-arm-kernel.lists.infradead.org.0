Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F8AE9EAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfHm7Id94Smw+D7XKGpvKSLRTMlHkhu85khJJEvt5Y0=; b=BSEDcWl3UVeoAB
	LNVkCzwFhozn58teW5iv+TO2HJTkQqKOx2PTAxamuCmQQrM9Kk9U+Y/qAfyvm9OrqWKHFfP90pAUL
	0YOB24HFsbKCFL3NgARA6DYv/Cm2E+LnNNOz3vNFUmk4usGeLqn+oGKW6XK+NHd96vaBSA42O/4P/
	cfW/IRcxtTAvOtoosQlopTunZRE3fpz3ZsbDsSt/D0ETOL6WyFim2PVoU2ODwd8aQDiyfBwoWhfU2
	6/6yJIU4GuCg8uqyJYDm/o49zlm9Zk2WYgRlT4DMadQIVj0GasfjV75qoGJQkqv23tlQlap+dSRbt
	DIObAFBoou/KMp/J7kEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPphe-0000WL-9A; Wed, 30 Oct 2019 15:16:06 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPphU-0000Ug-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:15:57 +0000
Received: by mail-ed1-f65.google.com with SMTP id l25so2040250edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y+WK5GKecV/KBDUIy9GWTH4bwpBGohOzkeFmBQZf1R0=;
 b=IA7Lms6aQggPdgi/VL3MmQA55/rivsk8eJBaFFj1Z/1wv855aOXmoN1fDF07PBgp0g
 6x2rKuNJB5PyUY5dh2cTwp0xz26cIlSsOTpmJU+yyH4z19jBklyVxqoS2q+ZEBp7pPtw
 0Fqp196vazaQ9sP1f27Swefo0PP1yWU/RCR+9aF1X+9kgE+QX9F6DzDMiCBBxxKL6fX0
 pDrofexSpi2LD4F/YCs6Df9tXOo5uyQ2tZ6TXD5s+1yXPrDB4bQICDZhqgWcETCfFhpo
 b6i42ZAVPJVSowmKyPlv3zjZcp/NfALrtjOyEkduGRVpKPaL2ZMbDwoQv0RD7HxDIrbN
 jhbA==
X-Gm-Message-State: APjAAAVjA2qWGxM0ZafSg+wa+XDOZRUy1Mz/VjjNk9g6wacz0UBJaMEA
 mN8nUXEwBG2bJ+FdGYQ346YuYQ9x
X-Google-Smtp-Source: APXvYqzW36JMfOP+9Ckkk57hi580dnNzKCE+o0IDHat7XROi4wbyfWLMRXpJoPeDKapILbXIURAeVg==
X-Received: by 2002:a17:906:85da:: with SMTP id
 i26mr25000ejy.186.1572448553957; 
 Wed, 30 Oct 2019 08:15:53 -0700 (PDT)
Received: from pi3 ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id 32sm6111edq.23.2019.10.30.08.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 08:15:53 -0700 (PDT)
Date: Wed, 30 Oct 2019 16:15:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] soc: samsung: exynos-asv: fix potential overflow
 in multiply
Message-ID: <20191030151551.GA25718@pi3>
References: <20191030145457.10120-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030145457.10120-1-colin.king@canonical.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_081556_599468_5B6B5D80 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 02:54:57PM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The multiplication of opp_freq by MHZ is performed using unsigned int
> multiplication however the result is being passed into a function where
> the frequency is an unsigned long, so there is an expectation that the
> result won't fit into an unsigned int. Fix any potential integer overflow
> my making opp_freq an unsigned long.  Also change from %u to %lu format
> specifiers
> 
> Addresses-Coverity: ("Unintentional integer overflow")
> Fixes: 5ea428595cc5 ("soc: samsung: Add Exynos Adaptive Supply Voltage driver")

Although I like the idea of using the same type as the
dev_pm_opp_find_freq_exact() interface, but I do not agree with severity
of this. This is currently only ARMv7 (32-bit) driver, so using long
does not change anything. It's still 4 bytes and it is still up to 4
GHz.

Therefore on ARMv7, the possibility of overflow is exactly the same as
before. Nothing was fixed.

If we really want to fix it, then all this should be "long long" or
value should be checked while parsing DT.

Semantically I agree, so I would prefer to adjust only the commit
message.

Best regards,
Krzysztof


> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/soc/samsung/exynos-asv.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
> index 8abf4dfaa5c5..d66fc74379a3 100644
> --- a/drivers/soc/samsung/exynos-asv.c
> +++ b/drivers/soc/samsung/exynos-asv.c
> @@ -30,7 +30,7 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
>  {
>  	struct exynos_asv_subsys *subsys = NULL;
>  	struct dev_pm_opp *opp;
> -	unsigned int opp_freq;
> +	unsigned long opp_freq;
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(asv->subsys); i++) {
> @@ -51,7 +51,7 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
>  
>  		opp = dev_pm_opp_find_freq_exact(cpu, opp_freq * MHZ, true);
>  		if (IS_ERR(opp)) {
> -			dev_info(asv->dev, "cpu%d opp%d, freq: %u missing\n",
> +			dev_info(asv->dev, "cpu%d opp%d, freq: %lu missing\n",
>  				 cpu->id, i, opp_freq);
>  
>  			continue;
> @@ -68,11 +68,11 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
>  						new_volt, new_volt, new_volt);
>  		if (ret < 0)
>  			dev_err(asv->dev,
> -				"Failed to adjust OPP %u Hz/%u uV for cpu%d\n",
> +				"Failed to adjust OPP %lu Hz/%u uV for cpu%d\n",
>  				opp_freq, new_volt, cpu->id);
>  		else
>  			dev_dbg(asv->dev,
> -				"Adjusted OPP %u Hz/%u -> %u uV, cpu%d\n",
> +				"Adjusted OPP %lu Hz/%u -> %u uV, cpu%d\n",
>  				opp_freq, volt, new_volt, cpu->id);
>  	}
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
