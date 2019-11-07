Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52EDF26C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 06:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdt1xdZ16D5GZsUNUQfkImSarD6+gs/Wr7XqYo7I0HI=; b=WcSC88RSeZ8S+S
	4mVniGnBAWwphmOsnlwsScas5vCPc0zjRIYon9cy8u6zyCXxrl/LFvhRrhyUtBjWKLhjmBLkwvKFi
	zPDfCL3pNro99MTlNZuxlB6Q8oQEmo3yK5d/v7ZAv/jvYxaI2WDE6F8PBR6XhwrfWtrH+BVKSQNKT
	CAtKJhEK+r+1/yrRYdBGMNbVH/AilOtTQlkzkO9cpofA2KmCcmcmMSBZ9NVl9yZ52ZXlUneyBPBlH
	MRX3pBE6FE748W5AJrS963e2imcGagcR907pX/BmO6679F/apmT8HvH5adR9At9vnzz4GsqmgUMjo
	1KSLxwXRND05AFoV/7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSa5c-0006PB-3B; Thu, 07 Nov 2019 05:12:12 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSa5S-0006ON-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 05:12:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id f4so531632lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 21:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r0OOkUsjxCUYtLmAPLLgt2l0dG9hyrlf7+4skyMeXEQ=;
 b=UE+pDLh8LWppVS2Pe9lH+YlK3AHf7m8j4dN7vWiHUoov11X198Km89WzVDjvZT1r+8
 FtXNkSCwbRu8As4nZqyQcRihyTZnUD+4nwebsA2zaJ+cOr6FaoECt82rwLPDE4JrLfD5
 tsAGSiAAw+1G8xIrobZjzvXf+CCjou9KihddjOlC31oIaDqo4kY0aVoVdX6dSKiK6n8I
 kaZh+R4Oklqm2U+H9963U5tuUU16umTc9LD8cE6hjAjf3cHlqIO4IcXlncOQDqvaQSRp
 1EHhGSkRAZCcTL/ljsKblmAWGnoTezp92VPoNA0VjsW358rluwW+VmS7ShO5aymqh3cj
 BstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r0OOkUsjxCUYtLmAPLLgt2l0dG9hyrlf7+4skyMeXEQ=;
 b=Y6s7OVN0RwDJchOWFhYeGDfDaA43kPf2R0/oJVjrTuUD9RDIyqP2aijXZpPZGeTNtz
 rcsHaj3D+FC+J0j1J5sLE4Gtub4Ev7GdTCfj3uVniveheV7XS/z5+OJh4qfe3bNa3Vv6
 gqx0Z9e0Wv6PsQ+OYPedSGeKVHIlX4OQjAheEfoag3YGogaaq+cZYGQZRxDNDVEJ+vN7
 3Lx9dnLu4qKtA1EN/XEcKalgubpZspvazEnUu/r3ONtabqDBviNuOTpnjOXAFqI44yJ9
 vpr5WilR/mQwtGSICEduZQZGzULQWhcvGEO/rQYJ2wqYUE/z8XjvFW3E/lWWSireuQ4B
 rZgw==
X-Gm-Message-State: APjAAAV24hW9EXva3/PaR/4GroAqop1wnjZn0A4K6S5l4cSbjC5hBnDq
 KN9GFTX2xz5ImIv8jDFNpVjmVlDeXRHZwxD/O+3vHg==
X-Google-Smtp-Source: APXvYqzrIU0XwhPrjxbqFZQJcpq5ITRWmgKpPGRWjqVw0VNKYwAzlWe/P03xiYh/AIWZx1psx8xjBIV63cxT4vEeank=
X-Received: by 2002:ac2:561b:: with SMTP id v27mr898331lfd.186.1573103517378; 
 Wed, 06 Nov 2019 21:11:57 -0800 (PST)
MIME-Version: 1.0
References: <20191106155538.5618-1-jens.wiklander@linaro.org>
In-Reply-To: <20191106155538.5618-1-jens.wiklander@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 7 Nov 2019 10:41:46 +0530
Message-ID: <CAFA6WYMZRk_Ls7GhHTRKqstCgDOyOD+Obwv9JNS8_=8_dn8dbw@mail.gmail.com>
Subject: Re: [PATCH] tee: optee: fix device enumeration error handling
To: Jens Wiklander <jens.wiklander@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_211202_945607_D458CD26 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jerome Forissier <jerome@forissier.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Victor Chong <victor.chong@linaro.org>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 21:25, Jens Wiklander <jens.wiklander@linaro.org> wrote:
>
> Prior to this patch in optee_probe() when optee_enumerate_devices() was
> called the struct optee was fully initialized. If
> optee_enumerate_devices() returns an error optee_probe() is supposed to
> clean up and free the struct optee completely, but will at this late
> stage need to call optee_remove() instead. This isn't done and thus
> freeing the struct optee prematurely.
>
> With this patch the call to optee_enumerate_devices() is done after
> optee_probe() has returned successfully and in case
> optee_enumerate_devices() fails everything is cleaned up with a call to
> optee_remove().
>
> Fixes: c3fa24af9244 ("tee: optee: add TEE bus device enumeration support")
> Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> ---
>  drivers/tee/optee/core.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>

Reviewed-by: Sumit Garg <sumit.garg@linaro.org>

> diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
> index 1854a3db7345..b830e0a87fba 100644
> --- a/drivers/tee/optee/core.c
> +++ b/drivers/tee/optee/core.c
> @@ -643,11 +643,6 @@ static struct optee *optee_probe(struct device_node *np)
>         if (optee->sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_SHM)
>                 pr_info("dynamic shared memory is enabled\n");
>
> -       rc = optee_enumerate_devices();
> -       if (rc)
> -               goto err;
> -
> -       pr_info("initialized driver\n");
>         return optee;
>  err:
>         if (optee) {
> @@ -702,9 +697,10 @@ static struct optee *optee_svc;
>
>  static int __init optee_driver_init(void)
>  {
> -       struct device_node *fw_np;
> -       struct device_node *np;
> -       struct optee *optee;
> +       struct device_node *fw_np = NULL;
> +       struct device_node *np = NULL;
> +       struct optee *optee = NULL;
> +       int rc = 0;
>
>         /* Node is supposed to be below /firmware */
>         fw_np = of_find_node_by_name(NULL, "firmware");
> @@ -723,6 +719,14 @@ static int __init optee_driver_init(void)
>         if (IS_ERR(optee))
>                 return PTR_ERR(optee);
>
> +       rc = optee_enumerate_devices();
> +       if (rc) {
> +               optee_remove(optee);
> +               return rc;
> +       }
> +
> +       pr_info("initialized driver\n");
> +
>         optee_svc = optee;
>
>         return 0;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
