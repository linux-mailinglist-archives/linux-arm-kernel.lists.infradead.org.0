Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555B15E653
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RJtQT8S4sHFrmVDZwc6iVrRMu21/czg1yyG8dloMRI=; b=DM1qzcM+asHVvE
	2GUO2W5YgGSWCGuhtxphbC9gcvIuo6h6e8ZRSbq2MAgRSI/fTe1IX0xtq6ScPKzSB5JJqlYc4sY6e
	eVoUIQrkxBOQJFK4X0Sc6E4fwTFfFa6gmFvdl+T+D4rMP0Lgz0Z1AxnfyRG3eOi6F5H206jI3227i
	o4CMdqnmh6X455MH2IkGI+wczazdOPl5sH+EkX0UQK/QZ+h2vxGqmiXj0uuklsmccQ6t0oELsbPXa
	/sJpKDT5RPO7Q1YBIGci3c7eXs9t5rZPfOa0MayxfGb/jtZKEkaPrka8Y70ViHAOY0Iu4fO4H4EqZ
	PsGxDvX6P69Tf25IqxYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hig4j-0005LH-34; Wed, 03 Jul 2019 14:17:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hig4P-0005HP-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:17:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so2410783wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 07:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ks0bNwYapiN81vVxECStRbRSKzS0XfjKhzZiJiwEzwY=;
 b=Q0TBA8sKjhi4NK59C7tFimG/AiuJj8NjmNS77iU+k2Qmfdlh5Dc/rYAbcd/fDqSnHD
 /tbji06th9Xzvmi6KQ0uXit+8krhr5CAYIpig2H0xEGI/LCLsktoZD3PYI6Rn/QrD1qM
 vbLjZExZoQKayF3xaOkXoR9FF0/sx79SNWx9MGV3qQwP/4bgQ9YKmScXh2ZUf9m/vYCp
 huQ4lLrwpG3T5OrkuEDapgp3jUknzjOiRfKo+KCjpTWTDed2O9fYTFZEDa5/fZz+rHzD
 xRLlKBOUC1tD63wpfzRqC4OVCVX6I3q7Q37ZfKRvMIJ+fzmou0ZnLyEUXul4j+0JhFgW
 xtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ks0bNwYapiN81vVxECStRbRSKzS0XfjKhzZiJiwEzwY=;
 b=dMS0mUlXiAaQrAMF+d6Gj1Wvs/kofwzqnrOes+t/7/Lw7OlEeq+1FNomRS2lXSn4ia
 RXuulkw3G5nECfLL+XcVWljbN9ZGSbPcp7tvDhAfrRU1w+ENlxEyAm3Xk8RJnCc5jnb7
 Upy6rxrgtyKpPL3NouBHwYOvHD+ZSbO4eatrpjVzpd5uOu0XHpv2ZHDmx3vy3kAJy8vs
 TmFXJj52SLb4wuIf3DrZa8WDNMeknYBTlDggad4++YiJj9pipl9LOmkw4fZhjG2dRkiN
 BI7YdlzaSwuOLf/JfLN5wcNDSf6sVUpwj19d8b3DUs03Z/KMMT+0K7Ggf+baxlrzYGLT
 RAXA==
X-Gm-Message-State: APjAAAXHu+n5Sj6f19r+5oPhas/TB5+ACHg8TFL3uGyv/mve8ERERGq8
 /wCcxaZHx3YhYfpE7bBx//DoBw==
X-Google-Smtp-Source: APXvYqxmeARZ+dzcLmNlaBGXg9WvX8W+EC2+HrDQkCGX+smg1Bl3ozbQengqGYQ1JBWeO/R5WhX85A==
X-Received: by 2002:a05:600c:21d4:: with SMTP id
 x20mr7439597wmj.61.1562163431645; 
 Wed, 03 Jul 2019 07:17:11 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x83sm2813879wmb.42.2019.07.03.07.17.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 07:17:11 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
In-Reply-To: <20190701091258.3870-5-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
Date: Wed, 03 Jul 2019 16:17:10 +0200
Message-ID: <1jh8836w49.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_071713_755614_5E66CE10 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 01 Jul 2019 at 11:12, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Add a setup() callback in the eeclk structure, to call an optional
> call() function at end of eeclk probe to setup clocks.
>
> It's used for the G12A clock controller to setup the CPU clock
> notifiers.

I'd prefer if you implement the probe function in the related controller
have this probe function call meson_eeclkc_probe() for the common part

In your case, I suppose it means implementing the g12a controller probe
to deal with the notifiers

>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/clk/meson/meson-eeclk.c | 6 ++++++
>  drivers/clk/meson/meson-eeclk.h | 1 +
>  2 files changed, 7 insertions(+)
>
> diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
> index 6ba2094be257..81fd2abcd173 100644
> --- a/drivers/clk/meson/meson-eeclk.c
> +++ b/drivers/clk/meson/meson-eeclk.c
> @@ -61,6 +61,12 @@ int meson_eeclkc_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> +	if (data->setup) {
> +		ret = data->setup(pdev);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>  					   data->hw_onecell_data);
>  }
> diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
> index 9ab5d6fa7ccb..7fdf424f71a6 100644
> --- a/drivers/clk/meson/meson-eeclk.h
> +++ b/drivers/clk/meson/meson-eeclk.h
> @@ -20,6 +20,7 @@ struct meson_eeclkc_data {
>  	const struct reg_sequence	*init_regs;
>  	unsigned int			init_count;
>  	struct clk_hw_onecell_data	*hw_onecell_data;
> +	int				(*setup)(struct platform_device *pdev);
>  };
>  
>  int meson_eeclkc_probe(struct platform_device *pdev);
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
