Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E4D11C681
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 08:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xanz8JgkpiDXQu9rFXz5vT5fov/OY9VOor/59O5Xwik=; b=AjkA11Pv9junTB
	lBFIRtF6RItWiMr3uxve56TxB/UAk+zzfmL6q0qU/Z6JAUadGwkUcbIZR4PPNkNvygOcMr3KfWNFz
	J5mDKDZLvBpukemTtJtDu+RyDbAAl6p5TzJBP6F8/hLg1njJ2II3eJmP8pIJG25LHuZDN6H0YXwBY
	YCjm63CTioMMn3FV78Dg44O/K9JEEQ8P1qPghdPdWbdXxNPfoA8vs/6SbkUJ7tHD4FodXCUwcNlgM
	wYJCIQ5E+pQkizLII+0OGdz35Obyd6Xv2v7ql1HRMKYeccEz0j8DPxVSkpXt7ZtNOy4j8XQy1iXxP
	A+SeAFrP7KaMJwPxCitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJ11-00028L-Fq; Thu, 12 Dec 2019 07:36:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJ0n-00027U-Ev
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 07:35:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so1516369wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 23:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A+YZjm2Ye3pC2B1PdeSakvD5oUwYpRwIr8NfLtIK9OQ=;
 b=KxXYrdcBAzTVBh7CxZp6tWfURJTbsWvieNcjFsCiN3LDwCJfYNbtpfsvs5IbA0P5r0
 ANWFo/KIRIb+jAbvh/gbg+g6CKFKpqs9DllHbnVP9v5yXJH2DpHmb4c9SuZJGj8PUeOP
 880I+EvnUh4qhwY4P4d+rGkyOxXWe03CLPxImZuBkHrWK2xSrcdQPuyeQxOYpK03MdK1
 +ZzmbKlSVnhXBVxcohT4cSjn02DRUGs8bQLzzAefFXFGNHRVknnV1iXwBNxI8bg2lcLX
 7KFF4bXDjormm1TZAK9yIaQ/yO29mRjF/Lhbr3AcxZnGuLHpen7TZk7BhlgjLofI0+ga
 w13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A+YZjm2Ye3pC2B1PdeSakvD5oUwYpRwIr8NfLtIK9OQ=;
 b=X0AdnXkfbaOJ01XHu4/NkbtI/0uN7fvSpE5LqdHqhUluy+DJCYa+sC/qY0jtOdDf/+
 Ah8MWZcV091H76POwbRBnIpgH+aSQL9835XBUsFRvcoemEyRp8td4KzELG53rQ94TxVo
 b6VRqrMcuY9Y9z3EuhEu9B2pwlZEfPHg5Wh24Kcp7aQARX/g4/azeym81bB9MrMahMq4
 kBgfwrckJWED7auFSRWATnUKjLeGJCeZIoAeMfHNcWMDe71Jt8mbX6tM8TPQI17/SKfG
 B8Xj9SLnFh0boVmrtRVQX1nZm8oPzQgUIXd7SQi8Pdnof8zV7urQHjr3HWXhhdGWxyce
 Q9FA==
X-Gm-Message-State: APjAAAXbvBNqCeMJ7Q5S/iHRbOyXJLCpuaQD7U825MEgE2UB3KCmtPvC
 cRUEWyR2kthm64b+VY/n/1EyY6YGYaM=
X-Google-Smtp-Source: APXvYqwD1LPGGvRRbdrhL+bZMaR2zHPn54yzIr3uDJnubGHYpMAkNtsHA1kpeHWxgWtn2OREd91XEw==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr4581208wrv.364.1576136147874; 
 Wed, 11 Dec 2019 23:35:47 -0800 (PST)
Received: from [10.44.66.8] ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id v14sm5078571wrm.28.2019.12.11.23.35.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 23:35:47 -0800 (PST)
Subject: Re: [PATCH RFC v6 5/9] interconnect: imx: Add platform driver for
 imx8mm
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <60d36b71294d162d25c9f889177cab30e41d5ae7.1573761527.git.leonard.crestez@nxp.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <537baef4-d3bf-8de9-d168-21af0062b30a@linaro.org>
Date: Thu, 12 Dec 2019 09:35:44 +0200
MIME-Version: 1.0
In-Reply-To: <60d36b71294d162d25c9f889177cab30e41d5ae7.1573761527.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_233550_843741_0F99505B 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 11/14/19 22:09, Leonard Crestez wrote:
> Add a platform driver for the i.MX8MM SoC describing bus topology.
> 
> Bandwidth adjustments is currently only supported on the DDRC and main
> NOC. Scaling for the vpu/gpu/display NICs could be added in the future.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/interconnect/imx/Kconfig          |   4 +
>  drivers/interconnect/imx/Makefile         |   1 +
>  drivers/interconnect/imx/imx8mm.c         | 105 ++++++++++++++++++++++
>  include/dt-bindings/interconnect/imx8mm.h |  49 ++++++++++
>  4 files changed, 159 insertions(+)
>  create mode 100644 drivers/interconnect/imx/imx8mm.c
>  create mode 100644 include/dt-bindings/interconnect/imx8mm.h
> 
> diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
> index 7d81d3c83a61..15671fe7f600 100644
> --- a/drivers/interconnect/imx/Kconfig
> +++ b/drivers/interconnect/imx/Kconfig
> @@ -1,5 +1,9 @@
>  config INTERCONNECT_IMX
>  	bool "i.MX interconnect drivers"
>  	depends on ARCH_MXC || COMPILE_TEST
>  	help
>  	  Generic interconnect driver for i.MX SOCs
> +
> +config INTERCONNECT_IMX8MM
> +	def_bool y

Can this be a module?

> +	depends on INTERCONNECT_IMX
> diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
> index bb92fd9fe4a5..5f658c1608a6 100644
> --- a/drivers/interconnect/imx/Makefile
> +++ b/drivers/interconnect/imx/Makefile
> @@ -1 +1,2 @@
>  obj-$(CONFIG_INTERCONNECT_IMX) += imx.o
> +obj-$(CONFIG_INTERCONNECT_IMX8MM) += imx8mm.o
> diff --git a/drivers/interconnect/imx/imx8mm.c b/drivers/interconnect/imx/imx8mm.c
> new file mode 100644
> index 000000000000..acc002153729
> --- /dev/null

Thanks,
Georgi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
