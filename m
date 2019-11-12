Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5420F967C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:02:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hndK3UhWw2QdRiWnE9sb/4wU0af9l7tA1Alyi9DX58A=; b=K68LhFUyoQac0y
	/MkAamXigVvhPvzLS+G9FbZIeIPg19NmI9rZTN8rJG9YtYN0zLE95HNS200e75+PEO/uybCW5hrkc
	XF2UJFZVx2kNmZ4DDbV2sw64BejVjaPSGQJBNAD5L+J+BZKTfZiBkm/A7CSrUUiaIQSxdx9YctQWx
	Ezre8dYC/M63F0qA7y/uAM56RkE+YBOZXXokqUIGYD+xEg5CWDd7r+ARfm1F66X4pqvO4QGXXQQ5j
	d8Fq+s38+/bzQoW27wI9UDRBjtnf767nSosN69VU62izMsbyNa6OGiwBT85uEvtwuvruSsacTABwN
	mccE+VmtctG1VX/PCVRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZYH-0002yr-Fe; Tue, 12 Nov 2019 17:02:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZY6-0002vn-TS
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:01:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id 3so13770207pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GDojT++zYyimFKXjGTgtIMvoNwjyBW8FizODRtTHlkU=;
 b=gqdeS5lER8xfVdf3MPfzRhQWtIdYGVkfvSEfkEikV5sK+iUbNyoUDxfqd0+Gf8qRon
 qIHWABuQ6RrIuV9KP9et/nCefEYxwgv0VU6xWDH/6WigGjakxakLa/uAk/OZfK6aVs7K
 LvkNK+dcIIHQrnxcoqA/IqdlZjyzz32xgRlYjaX7VbauzkexzJ8FhEebDZqN5k6CV5bv
 1E2P4sJBj7B20dAtY+vRdNYhwg7+Crzg+hEcAIZsxPn2ZVIiajYUgAJYOPGKF8JwDcwE
 0IZzMwP9eCWaBLOLkKUPL66WfWRvEgGNsCoRadK6bSa6QAU6DElkyAo1XDy0qVlKPQZg
 tUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GDojT++zYyimFKXjGTgtIMvoNwjyBW8FizODRtTHlkU=;
 b=c9iBGhIsPkFMngqtVQnM8YOgHt+P1MM7m6roHp0GWUSvg3Lu2/+w9YuihvPONJjOUn
 AqFa6JhZUVClpAbq9u+Jt5VS6TUeIWXLG4Jlw1XwWD9UEa2Z8YuCayQUCy9PjrGvsjZa
 vC2CZwUrTHa+J/sDkFOQdgVrQiqGLGgBn32vGipTqR7JB/T5gJtp6krWSkwLOuGPrnwY
 mwijKQPeZgz4CiQFvcYjq7iJPd1E19ujxBsHLDGFNPonuKKWH9QGaf4sSU7XUUx42S35
 lRhveg5hVXoSUl0w7D4K0IrEn45Q/fjU2T/esXwFhfBdeOf6T4JJsV3WXieQwGmFmrRU
 IZ3Q==
X-Gm-Message-State: APjAAAW3St1I/JC0KZ2oUza/6VDjDaaqsxyMuT6SHl971hinRqHjxLGE
 dDAuTmsxW94foEuP9lIaBzbtuQ==
X-Google-Smtp-Source: APXvYqw4G8Nv44pA6Fs7EzjALZ0qCpPOe1DYkXKQWUmcJweMaKJlE6IhOyuyuFHl+85B3ZJqZHBicw==
X-Received: by 2002:aa7:85d7:: with SMTP id z23mr38064618pfn.24.1573578109877; 
 Tue, 12 Nov 2019 09:01:49 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y138sm20294845pfb.174.2019.11.12.09.01.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 09:01:48 -0800 (PST)
Date: Tue, 12 Nov 2019 09:01:44 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Message-ID: <20191112170144.GF3797@yoga>
References: <20191112141819.GA22076@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141819.GA22076@localhost.localdomain>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_090150_952218_529EE72E 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Patrice Chotard <patrice.chotard@st.com>, Paul Cercueil <paul@crapouillou.net>,
 Eric Anholt <eric@anholt.net>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, mazziesaccount@gmail.com,
 Ray Jui <rjui@broadcom.com>, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Sean Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-oxnas@groups.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 12 Nov 06:18 PST 2019, Matti Vaittinen wrote:
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index 763da0be10d6..8844ca1261d5 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -485,8 +485,8 @@ static int msm_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
>  
>  	val = msm_readl_ctl(pctrl, g);
>  
> -	/* 0 = output, 1 = input */
> -	return val & BIT(g->oe_bit) ? 0 : 1;
> +	return val & BIT(g->oe_bit) ? GPIO_LINE_DIRECTION_OUT :
> +				      GPIO_LINE_DIRECTION_IN;
>  }
>  

For pinctrl-msm

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
