Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E8BF61F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 01:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCb2/va5xNtQuRRb9BmC+tFSqeKisDaeJvFFDytb+nQ=; b=PniOj8L86Lh2V2
	bq7PIZ3RFUTKjnxwS4hgPvHaXmLCWc2sWz5n7JFkpXcMn0noojODBvfF9PBOab3IfKCd7h1oCYTIr
	D67+6Du5zCOAybmW2LHPQuTTCvqpAl0Twh6g4V63YoDhOWWUi79ct/MZ51P+pCZeb391AfPrEG8eM
	6i7s9Z5quwSbyIOcXlqqQWEuTdEUmI9gsqyS4g+ayym7c1lQl3unhhCrfhrQET7i2vY89CllrHC9M
	h1kA+LOIBdFr0M6dtwKjoDn9oqpoS66pJQtkyIWCPQeG20LsqUId0ZYYjPGjLkPTYpr9kv5I6UomP
	hWy3akNeDL144lU8LIUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTb7t-0003rd-I1; Sun, 10 Nov 2019 00:30:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTb7l-0003qO-LF
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 00:30:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id 29so6601568pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 16:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=QJ9M/1JvgfL9a3naUkuoeUKHp140e3y+7LN+oRlvvF0=;
 b=NCxT1PtSjVriRDY0McvWgqg1c96vuIp6GwyYFPzUd8SsWhDu6AwFt1cy+ZjLXPFvGF
 LhFFE+gwmzFecxdZ7WNuy7InOhsm6d1xROIkSmVm+R/UZHOYYc7nSCM4IoA5iXAfPatm
 I6bAdoT4eqFv5eCSyEzQQq9jCwzRNgp0LEGoIgQ9u1tfVLi6LtpyzphrogFujaLOJVAY
 OpDqbE7AQHo3fmg66SEF31pePDtgnfa8yQZZJK3WeV2qZX2nI++q4iPd7J0bGKA18H42
 6mx/bhK0qpDwTlrSoV9ISWG//olIHZOODsFZWsDrk43o7EN8QE9jfWMqBCkPc44h1l1/
 NRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=QJ9M/1JvgfL9a3naUkuoeUKHp140e3y+7LN+oRlvvF0=;
 b=NJyj5weGeH28aSR+bBiNRZfx+VpBb7zuU98xJ9q+Rr6TjsFUNrL/Ayy80/6P7jXt/5
 hY4z7DI2qE7Va+ENlpWc0f2SVQCgbJUVIe9lz9+nyJX1fwU+VVMoJjcsOBtTICqRpPeg
 8vU0TccV8QL46KKOX8/OUTjX6orDCxtnFikSB9ptTaor2H9OVx9qrCQie/TSISv7qWvJ
 E/eMkBVNEG+O9WwvgCDaVz4TSUTjaMtwF8GZEbJ52l1+q2HuhK54Mcb/951yfrHdN6WM
 mjlzZDfDLsAwBnYZ1OIpNyZOBD8CI6Sjsg8K6tbNSvxtQauU2bRqByx/QufyPD1tHJI5
 9aKQ==
X-Gm-Message-State: APjAAAWrTiuL+5B5edav0ZLaL3pZp2RuWuwg1WHzQdIk5U/rM4IpNeyw
 taTtL2jtOdgxN4RCmW3+r57wmw==
X-Google-Smtp-Source: APXvYqxu6JimPLetLyzs5b3fNNN+T5TOM3IxKtOOtZlw0hsFzmo99TMBKf40oTi9kAjJRpBteOx8Ug==
X-Received: by 2002:a17:90a:d792:: with SMTP id
 z18mr24756222pju.34.1573345835992; 
 Sat, 09 Nov 2019 16:30:35 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:7c60:912:1380:6df8])
 by smtp.gmail.com with ESMTPSA id 126sm3785679pgi.9.2019.11.09.16.30.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 09 Nov 2019 16:30:35 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v4 3/4] soc: amlogic: Add support for Secure power domains
 controller
In-Reply-To: <1572868028-73076-4-git-send-email-jianxin.pan@amlogic.com>
References: <1572868028-73076-1-git-send-email-jianxin.pan@amlogic.com>
 <1572868028-73076-4-git-send-email-jianxin.pan@amlogic.com>
Date: Sat, 09 Nov 2019 21:09:31 +0100
Message-ID: <7hmud4stfo.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_163037_725281_B3E2A5ED 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Add support for the Amlogic Secure Power controller. In A1/C1 series, power
> control registers are in secure domain, and should be accessed by smc.
>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>

This driver is looking pretty good.  A few more minor comments below.

[...]

> +static bool pwrc_secure_is_off(struct meson_secure_pwrc_domain *pwrc_domain)
> +{
> +	int sts = 1;

What does 'sts' mean?  status?  or something else?  Please use a more
descriptive name.

> +	if (meson_sm_call(pwrc_domain->pwrc->fw, SM_PWRC_GET, &sts,
> +			  pwrc_domain->index, 0, 0, 0, 0) < 0)
> +		pr_err("failed to get power domain status\n");

Does any bit in this register mean the power domain is off?  I think it
would be better (and more future proof) if you checked the specific bit
(or mask)

> +	return !!sts;

and then:

    return sts & bitmask;
    
> +}
> +
> +static int meson_secure_pwrc_off(struct generic_pm_domain *domain)
> +{
> +	int sts = 0;

Like above, what does sts mean?

> +	struct meson_secure_pwrc_domain *pwrc_domain =
> +		container_of(domain, struct meson_secure_pwrc_domain, base);
> +
> +	if (meson_sm_call(pwrc_domain->pwrc->fw, SM_PWRC_SET, NULL,
> +			  pwrc_domain->index, PWRC_OFF, 0, 0, 0) < 0) {
> +		pr_err("failed to set power domain off\n");
> +		sts = -EINVAL;
> +	}
> +
> +	return sts;

It looks to me like sts is only used as a return code, so maybe call it
ret for clarity?  or rename it to something more descriptive.

> +}
> +
> +static int meson_secure_pwrc_on(struct generic_pm_domain *domain)
> +{
> +	int sts = 0;
> +	struct meson_secure_pwrc_domain *pwrc_domain =
> +		container_of(domain, struct meson_secure_pwrc_domain, base);
> +
> +	if (meson_sm_call(pwrc_domain->pwrc->fw, SM_PWRC_SET, NULL,
> +			  pwrc_domain->index, PWRC_ON, 0, 0, 0) < 0) {
> +		pr_err("failed to set power domain on\n");
> +		sts = -EINVAL;
> +	}
> +
> +	return sts;

same comment as above.

> +}
> +
> +#define SEC_PD(__name, __flag)			\
> +[PWRC_##__name##_ID] =				\
> +{						\
> +	.name = #__name,			\
> +	.index = PWRC_##__name##_ID,		\
> +	.is_off = pwrc_secure_is_off,	\
> +	.flags = __flag,			\
> +}
> +
> +static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
> +	SEC_PD(DSPA,	0),
> +	SEC_PD(DSPB,	0),
> +	/* UART should keep working in ATF after suspend and before resume */
> +	SEC_PD(UART,	GENPD_FLAG_ALWAYS_ON),
> +	/* DMC is for DDR PHY ana/dig and DMC, and should be always on */
> +	SEC_PD(DMC,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(I2C,	0),
> +	SEC_PD(PSRAM,	0),
> +	SEC_PD(ACODEC,	0),
> +	SEC_PD(AUDIO,	0),
> +	SEC_PD(OTP,	0),
> +	SEC_PD(DMA,	0),
> +	SEC_PD(SD_EMMC,	0),
> +	SEC_PD(RAMA,	0),
> +	/* SRAMB is used as AFT runtime memory, and should be always on */

AFT?  I assume you mean ATF?

> +	SEC_PD(RAMB,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(IR,	0),
> +	SEC_PD(SPICC,	0),
> +	SEC_PD(SPIFC,	0),
> +	SEC_PD(USB,	0),
> +	/* NIC is for NIC400, and should be always on */

Why?

> +	SEC_PD(NIC,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(PDMIN,	0),
> +	SEC_PD(RSA,	0),
> +};

[...]

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
