Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9977917C65D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 20:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2h7A6jDvUTNlsUPbMydp1B/rRYkIkYqAfSIyiXLdExg=; b=O75rRDmHcHn6n6
	dU0sZDZjFN1Jib9wkvicpss5ESLX3gsE+kWL/6UVfX+m9uVgKUts6eJpSPUDegQ83peAvCsjqhPN1
	w9CB/yYVJYI7lI+ADB23FeKTdUB4gz+FgdrmCNh8HWEHQKrsG0RDdolejEJkdXFAdbmFnVfyNiWQ6
	lRZjsQntSu/omdRweUATGoziGnrdKfjjs7/EwmY+FIQftu2O1s5xO66W4LLRmnXabnEQrdi68T7XH
	x4Ao4KoeymM6pSfbSwMtuJQv38WLPe+4SROjM5uD1nxC1PNFzGLOCM2hoeh2quC9oA2Yl7PYT/TCI
	wE7yk/S5xK7AUDu/jMuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIip-0000vG-A1; Fri, 06 Mar 2020 19:33:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIig-0000uN-N2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 19:33:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so1273038plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 11:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z3KT8EeBZ4kaVLgnDAz4UiYDB1f5ZpcHkzDsT+BdSZk=;
 b=rxSdDrqzraT4uwdK4VFCE5tw55F0ImCJ4F37HWzATRmaxytGqnISM36ath42eIQYyS
 rBxO7a6vHaGFt06R6XSFwSP1nK647qwCkhSGR3uLvqqK0Zl6BgHyntKqbDXBoqlJf96k
 mwsBKxGe3/qFV7x7SqiCwoCNzEaFRucueRUkHjxI/aduFKiKdxl109Pf5SL+vws6BKUK
 +eMM7neFp8TqrDj96iPZM2jdRCKC3rsRpjxGUVUmlbD2WmHYrE+Ns/PpMw6e2BZbL4rF
 kDtclqHTx03ggdYNn8/LVa11NjdycrQMnWIfiK/oLXyIG2vM3XUsWAvm3PMHLW5RPo/O
 WW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z3KT8EeBZ4kaVLgnDAz4UiYDB1f5ZpcHkzDsT+BdSZk=;
 b=CUjHs5Y7ksr5/ncGApkb/sfmaryNx6nzQ/epXW/7WKuoJhWrQdZweV1LRzgcr3TGVs
 OCbr9lVdZ4Y87upBxaRmaslcV1hTQ3gLCjTrZk5ahnoC/eOXQs+no2FFclarAa8ggDhD
 o29JbDODtOqcLhzsqECM+JLlwGqHCsQm+7YdjcXwUrOI3i0DpYaWMuyRFRjarcnc0WGs
 z3cSVtrBTkkdzqAdNnEZnkrRbUHFRgw2G4p2+eJ+yx0qLo6MbNwPHLKBZZ8gX1J/Yeyj
 DJKWyLjbXbx42KLsUvfWkf8ZygVl/INqaJ5C/h8VOW65ucjNUDaPi/3CPM+b9+nJFz2F
 UBfA==
X-Gm-Message-State: ANhLgQ2gr7s3/f5pk8KbmqZNTEdO5zg/gM0vpBaaBVeqa4z1txVWXBDY
 /FB7PBj+LI+CP0sDG40YCMydzqP4
X-Google-Smtp-Source: ADFU+vsT3WVYwhpJooawROdOiTWGvCsUv6cL9HuV5P5d1U/LqQqpNY07JVvpUBPh8/8LLWwZnSFs9Q==
X-Received: by 2002:a17:90a:ef17:: with SMTP id
 k23mr5138094pjz.139.1583523193162; 
 Fri, 06 Mar 2020 11:33:13 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id a7sm10093043pjo.11.2020.03.06.11.33.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 11:33:12 -0800 (PST)
Date: Fri, 6 Mar 2020 11:33:10 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Message-ID: <20200306193310.GI217608@dtor-ws>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_113315_229177_489EBAD8 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de, festevam@gmail.com,
 linux-rtc@vger.kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 daniel.lezcano@linaro.org, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux@roeck-us.net, linux-watchdog@vger.kernel.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, kernel@pengutronix.de, enric.balletbo@collabora.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> Add COMPILE_TEST support to i.MX SC keyboard driver for better compile
> testing coverage.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 4706ff0..81e26f6 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -467,7 +467,7 @@ config KEYBOARD_IMX
>  
>  config KEYBOARD_IMX_SC_KEY
>  	tristate "IMX SCU Key Driver"
> -	depends on IMX_SCU
> +	depends on IMX_SCU || COMPILE_TEST
>  	help
>  	  This is the system controller key driver for NXP i.MX SoCs with
>  	  system controller inside.
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
