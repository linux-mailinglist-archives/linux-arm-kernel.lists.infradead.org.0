Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D5812327
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EajYHCQQvHSr9DmC3+oFvm2aUn5jh3lB3iHgEZgU3W4=; b=UF5eogH++miUGD
	qYY15DDTegMxuEX/U8TI9IP30wkXs4akV8oTbRURhJ1VVj3rpq7olefDiP0+IFOwRh20zHowtgamF
	pBD56hGY8BK9a+3GUESKIC/IdWvr0gq+7aP3QXFx0U+gWBTJLd9w/5IELNQTX4obIs/zTVMPN5Ffz
	ziXxnA/I7msYuu7LugjQ3FKl8EViuOhuQJJZR6yJK8wewpMxbhY6RzdyxnQOIi9Yw0NHOIAxip3MH
	C9WY3OpHGx0UqtXA21/8NGa+Mdsdp1fyvCOWQ27fq4+88QL8QYBfm1CoZWyLsvkQ7m+/IpiuL3LcT
	E2sq85n4HNwqBc/caMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIFO-0003fW-8Y; Thu, 02 May 2019 20:24:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIFG-0003f6-Ge
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:23:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so1573754pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1kO1Q8xyPeInFEuVa9YrVjPZKrqRQhoH5hWqL6piNVQ=;
 b=kY9LQyUGqZ0FVr/++HvUx4Y7nQFfpaOv8Q7FRLpg2RY0aG5pNS01losjKp9fpNP90Z
 VgTVYGgsKsoaTcpQ/e4d5paVJ30k0qLBxIs0xZbbCm1zVwVvBMHvziwUl17b6rZBkVRf
 p526iPe00uoy3h30NHZUkqJ4LbvdULvtN+gFmBIiw63aSiTpVoqlWFRz4wyIGqGV6CwP
 mBQ2DLGmY00I6xkuj3qxlMgPF/Au6ThLvqDR6R8EhSe9OAlEe1v4WRHHWxMpuUCmYJwn
 MzXNdUJ0+ZWuXBrXm77sDeeIGFXUY1Ds85h2pvB96SnlvL38Nyb8iMHX5gooQwLCLb3s
 OaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1kO1Q8xyPeInFEuVa9YrVjPZKrqRQhoH5hWqL6piNVQ=;
 b=OoLDvpYVzNd0JAB+H4EFLge9sGkN/RBNVkWMVeZVlSGNCfjx3pPs0JlJh+jKmVsGXv
 KzbArVR4lDm9mtedjl0XJ5TMZ3d4a38JoGeJ6bfsuVFcAPXuJpfD7b7JRGKc2BJQ0k9T
 QVjCB5d45p4lvQmqkNpGZm/Rm6sINLShsvXJpGgcAz+SRa0A8z/hKFtYvL2WguTFakSW
 M/inoTN2UuDUACrzQTBqq4le6yj9IREQdDbf+6xlVoIV08pXOiVQPNYqqAjEhcfl9tzd
 2qZVwkmdMqvvYJ//obZSEZXTUSkaFrJc3GLBf6y++1hzwVmG54e6ufZkNW7kUDBcccca
 eCFg==
X-Gm-Message-State: APjAAAV4rttpU/GYgBmCkUpDELy2uDEc52pP6AQCLU0XDdtZWOyysRRX
 KNrrpj3Go9kyLP6x720jkg0=
X-Google-Smtp-Source: APXvYqz6iymo/ALT6GvocSEczAk4ZxeBc7r9+eHosppkdeZ8l7kIrZ2jQzAKGJzr1yX23EYcVZm0PQ==
X-Received: by 2002:a63:5014:: with SMTP id e20mr6075785pgb.2.1556828633822;
 Thu, 02 May 2019 13:23:53 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u5sm17161pfm.121.2019.05.02.13.23.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 13:23:53 -0700 (PDT)
Date: Thu, 2 May 2019 13:23:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ludovic Barre <ludovic.Barre@st.com>
Subject: Re: [PATCH V2 2/3] watchdog: stm32: update return values recommended
 by watchdog kernel api
Message-ID: <20190502202352.GB27894@roeck-us.net>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
 <1556806126-15890-3-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556806126-15890-3-git-send-email-ludovic.Barre@st.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132354_579775_E1D4F4F0 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:08:45PM +0200, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch updates return values on watchdog-kernel-api.txt:
> return 0 on succes, -EINVAL for "parameter out of range"
> and -EIO for "could not write value to the watchdog".
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/watchdog/stm32_iwdg.c | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
> index e191bd8..f19a6d4 100644
> --- a/drivers/watchdog/stm32_iwdg.c
> +++ b/drivers/watchdog/stm32_iwdg.c
> @@ -81,7 +81,6 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
>  	struct stm32_iwdg *wdt = watchdog_get_drvdata(wdd);
>  	u32 val = FLAG_PVU | FLAG_RVU;
>  	u32 reload;
> -	int ret;
>  
>  	dev_dbg(wdd->parent, "%s\n", __func__);
>  
> @@ -98,13 +97,11 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
>  	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
>  
>  	/* wait for the registers to be updated (max 100ms) */
> -	ret = readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, val,
> -					 !(val & (FLAG_PVU | FLAG_RVU)),
> -					 SLEEP_US, TIMEOUT_US);
> -	if (ret) {
> -		dev_err(wdd->parent,
> -			"Fail to set prescaler or reload registers\n");
> -		return ret;
> +	if (readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, val,
> +				       !(val & (FLAG_PVU | FLAG_RVU)),
> +				       SLEEP_US, TIMEOUT_US)) {
> +		dev_err(wdd->parent, "Fail to set prescaler, reload regs\n");
> +		return -EIO;

Please don't. Overriding error values tends to result in complaints by
static analyzers, and we don't want to have to deal with those.

>  	}
>  
>  	/* reload watchdog */
> @@ -128,8 +125,16 @@ static int stm32_iwdg_ping(struct watchdog_device *wdd)
>  static int stm32_iwdg_set_timeout(struct watchdog_device *wdd,
>  				  unsigned int timeout)
>  {
> +	unsigned int tout = clamp(timeout, wdd->min_timeout,
> +				  wdd->max_hw_heartbeat_ms / 1000);
> +
>  	dev_dbg(wdd->parent, "%s timeout: %d sec\n", __func__, timeout);
>  
> +	if (tout != timeout) {
> +		dev_err(wdd->parent, "parameter out of range\n");
> +		return -EINVAL;
> +	}

This is simply wrong. The whole point of max_hw_heartbeat_ms is to
enable situations where the selected timeout is larger than the
timeout supported by the hardware. In that situation, the kernel
pings the hardware until the next ping from userspace is due.

> +
>  	wdd->timeout = timeout;
>  
>  	if (watchdog_active(wdd))
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
