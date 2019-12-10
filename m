Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F3A118B6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OZ2hcv1XmFFBI/EloSpBoNABW1GvH4mN3QmjYC8Ojs=; b=D+3CgylcmsHoCA
	ogqNOVQyE21PT+E7a9xs0wlI+x+AevgfsPaSfVXq1vvICcd1IEgxLHSBK3O/3A1Q7XSMLOjZ8ndOG
	3lGl3RJ238u5fxG9J52nCJQ9RemnPMgaUQmECHLPqodXvS1YQHgK+ZtU+HDxuVxkgpprJEZwAPGfE
	RJjjxzSO1UGEbEdcp39Jy/ngFwx8HdhLVTK6WPpy/4jDsXoO5Yk80aPnGG+UT/TH63Req+IiZzvbc
	IleKiYd0KlH719NPpVL0QR1agaAEuWNrzC6Q3BccQquCG/AIJ6Kd/zu5MbiFFXTlPn9ncC7sXVOTY
	r8nRdEGRzIKW7/6m5jIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegnB-000246-Dr; Tue, 10 Dec 2019 14:47:13 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegmz-00022r-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:47:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id cm12so16162278edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 06:47:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YhaZZr/VtnLO8eSaQcdnch7Ah/fM7ZqN8a+3yLWOzB0=;
 b=l0FHKErWI4qajzb75NoNYdPNkxgj/rgJZxwk6kRlposiUl3I5QH2p58qWyZzbXcgBL
 b6XBnMTZZBRuZX1kCHDoRsoew0Z3vkmn8Y7AwfkUfpUjAdQdwU49WR030q0HQtTd+bmf
 5So3DJUyBN/RERJMBQXgVhSpUkiQSfPImKj5dBGeiMSLeEpceV0GfY+0Bo1MoePb+38w
 zNoIUdaKUApclzDDUgSBcdu2u83MxIfO+yUoV31LzxV937/cLC4FubD/ums6KUkRtyFz
 Y0b608pZly/PlVoQ/iy0OvHsahjLxI9FuPDGE2QTRU1iiXTajB0stwNYfHo3PTgVrE0/
 ivMw==
X-Gm-Message-State: APjAAAU0T+3Y6irNv5l5uM6a92YaooZpWqOtjxoXdKf1/7Y8bKQu7rEv
 zMQiuKce/xACam/Zz8Qkdz4=
X-Google-Smtp-Source: APXvYqzN26AGf6Gq95ol7usng2Lc94cprpK12qzMUmBicV9faXvBpRLDu6WMkpMOaxtC2z0oN0dWEg==
X-Received: by 2002:a17:906:5957:: with SMTP id
 g23mr4155261ejr.187.1575989219144; 
 Tue, 10 Dec 2019 06:46:59 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id p14sm110628ejr.40.2019.12.10.06.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:46:58 -0800 (PST)
Date: Tue, 10 Dec 2019 15:46:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 01/10] tty: serial: samsung: allow driver to be built by
 anyone
Message-ID: <20191210144656.GA11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_064701_132310_85DAB6E3 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:36:57PM +0100, Greg Kroah-Hartman wrote:
> There is no need to tie this driver to only the OMAP platform,

s/OMAP/Exynos/

Beside that:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


> especially for build testing.  So add COMPILE_TEST as an option allowing
> it to be built on any platform.
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 99f5da3bf913..c835e10bd97e 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -237,7 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
>  
>  config SERIAL_SAMSUNG
>  	tristate "Samsung SoC serial support"
> -	depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
>  	select SERIAL_CORE
>  	help
>  	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
