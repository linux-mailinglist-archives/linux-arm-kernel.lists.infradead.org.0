Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7801167F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOBULtss/bSDdqZRda8Wfg9TNT0wOxrvw84suDCVwHw=; b=of1ZYNPYnGswzY
	wBCs58JM0Q4t6y9jcZjNMJaSm7y3B9YVtFpIZVU7nyHHaCDFmpNT0ORyxJ1v8oKp1E0IqtGwN5Gsb
	azEmweB5rvqNuWldH5fPomqDv4qXwsnP+i5OwJVKSeVIeeZu8MiAleo4Iz0QLKdB6EkSkh+X5dq2m
	IS/Ns8PEdiYFY+tdTeJi1mEZRw+0csYu2VpsxP7KgB4nSAYggfBCQRjAkGTz15A63QxyFraNa+1qx
	rm5L5CDFLuebHOt3xlwkGPYQrBNWnrNpcjvIJwIQ7KldqWl07WKfwS1ZuVGNuy1o3io3vkeZ3xBBd
	7KiSLWXwfbWafhydZAkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7tj-0005DU-37; Thu, 02 May 2019 09:20:59 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7tb-0005CS-3I
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:20:52 +0000
Received: by mail-vs1-xe42.google.com with SMTP id e2so935115vsc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 02:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iNJVGPbOxg2kRBxh1El4wavsDt4YEPwZec1MghYKBfE=;
 b=l0Riy5kWhdImYRXC1CVWhiw5O4KQ5ybhA5LG5F07esaYKM8JoI2kqUaEEEIxJsqi1b
 eLMmRMZ1yV3qTgcw7ShHris+VR+Owy5JFqvNYHelfZDUhssvg3CALh7MMIqYDMEMSn9C
 iO+boe9FbQqRhdabtdrmuTp/9/vS9w97zcvdKP9xfSfEPZg/wq1TqVhD62fnlNztY8u4
 G7kVprA7f0k49DAtYmV4eBuWTV6AnYZeGNT87crDBe8LVZ63UJNAWEBq00Zo0X1FjlEo
 N6VPErYHpsNq8rzy93cpyuTssDmubuxhP8nnR0poF3BQMlNLGi+AG/2LpNlWolBHvyND
 wmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iNJVGPbOxg2kRBxh1El4wavsDt4YEPwZec1MghYKBfE=;
 b=EQDa3jeuHIP25fVvAuqchMWZnf4+zzybN2MMXzFAW5JmjwKigEmzkMAqMCsXNtLmdH
 beCpeSFkiTKH8yEHXvrlDIecBxDo3X6tq03ZR3lQrfOhu81s5LSw4aQp7Q5YUCRt5Q/M
 A0+tyhnipJEc0cgIA46XohWJuhFVzEBtnJJij4lmee0rGykB5Ce+xRcKnOZGu9eBfiMc
 dVYaObTToqo6BwFaFJ/nDKoraAkpZsPZon1K0le988dGqmUh/1ZUx+cmVdT6ufKYULUd
 vva3kDlybISW51YqFoW1nSB1HtYXk/GQSse/MThXwZPAm191JP6P8skbQKmcPPQwOgJq
 YTdQ==
X-Gm-Message-State: APjAAAUJ5arKUK59q5hFYXHIhMnYHm81F3+ENaCqeBSSwseQUOoK2k8p
 gTccDBYB5E1EUP33XMOePSpbcO8/vhRDoBBWputHSA==
X-Google-Smtp-Source: APXvYqxQnKXvz5GVSpaYVC2i6/O/AsYV3F/wVoCaXfBXyyH/tP9MhhlIiPefmCQOHhFeClZCS7U8UrgkkEpu/XmlC8s=
X-Received: by 2002:a67:c987:: with SMTP id y7mr1345838vsk.35.1556788849949;
 Thu, 02 May 2019 02:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556636234.git.leonard.crestez@nxp.com>
 <8f53bef00e72aa35d146210bb71ca05b8a3af141.1556636234.git.leonard.crestez@nxp.com>
In-Reply-To: <8f53bef00e72aa35d146210bb71ca05b8a3af141.1556636234.git.leonard.crestez@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 2 May 2019 11:20:14 +0200
Message-ID: <CAPDyKFpx8wXS4Fn8HcfZE6RvE5vOvsrp=utKvOmuaAxEWTVxXg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] soc: imx: gpc: Use GENPD_FLAG_RPM_ALWAYS_ON for
 ERR009619
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_022051_140072_35A8FD69 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 at 17:06, Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This allows PU domain to be turned off in suspend and save power.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/soc/imx/gpc.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
> index a8f1e47ce698..d9231bd3c691 100644
> --- a/drivers/soc/imx/gpc.c
> +++ b/drivers/soc/imx/gpc.c
> @@ -427,14 +427,23 @@ static int imx_gpc_probe(struct platform_device *pdev)
>                 dev_err(&pdev->dev, "failed to init regmap: %d\n",
>                         ret);
>                 return ret;
>         }
>
> -       /* Disable PU power down in normal operation if ERR009619 is present */
> +       /*
> +        * Disable PU power down by runtime PM if ERR009619 is present.
> +        *
> +        * The PRE clock will be paused for several cycles when turning on the
> +        * PU domain LDO from power down state. If PRE is in use at that time,
> +        * the IPU/PRG cannot get the correct display data from the PRE.
> +        *
> +        * This is not a concern when the whole system enters suspend state, so
> +        * it's safe to power down PU in this case.
> +        */
>         if (of_id_data->err009619_present)
>                 imx_gpc_domains[GPC_PGC_DOMAIN_PU].base.flags |=
> -                               GENPD_FLAG_ALWAYS_ON;
> +                               GENPD_FLAG_RPM_ALWAYS_ON;
>
>         /* Keep DISP always on if ERR006287 is present */
>         if (of_id_data->err006287_present)
>                 imx_gpc_domains[GPC_PGC_DOMAIN_DISPLAY].base.flags |=
>                                 GENPD_FLAG_ALWAYS_ON;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
