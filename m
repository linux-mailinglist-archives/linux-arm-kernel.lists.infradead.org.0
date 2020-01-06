Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB67F130CCA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 05:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP/ogEW8yPpaeV9u0hM+PmdCsd8Ko7fSC7gxliufT74=; b=tEwMWBs0CSRKD7
	wWcpCOni4abhsCWTQive4vd7+tIZryA02bq+EsHKyzRzWqHIQWqMMfUhG2g1KN7pTnoowP8ukc2hi
	i87cuCXZEt7KUa8eedPsh9gXNojyPkXuk9UDg0gyXvpvYraqnjbx/5p5hSQcpF84ygmoqp82McIV4
	+QzFe4w1Wmlp7ktMlCI5kfknEB6ORc5fPR5WzJLLsP+p9PzOMgtNLapN5ngjWYx4jHZAmJkwCBpK4
	Jcoe44x/OUhCPl4xsKIqbczs8tPE56r+6u+hru4M1G6UcmWf4neRg8GNIMI1OpeD9jfelBl3qny2q
	bc/9T9BEjSvOz/BZq0pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioK3r-0001TQ-5r; Mon, 06 Jan 2020 04:32:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioK3k-0001SC-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 04:32:10 +0000
Received: by mail-ed1-f65.google.com with SMTP id f8so2859582edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 20:32:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMDutFxXoe3ZkyaegKexXIdDhONjUtjuJvY6xSY/yc8=;
 b=Rg5spdiT1FfxjfpNepFS2EqIkm2FD2vHivZxNAirTM6N8cIzBlvnVsmGP2hlhiNfiJ
 KXIknp+DuUiJV09DSjBOItaSxv7huO+xnfaYb8EHhnrIBw4yIKb7lzGzSYAcLzhZxKHx
 jRFYogMaHr0VCVcmhbYTdH3yxmgfDSaqlRtOoQuTn62YWKygXMoMQBGMKo2i6UGauQQ+
 uuEWD4BJhnw0scUYtKRcMiheCT45sTgBsJW1XXMIYOu9tLn5PNOmr3PJqtBzuYzSJmjl
 pRWkrEKP2VXVC8rtIx3qLl6Fyxd7K2XLuIQf3ZBPslUDFCe8EERj8q82TKJZh2y1O22k
 pgXg==
X-Gm-Message-State: APjAAAXCIDvL4qiHLWxyzWUI5624moAjEdO5e3WBHVqPXKRmdxIPnQgN
 1kO4LnQTu2qzv5g24x23wlKZL0u5+Vo=
X-Google-Smtp-Source: APXvYqzzeQ78BhfCLhL5z0RTzvfHxLIOohiGuqUJs3mvU+k74xsFm3+E2OefAiKuAM4UFqzkQpVTUg==
X-Received: by 2002:a17:906:b30f:: with SMTP id
 n15mr106452813ejz.236.1578285125862; 
 Sun, 05 Jan 2020 20:32:05 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id d1sm8080217ejy.3.2020.01.05.20.32.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jan 2020 20:32:05 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id t2so48247401wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 20:32:05 -0800 (PST)
X-Received: by 2002:adf:ef4e:: with SMTP id
 c14mr102285473wrp.142.1578285125179; 
 Sun, 05 Jan 2020 20:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
In-Reply-To: <20191228171904.24618-1-tiny.windzz@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 6 Jan 2020 12:31:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
Message-ID: <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_203208_699621_159A3732 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 1:19 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Expose sun8i thermal as a HWMON device.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/thermal/sun8i_thermal.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index 23a5f4aa4be4..619e75cb41b0 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -20,6 +20,8 @@
>  #include <linux/slab.h>
>  #include <linux/thermal.h>
>
> +#include "thermal_hwmon.h"
> +
>  #define MAX_SENSOR_NUM 4
>
>  #define FT_TEMP_MASK                           GENMASK(11, 0)
> @@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
>                                                              &ths_ops);
>                 if (IS_ERR(tmdev->sensor[i].tzd))
>                         return PTR_ERR(tmdev->sensor[i].tzd);
> +
> +               if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
> +                       dev_warn(tmdev->dev,
> +                                "Failed to add hwmon sysfs attributes\n");

Maybe you want a hard failure instead?

ChenYu

>         }
>
>         return 0;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
