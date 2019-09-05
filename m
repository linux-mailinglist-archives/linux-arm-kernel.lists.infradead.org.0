Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA05AAA456
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=McKYIjU4RPLI+E1l0tdRfNzjkQmTsN0R2h+Ychq4tnc=; b=NeHxxMQer0qhJt57aPrFfxnPe
	aFzW0i6Inqg3dwL6fDnrWw8mvMJZeap4O5v6fo1117JelDFyMqTidGLVLungIZnKQ9weGRERW8NCN
	ssMnWkMLZ0jNIkaDfPzg6sCx4ATluzRyc/Zlb7XD+I2gP+n/sthNqt9Wr/5bXo8yjDoPwziuHUhYh
	/gtBq31hBG6kCPM0BcWcgkmjHWu3WnL9ocrQMDI5YxsviNjpc+5+b9WQ5+DMRY2B0kozUZX0nJlRq
	S8hLv/2YgoJF99uSs/xS0ok9e/hkFGawyjuaJy1W4SAx0DjdPc/l1B7ZDz/jhTUn9czuThClPvqIu
	W7GyHgADA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rkb-00062H-9V; Thu, 05 Sep 2019 13:24:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rkQ-00061K-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:24:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so1742011pfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 06:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NwpAVuykxjo28VFm7bl/dVDMbsAXCwnrZvHXpATq9OE=;
 b=T1vY/qS1bDi1uE03rHJZQcoDpjn1iYskFjqL+aQxBZeWtakrknmqQOc+9wmI2fQVNf
 H0LVRd2s/IKVyXeYtP3EpHj5zjD8WIIbJRa83+EyY9rKrEUoepgoLH+ErA5V+Itt4WWr
 4IgoORSsJHgK5K4Fe8+J8n5hr6WBKDa2eoDFNBLAQ2n/uz1z63Xrbi/zpfASfBpMhokf
 FXFjMeG/Mrs54fFEO+rYUP/hZAs3lIamTiVRJAqOllbvgami7nl+eRvEBOfBqNLhTinb
 pc/wyEnw6b1aLJ3C//iJDiQji+KvsIc0h2ixioahZNYqImO6ErQQUDOU8JvONiYDMusd
 0omQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NwpAVuykxjo28VFm7bl/dVDMbsAXCwnrZvHXpATq9OE=;
 b=ptLgnEevMr+YDYV7mdnElNtyEJxIMoHZQiQ4riTmymXnc2yQOW4OcSGhTQ3KcxiWGR
 tKNyfUdN/o+6uYmog4dz+KJGb2l38hR05o6vbOOq2Vh03X4gX2GNp15phQBFVbXOPBzE
 BUElnmwj16WB2ut0X6smZc+KkhRuLvB3EMGVS6NORps1BakHcp0pp+KzPXTRZUshJm8m
 CoqqWT/OqdXVPXOIUfH5jME4j+sMFv8cryOi6awGjBPb+UPyc4dMYAmzlbUlm/mIXZkP
 D61iK0IK1dbzk7SAIaqjkUf90Tf3IKkhDbBGIL8mvb6STFcxUQkzY/cqNpH4fe15/44U
 dH1Q==
X-Gm-Message-State: APjAAAXnfbeUlQd6+/t3n/1kzngkzVS+cIRwdQQvIWEdEIkokqbU9OFE
 4QwFfM64KTzEIZ42a/n5UP4=
X-Google-Smtp-Source: APXvYqyZMNX+LR6+bDqYiL9tl/43eqS0vtZYSSIV9plmqE/sbu9KgsxiJHkiMbIlroF/7vM/czeA3g==
X-Received: by 2002:a62:5cc2:: with SMTP id q185mr3605694pfb.221.1567689865910; 
 Thu, 05 Sep 2019 06:24:25 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z25sm2633514pfa.91.2019.09.05.06.24.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 06:24:24 -0700 (PDT)
Subject: Re: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
To: Oliver Graute <oliver.graute@kococonnector.com>,
 "oliver.graute@gmail.com" <oliver.graute@gmail.com>
References: <20190905073730.22258-1-oliver.graute@kococonnector.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <016e268c-f289-4127-a47e-3d8faa790ded@roeck-us.net>
Date: Thu, 5 Sep 2019 06:24:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905073730.22258-1-oliver.graute@kococonnector.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062427_015010_CB00CE99 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/19 12:44 AM, Oliver Graute wrote:
> Fix only whitespace errors in imx_sc_wdt_probe()
> 
> Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>

This patch no longer applies due to commit "watchdog: imx_sc: Remove
unnecessary error log".

Guenter

> ---
>   drivers/watchdog/imx_sc_wdt.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 78eaaf75a263..94db949042c9 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -175,12 +175,12 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
>   	watchdog_stop_on_unregister(wdog);
>   
>   	ret = devm_watchdog_register_device(dev, wdog);
> -
> - 	if (ret) {
> - 		dev_err(dev, "Failed to register watchdog device\n");
> - 		return ret;
> - 	}
> -
> +
> +	if (ret) {
> +		dev_err(dev, "Failed to register watchdog device\n");
> +		return ret;
> +	}
> +
>   	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
>   				       SC_IRQ_WDOG,
>   				       true);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
