Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2411ADD0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hzfDOVWiowIue/4AUOE+NM4EYMMoQH5ECYsqzK0gohA=; b=ON90TyaBD4GSr5RjMlbLKllwI
	84vO8gsAzyvxafuLGpD/BR9FmA6bWPThkla0V9p0YUcQ/JW8Ol3La5bTbwr/JMP4I6e09yGjrDi5w
	X+8t5+4l+N7gF66o7sZKdnCzBAKVH1CBz59D5hzQDlgJe+m9c/9LX2HwKmhUQy5wTavusZsoQAQyW
	uVrxkwCN5YivJFFA4xYiZERlPNqPmj++YC9HvVsdR0ObCmFHMLkogKI5TJR1SpZxSO6seLRdIpME+
	3js7A/m33GbhG88P7c21AQCRvsU1/dhqo1BE5M5jgg0gJPXDvk6L7DBzgeGl5S5xZLWUOVwnfoxsk
	EWvLF/5+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPwF-0007Eo-IS; Fri, 17 Apr 2020 12:17:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPw7-0007Dd-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:17:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id o81so2706783wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 05:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Nj0KcmTNBEnCeGICVn8Q9U3854Hf8PCp4ALTufY7lqQ=;
 b=A26EpKW11XDtjvoa9KoX6PSI3LIarHh0IZddp9CCaFZzzrXUp2Krsgv0owsMCnj6ZI
 Z/LaR5MMhguYrG/wkAbGTlOxgLpbpxHBw3DrdTazmSdgKNhsRZCgnrETjbu2Rc/wZKD4
 LlLEBgA52DFYnhooJGjXMP8OiZKTjcURsVZB17/cR89j+vgQ/b0ZBGgWgg2u1Qb/UTZC
 L5t7VPqgWn4c4RR2j3AuKz+suEnGIbK42PcnG4dVe2A59UxX11WuULez5HqHTH/OlcYl
 3oj3AAXXk9BmcCA66v8XHhhykvdrp+ilS1OLEj86C8ym5og9m39LoWjmitMp9zabes1q
 ZLtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Nj0KcmTNBEnCeGICVn8Q9U3854Hf8PCp4ALTufY7lqQ=;
 b=Lzkl/S2A98eGelLtoTgW9VhafX3EjY/Dg9mvb4rW/KUBUcO37VfSKTiOWH4pRAIqAe
 Abtg5v6J/szDorrUokRB/wWzsleIvGV6zj2AaNSGHRUeUV6Mj8EDEZIbveh5o6sPASX6
 ENL7galhVlUkUn0dybOuGOX6nfXT/iYDEb1q7pSFb3Ch+ubtzaJhDVPOI2yTbt5i9v/q
 Q/P7eCIzenLfJToSJxJ7D2Ejh41f8TTvYSDaDP9iup/c5tgws7xtEvxvVSTY//vwEudy
 5LhnYxebqJjd/489yIuDPhX3vsT1SiDv/s9CvU5whiJOcBuV15UgZUk6CC7Mt+llaeW+
 65uA==
X-Gm-Message-State: AGi0PuYU7JYzLRJQ9MA5wqCoq3Rc/ttGjbnhOKcXnX5H74N5+PSISpCO
 HEGccfV0tKGrwPGKXuCv+LEYAQ==
X-Google-Smtp-Source: APiQypL39Wua+Wbmh6BMhWPY+2/P7Aev5UeBmGQVLI2broFdDiYHt270V8upcsc6wwxwPDFwlILjJQ==
X-Received: by 2002:a1c:ba09:: with SMTP id k9mr3064222wmf.176.1587125853280; 
 Fri, 17 Apr 2020 05:17:33 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id 60sm1647331wrr.7.2020.04.17.05.17.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Apr 2020 05:17:32 -0700 (PDT)
Subject: Re: [PATCH] nvmem: imx-ocotp: Improve logic to save many code lines
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1584604540-10097-1-git-send-email-Anson.Huang@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9794030e-a3f9-079a-02a0-8cee3e3c13b9@linaro.org>
Date: Fri, 17 Apr 2020 13:17:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1584604540-10097-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051735_990637_195C7FC6 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/03/2020 07:55, Anson Huang wrote:
> Several logic improvements to save many code lines:
> 
>   - no need to use goto;
>   - no need to assign return value;
>   - combine different conditions of return value into one line.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied thanks,
--srini
> ---
>   drivers/nvmem/imx-ocotp.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
> index 50bea2a..7a1ebd6 100644
> --- a/drivers/nvmem/imx-ocotp.c
> +++ b/drivers/nvmem/imx-ocotp.c
> @@ -196,7 +196,6 @@ static int imx_ocotp_read(void *context, unsigned int offset,
>   		if (*(buf - 1) == IMX_OCOTP_READ_LOCKED_VAL)
>   			imx_ocotp_clr_err_if_set(priv);
>   	}
> -	ret = 0;
>   
>   read_end:
>   	clk_disable_unprepare(priv->clk);
> @@ -435,17 +434,13 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
>   	       priv->base + IMX_OCOTP_ADDR_CTRL_SET);
>   	ret = imx_ocotp_wait_for_busy(priv,
>   				      priv->params->ctrl.bm_rel_shadows);
> -	if (ret < 0) {
> +	if (ret < 0)
>   		dev_err(priv->dev, "timeout during shadow register reload\n");
> -		goto write_end;
> -	}
>   
>   write_end:
>   	clk_disable_unprepare(priv->clk);
>   	mutex_unlock(&ocotp_mutex);
> -	if (ret < 0)
> -		return ret;
> -	return bytes;
> +	return ret < 0 ? ret : bytes;
>   }
>   
>   static struct nvmem_config imx_ocotp_nvmem_config = {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
