Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E731790D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 14:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwxF5pHNusf95xQ5x8q5yLEk8sBocuESbjU7Tpm6Wqs=; b=hUuBBkVXjlwjKP
	ySzIsWAd5H3PrFYoym364twNfvdTHjVBw6z7tFK73unUYcFU1LFHds6F7j2UmEZHHS4R4fOsNbSRM
	TMKzbXEgEqRV0fd6pkrUJGXfO+4JdHM63jWuts1nFFrmusqoOqD8k8buvwkCwWkE+LmVN6S9ANIk8
	uANapW4l9rmfaB+/sVGjwoHAuGueMIL//4PF//KLMfTUZz3KGCjSwSyUT1WaSr9Bxgc+ST74cKwYX
	q3cZkEAeDH2ZkFpwn6b5gJeKj//NIDcqZfHQWX2/YNmpkOo+SMYm+Igf2KC9Y/kbiu6qW7XjED0/q
	5IozvJU+cwVJHc8T/gdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Tia-00073c-16; Wed, 04 Mar 2020 13:05:44 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9TiN-00071V-EZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 13:05:33 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n6so1065337vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 05:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y6V/ThFMEUQVv4pGKZWOlNFwrQHTHd/Cjm8+feJdCcI=;
 b=Kz3ZoEtsx/w9PtpTfMWI8BfIvHJpdI9eqfduNdgSwzkFoNOvf5mynamxJMQ38s1scq
 UG5FlR10x0pBG5V1AFPAdPmP0MOEpxBmXzWx7P7RmWNYCu4XmNn6TTtWxhX7VSYioDlK
 wEcFWuz1KtLJRddXeMmM++EC+8fDJOiJlgk+zDB8nWuDmYPwY4OX5/qowiZ948/V+kxU
 9IUoYDeOARIZkvwXc5m99BVtXs8ZzFhifpP2vb1byNKWfJ9JZBThXmMUnc6lTfQjIsKu
 167dPumst3rTtZBc9uDOXmDzBFJItYEmLl1hwTjdK/BEIWqYTDx9KTbELZK9I7NV8XN+
 RenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y6V/ThFMEUQVv4pGKZWOlNFwrQHTHd/Cjm8+feJdCcI=;
 b=UFokhDvd8VsJdU2HhyoHzI1kI3hTm4Vd1hXUW0a4oJxXGB0xlzlSttNsES1eJgPF9+
 1aWTR4LQBcDuBl/Tjf4Lk9IQkmMhkw00w6++h4TTDTrMbb8G08ppUFGV58WOLNsb+HpH
 Z0BFrp52z+V8s0qWVF0IiLC8nQYrPWQevNfqGHaNCSf2ymHaQt++O/paVBtfibV0J7Xi
 auBNkaOX3f8UM0Uy9PySWuTadX5CkX98l7ARezF/+fJOOAxMKTAEyVp0HB1lV729kU2c
 29wrA9028k26rVTRA1sDuiFmaAyNXPmR6igSTIcU7PzbxuoRQY93iAYqwij4mDu4ddue
 8CVA==
X-Gm-Message-State: ANhLgQ3dAIiojG+4vtn+VJkyQtNjPxaVfOGYmTOkKSsLjc9hIQE5tv6b
 jNrzdzS9kn6tw0lyuGz941zgdTu8LMZ18fNeNF+orA==
X-Google-Smtp-Source: ADFU+vutcotJyTUK5tPrXTH7n8AgfiQgisISlV0zrVV7kZWnuc9rR3DZfocZpWM1AQk8GeUV02RcRhWp4SBgvRUJOTA=
X-Received: by 2002:a67:800e:: with SMTP id b14mr1606080vsd.191.1583327129997; 
 Wed, 04 Mar 2020 05:05:29 -0800 (PST)
MIME-Version: 1.0
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581922564-24914-2-git-send-email-chun-hung.wu@mediatek.com>
In-Reply-To: <1581922564-24914-2-git-send-email-chun-hung.wu@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2020 14:04:53 +0100
Message-ID: <CAPDyKFpyah+oA-GtXNmdkrhwnGN_syU1JqRHn-9gk=HK0fV8EQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] mmc: core: expose MMC_CAP2_CQE* to dt
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_050531_530123_D68E0F1F 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kate Stewart <kstewart@linuxfoundation.org>, wsd_upstream@mediatek.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Android Kernel Team <kernel-team@android.com>, Pan Bian <bianpan2016@163.com>,
 DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 at 07:56, Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
>
> Expose MMC_CAP2_CQE and MMC_CAP2_CQE_DCMD
> to host->caps2 if
> 1. "supports-cqe" is defined in dt and
> 2. "disable-cqe-dcmd" is not defined in dt.

Both of these DT properties are defined as common mmc DT properties,
so the above isn't really correct. Please clarify this.

Moreover, I suggest to update commit message header into "mmc: core:
Extend mmc_of_parse() to parse CQE bindings", as I think it better
describes the change.

>
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/mmc/core/host.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> index 105b7a7..efb0dbe 100644
> --- a/drivers/mmc/core/host.c
> +++ b/drivers/mmc/core/host.c
> @@ -319,6 +319,14 @@ int mmc_of_parse(struct mmc_host *host)
>                 host->caps2 |= MMC_CAP2_NO_SD;
>         if (device_property_read_bool(dev, "no-mmc"))
>                 host->caps2 |= MMC_CAP2_NO_MMC;
> +       if (device_property_read_bool(dev, "supports-cqe"))
> +               host->caps2 |= MMC_CAP2_CQE;
> +
> +       /* Must be after "supports-cqe" check */
> +       if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
> +               if (host->caps2 & MMC_CAP2_CQE)

Does it really doesn't matter if we set this cap, even if MMC_CAP2_CQE
isn't set? You can probably skip the check above.

> +                       host->caps2 |= MMC_CAP2_CQE_DCMD;
> +       }
>
>         /* Must be after "non-removable" check */
>         if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
> --
> 1.9.1

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
