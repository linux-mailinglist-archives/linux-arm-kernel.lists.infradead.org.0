Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E4E16CCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 23:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/O3YMH/W1r2zzlQYDDXSjsn8V7Nz1Zzr9hMArJlbkE=; b=HK5Xa5GTGESblP
	WK1ainOwOCb+rOpkGcrN2Ujd9UT9vKumwDkwN98PYD2J7pd/M8wQycbuCaK/mLoIb0d4bwT4U6s74
	mQxBSjjy2KLmEWweyXFxg4GeWBjRjyppu/V3DbDsqHOK4+t8rvVEeBgTvMjn8q3TnbHU5vpr+YGRk
	d9IqXY9STh+cFKy++Y6UtdcFRqZv4uvONgWge6nhngSXf1T9OEFXkQJ+Z1+pwDycziilH+LojUN6j
	7V10NVIL5CBL5Sckx9f9bQfcWbHHGEDmGWyXzoh3J+G4zjlDlXmIh+V43A7azOLFa6QQdvWS124jc
	4g75VIvuBKSCSOL/Tzjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7Im-0007Lu-VK; Tue, 07 May 2019 21:07:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO7Ig-0007LM-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 21:06:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id e24so9271452pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 14:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VL8uiSCPpzZNMmP+oEVAuQOFn8NTTTisNh1ggwInehw=;
 b=hd/bYwseMXfh2hIOB9c0up4PVwZLYR4n6c+ckG//+BXsEDwauzmZywkj452nBvEUDt
 sAiDFdvaMIJ1RFSq6Ts6UGBoViNk/9II0Yq0+34q03rC6fWIJ2LcUt4FNYDtMLd4p6Xi
 gD3JeSihu3tqX3M4nl+YuCPfpbSEDGaEDr2VfjzyKCSZFUVAN1IOj3Q5JHx4ucy/V6MF
 nDJ4pXd7Pr1CvPECi+wBzmq0f6e2kR0w8cY0Ztn+n4WwBsSpM4QEMxpV0dDs2g/QlysO
 1r1V265aKrVbP6t/tlMivLjqUmI8SGQ3fMGawtfQMSNccF+8pthXpJZzv3ElDkKqXo86
 91aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=VL8uiSCPpzZNMmP+oEVAuQOFn8NTTTisNh1ggwInehw=;
 b=S5H0bxdDqqo9VC8cvbvOfyCQRUV7095pZ57Br/Pgt5WA8FBeH83LuK/7CzzBFzpstu
 Li1ew7hR5Tq1xN2eyffNZTp1zYisu3zfFW7uQmhbxmSltCGpqxTF1H9VdrkW9IP0I6vS
 ZvA1JF7AkVgkf3mU3DHUTVirLNkH+mSwHdw9BFnCnCnXUoj7o+EfpDWD/lRwIlWPYz6F
 5I7FOj3RkFan6DiU3+o+fQqPe7OkgtILcboPS5KazB/9UNEkvtqkTIzBd1e4coOEIEAP
 7MITZzXAVAXjCli1Aw2A3f6ZhNTPGuPDv1WzfSUQTatr2c1tvTsRYd2T9TdEgrbgrlyb
 i6vQ==
X-Gm-Message-State: APjAAAUebvsAoqyjV/jeqEG23rggRzUkmmess7I8pESyi8jh363weebG
 6NNp2vw/qiYCDJykApgj2ETRLB6t
X-Google-Smtp-Source: APXvYqx1ktV35C20uU5UuqbaQvu3JK7lhcdWdBSMcoeOiHXkOeEm0E+QpkPPBfwH3ZwQSt0JbhhpAw==
X-Received: by 2002:a62:160b:: with SMTP id 11mr43708208pfw.88.1557263216768; 
 Tue, 07 May 2019 14:06:56 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k191sm27841147pfc.151.2019.05.07.14.06.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 14:06:55 -0700 (PDT)
Date: Tue, 7 May 2019 14:06:54 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/3] kernel: Provide a __pow10() function
Message-ID: <20190507210654.GA4951@roeck-us.net>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
 <20190507193504.28248-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507193504.28248-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_140658_093255_ADD44CDE 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 12:35:02PM -0700, Florian Fainelli wrote:
> Provide a simple macro that can return the value of 10 raised to a
> positive integer. We are going to use this in order to scale units from
> firmware to HWMON.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  include/linux/kernel.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index 2d14e21c16c0..62fc8bd84bc9 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -294,6 +294,17 @@ static inline u32 reciprocal_scale(u32 val, u32 ep_ro)
>  	return (u32)(((u64) val * ep_ro) >> 32);
>  }
>  
> +/* Return in f the value of 10 raise to the power x */
> +#define __pow10(x, f)(					\
> +{							\
> +	typeof(x) __x = abs(x);				\
> +	f = 1;						\
> +	while (__x--)					\
> +		f *= 10;				\
> +	f;						\
> +}							\
> +)

Kind of unusual. I would have expected to use this like
	f = __pow10(x);
ie without having to provide f as parameter. That would be much less
confusing. I assume this is to make the result type independent, but
I am not sure if that is worth the trouble.

Are there users outside the hwmon code ? If not, it might be simpler
to keep it there for now.

Thanks,
Guenter

> +
>  #if defined(CONFIG_MMU) && \
>  	(defined(CONFIG_PROVE_LOCKING) || defined(CONFIG_DEBUG_ATOMIC_SLEEP))
>  #define might_fault() __might_fault(__FILE__, __LINE__)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
