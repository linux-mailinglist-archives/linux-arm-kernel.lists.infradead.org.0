Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEEB162EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ke/AVSd/e2X/bT2mIyr9KaxPMLK4mOe/GM+hEquTD0g=; b=A9usNNm3pwVyNO
	gwxWxqad60IOfdDMmgq9jhoH+EB25XuHN51j69EvcccUHkawRMSsgPQdp3JOWXr3a73ETpuuQh8rU
	cBiZtCmpWXh9YvZcuytOqeH+XR6UfAbkc+TtEUKAYA/405ps3mdXVa94jEqPl+avAN0AD+WAIHNTB
	wT13GgIUn4VShHk9lXagfiWOjsW/gHB03MqoKFfexYGJ3pt56pmvfUQiuejfHqk/CLC+u1rTZyJ6N
	5gu+zCPS1aZRl8aWUE+OdGtS9Wh0Lv/i0DCrCFHNzWWk9NIXVabJ0RFSXX9NyRKZkp9SnKo3+NXdk
	lIvkmiNMqBFHys5L1rnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyOx-0003vi-HC; Tue, 07 May 2019 11:36:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyOp-0003uX-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 11:36:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id w22so6858823pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 04:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JozcPTzIlj0LjY7Lh6j2NSqbSEGNTeWecbTka74yFBY=;
 b=lX2uPFcuiuQE8UI2yTgrCw9rUzo5Jh0xrCI+gmQALphLmfYhBINLy6vsrgapzPt85n
 rr95dq6sbatagkYGwVlxV2X6kKpwb+XHLZT8guGMaxSQC6NmVEtnygTN1D0qRu7F2l7/
 701S88pA/3hGTTTO8bmPbsleo97+q5txD/oyhYCW+PSg1HlIiLSVp8DG4aasGN8Xo8Uk
 CWoBA2wyAp8GIooy6aD3hL0Ck5qhaakcX20osCcdadZ/g3QIS1jmJGRAJui7nEwp1dcj
 lEtKxK1CVqyQXfc3GPeitqCss/mVb+Gwkn2w+D+htWgT8ud5sskp/ea5AnDOBRg2syjN
 9o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JozcPTzIlj0LjY7Lh6j2NSqbSEGNTeWecbTka74yFBY=;
 b=I0CtLMcTT9mRZa6+ImdPa/WXKeY7icgZvB8xsGfsMcIkrTiuDhdlRi8JCmO8EYC7FP
 BrmbaO+1kvH6/qXIGO20xmcxZ79ZelypGMbm2EHppcKM/BNUYKFaVT3zCq92wmq8/ag+
 ujxKUBCtdVasH4Uv4/zqnODegtquQsy5SvDDHexKox9uS0+rCMOrgfJMwyLt/XzSDtgU
 93ZhkdoA5iOkc811ABWrhOLQFsxqAEdLVvR1vLWuzpO4V9762dYIhBbawIrkPac4U1KQ
 BGndZZSA5cSZkQbRp0ae5xJlmBhoZS015W4CQmGdxaN+GNu5UULVvHjHn3YbRD98W+uz
 PmAg==
X-Gm-Message-State: APjAAAXNpW2qfvTb2QHH3FD2ZsbQELR0uAsNuFhSuxSOTtVcSJVt0IAv
 d1XhLi3PbhEp0910vOv9KNCapRx+qQ==
X-Google-Smtp-Source: APXvYqzNqjzrtFc05ZFodpitRY7VSYiEX1Z08HpY7hktZWwpbVJUjoguhWG9iuc54JTZywekY+Av4w==
X-Received: by 2002:a63:e24:: with SMTP id d36mr47665pgl.80.1557229003106;
 Tue, 07 May 2019 04:36:43 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:99e:34fe:41ce:b81d:ca3c:de5])
 by smtp.gmail.com with ESMTPSA id g71sm7862877pgc.41.2019.05.07.04.36.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 04:36:42 -0700 (PDT)
Date: Tue, 7 May 2019 17:06:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Message-ID: <20190507113635.GB309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
 <2127870.SxaTtWf5LP@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2127870.SxaTtWf5LP@phil>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_043643_830130_4008ACB0 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 01:22:03PM +0200, Heiko Stuebner wrote:
> Am Montag, 6. Mai 2019, 14:04:58 CEST schrieb Manivannan Sadhasivam:
> > Enable SPI1 exposed on both Low and High speed expansion connectors
> > of Ficus. SPI1 has 3 different chip selects wired as below:
> > 
> > CS0 - Serial Flash (unpopulated)
> > CS1 - Low Speed expansion
> > CS2 - High Speed expansion
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > index 027d428917b8..9baa378fc770 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > @@ -146,6 +146,12 @@
> >  	};
> >  };
> >  
> > +&spi1 {
> > +	/* On both Low speed and High speed expansion */
> > +	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;
> 
> cs0 should still be part of the cs-gpios though (gpio1 RK_PB2).
> The flash is part of the schematics, so there might be board with
> it pre-populated or people might put a flash chip on it.
> 

Why? CS0 is owned by the SPI controller itself, so we can't use it as
a GPIO. Otherwise, we need to change the pinctrl definition of it, which
doesn't look good to me.

> Also please use the constants for pin specification (RK_PA6, RK_PA7 above)
> 

Sure.

Thanks,
Mani

> 
> Heiko
> 
> > +	status = "okay";
> > +};
> > +
> >  &usbdrd_dwc3_0 {
> >  	dr_mode = "host";
> >  };
> > 
> 
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
