Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5456C134003
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd2zXqKSaDvqh02uBYHut2sxRNyPdCoxFpr+VTn5N4w=; b=i66/QQ9clfepcA
	+97uzMXZaJY8ZHjhjI5LxtAUJBJtJFwF3HPWBuVEuY6/Aiu/3bQZe+cXWCTFrf0W8L1EId29Iv/5i
	3CRfXeCRV8Zoc/s4Ux2xPfNWC9357FAtX+6SZI8PkDYW87tbFPjfKAqWOk/GNNejIS4TbSSKtdlcm
	95MPTl1Ej/ccrm0epo3xehN2sAt4cNZcXuBpTQXQTqnsg35f9kRBSYxzxS3gaXHZF0oq6lNn7+rxE
	z8w/ZWIM+x911UjyeS2ED5IxySGdrUXN5ShZsCBiU3yym84cNVc6gvbMEkpDITX45hHhi0uL8YLaR
	ApsdcdD0n6knJQPqR+Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9HL-0006Ww-O8; Wed, 08 Jan 2020 11:13:35 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9H9-0006TK-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:13:26 +0000
Received: by mail-ed1-x542.google.com with SMTP id v28so2188364edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 03:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GwQ/EhB8Yaij6F3qTqHcbP2uItwrZRa5C3SmBfi3lV0=;
 b=R5bjT4WV3HWG+LKfuGeUsTCNHtVUeM7YJOezndvn8TqRV//IWbGPT/NaQ2O5XT3/E5
 ApZCjO3NV0XgzBEyPlp55P84n4DE05XCnOO5/bwYw6LBLHatSL2RYpB5irqWPW3yF7im
 3XOUH9BEBJA31t+OWdtIJ/O/ix+peU/kD7hEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GwQ/EhB8Yaij6F3qTqHcbP2uItwrZRa5C3SmBfi3lV0=;
 b=l/7RoWab5AH5JsbYRPVAdG9izPuTNw4JDTATX5VkDoHdvf0pVC0s3yj2eK0iY6uZjv
 ouAjIGv81j5vrGN0T4gza+pla9qIpNoYk1uW/oqLGxa5AraL0kghcjIgtNmuXblZtvBg
 1zoysdB6SEUJZ73TDcpSY0laWYbKphnpmN7Ej/TuvUO84gbhiKvtbEuxwzcK63NeU0GC
 x9D5/etcsaHBL+JPAZVI88Sq39sRYvDH7b4/8bSfRZsul5vMPdkJA67bgb3ZTbAVEM3u
 i9t8VS/P0eAO78jz57qD+YPAlGWFhTjHGH19yrLp3LRNtZEBEvRiWcY/RKAcfearInDY
 rpEQ==
X-Gm-Message-State: APjAAAVMAMxKVgdnj1ambll16vYcqM4TqIuzbDgQjHWpxAuT2q3r76HI
 +yLKdqQ77/f8OTYrabiVMIWlKtqaPZSEy970Qp8wFw==
X-Google-Smtp-Source: APXvYqzAEc0JXPQ5sjR14wxLROK5wf/I0+xc79jJvi6lHKZ1buznur8rj+FfBA1p+Uyhg22yrkCBQIp2ZecPP7f2988=
X-Received: by 2002:a17:906:2894:: with SMTP id
 o20mr4275497ejd.199.1578481997542; 
 Wed, 08 Jan 2020 03:13:17 -0800 (PST)
MIME-Version: 1.0
References: <20200107070154.1574-1-roger.lu@mediatek.com>
 <20200107070154.1574-4-roger.lu@mediatek.com>
In-Reply-To: <20200107070154.1574-4-roger.lu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Wed, 8 Jan 2020 19:12:41 +0800
Message-ID: <CANdKZ0e+OtVsHps0GPKd7+1DQ=jdavcg4K7vRoW_tOTKD2Smug@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] PM / AVS: SVS: Introduce SVS engine
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_031323_493637_4DDA2547 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, YT Lee <yt.lee@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Roger,

On Tue, Jan 7, 2020 at 3:02 PM Roger Lu <roger.lu@mediatek.com> wrote:
>
> The SVS (Smart Voltage Scaling) engine is a piece
> of hardware which is used to calculate optimized
> voltage values of several power domains,
> e.g. CPU/GPU/CCI, according to chip process corner,
> temperatures, and other factors. Then DVFS driver
> could apply those optimized voltage values to reduce
> power consumption.
>
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  drivers/power/avs/Kconfig     |   10 +
>  drivers/power/avs/Makefile    |    1 +
>  drivers/power/avs/mtk_svs.c   | 2075 +++++++++++++++++++++++++++++++++
>  include/linux/power/mtk_svs.h |   23 +
>  4 files changed, 2109 insertions(+)
>  create mode 100644 drivers/power/avs/mtk_svs.c
>  create mode 100644 include/linux/power/mtk_svs.h
> [...]
> new file mode 100644
> index 000000000000..c46211a15fcd
> --- /dev/null
> +++ b/drivers/power/avs/mtk_svs.c
> [...]
> +
> +static bool svs_mt8183_efuse_parsing(struct mtk_svs *svs)
> +{
> +       const struct svs_platform *svsp = svs->platform;
> +       struct thermal_parameter tp;
> +       struct svs_bank *svsb;
> +       bool mon_mode_support = true;
> +       int format[6], x_roomt[6], tb_roomt = 0;
> +       u32 idx, i, ft_pgm, mts, temp0, temp1, temp2;
> +
> +       if (svsp->fake_efuse) {
> +               pr_notice("fake efuse\n");
> +               svs->efuse[0] = 0x00310080;
> +               svs->efuse[1] = 0xabfbf757;
> +               svs->efuse[2] = 0x47c747c7;
> +               svs->efuse[3] = 0xabfbf757;
> +               svs->efuse[4] = 0xe7fca0ec;
> +               svs->efuse[5] = 0x47bf4b88;
> +               svs->efuse[6] = 0xabfb8fa5;
> +               svs->efuse[7] = 0xabfb217b;
> +               svs->efuse[8] = 0x4bf34be1;
> +               svs->efuse[9] = 0xabfb670d;
> +               svs->efuse[16] = 0xabfbc653;
> +               svs->efuse[17] = 0x47f347e1;
> +               svs->efuse[18] = 0xabfbd848;
> +
> +               svs->thermal_efuse[0] = 0x02873f69;
> +               svs->thermal_efuse[1] = 0xa11d9142;
> +               svs->thermal_efuse[2] = 0xa2526900;
> +       }
> +
> +       for (i = 0; i < svsp->efuse_num; i++) {
> +               if (svs->efuse[i])
> +                       pr_notice("M_HW_RES%d: 0x%08x\n", i, svs->efuse[i]);
> +       }
> +
> +       /* svs efuse parsing */
> +       ft_pgm = (svs->efuse[0] >> 4) & 0xf;
> +
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +               if (ft_pgm <= 1)
> +                       svsb->init01_volt_flag = SVSB_INIT01_VOLT_IGNORE;
> +
> +               switch (svsb->sw_id) {
> +               case SVS_CPU_LITTLE:
> +                       svsb->bdes = svs->efuse[16] & GENMASK(7, 0);
> +                       svsb->mdes = (svs->efuse[16] >> 8) & GENMASK(7, 0);
> +                       svsb->dcbdet = (svs->efuse[16] >> 16) & GENMASK(7, 0);
> +                       svsb->dcmdet = (svs->efuse[16] >> 24) & GENMASK(7, 0);
> +                       svsb->mtdes  = (svs->efuse[17] >> 16) & GENMASK(7, 0);
> +
> +                       if (ft_pgm <= 3)
> +                               svsb->volt_offset += 10;
> +                       else
> +                               svsb->volt_offset += 2;
> +                       break;
> +               case SVS_CPU_BIG:
> +                       svsb->bdes = svs->efuse[18] & GENMASK(7, 0);
> +                       svsb->mdes = (svs->efuse[18] >> 8) & GENMASK(7, 0);
> +                       svsb->dcbdet = (svs->efuse[18] >> 16) & GENMASK(7, 0);
> +                       svsb->dcmdet = (svs->efuse[18] >> 24) & GENMASK(7, 0);
> +                       svsb->mtdes  = svs->efuse[17] & GENMASK(7, 0);
> +
> +                       if (ft_pgm <= 3)
> +                               svsb->volt_offset += 15;
> +                       else
> +                               svsb->volt_offset += 12;
> +                       break;
> +               case SVS_CCI:
> +                       svsb->bdes = svs->efuse[4] & GENMASK(7, 0);
> +                       svsb->mdes = (svs->efuse[4] >> 8) & GENMASK(7, 0);
> +                       svsb->dcbdet = (svs->efuse[4] >> 16) & GENMASK(7, 0);
> +                       svsb->dcmdet = (svs->efuse[4] >> 24) & GENMASK(7, 0);
> +                       svsb->mtdes  = (svs->efuse[5] >> 16) & GENMASK(7, 0);
> +
> +                       if (ft_pgm <= 3)
> +                               svsb->volt_offset += 10;
> +                       else
> +                               svsb->volt_offset += 2;
> +                       break;
> +               case SVS_GPU:
> +                       svsb->bdes = svs->efuse[6] & GENMASK(7, 0);
> +                       svsb->mdes = (svs->efuse[6] >> 8) & GENMASK(7, 0);
> +                       svsb->dcbdet = (svs->efuse[6] >> 16) & GENMASK(7, 0);
> +                       svsb->dcmdet = (svs->efuse[6] >> 24) & GENMASK(7, 0);
> +                       svsb->mtdes  = svs->efuse[5] & GENMASK(7, 0);
> +
> +                       if (ft_pgm >= 2) {
> +                               svsb->freq_base = 800000000; /* 800MHz */
> +                               svsb->dvt_fixed = 2;
> +                       }
> +                       break;
> +               default:
> +                       break;
> +               }
> +       }
> +
> +       /* Thermal efuse parsing */
> +       if (!svs->thermal_efuse)
> +               return true;
> +
> +       tp.adc_ge_t = (svs->thermal_efuse[1] >> 22) & GENMASK(9, 0);
> +       tp.adc_oe_t = (svs->thermal_efuse[1] >> 12) & GENMASK(9, 0);
> +
> +       tp.o_vtsmcu1 = (svs->thermal_efuse[0] >> 17) & GENMASK(8, 0);
> +       tp.o_vtsmcu2 = (svs->thermal_efuse[0] >> 8) & GENMASK(8, 0);
> +       tp.o_vtsmcu3 = svs->thermal_efuse[1] & GENMASK(8, 0);
> +       tp.o_vtsmcu4 = (svs->thermal_efuse[2] >> 23) & GENMASK(8, 0);
> +       tp.o_vtsmcu5 = (svs->thermal_efuse[2] >> 5) & GENMASK(8, 0);
> +       tp.o_vtsabb = (svs->thermal_efuse[2] >> 14) & GENMASK(8, 0);
> +
> +       tp.degc_cali = (svs->thermal_efuse[0] >> 1) & GENMASK(5, 0);
> +       tp.adc_cali_en_t = svs->thermal_efuse[0] & BIT(0);
> +       tp.o_slope_sign = (svs->thermal_efuse[0] >> 7) & BIT(0);
> +
> +       tp.ts_id = (svs->thermal_efuse[1] >> 9) & BIT(0);
> +       tp.o_slope = (svs->thermal_efuse[0] >> 26) & GENMASK(5, 0);
> +
> +       if (tp.adc_cali_en_t == 1) {
> +               if (tp.ts_id == 0)
> +                       tp.o_slope = 0;
> +
> +               if ((tp.adc_ge_t < 265 || tp.adc_ge_t > 758) ||
> +                   (tp.adc_oe_t < 265 || tp.adc_oe_t > 758) ||
> +                   (tp.o_vtsmcu1 < -8 || tp.o_vtsmcu1 > 484) ||
> +                   (tp.o_vtsmcu2 < -8 || tp.o_vtsmcu2 > 484) ||
> +                   (tp.o_vtsmcu3 < -8 || tp.o_vtsmcu3 > 484) ||
> +                   (tp.o_vtsmcu4 < -8 || tp.o_vtsmcu4 > 484) ||
> +                   (tp.o_vtsmcu5 < -8 || tp.o_vtsmcu5 > 484) ||
> +                   (tp.o_vtsabb < -8 || tp.o_vtsabb > 484) ||
> +                   (tp.degc_cali < 1 || tp.degc_cali > 63)) {
> +                       pr_err("bad thermal efuse data. disable mon mode\n");
> +                       mon_mode_support = false;
> +               }
> +       } else {
> +               pr_err("no thermal efuse data. disable mon mode\n");
> +               mon_mode_support = false;
> +       }
> +
> +       if (!mon_mode_support) {
> +               for (idx = 0; idx < svsp->bank_num; idx++) {
> +                       svsb = &svsp->banks[idx];
> +                       svsb->mode_support &= ~SVSB_MODE_MON;
> +               }
> +
> +               return true;
> +       }
> +
> +       tp.ge = ((tp.adc_ge_t - 512) * 10000) / 4096;
> +       tp.oe = (tp.adc_oe_t - 512);
> +       tp.gain = (10000 + tp.ge);
> +
> +       format[0] = (tp.o_vtsmcu1 + 3350 - tp.oe);
> +       format[1] = (tp.o_vtsmcu2 + 3350 - tp.oe);
> +       format[2] = (tp.o_vtsmcu3 + 3350 - tp.oe);
> +       format[3] = (tp.o_vtsmcu4 + 3350 - tp.oe);
> +       format[4] = (tp.o_vtsmcu5 + 3350 - tp.oe);
> +       format[5] = (tp.o_vtsabb + 3350 - tp.oe);
> +
> +       for (i = 0; i < 6; i++)
> +               x_roomt[i] = (((format[i] * 10000) / 4096) * 10000) / tp.gain;
> +
> +       temp0 = (10000 * 100000 / tp.gain) * 15 / 18;
> +
> +       if (tp.o_slope_sign == 0)
> +               mts = (temp0 * 10) / (1534 + tp.o_slope * 10);
> +       else
> +               mts = (temp0 * 10) / (1534 - tp.o_slope * 10);
> +
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +               svsb->mts = mts;
> +
> +               switch (svsb->sw_id) {
> +               case SVS_CPU_LITTLE:
> +                       tb_roomt = x_roomt[3];
> +                       break;
> +               case SVS_CPU_BIG:
> +                       tb_roomt = x_roomt[4];
> +                       break;
> +               case SVS_CCI:
> +                       tb_roomt = x_roomt[3];
> +                       break;
> +               case SVS_GPU:
> +                       tb_roomt = x_roomt[1];
> +                       break;
> +               default:
> +                       break;

There was a "return -EINVAL;" here in v5, should this be a "return
false"? This function currently always return true.

> +               }
> +
> +               temp0 = (tp.degc_cali * 10 / 2);
> +               temp1 = ((10000 * 100000 / 4096 / tp.gain) *
> +                        tp.oe + tb_roomt * 10) * 15 / 18;
> +
> +               if (tp.o_slope_sign == 0)
> +                       temp2 = temp1 * 100 / (1534 + tp.o_slope * 10);
> +               else
> +                       temp2 = temp1 * 100 / (1534 - tp.o_slope * 10);
> +
> +               svsb->bts = (temp0 + temp2 - 250) * 4 / 10;
> +       }
> +
> +       return true;
> +}
> [...]
> +
> +static int svs_resource_setup(struct mtk_svs *svs)
> +{
> +       const struct svs_platform *svsp = svs->platform;
> +       struct svs_bank *svsb;
> +       struct platform_device *pdev;
> +       struct device_node *np = NULL;
> +       struct dev_pm_opp *opp;
> +       unsigned long freq;
> +       int count, ret;
> +       u32 idx, i;
> +
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +
> +               switch (svsb->sw_id) {
> +               case SVS_CPU_LITTLE:
> +                       svsb->name = "SVS_CPU_LITTLE";
> +                       break;
> +               case SVS_CPU_BIG:
> +                       svsb->name = "SVS_CPU_BIG";
> +                       break;
> +               case SVS_CCI:
> +                       svsb->name = "SVS_CCI";
> +                       break;
> +               case SVS_GPU:
> +                       svsb->name = "SVS_GPU";
> +                       break;
> +               default:
> +                       WARN_ON(1);
> +                       return -EINVAL;
> +               }
> +
> +               /* Add svs bank device for opp-table/mtcmos/buck control */
> +               pdev = platform_device_alloc(svsb->name, 0);
> +               if (!pdev) {
> +                       pr_err("%s: fail to alloc pdev for svs_bank\n",
> +                              svsb->name);
> +                       return -ENOMEM;
> +               }
> +
> +               for_each_child_of_node(svs->dev->of_node, np) {
> +                       if (of_device_is_compatible(np, svsb->of_compatible)) {
> +                               pdev->dev.of_node = np;
> +                               break;
> +                       }
> +               }
> +
> +               ret = platform_device_add(pdev);
> +               if (ret) {
> +                       pr_err("%s: fail to add svs_bank device: %d\n",
> +                              svsb->name, ret);
> +                       return ret;
> +               }
> +
> +               svsb->dev = &pdev->dev;
> +               dev_set_drvdata(svsb->dev, svs);
> +               ret = dev_pm_opp_of_add_table(svsb->dev);
> +               if (ret) {
> +                       pr_err("%s: fail to add opp table: %d\n",
> +                              svsb->name, ret);
> +                       return ret;
> +               }
> +
> +               mutex_init(&svsb->lock);
> +
> +               svsb->buck = devm_regulator_get_optional(svsb->dev,
> +                                                        svsb->buck_name);
> +               if (IS_ERR(svsb->buck)) {
> +                       pr_err("%s: cannot get regulator \"%s-supply\"\n",
> +                              svsb->name, svsb->buck_name);
> +                       return PTR_ERR(svsb->buck);
> +               }
> +
> +               count = dev_pm_opp_get_opp_count(svsb->dev);
> +               if (svsb->opp_count != count) {
> +                       pr_err("%s: opp_count not \"%u\" but get \"%d\"?\n",
> +                              svsb->name, svsb->opp_count, count);
> +                       return count;
> +               }
> +
> +               for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {

Can use U32_MAX instead of (u32)-1.

> +                       opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> +                       if (IS_ERR(opp)) {
> +                               pr_err("%s: error opp entry!!, err = %ld\n",
> +                                      svsb->name, PTR_ERR(opp));
> +                               return PTR_ERR(opp);
> +                       }
> +
> +                       svsb->opp_freqs[i] = freq;
> +                       svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
> +                       svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
> +                                                    svsb->freq_base);
> +                       dev_pm_opp_put(opp);
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> [...]
> +
> +static ssize_t svs_debug_proc_write(struct file *file,
> +                                   const char __user *buffer,
> +                                   size_t count, loff_t *pos)
> +{
> +       struct svs_bank *svsb = (struct svs_bank *)PDE_DATA(file_inode(file));
> +       struct mtk_svs *svs = dev_get_drvdata(svsb->dev);
> +       char *buf = (char *)__get_free_page(GFP_USER);
> +       unsigned long flags;
> +       int enabled, ret;
> +
> +       if (svsb->phase == SVSB_PHASE_ERROR)
> +               return count;
> +
> +       if (!buf)
> +               return -ENOMEM;
> +
> +       if (count >= PAGE_SIZE) {
> +               free_page((unsigned long)buf);
> +               return -EINVAL;
> +       }
> +
> +       if (copy_from_user(buf, buffer, count)) {
> +               free_page((unsigned long)buf);
> +               return -EFAULT;
> +       }
> +
> +       buf[count] = '\0';

Can use memdup_user_nul to allocate the buf and copy from user buffer
for the above operations (and for other _write() functions).

> +
> +       ret = kstrtoint(buf, 10, &enabled);
> +       if (ret)
> +               return ret;
> +
> +       if (!enabled) {
> +               flags = claim_mtk_svs_lock();
> +               svs->bank = svsb;
> +               svsb->mode_support = SVSB_MODE_ALL_DISABLE;
> +               svs_switch_bank(svs);
> +               svs_writel(svs, SVSEN_OFF, SVSEN);
> +               svs_writel(svs, INTSTS_CLEAN, INTSTS);
> +               release_mtk_svs_lock(flags);
> +       }
> +
> +       svsb->phase = SVSB_PHASE_ERROR;
> +       svsb_set_volts(svsb, true);

Missing free_page() (or kfree() if changing to memdup_user_nul) here
(and in other _write() functions).

> +
> +       return count;
> +}
> +
> +proc_fops_rw(svs_debug);
> +
> [...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
