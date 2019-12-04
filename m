Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DED1127D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nnoMlQKYUFqDTGKOGm79/GaBBjtzARR3VQZYfguJK8=; b=ZpGARMDcLb2BVP
	JFkvQHvl/kC7mpdr/yFLsMorC4jdm6ZhrehzblDEZGH2PR8jWOdrcBahZKCIzUvKfPy/0WX48wF66
	7LLe8/1GdJLvPjfsq5UBO3WDgVGsrQKKgryidPcp3eoDC0MlCEmkg+eixLlXrsfe+oYLyAzkvHpex
	jQ1C14hKuGH4E3TcMwlSnSo5jeDbzfABeMG4sTPbYPvPLjXU11oj0tM3bjsCsFlCdPMxJduwKKDZr
	hhZ7D+vWVByFgGDaUPo8KB/TOdGeRJp2vq9cSc8vpwQ/b9qhPnoDGWk4eJiMJnFPaeB69kIWbnwMu
	PalIc7jJHeOKDe2JSEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icR76-0002Sv-9v; Wed, 04 Dec 2019 09:38:28 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icR6z-0002Sc-60
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:38:22 +0000
Received: by mail-vs1-xe42.google.com with SMTP id y13so4396892vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WKSRUXAknnFGuVSfHxGReWQUvxVO29cQQA2zNwSpULM=;
 b=CDaJqeQsxOZakv4IT6D02OCbik+0JlBE+4lW70GNPFrDEFKnnoc3a8bqcNSiwepcwC
 cbJnJpVsMMkkV7fnsnKqSi6b2MIMjGBTbQJw9WC/Sf+OKijQ7fegzoqei60yfDYakOCD
 QHYwwu9vOBc510u62DIDNsNyh68brak/HneiZJLEhbTx3JBFur6r9Zqr0gY+gq7a9Cfn
 ZbZHvB1xp5BrhFFyEoGJAwDj06xILJWc9gqVAk7NROWUX4cZoUix68cPuk9SNW1m45QQ
 756cGhUjUX4q6Fgm5/5AZXXZvhghT6WshaTKrVS6kYt7GIyAcuYQsp1PtTACJAE4NqsX
 RdEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WKSRUXAknnFGuVSfHxGReWQUvxVO29cQQA2zNwSpULM=;
 b=cXQvF51uHATKZR+dHMc2Ka1ogmTwTi4dKKJaKgTTeYLMM/Tr6OcPBdoHcamoAOWrIJ
 QeetvkHWgicwHJfS9AdEExfAbc7KsRsww79aeuND7+dw0g/d6OoWHT9ReV8YC/UMkrdG
 HqPoNw/x5DKFcpbomJO7Xm46f8T26DaYhvZdPmUxpjXdgfMgAMPuqnJkeV4859gIyCnY
 rXnQIVQCtw/jXmvAqtHSNoBbcTsHabH6hZyrSxzOdunTXuvY7SOyclSqYFOZTEoe93f6
 cOnvCsbTD6wIcbdflDElO6Rfg45vhVLZm2wv+pYYAL66qoROtT+Y2wxEDQXbMRmo1ydS
 2SjA==
X-Gm-Message-State: APjAAAWvrSHoTEFjZB7LXwnwfCja7Y3qjpJMz+URBgT1wEMjNVI1xa4F
 P5noGcRt59ewpCIcGqi/dOBZNTo1+vC93lJyyjN2nw==
X-Google-Smtp-Source: APXvYqxrL3FunHxe+ypKQfT/9GTtMwGi/xMYe45gMeFuXII2RAGl5/rsBU+x3Cj/hRM/BBU+FzxbdlSSvE4RNraI958=
X-Received: by 2002:a67:f8cf:: with SMTP id c15mr1068522vsp.27.1575452299891; 
 Wed, 04 Dec 2019 01:38:19 -0800 (PST)
MIME-Version: 1.0
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-6-f.fainelli@gmail.com>
In-Reply-To: <20191030182132.25763-6-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 4 Dec 2019 15:08:08 +0530
Message-ID: <CAHLCerP=3uFsj_fxGcWiKppWfOoYQRmLq1PhEZvC8ZURr=sh5A@mail.gmail.com>
Subject: Re: [PATCH 5/6] thermal: brcmstb_thermal: Restructure interrupt
 registration
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_013821_224144_1DE397B9 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:52 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> If we are successful grabbing the interrupt resource, then register an
> interrupt handler, this makes it easier to support the interrupt as
> being optional, which is it for 7216.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 41d4a142707c..64f715053ce9 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -339,16 +339,15 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
>         priv->thermal = thermal;
>
>         irq = platform_get_irq(pdev, 0);
> -       if (irq < 0) {
> -               dev_err(&pdev->dev, "could not get IRQ\n");
> -               return irq;
> -       }
> -       ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
> -                                       brcmstb_tmon_irq_thread, IRQF_ONESHOT,
> -                                       DRV_NAME, priv);
> -       if (ret < 0) {
> -               dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
> -               return ret;
> +       if (irq >= 0) {
> +               ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
> +                                               brcmstb_tmon_irq_thread,
> +                                               IRQF_ONESHOT,
> +                                               DRV_NAME, priv);
> +               if (ret < 0) {
> +                       dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
> +                       return ret;
> +               }
>         }
>
>         dev_info(&pdev->dev, "registered AVS TMON of-sensor driver\n");
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
