Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09784C8B52
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7fRI/gasbnuSg0mcOzaou7aE+fDVHRgZdpIvXJPs6E=; b=GbYuU4jqTLJqcQ
	pIbBbt48L7+KpyEJFCuzNsRpLjzjgDKFGGzLVVeG9WbKRThI9r7qM0DAW72H1VBsLoWlVcH+6tpLz
	96w3TU6qQ8SJpLNf+15uajp1I+Pqd+W/zIW+W05h9r0/aBw5IUwaOFFE/+sIP0wPEqM/+94qGEk2X
	rgdU8nK0lOYysrvfrGnW6zYk++75ORFSuqupy/ogc/2GKm8KZFbLiOs9ul9yMONsS/LANQOAPzue9
	zgbMreFuptqaYLmbaGwr1Gw0fyar72mbHCukBjp0yJEAUdwDL1DLDsRBGnH60hjw52VaULIkwabPQ
	9knnWuyMF3kvZRKViXyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfgw-0007zt-Pp; Wed, 02 Oct 2019 14:33:22 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfgp-0007z7-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:33:17 +0000
Received: by mail-wm1-f65.google.com with SMTP id r19so7478600wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 07:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AVTETs+oGeEC2u9tBgMMkGrKf43RbFMMIseBuCEUcM8=;
 b=tCXUlmUbk2+og5pPCXrssZAGZfmZj56Lp6x9vdNw2d9Uu4ha5IXFxqtHRKlqFI30ad
 vo4PrVKwiiAzPdmxvwpKTb15vFo1Iau3jTeP18sHiq7WgC6CHN/cJOTQx5UFY4uGml1M
 f5yqDCwK5vP9dc21CfRF9v9AiXwjU1cbBbFtrAGQQVhqhoyeeEtehmkYj1SW3ZaNWM6y
 xukMIbIT1vdFCie/VWEI1H+vR9UQW+G2HvyTSlckgonyVU9ZDT6jGZ42Ptc/9erlY9eG
 3QnjDHD5RyIAK4a7jTAr0GNpiHqKHzx4jAvukAg/GlBw/9Z456TSJ//mHRE6LlkeYwTG
 LRcA==
X-Gm-Message-State: APjAAAXnSr2Fx4U9vajlA5ZJ6OqinFrxL88rLnDpTLKD8M22kcFaoxuA
 uIrHCStKWmwRYK/xInWlCI0=
X-Google-Smtp-Source: APXvYqwmFvHm7rFsTvQq0Zwc4A11TsV7mmn1KrgwfBt5cGv22d6M4/7ffFDvl4S5Z0mArAq50hK9rw==
X-Received: by 2002:a1c:4d0d:: with SMTP id o13mr3249429wmh.19.1570026793907; 
 Wed, 02 Oct 2019 07:33:13 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id s12sm40423949wra.82.2019.10.02.07.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:33:12 -0700 (PDT)
Date: Wed, 2 Oct 2019 16:33:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v4 1/6] opp: Handle target/min/max voltage in
 dev_pm_opp_adjust_voltage()
Message-ID: <20191002143310.GA15898@pi3>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123636eucas1p250ec04901f227b947cc38936563f63b2@eucas1p2.samsung.com>
 <20190910123618.27985-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123618.27985-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_073315_637683_231C3917 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 02:36:13PM +0200, Sylwester Nawrocki wrote:
> To be squashed with patch "PM / OPP: Support adjusting OPP voltages
> at runtime".
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v3:
>  - new patch
> 
>  drivers/opp/core.c     | 10 ++++++++--
>  include/linux/pm_opp.h |  3 ++-
>  2 files changed, 10 insertions(+), 3 deletions(-)

I'll take the ASV driver via samsung-soc but I see it depends on this
one.  Please provide me a stable tag with it or an Ack.

Best regards,
Krzysztof


> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 407a07f29b12..4ebe5a6c280b 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -2057,14 +2057,18 @@ static int _opp_set_availability(struct device *dev, unsigned long freq,
>   * dev_pm_opp_adjust_voltage() - helper to change the voltage of an OPP
>   * @dev:		device for which we do this operation
>   * @freq:		OPP frequency to adjust voltage of
> - * @u_volt:		new OPP voltage
> + * @u_volt:		new OPP target voltage
> + * @u_volt_min:		new OPP min voltage
> + * @u_volt_max:		new OPP max voltage
>   *
>   * Return: -EINVAL for bad pointers, -ENOMEM if no memory available for the
>   * copy operation, returns 0 if no modifcation was done OR modification was
>   * successful.
>   */
>  int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
> -			      unsigned long u_volt)
> +			      unsigned long u_volt, unsigned long u_volt_min,
> +			      unsigned long u_volt_max)
> +
>  {
>  	struct opp_table *opp_table;
>  	struct dev_pm_opp *tmp_opp, *opp = ERR_PTR(-ENODEV);
> @@ -2098,6 +2102,8 @@ int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
>  		goto adjust_unlock;
> 
>  	opp->supplies->u_volt = u_volt;
> +	opp->supplies->u_volt_min = u_volt_min;
> +	opp->supplies->u_volt_max = u_volt_max;
> 
>  	dev_pm_opp_get(opp);
>  	mutex_unlock(&opp_table->lock);
> diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
> index 86947d53e8c4..0ee1daafe6af 100644
> --- a/include/linux/pm_opp.h
> +++ b/include/linux/pm_opp.h
> @@ -113,7 +113,8 @@ void dev_pm_opp_remove(struct device *dev, unsigned long freq);
>  void dev_pm_opp_remove_all_dynamic(struct device *dev);
> 
>  int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
> -			      unsigned long u_volt);
> +			      unsigned long u_volt, unsigned long u_volt_min,
> +			      unsigned long u_volt_max);
> 
>  int dev_pm_opp_enable(struct device *dev, unsigned long freq);
> 
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
