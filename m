Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F417E4C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJLK3xPr2iHxoDauRDDtgkjdS7lvGn4Xica8G5TyxZU=; b=QCrLgmc7pGssST
	+1LQQ8Kbrg/pscW91qZfqbZsWJC2S8/KjVVLkaOaNOgPbVMbso89hPGpkqZIF5DHnECMv9Lw3K0Wg
	eTJoacCRoEqlmyrRcfM13J2+lrFfWuJZblODCACaMKxyl+a1m7QFFoDnqo7NvyfqdJqK5wfbRbqsg
	7E3wasrKq4AULBXw/dYwowAsT/rAH8VORoqlNzKml+E2ebi8UegvAso9mgfdvjgh5/YhZzkUei5DL
	YtxTGiYGwVXFCfbVQijkFv7XMDOOUI+U4FlV+vxD+5fNh6b6aPRG1nyea6ccGPMQpeM8blIkIFgIV
	lhWSKau334RbtMpz4org==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLEI-00075m-GT; Mon, 09 Mar 2020 16:26:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLEA-000752-OV
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:26:04 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E6542464B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 16:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583771161;
 bh=Oufh7MrQPjXo9lbYsp3qWQvteiioqKO/EGPSF2qFeBo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WSQZahaxTQSMDiV2kIuXICnK4TWpj3HS3+x9d6T8gFH3ZZoSfLvTEHw4Hi1O5q6RA
 R7VS//IYFN4OQ6jLw2so+oiCEKt0V+T00ucYfwrYhljZCKPqaR4cmoQF/Jx6ECNm0E
 uGMZjp3m5CnUbyvIoP4/4IgnEuyW3CK4STRDSB4w=
Received: by mail-qk1-f181.google.com with SMTP id e11so9759277qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:26:01 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2lzXENyrJ04s9MWAP+n2UL9apxx81JocIGHKKd9olPzU4D4YDi
 vOgcrSXCKJKlz3gyn19AAurgaKF0+HqeBKKzSQ==
X-Google-Smtp-Source: ADFU+vvixMGurwQ+Y+ORKkEGc9gr3ZpwxMARQ8Q4TNyr445pL5cPgVGTC43iI5nbEau/Eu6+ardKHSm3ZVBnmSRoZ0o=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr16056405qkg.152.1583771160417; 
 Mon, 09 Mar 2020 09:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-7-lkundrak@v3.sk>
In-Reply-To: <20190822092643.593488-7-lkundrak@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 9 Mar 2020 11:25:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLpDa0viedjBVDGGa9p1ytpRizw9hE3m1FE8_xVv6+FmQ@mail.gmail.com>
Message-ID: <CAL_JsqLpDa0viedjBVDGGa9p1ytpRizw9hE3m1FE8_xVv6+FmQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/20] irqchip/mmp: do not use of_address_to_resource()
 to get mux regs
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_092602_839842_0D117CB9 
X-CRM114-Status: GOOD (  26.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Pavel Machek <pavel@ucw.cz>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 4:34 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
> are offsets from intc's base, not addresses on the parent bus. At this
> point it probably can't be fixed.

Another option is for platform code to fixup the live DT and just add
'ranges' to make this work.

> On an OLPC XO-1.75 machine, the muxes are children of the intc, not the
> axi bus, and thus of_address_to_resource() won't work. We should treat
> the values as mere integers as opposed to bus addresses.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> Acked-by: Pavel Machek <pavel@ucw.cz>
>
> ---
> Changes since v4 of "MMP platform fixes" set:
> - Add a comment, as suggested by Pavel
>
> Changes since v1:
> - Fix up typoes in the comment
> - Do not allow the regs property be larger than the bindings document.
>
>  drivers/irqchip/irq-mmp.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
> index 14618dc0bd396..e41e47ab71d3b 100644
> --- a/drivers/irqchip/irq-mmp.c
> +++ b/drivers/irqchip/irq-mmp.c
> @@ -424,9 +424,9 @@ IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
>  static int __init mmp2_mux_of_init(struct device_node *node,
>                                    struct device_node *parent)
>  {
> -       struct resource res;
>         int i, ret, irq, j = 0;
>         u32 nr_irqs, mfp_irq;
> +       u32 reg[4];
>
>         if (!parent)
>                 return -ENODEV;
> @@ -438,18 +438,22 @@ static int __init mmp2_mux_of_init(struct device_node *node,
>                 pr_err("Not found mrvl,intc-nr-irqs property\n");
>                 return -EINVAL;
>         }
> -       ret = of_address_to_resource(node, 0, &res);
> +
> +       /*
> +        * For historical reasons, the "regs" property of the
> +        * mrvl,mmp2-mux-intc is not a regular "regs" property containing
> +        * addresses on the parent bus, but offsets from the intc's base.
> +        * That is why we can't use of_address_to_resource() here.
> +        */
> +       ret = of_property_read_variable_u32_array(node, "reg", reg,
> +                                                 ARRAY_SIZE(reg),
> +                                                 ARRAY_SIZE(reg));
>         if (ret < 0) {
>                 pr_err("Not found reg property\n");
>                 return -EINVAL;
>         }
> -       icu_data[i].reg_status = mmp_icu_base + res.start;

Seems like it was treated as an offset already?

> -       ret = of_address_to_resource(node, 1, &res);
> -       if (ret < 0) {
> -               pr_err("Not found reg property\n");
> -               return -EINVAL;
> -       }
> -       icu_data[i].reg_mask = mmp_icu_base + res.start;
> +       icu_data[i].reg_status = mmp_icu_base + reg[0];
> +       icu_data[i].reg_mask = mmp_icu_base + reg[2];

This is a bit fragile as it's hard coding the cell sizes. Are they the
same for all the platforms? I'd be more comfortable doing that in
platform specific fixup code than here.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
