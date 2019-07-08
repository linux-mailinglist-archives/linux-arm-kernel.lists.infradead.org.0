Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21106625F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SOO6ZQz0nzgoZKDkDQjtMo4HsaqlSAp5JhDTX3iloI=; b=qfQYwBHjvt8/6C
	RR7jwpmHIM/GIMipPTI0AVIS9oqfupsordifW9J9UHsRPN/uEgqVJMrb7ePkorgngTdy17Ol262/8
	efkeQHma0X9L7W+Hfod4X5WKRvgJeF60w7neMdXlVk6JdoYs950nYeIAwjKy+x8tMEoNOwgOuNcQl
	bIjINEnJB3EUL1S3LAL5n/GwBP8afzm1CzEzDpzDni1T0B0MsvEYwBPrLzRSZ/4BjDxpBBAHT8RCN
	cROBva2MPRJnQHq1LC4Gz2h+c/WR9Qi9dqY3DszsiDJazS0hUTvZScov0FUtZHXERmy2CwfgJ83Yx
	zOEFuIj5i+v37Kb2HYlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkWJx-0002F5-2K; Mon, 08 Jul 2019 16:16:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkWJm-0002EU-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:16:43 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so36508426ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 09:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7tw0R1rFMCD1i4r7LuNeYKjhPcjJjHVgqiG2ggUkFmA=;
 b=Jg78YVBBeZqrqneqx3nONAoF4GkNLjxyjwwf8AjCFQUdlWP1dNKhAJXiF22a3KzwIw
 4N8ABLfR99iGqrDfd1NKQk8xrJFFzfLXSw+ZctmwpQ4vxIAtOCtNda+BNpflXcmmz+yA
 teOMSe/4fKptDXUxzoPdAcJIXJzqnNUYTAvW6F90CtVGStIBFvvNUQ3rcUpbhff2G1TW
 9qUuD/Det7AQKuh4COh7xnRrG/gm+vY1og269gZmuYtcT+G0zYI4yi7e+aNS3P1iDJa9
 MNrZAbSSbvP7LPxqHipt4w6Qi1GCKZCIPa5C7y/AYPR0btMvq8womaaTesgPAsJgFd+B
 egFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7tw0R1rFMCD1i4r7LuNeYKjhPcjJjHVgqiG2ggUkFmA=;
 b=Und5n9p5gVD2vIOLALHKWHHhVWbch5kE7l9PXSSdTZfSiitM7hEqbzTCzT5ngsceXc
 TdnwUC9rlmuSzKp6wTguGS1bpQFQMbixMIEc/lHuxu+dwYDZxVfo6DSo/Xwoqg8Bod73
 41sac6AZX1MKj5Nnt1WbhWobyEwOPO9DA4hagymZYykVfVciVyeYsVlydtbJnRGoeDXs
 3LQwWdEW3rj5/RX+JOvd0U3WGPNojzKMs6daWc3I8tAlt0PowooeDb90Pqpq3q1jTYYe
 vN5f9Dc3WEuY54x+FUvflUsAW4pLvKECunybMtdXLS+1a4Lok9vnDQIW/U4Kho/4tBJw
 Fnmw==
X-Gm-Message-State: APjAAAVCxXBqEw+lVnZcRheEY/eNjTEgVtrusDyNKyOIfkcjD22ATQzk
 hsb2n295HqqRKErnrUo4r2+FKZIWiBVoUlZBJP0fDQ==
X-Google-Smtp-Source: APXvYqzMhreahvLSaTzvfscpJMJE88pqa13LJ/bcpTvySglD81gzHf0MAYFs52rE/Xn4yIJlW15bP7pWQwhONzedP/k=
X-Received: by 2002:a02:b609:: with SMTP id h9mr15223976jam.36.1562602601187; 
 Mon, 08 Jul 2019 09:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <172e04b2-65a5-4007-8464-cc7701e76e36@web.de>
In-Reply-To: <172e04b2-65a5-4007-8464-cc7701e76e36@web.de>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 8 Jul 2019 10:16:30 -0600
Message-ID: <CANLsYkxxe58r10aodp+Cdi8MBbidk_UDgFEbuO3WVZCu8k9uNQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: Two function calls less
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_091642_643029_4C32C5DC 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 5 Jul 2019 at 11:40, Markus Elfring <Markus.Elfring@web.de> wrote:
>
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Fri, 5 Jul 2019 19:33:26 +0200
>
> Avoid an extra function call in two function implementations
> by using a ternary operator instead of a conditional statement.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index a0365e23678e..219c10eb752c 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -296,11 +296,8 @@ static ssize_t mode_store(struct device *dev,
>
>         spin_lock(&drvdata->spinlock);
>         config->mode = val & ETMv4_MODE_ALL;
> -
> -       if (config->mode & ETM_MODE_EXCLUDE)
> -               etm4_set_mode_exclude(drvdata, true);
> -       else
> -               etm4_set_mode_exclude(drvdata, false);
> +       etm4_set_mode_exclude(drvdata,
> +                             config->mode & ETM_MODE_EXCLUDE ? true : false);
>
>         if (drvdata->instrp0 == true) {
>                 /* start by clearing instruction P0 field */
> @@ -999,10 +996,8 @@ static ssize_t addr_range_store(struct device *dev,
>          * Program include or exclude control bits for vinst or vdata
>          * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
>          */
> -       if (config->mode & ETM_MODE_EXCLUDE)
> -               etm4_set_mode_exclude(drvdata, true);
> -       else
> -               etm4_set_mode_exclude(drvdata, false);
> +       etm4_set_mode_exclude(drvdata,
> +                             config->mode & ETM_MODE_EXCLUDE ? true : false);

Looks good to me - I will add this to my next branch when we have a new 5.3-rc1.

Thanks,
Mathieu

>
>         spin_unlock(&drvdata->spinlock);
>         return size;
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
