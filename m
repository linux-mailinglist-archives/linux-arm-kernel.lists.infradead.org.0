Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318FC51CB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 23:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sw+8/nSTqhuTFDHZikgUkAeYD7tK3Uf3JPu5JVkkTuU=; b=aHVCnPdxwh8CkO
	2/cycHMlHsScK+gpRPb3mJNan2tqpP1vmHAhWhoXRGHa92vVLZ2kA3B3e6aiWD6XyH0A+2wyD628+
	yPgEGLMJImrSGErSYfbndp1IESs3M1orEKae7UzLGHFXNVgDeUq94OZcEWPnQTpQSN5UljbemqycZ
	25f/ndKjS1X27tAaWt9u/qB24LcG1yj7bgRynYyOkGixC9iSXSXPelHt1EgQmnXLW3pG+G08NhNp1
	OlamSXc1t9e52pSmENPI0v2nY0pYlrupHIUXPIwghyJMcrKpVKNXs6t1SDdNNZGhOgaPw1PQLTNSg
	BTyE+Unfqd8cn83eJL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfW7Q-0007Da-HV; Mon, 24 Jun 2019 21:03:16 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfW7H-0007D8-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 21:03:08 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so2180262iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 14:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fy/OGkykYmgNYrn8GkcuThGKUsP9Chf4JKzAXg9zYXU=;
 b=Mz/e6zdurTtimYtbeOgur5MH/SxSKpMh9uQLRIwDvnNCbd7DkTGL+L/SaT3Yy1EkiE
 3KogmHe9OaeK6lqicY6pkxvhxH27Ah0zox6IVcV93xFh5crJBnXfHXxY985pPw2olYVS
 1tITtVtE2Sn2E34VaKLieWrfBeSAMEU1VjI51/2ebOSBKmUrWNuQwHaGjiOmWuw1n4uI
 stahvHTNWgG1Uj3m4GahlO14NOPNNRANwxZNYB79htveSziCutTCJQ6RVQ6LIdOVxJ3E
 kAcwHFqw8S4miZVXqgD9bKIqi5a27Ayq0UwO047hyxa0M4ftBTKkrGa0F38+9vJ4OG4T
 KXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fy/OGkykYmgNYrn8GkcuThGKUsP9Chf4JKzAXg9zYXU=;
 b=nlwQWMjM4ySsxJNihJt4Fvpy9xk4i6GhTuvaW6jVdBA9Mf9ueHVtvam+BzFo84Q+8c
 5HoVN4gJ2Aj+2A157zNz9mk0P1A7Y/N8uRpJsUebGPbf2jQARH7lHmajxIzqdHhJZNDb
 dZsxE3MMZY1n8SKoGKDsTKwXq3gOWCbcsGDrMjRvuHX/N/bsZAgOOB5YSasNjJmOQJbA
 zUurLtej/XK+HhEf8DUVnBskRSw8vqBHcUdOKjntp81NvtpzFytYxis71RzEG+FgofMj
 am7mrp91jqSa7tr9qsav1QxfIweNHRvgyFNYPw1CAvMngJ60but2+CGG4NxqIlIG8xwH
 wuLw==
X-Gm-Message-State: APjAAAVMIOvSTDT+RR0YkmUnUL5pEfTld3tLkweOzbeLnLPG6VO3eURS
 kh5srSxX0QJUnI+1GbttmOOi8hV/Gxh1ASs66oU=
X-Google-Smtp-Source: APXvYqxTOqQOL79J7zDYkX/cF1B0CKx4iG0+PAFuvzg/wHzFCgzyF0qN0hD4RNBVoHul1vM4+jQoosxtZ6k6FXmu1CI=
X-Received: by 2002:a5e:9701:: with SMTP id w1mr21499097ioj.294.1561410185410; 
 Mon, 24 Jun 2019 14:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190624205432.16727-1-festevam@gmail.com>
In-Reply-To: <20190624205432.16727-1-festevam@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Mon, 24 Jun 2019 14:02:54 -0700
Message-ID: <CAFXsbZpZgqEx_HQTKjr5=6k3qxM-yxsf72Lw4Fxx94MVa_PdGQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d-zii-rpu2: Remove unneeded snvs_pwrkey
 node
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_140307_727348_2D5C6592 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>,
 Anson.Huang@nxp.com, linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Chris Healy <cphealy@gmail.com>

On Mon, Jun 24, 2019 at 1:54 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Since commit 4664179fe679 ("ARM: dts: imx7s: Enable SNVS power key
> according to board design") snvs_pwrkey is disabled by default, so there
> is no need for disabling it explicitly in the board dts anymore.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx7d-zii-rpu2.dts | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx7d-zii-rpu2.dts b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
> index 4a78ddc7513d..39812c92bf0d 100644
> --- a/arch/arm/boot/dts/imx7d-zii-rpu2.dts
> +++ b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
> @@ -669,10 +669,6 @@
>         status = "disabled";
>  };
>
> -&snvs_pwrkey {
> -       status = "disabled";
> -};
> -
>  &iomuxc {
>         pinctrl_ecspi1: ecspi1grp {
>                 fsl,pins = <
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
