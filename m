Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E2D1F77E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+d4sRA6RNzluFrjfuk3wiZcZvcEXoencjeKOR9dKuP4=; b=Y7R+WtgaFIMopG
	frtOqFbIbfjnJV9pKfOX8WnBw1BxTcugZoM9LHD7Y7H8kpDXeAxsDQbHyjVAmpJEnb3n1x3ibc3Dp
	IMbW+pIRDKCNsi83BvtoV6simapfmS9CYWHEaBePldJXyrXuojya5gSJ2mOB0f38/QWxIhQ5gM0As
	nQ4dVrhjKHP9b62V8f7D/OQ/S+70pw/Q6isaGJCGGmCJ3kGDoosN5t9u+QObMqxu+dBPTGqIrZKUV
	TxDB6wXhZlqZd6TmnJ93a7sghhgZ/3ygqxtm79TnmrVTi3D74RwQ1qJN/501yakDlXAAop9GRTQAG
	TImEEMpKXBk33KsqHI8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjimf-0000DE-Fr; Fri, 12 Jun 2020 12:27:45 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjimX-0000CQ-7L
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:27:38 +0000
Received: by mail-qk1-x744.google.com with SMTP id b27so8717140qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 05:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tLsYfW4RvheYw9CTrX8bz1lS4lnmm2tAaCXBCxYWoEQ=;
 b=MH05/iQOWHCHtXEzT/j87+oMOe4Ehszd4i8qMJaU6IlFrgT0hhW5I3HK1PrbLC/Qck
 aAv/hhZ8afPHNSDyMGRD2r88qciFMfDNjbugPS7sBf2RsxvRNjInlBnlVqqqzDIiI7Rh
 1zXeabBiBZuftgS4wow31QmOGoT1lczlwEtPi0YoYwGZH65tgoGk3nium8hrEtYYrEuj
 RjvWysY3mmxHSxNZ2DOJZLhOhyEJh9MHpIx6OsWIpOUGIi5XY53/miD1Ib714okQUse5
 0u4n7rfBHd09G/wHg7WdoN42B2qJ9LVpxJDEg2nhv36TDAaS3g+90/f7pZz2cydGNeRu
 tE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tLsYfW4RvheYw9CTrX8bz1lS4lnmm2tAaCXBCxYWoEQ=;
 b=Ket8+VL15dunFQA0kqA7E2wRnqnyqvB2sWRsjHNO8N2tHFZK8cwwCNm40DTzbIKKTZ
 x6Y0cx3AR/6X52hk/s5EGYOYHqBP7O6S4ATBsE8jg4mB82f0MfRKd8DlUnpcABLpsokY
 Nr+NoFODMvEx/RWzN7rpuj2PV7lMTdN0BRSVIGPIWhIQqYVkeloN/vWAh+40mAZXkNt0
 j29ueByechwwWH8cveCFDIwowSPN01QMpVFX//AGehIs/wStepwAlMGsAXh2aq74aAOv
 KGsJ4I6FZX7YdEpjkWm6PiY3QgDlyKGeBBusHFrvl98z6KgPbZ37/bUxf1b1mVirfcwK
 tEiw==
X-Gm-Message-State: AOAM533ZGtMp6fGCCcc/cu03mMHqtLafZcCpene+fo/zsUvicY419exT
 Q7QW7ef0JqbLQx7Q74ARoq0=
X-Google-Smtp-Source: ABdhPJzQrd9/sO1InrMTv8fzLY+uBcD1JYvMHAmp8wEARA5eSwbGqDdAQI7YwopBMXTQ4OfmSLiqtA==
X-Received: by 2002:a37:be43:: with SMTP id o64mr2658766qkf.322.1591964855029; 
 Fri, 12 Jun 2020 05:27:35 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id o66sm4306188qka.60.2020.06.12.05.27.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 05:27:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] mfd: core: Fix formatting of MFD helpers
To: Lee Jones <lee.jones@linaro.org>, andy.shevchenko@gmail.com,
 michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org, linux@roeck-us.net,
 andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
 gregkh@linuxfoundation.org, Frank Rowand <frowand.list@gmail.com>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
 <20200611191002.2256570-2-lee.jones@linaro.org>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <e46a0d3f-80c4-dc36-8002-96740316b442@gmail.com>
Date: Fri, 12 Jun 2020 07:27:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611191002.2256570-2-lee.jones@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_052737_264718_AABA7954 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
> Remove unnecessary '\'s and leading tabs.
> 
> This will help to clean-up future diffs when subsequent changes are
> made.
> 
> Hint: The aforementioned changes follow this patch.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  include/linux/mfd/core.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> index a148b907bb7f1..ae1c6f90388ba 100644
> --- a/include/linux/mfd/core.h
> +++ b/include/linux/mfd/core.h
> @@ -26,20 +26,20 @@
>  		.id = (_id),						\
>  	}
>  
> -#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat)		\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)	\
> +#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)
>  
> -#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match)	\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)	\
> +#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)
>  
> -#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id)		\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)	\
> +#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)
>  
> -#define MFD_CELL_RES(_name, _res)					\
> -	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)		\
> +#define MFD_CELL_RES(_name, _res) \
> +	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)
>  
> -#define MFD_CELL_NAME(_name)						\
> -	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)		\
> +#define MFD_CELL_NAME(_name) \
> +	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)
>  
>  struct irq_domain;
>  struct property_entry;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
