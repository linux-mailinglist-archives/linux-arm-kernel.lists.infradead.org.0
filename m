Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFC57A3A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDuRgHJog9T1DEkUpthxh0gbmHjrqB+dNWhLHDBIYlk=; b=OTNC41bCbqVkY+
	zAbFjM3ie1NOIrLXs4wCFBcLDSy9XndRc9t8A/abn9UWGB7//M+XLfLP3iEwxegWqmorYzHScd8e1
	C/4W4aa8nkQIyTouktzPoYqZ2OAfjhturXq91DU1oaNtYlMXecJvi8cUUybMJwe+ZtS+rgZa2chng
	ahzNedpiyKWZOLDeNmAfPVw1VVV8NwpUw5krtMwwsAWvRe7TF6DJbc44uxDofE5GUjnx0XaplKsj5
	66AYySXcAfaCedV6MM7kv1W8nitwYJwBMKsG9ySpHS1BYFRVTAsAmmNX0Lm7HjpRbFrb8DATb71Hc
	1lvQQen4yPUbvlIEY3wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsO43-0007mu-Gq; Tue, 30 Jul 2019 09:04:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsO3Z-0007mC-HH
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:04:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so55867269wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=5G29QbB83YiXlS3ExY1vb4rgH3ehmgGSy8rpPGRoRUI=;
 b=QQuz+tr3jxms4vmjzbDBu2LjnsfmujJedbSA3a+s2hDtimOuwp1FYRMgvPHHrNRFxC
 Vgxd8P9SS1vtxjd0zFVpzwfuM6LzriTnz4D16vpN0wEWN74amtRgwOGYdBHYPOMsf+iV
 klK71KI6dcGzjeovnUOQDduTkv41veYXGyMKcOyTQAKE1S1rSh64H4H0TjI7IizbFQ2V
 x6wTcjr15VKhOlQ/QVkZEtnMzA1Y7y3alPQ3PVnehVyosmStD6JJzZCK6iRklahNgalj
 j86IdYVk624rJKW2HK8+uVczMzSmBEIm7v1voPRqmK4AMm2IFWOhxDB7QvhwYTw3Qf4s
 zOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5G29QbB83YiXlS3ExY1vb4rgH3ehmgGSy8rpPGRoRUI=;
 b=IVfcHA/j9wJXxj5AKw861y8stfRI2b+IzfAEaiaV0+NyX2mKSE8GZWoSrM9ZlofKQp
 ZAKscP1HNLjybISXZrML79LHjEYK0twFeIpvxPcf9tNZiuOphyEzDHdEUdfi/H+2V12/
 QQheR7nVH4yfFD1gm/4zBOUAHWtonLAR52Q5mRlrnUdnp/MwRNabD32RSSeGuYUI5nEc
 it11DaIHBiX7kTOSqwC/Y1BAsdhJ55B9BxNB7VQTz2qrXwsEKDsqKoB5or2PYeGl1gAN
 09fljwj0JfgX84GyKM58h9S2vyqSvf/TbPv/9WwrfWl82BEPDa38QNcKttW0h0ZJwUCS
 IruQ==
X-Gm-Message-State: APjAAAVx5tXSrV056Ixr8KLXV9cP69YUiXPCLj697uLi66thMvkYMFwU
 Qnf8FHDjIJDsMvB++r0Cs2V7mw==
X-Google-Smtp-Source: APXvYqzQ/1TapVb4uI4LpAERm0Xdmc4Cox/XEe9lQXPCwZOksx+WTviajzEB7qo6NwQjWNA+UMlaBg==
X-Received: by 2002:a1c:be11:: with SMTP id
 o17mr103534133wmf.115.1564477466755; 
 Tue, 30 Jul 2019 02:04:26 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id y16sm64493567wrw.33.2019.07.30.02.04.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 02:04:26 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Carlo Caione <ccaione@baylibre.com>, srinivas.kandagatla@linaro.org,
 khilman@baylibre.com, narmstrong@baylibre.com, robh+dt@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
In-Reply-To: <20190729183941.18164-2-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-2-ccaione@baylibre.com>
Date: Tue, 30 Jul 2019 11:04:24 +0200
Message-ID: <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_020429_671552_970E3BD2 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> No functional changes, just a cleanup commit to tidy up a bit. Move the
> nvmem_* and clk structures in a container struct.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  drivers/nvmem/meson-efuse.c | 47 ++++++++++++++++++++-----------------
>  1 file changed, 26 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
> index 39bd76306033..9924b98db772 100644
> --- a/drivers/nvmem/meson-efuse.c
> +++ b/drivers/nvmem/meson-efuse.c
> @@ -14,6 +14,12 @@
>  
>  #include <linux/firmware/meson/meson_sm.h>
>  
> +struct meson_efuse {
> +	struct nvmem_device *nvmem;
> +	struct nvmem_config config;
> +	struct clk *clk;

since this driver uses devm_add_action_or_reset, I don't think you need
to keep the clk pointer around, unless you plan to do something with it
later on ?

It is kind of the same the other structure members, do we need to keep
them around ? We could just let devm deal with it ?

If you have a plan, could you share it ?

> +};
> +
>  static int meson_efuse_read(void *context, unsigned int offset,
>  			    void *val, size_t bytes)
>  {
> @@ -37,21 +43,23 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
>  static int meson_efuse_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct nvmem_device *nvmem;
> -	struct nvmem_config *econfig;
> -	struct clk *clk;
> +	struct meson_efuse *efuse;
>  	unsigned int size;
>  	int ret;
>  
> -	clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(clk)) {
> -		ret = PTR_ERR(clk);
> +	efuse = devm_kzalloc(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
> +	if (!efuse)
> +		return -ENOMEM;
> +
> +	efuse->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(efuse->clk)) {
> +		ret = PTR_ERR(efuse->clk);
>  		if (ret != -EPROBE_DEFER)
>  			dev_err(dev, "failed to get efuse gate");
>  		return ret;
>  	}
>  
> -	ret = clk_prepare_enable(clk);
> +	ret = clk_prepare_enable(efuse->clk);
>  	if (ret) {
>  		dev_err(dev, "failed to enable gate");
>  		return ret;
> @@ -59,7 +67,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  
>  	ret = devm_add_action_or_reset(dev,
>  				       (void(*)(void *))clk_disable_unprepare,
> -				       clk);
> +				       efuse->clk);
>  	if (ret) {
>  		dev_err(dev, "failed to add disable callback");
>  		return ret;
> @@ -70,21 +78,18 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
> -	if (!econfig)
> -		return -ENOMEM;
> -
> -	econfig->dev = dev;
> -	econfig->name = dev_name(dev);
> -	econfig->stride = 1;
> -	econfig->word_size = 1;
> -	econfig->reg_read = meson_efuse_read;
> -	econfig->reg_write = meson_efuse_write;
> -	econfig->size = size;
> +	efuse->config.dev = dev;
> +	efuse->config.name = dev_name(dev);
> +	efuse->config.stride = 1;
> +	efuse->config.word_size = 1;
> +	efuse->config.reg_read = meson_efuse_read;
> +	efuse->config.reg_write = meson_efuse_write;
> +	efuse->config.size = size;
> +	efuse->config.priv = efuse;
>  
> -	nvmem = devm_nvmem_register(&pdev->dev, econfig);
> +	efuse->nvmem = devm_nvmem_register(&pdev->dev, &efuse->config);
>  
> -	return PTR_ERR_OR_ZERO(nvmem);
> +	return PTR_ERR_OR_ZERO(efuse->nvmem);
>  }
>  
>  static struct platform_driver meson_efuse_driver = {
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
