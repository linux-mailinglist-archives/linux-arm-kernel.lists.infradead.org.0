Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D16A17658F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQZCJOL9ZtrBxHvxM8qfjslBf43IEN7rkg6oxLla/mU=; b=SeeJV+z1SQmmuj
	KslvJCekuywt7CptVMG9OWf6i8T4zBjd8V814yo1qn7A8uFMNEZ5D4gMWWbHqylzsoMMGXAxma8Fp
	0mxadZ3bawo/sWIquoaR+E1nxp1jmP5SV27BRMTSVEQKL/alkbdvFwZZO3g2QAXp/+nUSAmWvJg0K
	4O0W+SE6mAMrmyDQRDwda0Tphu9BAZTZw4X/5oshkqR6kLxJW1YiwJ7hCg0eh2acWyp1qwCme7gDk
	hxkFSU0f+Kh9nJlstGL7qaxCEcj2IPwNQIIr9gLJisbI9R11Xz394jkpOzuD4mB8Z/NjBxkHaJc6+
	1PslKtYwcn6tBzomx/Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sFV-00054m-3j; Mon, 02 Mar 2020 21:05:13 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sFM-0004DQ-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:05:06 +0000
Received: by mail-qt1-x844.google.com with SMTP id t13so1167923qto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=HyjvmbGUrx1qLv3PKRB9uNAzBi2Wn73ynuYg2iJm3yM=;
 b=lywlX1xn0iicr0AEnMandLgLCAYqANxv1jUL4T33zxP2CJ+wI6JiEe/8K9SST/9c8M
 ztFDm5+63fwsxl3MhDnB3zVb5FMj2FvNZ6xanxyQcN1OvZjA43Xoczh/sw/GaD+R/PEu
 RNaFPxEZLANVmGSHgkPN7Tp9R/iwKiuRoQ9EjUObou1k1mMYF4bnsdM/KFyql1/7TgDN
 GKvyoLgRNfZZ8T/nCYtZRDS5/p3Hw2hi8RyD2l6blcY92VvLoDNF4/FdwmsWm6GngnZl
 +MuNnx969w6D2T6AjZ7lA2T9TMyW+IrQbASMwIwJqCCjz6kA4B6pR0fqRHQXVlB4+vz3
 A8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=HyjvmbGUrx1qLv3PKRB9uNAzBi2Wn73ynuYg2iJm3yM=;
 b=lU6RBeC0IoAQ5OJ5wbGsV/Ly60F7u8DhIwVEDMwXbFLzmNy744V/hHc5p9qONAjoRI
 zG3D8oBJYnunHT+OWb+QKEJAvKi7bCmRnTHho6rBWKzK7TvQUE4QT6S5RxigFM4HTvT1
 lJ22Zn6SGFjRIKMmFjTGB+bgNAeArs+d9aAd3JhwN4H073mMVVMcBMQf90+IGcuM6n38
 vQy2ZoJtGeMoAShxiyu6HmMzlB6zqGucYKRitRJ3kNn3FMQRRfT0pm11bpKg3pS7kWFE
 T7zf+xLVrkP3B876B2AM/mYfJflfL7KaHfT/i7HpDq7Vm27YyKuuwxpBvdFYiNh3engU
 yXeQ==
X-Gm-Message-State: ANhLgQ1hfI07Vts/9UFtYNnb5jHsp/Ls3oi+tFApKAMTVqiZX3dY2J9U
 7NRZRKOalu09uBwjwYGTvygyCfbJiEhIwOLT
X-Google-Smtp-Source: ADFU+vsG/0ugIV8NVdOJYhHGWfIV5vdY+NlRDT6/PuFMdZx8ckT+DF5VWnyjWgokve0J6y6T/mD/hA==
X-Received: by 2002:ac8:42cd:: with SMTP id g13mr1569714qtm.168.1583183101720; 
 Mon, 02 Mar 2020 13:05:01 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id z194sm10860555qkb.28.2020.03.02.13.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 13:05:01 -0800 (PST)
Message-ID: <334242262a770f99a441f15eeba1bc55081eba40.camel@massaru.org>
Subject: Re: [PATCH v2] arm64: dts: freescale: add gpio-fan/thermal support
 for Google i.MX 8MQ Phanbell
From: Vitor Massaru Iha <vitor@massaru.org>
To: Fabio Estevam <festevam@gmail.com>
Date: Mon, 02 Mar 2020 18:04:57 -0300
In-Reply-To: <CAOMZO5DQ=sg9Qf7N4N9S-5DpS4EQFG1w6ZqK0nS9P3M0ghSzDg@mail.gmail.com>
References: <20200302001150.27952-1-vitor@massaru.org>
 <CAOMZO5DQ=sg9Qf7N4N9S-5DpS4EQFG1w6ZqK0nS9P3M0ghSzDg@mail.gmail.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_130504_849383_B481D166 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

Thanks for your review.

On Mon, 2020-03-02 at 14:03 -0300, Fabio Estevam wrote:
> Hi Vitor,
> 
> Forgot to say in the previous revision, but the typical Subject
> pattern is:
> 
> arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
> 
> On Sun, Mar 1, 2020 at 9:11 PM Vitor Massaru Iha <vitor@massaru.org>
> wrote:
> 
> >  &A53_0 {
> > @@ -373,4 +383,58 @@
> >                         MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
> >                 >;
> >         };
> > +
> > +       pinctrl_gpio_fan: gpiofanp {
> 
> Please keep the pinctrl entries in alphabetical order.
> 
> > +               fsl,pins = <
> > +                       MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x01
> 
> This pad comes as 0x16 after POR, so please add it as:
> 
> MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x16
> 
> > +&cpu_thermal {
> 
> Please put it prior to the &i2c1 node in order to keep the
> alphabetical order.
> 
> With these changes you can add:
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

I'll send the PATCH v3.

BR,
Vitor 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
