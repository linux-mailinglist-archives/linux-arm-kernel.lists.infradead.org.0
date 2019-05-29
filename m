Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738572DA2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRMmltNtsTlepvo9hzK+28xFcsCW+KpyZdp9EoBLj1w=; b=gWqLx/xq4sQ0sE
	Hrc30lYDrt4MGNA9FLehxmKdy36JtHeETQbtIrTakTeZSngX/mDoki/o1tHxdFZVMAfqi+K8Mx8N4
	75vNbvp+SMugcVuZjqA7bHYwqRi0LdJDtn1BfEMx4iH+a+/9gvqWGRUShlX3sGoOUYRxFbegPqNaN
	IdneLucY/S+/rExb+fx35LjEy0b9gbuB0oOTfSspAasthDw7qK6bCS9hpFQCqrhoX2NSt78hxqbCh
	Y4EWWOFgt3UOxTpNRuO/uxANj1FjQ3hTvs27WsucuPrXAgJNMIngdFHO3Is9NXWP21SAXTZiPeihh
	EAr/xceMpprN6Xl6XDtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvbw-0001k7-HB; Wed, 29 May 2019 10:15:08 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvbn-0001de-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:15:00 +0000
Received: by mail-oi1-x244.google.com with SMTP id y10so1544558oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EAGedgacrWoeLyu0To12qxT1eO2alYayXGjZrLvwd+k=;
 b=AJ5z3L0kCSDsX8kXY7FSc2jTfD36U/yC4myrub3XWsesly5t1RLKUIYsFwmIk7zsYu
 G/ec1s4wKrkwSBj9pKJFzg44ijlFkepzOOVECZb78w2ln3vLeD60cOOUcrWjhvm/hcJj
 942E4WXbRgAxpZvAmBSkQhzszZ5bK+LHKWUDvfALZUh1KIitzPIV9pDwHwczthbpj6dX
 e6IMh8yRgg27ugsXJVH2tMCQrdblMWGwu8SuiAdRuTkI9USXONsl/TqcoWuCAoCtatnF
 ox3+f8AKTVMwzO+PznlyqLjWcdMeTDySGBYIriLWSXL+bIV/wMyDDeS0qlMUH7F541ct
 m+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EAGedgacrWoeLyu0To12qxT1eO2alYayXGjZrLvwd+k=;
 b=treuoK+Hv9t159msN5bAa3FIfNN7dNmcG3dyyFx3EgPKxNvWRIJvT43kCVP2O7S32+
 lZWYHFsw64eMQxjNqZoIHtydIoSJbs+Jj7Z5/5UsuAZkNlFncAoJTB3VLLNzrXAGvNUH
 yhjtWj7D0Z6R23FEpPYY7daHvM0BMQQBEBFjwLaCISzYk+/1t+Ygu1OqYo0En9DBeeGq
 Th96ty+H7FfWAhVgVsiE+bkCqzI1n+E5Baf+6MjjHN/rCCmDLmZjSpV/imvnyBFaong0
 yi55M67iVc++gA7X8jlctdlXIg0+dHtt6I85x++eXLEGQCt3danoKsgdA0l6VhrsXoI/
 EqMg==
X-Gm-Message-State: APjAAAUun8XaidCvYgo8gKZwKdUJ18UvqXA3wDz/x4RFRj+9TsfNHFvm
 8G46l6FZQIl8YZTRjpJ3lRGicA==
X-Google-Smtp-Source: APXvYqzycnDr7LSCH8lljP2nquWhzzkKaVjxa0t7sxxmmSebqcmDYlIZAEK+IFDcl6SuyoXkBJH5LA==
X-Received: by 2002:a54:4f98:: with SMTP id g24mr6026696oiy.99.1559124897777; 
 Wed, 29 May 2019 03:14:57 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li808-42.members.linode.com.
 [104.237.132.42])
 by smtp.gmail.com with ESMTPSA id w24sm5608786otk.74.2019.05.29.03.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 03:14:56 -0700 (PDT)
Date: Wed, 29 May 2019 18:14:45 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Andy Gross <agross@kernel.org>,
 David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190529101445.GC15808@leoy-ThinkPad-X240s>
References: <20190508021902.10358-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_031459_067051_93B23ABB 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Guodong Xu <guodong.xu@linaro.org>,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 10:18:51AM +0800, Leo Yan wrote:
> Since the DT bindings consolidatoins for CoreSight replicator and funnel
> is ready for kernel v5.2 merge window [1], this patch set is to update
> the related CoreSight DT bindings for platforms; IIUC, this patch set
> will be safe for merging into kernel v5.2 because the dependency
> patches in [1] will be landed into mainline kernel v5.2 cycle.

[...]

> Leo Yan (11):
>   ARM: dts: hip04: Update coresight DT bindings
>   ARM: dts: imx7s: Update coresight DT bindings
>   ARM: dts: qcom-apq8064: Update coresight DT bindings
>   ARM: dts: ste: Update coresight DT bindings
>   ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
>   ARM: dts: qcom-msm8974: Update coresight DT bindings
>   arm64: dts: hi6220: Update coresight DT bindings
>   arm64: dts: juno: Update coresight DT bindings
>   arm64: dts: qcom-msm8916: Update coresight DT bindings
>   arm64: dts: sc9836: Update coresight DT bindings
>   arm64: dts: sc9860: Update coresight DT bindings

Gentle ping for maintainers.

Hi Andy, David,

Could you pick up patches 03, 06, 09/11 for QCOM DT bindings?

Hi Sudeep,

Could you pick up patches 05, 08/11 for Arm DT bindings?

Hi Chunyan, Orson, Baolin,

Could you pick up patches 10, 11/11 for Unisoc DT bindings?

Thanks a lot for Shawn and Linus have picked up 02, 04/11 separately.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
