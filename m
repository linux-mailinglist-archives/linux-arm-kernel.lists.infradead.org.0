Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DB41F77F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQw+R+D1Vbu9oK9b5As4cM5f2lKJZ3GuiWg6kKEiqKw=; b=q+fQvetkFepGkK
	8yp5Ks34sUFHy2flf3bOKUf2ZSqGVNrGsZK+4/aspGDkF8kFwr8l44e+ddD2gaQNhXoIabq6vKD90
	rr3aitJXhMy1rkG4hYhQkgp1X2TrE3ZYgGptFw9wh8OXb6zK2HdUaTjFs+yP1JCIIHaJWdCptlk46
	/fGw9kjNhTKm5hv140OImStYnhuVVtolvfDw6PkFAuGmwy7McBsuErbo5FKjgnnpHnWuALhNZ9N+s
	ay+ljC9byQFPMr7RyC0X2yNGKJLJnsQZpuVNct/CKl48mTQ66lAx+hvoVAlRfqkZhjGuCPD+/ctcn
	9JVNISqu77KwDUN+IjAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjinU-0000Tm-IG; Fri, 12 Jun 2020 12:28:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjinK-0000TR-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:28:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id q8so8695988qkm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 05:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BwnXafa4LmXGLB71ZYrE45hOUaY6Ry8WpQioJAukJwo=;
 b=tM3daYK/gAR1iS+T2VTFj1FfUq932KVqnJEu6zoTjeHlBb3JPZ1CcFidzqtl77RZGv
 BEiKHtBWAXZYgrnE/bhoawU8XshBmXodLQdTEsyzhOsRw3gem8/WD3QneuFyIBUQJph8
 8PQ/rpLPXwZGwfULK6sgPoIP8fA6Yedb459rN/Fu1IPFVHhrK6M2L1P22gixOnVNk82f
 lqle6nhvtl3PF02YIOuXc+wGQ2gLWzRolYHdZSRg3Z8sM7bFU/rj5hSsgF9aAE0wSx0+
 Qk0nIqtodjqhYYUnriQstY8IUO3KmTjx414v3o9/RfUPWIX/goFbGcVvq7aEjnudcUOH
 7XSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BwnXafa4LmXGLB71ZYrE45hOUaY6Ry8WpQioJAukJwo=;
 b=fto/HZquRJ2W/BSsnV6DgVkV2NCskpFWfH2Kp69ozG6SCdJ+4S0lzu/6ROP11KAj+h
 lH3q9WBT1xCDwmCoQQIU6VG1VAMFuwfWGWk+24J13Va3XhYbaBKsn3K1Hl+HnggeFDv2
 nWucml3QzEyv5QCoHxwgblfq9FKiwQ5YdC511zu7BV/Un4HzajYTwvhReRfSEPdbKL9r
 9iJXdfoVr7eIArq78MokPfsWzwPUbPd5wCWXtyo48eM5ovYXu5xbAzsFxuEBsPL8vvm2
 Y8HXIrdygPc7PTlyQO2TvfuG6yBSsLnRG+IIcP4IeI2dccmxFAO05vT1uSFEn2DVK9sa
 V3rQ==
X-Gm-Message-State: AOAM533OI5N3YLTbVzvcZd43Pn+vzHPJFQtNKSlFuuYSbC0bM7montPh
 Pc1hOsbgQI5rW//GxrSCYX4=
X-Google-Smtp-Source: ABdhPJwvcSx6JECJEhRXZoRxrBOfrUTYOwVnxOlQVa6Yr+1fad4QCQlU5GdR5k5YIodWz6aXggeRlA==
X-Received: by 2002:a37:e205:: with SMTP id g5mr2713401qki.451.1591964904689; 
 Fri, 12 Jun 2020 05:28:24 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id m53sm4776290qtb.64.2020.06.12.05.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 05:28:24 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] mfd: core: Add OF_MFD_CELL_REG() helper
To: Lee Jones <lee.jones@linaro.org>, andy.shevchenko@gmail.com,
 michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org, linux@roeck-us.net,
 andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
 gregkh@linuxfoundation.org, Frank Rowand <frowand.list@gmail.com>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
 <20200611191002.2256570-3-lee.jones@linaro.org>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <6881d95e-c12b-8133-b27c-82c0a2842fd6@gmail.com>
Date: Fri, 12 Jun 2020 07:28:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611191002.2256570-3-lee.jones@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_052826_082437_0407870B 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Frank (me)

On 2020-06-11 14:10, Lee Jones wrote:
> Extend current list of helpers to provide support for parent drivers
> wishing to match specific child devices to particular OF nodes.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  include/linux/mfd/core.h | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> index ae1c6f90388ba..7ce1de99cd8b8 100644
> --- a/include/linux/mfd/core.h
> +++ b/include/linux/mfd/core.h
> @@ -14,7 +14,7 @@
>  
>  #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
>  
> -#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _match)\
> +#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, _use_of_reg,_match) \
>  	{								\
>  		.name = (_name),					\
>  		.resources = (_res),					\
> @@ -22,24 +22,29 @@
>  		.platform_data = (_pdata),				\
>  		.pdata_size = (_pdsize),				\
>  		.of_compatible = (_compat),				\
> +		.of_reg = (_of_reg),					\
> +		.use_of_reg = (_use_of_reg),				\
>  		.acpi_match = (_match),					\
>  		.id = (_id),						\
>  	}
>  
> +#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize,_id, _compat, _of_reg) \
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, true, NULL)
> +
>  #define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, 0, false, NULL)
>  
>  #define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, _match)
>  
>  #define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, NULL)
>  
>  #define MFD_CELL_RES(_name, _res) \
> -	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)
> +	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, false, NULL)
>  
>  #define MFD_CELL_NAME(_name) \
> -	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)
> +	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, false, NULL)
>  
>  struct irq_domain;
>  struct property_entry;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
