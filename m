Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584681D1766
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQiF62scAwMfEy3F2Pkmx0oYZd8tkGpdxJPkUVrLL3Y=; b=gOKPJWNFhcMRbF
	lLZkYtZ1dxtZ3rpwZfDGjtUVrLwFhRv3RTcoGOBXQFRtcjYRomgmp/TjtJaL363srHVTNyOq6EuKx
	+yqI+MvHVo9A/BcISBy/Ulfz1jhfSE62eUlMw1zjAYQsNAFE1h/MzesUVRrlvHO3RJ/oYg7UgVOX1
	BcWHXgMiVs0uMsmf6IV0vIfU2iT8hSUA6DsZenjWMSlCUj67OPGju/g7pcM3zYrTunxcsGeU3eXkj
	83Gp9o8GEl3xTjKu2Sdr4vc/JPbTr1bdraHkm4ZSQ3I8WYq9n1vrC0aicxDR0IMdRrYatxbksbQoz
	8e1OgbxfRjcPoo3A2+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsEn-0000Sk-Pn; Wed, 13 May 2020 14:19:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsEZ-0000Nr-TR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:19:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so28733243wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 07:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BzAexTZdGzkbU+qJJMsz3TVTPGgn5vUNElmT2RDA+0U=;
 b=EMSk3UsQmqMg3qEBeIiZBKeutU51C2Am8qcTqR7Q2SowTC8lSSMSOTktt+pODhHRqu
 /zflH4TS2WyqQZ1bXRIN22wwOvMJCkJj1MfbpJtMBW2brWoJlSqqkWsnLOjHvij6SGt1
 eDQNH/b9oxeBVrvMV7yB7YGvt8GEHzvCmz0oTUPs79f2ghXYwlEk6x4XECsJywANYj15
 B6NpF89xsgtyaYqwfXgFF5bJ45LB/wRkbPI8zvn+8MWbrk3bTII/QMl0xuYmcx0rsTS5
 6netlog87B91EQZD9i6sfEILUPnRx13EFZUG4UtDPWTcwYESOI7PV7Lxfq1vTXWcHalv
 x/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BzAexTZdGzkbU+qJJMsz3TVTPGgn5vUNElmT2RDA+0U=;
 b=DsugNbYUy1xEo2ZsCgaQvWTIuy9gh7WhWjcT79Uaw0hKJRNA0Bh6jcFhxcG988/Rw5
 A9LUO1mggAAAdsqmlPd7cROwg+B6IfYN/lOqtt3lWVmYkPQ47MFkGUTESkTDnixnMw/j
 T18RCY99ZvHfpKCBcDKj42Tb0K38IVoFjYWT4vVm0QCeRB9ldIgWi6KxY0i4IZr5eeHP
 XaNF7uQ824KeZxUclDE5d2Ox96v3S7xRQNFcbJvjKeYTzCGXVPMZtYW9wKfLAa2DkSnR
 2f2ONz6Eei3jwbw/5U+fW77D/yx7wcEA7MBtgruXTIrnJtXbzzjzl4w2uar2GzFBZUYI
 uV6g==
X-Gm-Message-State: AGi0PuYMMWZELPSt55xgfElRIdUt1oQzVfJUQOP1hQLkTEIRKRZqn8ib
 dFPBeDNurUwTYbZnaait2vtDTA==
X-Google-Smtp-Source: APiQypLlLxrBWuZUOf7uO7jUrf5MahbqULe0GeT1lcuPz15SOwBAA5AV5SB9vJ2x/uvf5Q7yBD3egw==
X-Received: by 2002:a1c:9e51:: with SMTP id h78mr46248266wme.177.1589379581774; 
 Wed, 13 May 2020 07:19:41 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id s15sm1950722wro.80.2020.05.13.07.19.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 07:19:41 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] soc: amlogic: meson-ee-pwrc: add support for the
 Meson GX SoCs
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 robh+dt@kernel.org, khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
 <20200420202612.369370-5-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <b8399d8f-5ff7-0911-21a1-70158d93789b@baylibre.com>
Date: Wed, 13 May 2020 16:19:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420202612.369370-5-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071944_166431_61430E33 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/04/2020 22:26, Martin Blumenstingl wrote:
> Add support for the Meson GX SoCs to the meson-ee-pwrc driver.
> 
> The power domains on the GX SoCs are very similar to G12A. The only
> known differences so far are:
> - The GX SoCs do not have the HHI_VPU_MEM_PD_REG2 register (for the
>   VPU power-domain)
> - The GX SoCs have an additional reset line called "dvin"
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/soc/amlogic/meson-ee-pwrc.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
> index b30868da456a..a90572cb9c82 100644
> --- a/drivers/soc/amlogic/meson-ee-pwrc.c
> +++ b/drivers/soc/amlogic/meson-ee-pwrc.c
> @@ -16,6 +16,7 @@
>  #include <linux/clk.h>
>  #include <dt-bindings/power/meson8-power.h>
>  #include <dt-bindings/power/meson-g12a-power.h>
> +#include <dt-bindings/power/meson-gxbb-power.h>
>  #include <dt-bindings/power/meson-sm1-power.h>
>  
>  /* AO Offsets */
> @@ -73,7 +74,7 @@ struct meson_ee_pwrc_domain_data {
>  
>  /* TOP Power Domains */
>  
> -static struct meson_ee_pwrc_top_domain g12a_pwrc_vpu = {
> +static struct meson_ee_pwrc_top_domain gxbb_pwrc_vpu = {

I thing it could be renamed gx_pwrc_vpu, but it's not a strong one

>  	.sleep_reg = AO_RTI_GEN_PWR_SLEEP0,
>  	.sleep_mask = BIT(8),
>  	.iso_reg = AO_RTI_GEN_PWR_SLEEP0,
> @@ -138,6 +139,12 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_vpu[] = {
>  	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
>  };
>  
> +static struct meson_ee_pwrc_mem_domain gxbb_pwrc_mem_vpu[] = {
> +	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
> +	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
> +	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
> +};
> +
>  static struct meson_ee_pwrc_mem_domain meson8_pwrc_mem_eth[] = {
>  	{ HHI_MEM_PD_REG0, GENMASK(3, 2) },
>  };
> @@ -223,11 +230,17 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
>  static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
>  
>  static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
> -	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
> +	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &gxbb_pwrc_vpu, g12a_pwrc_mem_vpu,
>  				     pwrc_ee_get_power, 11, 2),
>  	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
>  };
>  
> +static struct meson_ee_pwrc_domain_desc gxbb_pwrc_domains[] = {
> +	[PWRC_GXBB_VPU_ID]  = VPU_PD("VPU", &gxbb_pwrc_vpu, gxbb_pwrc_mem_vpu,
> +				     pwrc_ee_get_power, 12, 2),
> +	[PWRC_GXBB_ETHERNET_MEM_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
> +};
> +
>  static struct meson_ee_pwrc_domain_desc meson8_pwrc_domains[] = {
>  	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
>  				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
> @@ -514,6 +527,11 @@ static struct meson_ee_pwrc_domain_data meson_ee_g12a_pwrc_data = {
>  	.domains = g12a_pwrc_domains,
>  };
>  
> +static struct meson_ee_pwrc_domain_data meson_ee_gxbb_pwrc_data = {
> +	.count = ARRAY_SIZE(gxbb_pwrc_domains),
> +	.domains = gxbb_pwrc_domains,
> +};
> +
>  static struct meson_ee_pwrc_domain_data meson_ee_m8_pwrc_data = {
>  	.count = ARRAY_SIZE(meson8_pwrc_domains),
>  	.domains = meson8_pwrc_domains,
> @@ -542,6 +560,10 @@ static const struct of_device_id meson_ee_pwrc_match_table[] = {
>  		.compatible = "amlogic,meson8m2-pwrc",
>  		.data = &meson_ee_m8b_pwrc_data,
>  	},
> +	{
> +		.compatible = "amlogic,meson-gxbb-pwrc",
> +		.data = &meson_ee_gxbb_pwrc_data,
> +	},
>  	{
>  		.compatible = "amlogic,meson-g12a-pwrc",
>  		.data = &meson_ee_g12a_pwrc_data,
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
