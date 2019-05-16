Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E1A20D2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeTg420splNkxqGMr0E+MK1q88KQs/SPC1OZzqwPJNc=; b=hgiGr/84ZhoMiy
	OtJtlgkG8xFD473Nxivi4HovGJH2ARy/O4Vb0F1TnW5Pq1fmhJiISQad9LcLUcVQi0u3ZWm5jBhrc
	H4auNi7nttp+REFsyiRZTL7OrpR6tJTBlnoQxc9UYHMLZzLPNpzPrg0CMATtx3UlDo/xT/c7IGXPI
	gO30S1EiAFRI9+RSHw+ArLhRPt7hkD68VpJqs5EGGLDzxwSMriHGWxPn6E1oAlglK80PTUDfGRhLx
	M1W0sNiVhFSuRuAs1WJnURP1alRY71Pp9aUBB1zY3Il+WH7i6J9TLsloxGAUv78Z/juhIDA+vJubI
	xfbpAV5GkIJzYrPzsZdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJOU-0004m7-MV; Thu, 16 May 2019 16:38:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJOK-0004lS-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:38:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id f97so1891526plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bsgiCleuIV37HFrOg/til1s2xPJTshEDnr1rDjf3MuI=;
 b=BRK8FquwMqIgtVAD9dh7lzV8a82q4W/jqm7QJAW7x2ceSfBvetwmHeteKO2lm5ofqx
 8aFXUIc1J2lkBykY/vS2eCS+UwPf73ASSapoxkxplPS8+n2lMxhslOQ8yTYJRVlWcu81
 Ts0DR6cuzScHhiOut78NV0g4KHn4rcuC5tbGvFdQ2tq4K/KDYhKvUfQPpUTMevRqHoC9
 nQImOLUvcK8gf2hrfUY7ErtBMPCf3mLs1g1iSwCXV71Nlzr6LC3v9M3SfVGNI1Yyl97k
 J5NfxxXi4Wg8Y7CccZ4+BUVe/1QCo5tw9attCw9uhty7WMW/kLCZpgpqFcPBhhSwkjpJ
 thhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=bsgiCleuIV37HFrOg/til1s2xPJTshEDnr1rDjf3MuI=;
 b=gotTjjQTFRiaoYP2Epn1P+RtzNRt9nDCZBl+8of/3ydtgN3fnFOElQBCqAZDCTkZJF
 yCSOkp1s1A3/5Par4zJ3FTN5IFgfPmDZOulVmNjthI8cg3m2gWnXcvOlS2WjDaYsyBou
 9s6jwJb23buDomaKqm3DMBDEhLKKeH+NGRJjzHqfyJpNSrHsJx5BHWAwVP8bC+Hvr/jo
 rzcHRo/0mxTfIU/A9NHuA760FDscwbrQwAadEJlN/OH+fuvI04xRK1ZBDlYWBJ1Hoty3
 s1FvwbWsVITGinuDaZO64FuotKPadkhE6/4aSLD4Qp84Lne2ZyBl/3XevzAjnlipQJIk
 7Y/g==
X-Gm-Message-State: APjAAAWXN9JHux0BXYX82DNAj3VcB4nEWKgJtej4tHmDdYh4urQLNP5H
 DSqSzbtxx+mZVzvyFgwP6nU=
X-Google-Smtp-Source: APXvYqx5GIyJvz8dcPh/7HxgAVKIQNS/BbVZnclrLsSPwp0k+2jX+SNrai6KzD8ydWb0TFt4949TQw==
X-Received: by 2002:a17:902:683:: with SMTP id 3mr9354157plh.209.1558024679757; 
 Thu, 16 May 2019 09:37:59 -0700 (PDT)
Received: from [10.67.49.52] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15426025pfm.137.2019.05.16.09.37.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:37:58 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_scmi: fix bitfield definitions for
 SENSOR_DESC attributes
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190516163315.18505-1-sudeep.holla@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <8843182d-aea4-6a75-caca-6b48de594f30@gmail.com>
Date: Thu, 16 May 2019 09:37:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516163315.18505-1-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093800_934686_4862D131 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/19 9:33 AM, Sudeep Holla wrote:
> As per the SCMI specification the bitfields for SENSOR_DESC attributes
> are as follows:
> attributes_low 	[7:0] 	Number of trip points supported
> attributes_high	[15:11]	The power-of-10 multiplier in 2's-complement
> 			format that is applied to the sensor units
> 
> Looks like the code developed during the draft versions of the
> specification slipped through and are wrong with respect to final
> released version. Fix them by adjusting the bitfields appropriately.
> 
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Fixes: 5179c523c1ea ("firmware: arm_scmi: add initial support for sensor protocol")
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

> ---
>  drivers/firmware/arm_scmi/sensors.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Hi Florian,
> 
> While testing your patches, I found this horrible/silly bug with bitfields
> which initial made me think firmware is buggy but later found out driver
> was buggy instead.
> 
> I updated your patch accordingly[1]

Looks good to me, thanks for fixing that up!

> 
> Regards,
> Sudeep
> 
> [1] https://git.kernel.org/sudeep.holla/linux/h/for-next/scmi-updates
> 
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index b53d5cc9c9f6..c00287b5f2c2 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -30,10 +30,10 @@ struct scmi_msg_resp_sensor_description {
>  		__le32 id;
>  		__le32 attributes_low;
>  #define SUPPORTS_ASYNC_READ(x)	((x) & BIT(31))
> -#define NUM_TRIP_POINTS(x)	(((x) >> 4) & 0xff)
> +#define NUM_TRIP_POINTS(x)	((x) & 0xff)
>  		__le32 attributes_high;
>  #define SENSOR_TYPE(x)		((x) & 0xff)
> -#define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
> +#define SENSOR_SCALE(x)		(((x) >> 11) & 0x1f)
>  #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
>  #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
>  		    u8 name[SCMI_MAX_STR_SIZE];
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
