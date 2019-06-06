Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAC036A6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 05:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ts8xH2bVrtgD2E4JgwPipG8JHNuZ7wzVr4LYlsB432Y=; b=fEzp3AhWrxQ+Ia
	bhKnFyJFnA5ekR4+ySYLcC38vkp+HcoJZMBw9IYQmEUD+n4k7ihy/1nAT/jDGBayidwWhvBDcP/TK
	j0YLOYEyjYS3Qf7B82epS3RoPQ+QlKmVvDEk+IaxbKcyIa05EZkqqaIcKiofueCaCdnb/k2NwRb72
	gOiUvzJSU6YdV/M/EK8VYTHrqCCrEm/KOA5IPoaScAQCbrZhW8deCRuYw0N1wnYW5unnbFaaVxA8i
	fCL/C/T/GGt/GGy9AxA7AoXWKLKbG6Lu9LV90lHR/3iVGVbYQBlzxX/wd922OED0tuaqLI0W4lYl2
	rTC9D7IcfW1T25MppCkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYisL-0005cW-Vz; Thu, 06 Jun 2019 03:15:38 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYisE-0005c8-8K
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 03:15:31 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d126so579899pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 20:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aQaPbWDXavNRu7iOgwRHmYDUom2MXcE3ZI99h8uIByc=;
 b=WZ3Fvdh/fIOmKtwoVSjN3gj8nuE5cMhxReyGHL+oQM9kaT3bVtXy34TL5mC7J49hhU
 LRN13bJQACT1qMLH4c4haFMqz66iiDDvz2IzI/92IUs6DZlZyeMYecwylfSkvE3bS5Do
 ardjEJSLUx8yI5ggqluKPlCFYPju3HLQPq4YC6YZg2V+XZv/2FexM4CTFiEaU5L4uXvx
 aT4DAGPzbqf7v/OeXP1qDBZ8faJpWcR5eRqO+5Bov9N7XgwkDISA/BOef4xEO5MdkWE9
 lOpQBvnNxHrYGIHbyxMCtworrsd5yaMo5Cz5uphqlYeuM2nNJXgApz1k2XvmFha1hxCO
 Mv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aQaPbWDXavNRu7iOgwRHmYDUom2MXcE3ZI99h8uIByc=;
 b=SIeST1UiExMYh9kYAjdScTJ9UolBVEkMoY6NByzmA5MFo+pzEOvENLjuAF4Rfl0dW5
 6Vt1Q4RFDzJ7Ar7GBlZt/pc/gXwIRfmbd7CJZKX0MCi7DLLeCilqBZ7FNqAec4CBDuue
 aF8R7JGLxuq46k2pkhl5EnfEEL+ORQDPQYGkFWVzr23EX29w0q/tZWthgZwCdWj0e7p7
 PjOu/M8aCdVeHU5BHnm6z4GxrZe0jZVa38K1WsluNpyT0IDULvcnDee0oWPq4DE0TP6p
 r4Lp2/vCBWPl/gTTC2Fv03oHvjTkRV3k0a+2oP1CCMDTKoyJNl1mBcn3zvHl5XxW2kdp
 6DYg==
X-Gm-Message-State: APjAAAUbuq1pYXf9irhKehRcSosTwD+VyhQztahPCLCRIEH1mxA0q593
 86pExyI5J43PymEhr9GzzLF1bQ==
X-Google-Smtp-Source: APXvYqx3naFQT7F/C/KDKO36iTavZgfZJHhHPggIkqir5gQYvj8f0p7/nEzDq+JMzQ8ZwOdj+E/eJQ==
X-Received: by 2002:a65:6295:: with SMTP id f21mr1221471pgv.416.1559790928747; 
 Wed, 05 Jun 2019 20:15:28 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id o20sm258525pgj.70.2019.06.05.20.15.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 20:15:28 -0700 (PDT)
Date: Thu, 6 Jun 2019 08:45:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [RFC] devfreq: Add generic devfreq-dt driver
Message-ID: <20190606031526.xknv5qdoqufim6tr@vireshk-i7>
References: <e48d7e3d71166cea20c3c200300e0ffa6d26d085.1559737589.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e48d7e3d71166cea20c3c200300e0ffa6d26d085.1559737589.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_201530_677321_18AC633C 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-clk@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-06-19, 15:31, Leonard Crestez wrote:
> +static const struct of_device_id devfreq_dt_of_match[] = {
> +	{ .compatible = "generic-devfreq", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, devfreq_dt_of_match);

DT can't contain nodes for any virtual devices, this will have similar
problems to cpufreq-dt. How is this driver going to get probed ? Who
will create the device ?

> +static struct platform_driver devfreq_dt_platdrv = {
> +	.probe		= devfreq_dt_probe,
> +	.shutdown	= devfreq_dt_shutdown,
> +	.driver = {
> +		.name	= "devfreq-dt",
> +		.of_match_table = of_match_ptr(devfreq_dt_of_match),
> +	},
> +};
> +module_platform_driver(devfreq_dt_platdrv);
> +
> +MODULE_DESCRIPTION("Generic devfreq-dt driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.17.1

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
