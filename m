Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AB41C2660
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 16:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqhrIHtqnodOvKBJtKrC8i0jmTIEoxPjeRNqAO7JWv8=; b=NIfVhmXp6UAE7t
	62IYA+RqYhLWjtZIvOkZMt6SB5PW1sVBBlCq1TU1OMs+eYfBwcx5dg6PObWRnbwdbCwrMoJT9seqf
	hs6ACmqG7JnUcTDxHbZ547+4T09KnGNP9ig8rH+xw/QEkT3CLQwYiz7e3ys+TdZPLhlEjqNU1PZvT
	ng/6tJvrY/hAZLAL4JvjTqplLy7uJGwDb3iXUeiN+zlDpS9jNMgbBT/62NNYVrJzRKK0kHD/6u5+f
	pZWIW5Z++Kv4k3d3zKuU5KNRrKomDm31fyRdyw4kvKy2gmdzywrke2CgFy4rizjbr7Cv730JDUeHL
	Z3I1iiKy9OjgoEMsrAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUtaC-000513-Dg; Sat, 02 May 2020 14:57:36 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUta6-00050g-4F
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 14:57:31 +0000
Received: by mail-pj1-x1044.google.com with SMTP id hi11so1331471pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 07:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QrYGAubEqwzwquEx2Edm3lavoI+/qX4M+pQUcvGXV3k=;
 b=rwUbEm8fJxYa7XPiUO1hiUeffwIxNZeLcFogdB3FKp/ZKfQi4oj2O30BKaysbmJlIS
 JGYhw6tErSrCNfF48haZ3cdJZogupZ0zVdACzUYz2zN8aLVz0ApDi8furMwpLbcl3kPh
 6m74rJ9q/KuF7SoAQH2Y8fI3pjjfzMgy5FENDASYtX9tmW6XUGrDZfpgWciAfcSuNP7F
 fLBMsGoAoN3lfS6C5UeERbXsDeobfrBaxjqSRq17Xc2K54yBSCDXkO9dSb5lQFkFDKsl
 PMFlVzK21TkFszxatPdOZT4Y3JfTTEWCRGsBb3zkR3cS7F/FLKAxk/GU1UNiNnMCKnM5
 t22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=QrYGAubEqwzwquEx2Edm3lavoI+/qX4M+pQUcvGXV3k=;
 b=b/U2DI3WZ4gKYL2Yt7fZ7VxYnoiMtzOInrCuggwLjHA5c7xjSrQnCNVn1O5zZTu3Ma
 aDHkETXC9K8iJpzyrUsb72PhPI92l+Mi4q5V3zHYlVqSo/CnDlg3Pc2SVwz8oArhEmp8
 IUVYY4iIvSnCtxuxd9AkYZOwVAMG3q1eFx4LcUhPih0MSYH0/2O5TcKRGoL09xXOM/iE
 UHOSJa+kUQhMhTsliCANUIWQt7irTukehZphaG/mFw3BDt/8seuUqhU3ZrevVCTWG40s
 5EDGVPxgBTTTSWk02fuNnrEINAENvdGxxYWzMAOsN/UvXAbOHwD965ckWRLZ+IwAaIAB
 PRTA==
X-Gm-Message-State: AGi0PuZuPjtqxPAPxg8HYcjTmtu2dGVXexc7rbmy5YMji8Rwlh2wyEti
 67F9KtQjSsLu7Vkyrn7+YpR7KXOR
X-Google-Smtp-Source: APiQypJRcYlpEamSKIPjDruICLkC9LSfCv1GeaaAxuLu2XII+vnw7iOyL6HjBPzp3bDfruTknAyqdQ==
X-Received: by 2002:a17:902:8643:: with SMTP id
 y3mr9469004plt.149.1588431448743; 
 Sat, 02 May 2020 07:57:28 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u3sm4693033pfb.105.2020.05.02.07.57.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 02 May 2020 07:57:28 -0700 (PDT)
Date: Sat, 2 May 2020 07:57:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH] watchdog: imx2_wdt: update contact email
Message-ID: <20200502145727.GE189389@roeck-us.net>
References: <20200502142653.19144-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502142653.19144-1-wsa@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_075730_169959_3EE84C8E 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-watchdog@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 04:26:53PM +0200, Wolfram Sang wrote:
> The 'pengutronix' address is defunct for years. Use the proper contact
> address.
> 
> Signed-off-by: Wolfram Sang <wsa@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx2_wdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index 1fe472f56cb3..b84f80f7d342 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -2,7 +2,7 @@
>  /*
>   * Watchdog driver for IMX2 and later processors
>   *
> - *  Copyright (C) 2010 Wolfram Sang, Pengutronix e.K. <w.sang@pengutronix.de>
> + *  Copyright (C) 2010 Wolfram Sang, Pengutronix e.K. <kernel@pengutronix.de>
>   *  Copyright (C) 2014 Freescale Semiconductor, Inc.
>   *
>   * some parts adapted by similar drivers from Darius Augulis and Vladimir
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
