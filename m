Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF33C310D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uES+m/usMlCx0sVLumtcZd8QWDjY820nYzDe/MqfvNQ=; b=rcfqyqM9OCO21BAoy/JlsaVJt
	8eS6B3q0LqrD1LhG0VzGpbDhj2Tdh3r/f6Tbemh9ftH0JuWHsEaLSVTFLis/eHqkY2mL91lZpUmj/
	iCx2Go1Alogot5wxu2f+yZVuiW1X9Jrvp+3qkSrTVhkKk6g5NBtZYZMuUNMlmhMDQey9ubiKQ/x+S
	p34oTgTPGai4/hk+kQZNd9g12qz2rZKKQGa25pq58zrxAD8xusIPm/ocgmlZh/b9nsRs/H8pulQYg
	IxvdbGDccHf36QJj5MOyU6HWFa/Ou/oxgj/sq8fczOByhkGzX2Ge9V4mcOiMQ2WpJJnk9+eNm3zNv
	DUqmVgwbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFBN-0007zy-7S; Tue, 01 Oct 2019 10:15:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFBF-0007zd-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:14:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id r3so14775876wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 03:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TqnRymZHVB3nETq43Yyx3kDj0Su1WqRmQVreGP9eeAM=;
 b=SCWeuwojpC5yiuVk+b45PdbihMNriak/36ZsCE0jmeSduzCjq/s51e80vXGAJkh3DO
 qOHqQtqPLCXcoR4SCjvUPn8599enHuL8DaInPPRnMJAbE2OX+R0at2cRImMnVa8lvkz6
 jJLXpTtZ+/tu1Jrrb9ZyWKHK4a5AWtizXLSU8Lo7W8GJOifGv04j8JitEpzXburg3asJ
 H8BysylFgjcP+/1rpYynNTj+oSnqnD5KCDSpcibbNkz+BvguDi/xyTPScY0gm2itHv4+
 Z/d/4nB2wk4CLERLmyyDDWuXNXMBDhYOSOJug9IVfhrxKJoEn+AqHdio2hy9ClO0BK1b
 p40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TqnRymZHVB3nETq43Yyx3kDj0Su1WqRmQVreGP9eeAM=;
 b=Ch/ne8d+an7JVWANg9bbn4GYzXBP2bQc03aWrLCG4o/xmOV5Wu38RUn8q98Rq4oAd8
 Cqt/S8A44qD/RW2vAZ0u7bChjTk+kRcN/vglYfylAkCtRlYRkhQWVUFRmKSU4s5asAYm
 pZltj9bbv92SKfkRoaHNxMbc3qSmq+cz7zQ3baHsoza/g/kqI0spaydy6mMqTsLKKQpt
 NOXqMJnygmqDFWqsVoBbXKrfKAzPAuuqrutwTKvuu09iyji5tFrv4LsNXmpXPQmmtl07
 YjWSSE5IyppUnsOLYL6589KNGZnkmInr/OA9Telua59c1272ztQIP02MqiLumGqbH06P
 4v9A==
X-Gm-Message-State: APjAAAWHDVsG1/rPPa+822KcWQ+IqRWwFFRHyBFE53AayXJpmtIZ5SDJ
 N7W+2IMlULT/wEbjq0ed2xuUpg==
X-Google-Smtp-Source: APXvYqzF+PTKz9urDrKppbUD/aENMJ4pxtaMLYaIAnlz/3ezqaTV4JEnelkNmPMCMeGl5wJhux3KWw==
X-Received: by 2002:a05:6000:162e:: with SMTP id
 v14mr17736905wrb.112.1569924892368; 
 Tue, 01 Oct 2019 03:14:52 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id t13sm33081133wra.70.2019.10.01.03.14.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 03:14:51 -0700 (PDT)
Subject: Re: [PATCH V2 1/2] nvmem: imx: scu: support hole region check
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1569550913-10176-1-git-send-email-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <48bc66d5-684a-cfdb-67dd-722dbf80edbf@linaro.org>
Date: Tue, 1 Oct 2019 11:14:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569550913-10176-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_031454_019824_223DAA43 
X-CRM114-Status: GOOD (  23.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/09/2019 03:23, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Introduce HOLE/ECC_REGION flag and in_hole helper to ease the check
> of hole region. The ECC_REGION is also introduced here which is
> preparing for programming support. ECC_REGION could only be programmed
> once, so need take care.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>   Rebased on latest linux-next
> 
>   drivers/nvmem/imx-ocotp-scu.c | 47 ++++++++++++++++++++++++++++++++++++++-----
>   1 file changed, 42 insertions(+), 5 deletions(-)

thanks, applied both.

--srini
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index 61a17f943f47..030e27ba4dfb 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -19,9 +19,20 @@ enum ocotp_devtype {
>   	IMX8QM,
>   };
>   
> +#define ECC_REGION	BIT(0)
> +#define HOLE_REGION	BIT(1)
> +
> +struct ocotp_region {
> +	u32 start;
> +	u32 end;
> +	u32 flag;
> +};
> +
>   struct ocotp_devtype_data {
>   	int devtype;
>   	int nregs;
> +	u32 num_region;
> +	struct ocotp_region region[];
>   };
>   
>   struct ocotp_priv {
> @@ -38,13 +49,41 @@ struct imx_sc_msg_misc_fuse_read {
>   static struct ocotp_devtype_data imx8qxp_data = {
>   	.devtype = IMX8QXP,
>   	.nregs = 800,
> +	.num_region = 3,
> +	.region = {
> +		{0x10, 0x10f, ECC_REGION},
> +		{0x110, 0x21F, HOLE_REGION},
> +		{0x220, 0x31F, ECC_REGION},
> +	},
>   };
>   
>   static struct ocotp_devtype_data imx8qm_data = {
>   	.devtype = IMX8QM,
>   	.nregs = 800,
> +	.num_region = 2,
> +	.region = {
> +		{0x10, 0x10f, ECC_REGION},
> +		{0x1a0, 0x1ff, ECC_REGION},
> +	},
>   };
>   
> +static bool in_hole(void *context, u32 index)
> +{
> +	struct ocotp_priv *priv = context;
> +	const struct ocotp_devtype_data *data = priv->data;
> +	int i;
> +
> +	for (i = 0; i < data->num_region; i++) {
> +		if (data->region[i].flag & HOLE_REGION) {
> +			if ((index >= data->region[i].start) &&
> +			    (index <= data->region[i].end))
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>   				     u32 *val)
>   {
> @@ -91,11 +130,9 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
>   	buf = p;
>   
>   	for (i = index; i < (index + count); i++) {
> -		if (priv->data->devtype == IMX8QXP) {
> -			if ((i > 271) && (i < 544)) {
> -				*buf++ = 0;
> -				continue;
> -			}
> +		if (in_hole(context, i)) {
> +			*buf++ = 0;
> +			continue;
>   		}
>   
>   		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
