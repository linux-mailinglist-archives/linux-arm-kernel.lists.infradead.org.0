Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001DD180E71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/pq1JdFvw0gjz01Z806J/Vj7MRILEO65HBMm2rzo+0=; b=qsZ1oHYtaDQMZv
	doWWAPiWS89eAjysWSSFud1FhBXWkffWu8TeaZuob7RqgP4ZzZT9C6hPpESywY0g6MSkLB+EKt2ks
	OScAWH1zrDNemFiUNMqkYqTe76w0Rgk22ag5bU9h0ss/joCwQjju7TI496Km+dDQu0sbHQdDQJZSC
	fjSOkjEG7HpmgHPCvJ4TPe4PsUM1X53dCtPmUVsaY0yyCz+MX8pIWhL+mVR8EiiPfHG/xfTTRTGUy
	QJUjYLe/7SpFX2VsQAYJ/j9q5GOFf4RAN2yv+TxE8pXhCtKUWGEAHtZpL1OLzfX16T5jv3duF1Y6P
	bzGzlCYdcQkDZQ9vtyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrzI-0004he-S2; Wed, 11 Mar 2020 03:24:52 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrzB-0004gw-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 03:24:46 +0000
Received: by mail-vs1-xe42.google.com with SMTP id a19so409432vsp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 20:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0CaP0wmRgm/BeB7X7G0uC38j94dJCuNhBHwKXDeM8MY=;
 b=CtPgrXa2cnSfiHSesbp0ZgIPKUi/e/8l6UQAKfhwBQeoYmLZENk2RTJeifkVDa4N2f
 6TtIjeG759VrQk6UUS9OiVg5AhhTraLWaiYKRvJawx2Nu8X7hZSWYY36zxVFRzYyC/u9
 CzSzh16ZRuZ92L+OvQ7dIu+0DnNo8kd2T144U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0CaP0wmRgm/BeB7X7G0uC38j94dJCuNhBHwKXDeM8MY=;
 b=pcIurgGgrKbnh0wpqrQLusOJHh2RoKChk/U9UP0YWc9czZ8lXf7O+2HezMKNQZNymn
 BBMG2ehVFEoKLRfXiC6yvPNWWj2MLAYXMqckt+LbAu+d43seUUbeDVVaEYlwAlGao2lW
 p05BBufkNviSNcB5sscPJDM0XXqf1hqD5k001GReMB5WtgLrRlwdMANHylEc3eKlkWrj
 3r9YtOk2PdkFWQcB7IceG3LQFqQ9K1UyA/MgYBq4iPojeZT7oZ9I/iIsS4Yd7l29CtCK
 aA5hlDfChFNwWbXsLdQ+RcAb+LapPXsqxoW7ddfHFOqrTnyQmLcU3YaeyCN5Qr1ZO82i
 2GUg==
X-Gm-Message-State: ANhLgQ3CAzWB0RPXq4tBQreL8NlCkFZI7MsD3ArcBGjZvkzLr4zPc2/w
 9LZIR5ZhoCU64Y6QZR3p9OdVisYMt6IRVFCSLE2ZrQ==
X-Google-Smtp-Source: ADFU+vvzY+bxois87ERnhOsmkCaLgyI2emx+UgxVfcr4o9pfSIalK4aZScMpftN+vS9C9nrgv5qWlZCt5m4WJIdzyeE=
X-Received: by 2002:a67:3201:: with SMTP id y1mr765745vsy.54.1583897084227;
 Tue, 10 Mar 2020 20:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <1583835040-19157-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583835040-19157-4-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1583835040-19157-4-git-send-email-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 11 Mar 2020 11:24:33 +0800
Message-ID: <CANMq1KDF32v-YnFRcz8BT6tnD0yq2OOBy9t-R09yA+4zNUZj3A@mail.gmail.com>
Subject: Re: [PATCH v9 3/5] mfd: Add support for the MediaTek MT6358 PMIC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_202445_371144_11736E0C 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Devicetree List <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks, much better. Just one issue left.

On Tue, Mar 10, 2020 at 6:10 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> This adds support for the MediaTek MT6358 PMIC. This is a
> multifunction device with the following sub modules:
>
> - Regulator
> - RTC
> - Codec
> - Interrupt
>
> It is interfaced to the host controller using SPI interface
> by a proprietary hardware called PMIC wrapper or pwrap.
> MT6358 MFD is a child device of the pwrap.
>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/Makefile                 |   2 +-
>  drivers/mfd/mt6358-irq.c             | 238 +++++++++++++++++++++++++++++
>  drivers/mfd/mt6397-core.c            |  55 ++++++-
>  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
>  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h      |   3 +
>  6 files changed, 733 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/mfd/mt6358-irq.c
>  create mode 100644 include/linux/mfd/mt6358/core.h
>  create mode 100644 include/linux/mfd/mt6358/registers.h
>
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index b83f172..9af1414 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -238,7 +238,7 @@ obj-$(CONFIG_INTEL_SOC_PMIC)        += intel-soc-pmic.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)     += intel_soc_pmic_bxtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)     += intel_soc_pmic_chtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)  += intel_soc_pmic_chtdc_ti.o
> -mt6397-objs    := mt6397-core.o mt6397-irq.o
> +mt6397-objs                    := mt6397-core.o mt6397-irq.o mt6358-irq.o
>  obj-$(CONFIG_MFD_MT6397)       += mt6397.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_MRFLD)     += intel_soc_pmic_mrfld.o
>
> diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> new file mode 100644
> index 0000000..0b99a39
> --- /dev/null
> +++ b/drivers/mfd/mt6358-irq.c
> @@ -0,0 +1,238 @@
> [snip]
> +static irqreturn_t mt6358_irq_handler(int irq, void *data)
> +{
> +       struct mt6397_chip *chip = data;
> +       struct pmic_irq_data *mt6358_irq_data = chip->irq_data;
> +       unsigned int bit, i, top_irq_status;
> +       int ret;
> +
> +       ret = regmap_read(chip->regmap,
> +                         mt6358_irq_data->top_int_status_reg,
> +                         &top_irq_status);
> +       if (ret) {
> +               dev_err(chip->dev,
> +                       "Failed to read status from the device, ret=%d\n", ret);
> +               return IRQ_NONE;
> +       }
> +
> +       for (i = 0; i < mt6358_irq_data->num_top; i++) {
> +               for (i = 0; i < mt6358_irq_data->num_top; i++) {

Only one loop needed.

> +                       bit = BIT(mt6358_ints[i].top_offset);
> +                       if (top_irq_status & bit) {
> +                               mt6358_irq_sp_handler(chip, i);
> +                               top_irq_status &= ~bit;
> +                               if (!top_irq_status)
> +                                       break;
> +                       }
> +               }
> +       }
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int pmic_irq_domain_map(struct irq_domain *d, unsigned int irq,
> +                              irq_hw_number_t hw)
> +{
> +       struct mt6397_chip *mt6397 = d->host_data;
> +
> +       irq_set_chip_data(irq, mt6397);
> +       irq_set_chip_and_handler(irq, &mt6358_irq_chip, handle_level_irq);
> +       irq_set_nested_thread(irq, 1);
> +       irq_set_noprobe(irq);
> +
> +       return 0;
> +}
> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
