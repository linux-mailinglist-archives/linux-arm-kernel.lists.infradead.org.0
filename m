Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4F59CB4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 10:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0YUIjusP5bTVLi7a2F83DDfzfeTHYPbbTCrwRIoC34=; b=tb4iaU3au0/VI4
	U24Rfzrmx6sSSh7RqUGejC0/1ssYI4Lc3ms4ZXoWVQJkbtI+Hy0QKqIQXF9bLckro+4rkedNhO8of
	8iHMkcRZCkIDrRnt8B0Kjrbruh80tJyCEHzB6M/G6vxujGTFSnRHakXB0fmT1S/DiBSGZwoy94+Nt
	mPC7mo9wuN+1jQ/4MqjaE4sMggqDGFoAHh9doEe6YNNoyYVTUR3uZAp9aTq+rRH8AggaxV2i/3iqJ
	pD7Mz7eLk8v29I/fbFVMBkmDZKJmvyNgs9paRxtYxS8OKrwJ+8NJK+Ihu75n/Qld/lcB5nw0SUkxw
	DXveH850gtXfA5K5Kxaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2A5f-0006gz-VC; Mon, 26 Aug 2019 08:11:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2A5R-0006fH-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 08:10:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so14389472wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 01:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YWGTCzJSaEq4HYJmGybTGPp0v3FV/rFst2haoxBTtGg=;
 b=D2jlB9bHOmOI3OsQhP+cysf/UfaIAumqYRJtyneFjbYUvzYgguu0YIFsWYYFsAeJQL
 6061j97QhhgudGQH9djoo4PgnwTRj8RzJj3T9UeToJykgUdQxgcXgM3GnDgLw/9rb2gF
 7DugENYhAbpJWCymGs/wT4PCm5SO5SPXpNO3rY3sBpxiIPxTtYOTxej3k9msesULclXR
 AqGXlNsWqjgxNlYomZnA7GBVMULgAYmam8FDzxGPEJm1/cr1nw+d276XjlCKhDqU3DZw
 jO+xYawE9kyLlfJOv1ktMDw5pL64XV8J5nkE3ceqR8mZSX5BShK6c6EFztLvFxFQSK58
 PTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YWGTCzJSaEq4HYJmGybTGPp0v3FV/rFst2haoxBTtGg=;
 b=YCmEF6ZZjqQvEYBKBAlvonpUBcpzIhKwpPE4Kr/ziIvXK2GLZcQoHMlUpV5H+VMqZ7
 3hyK7S6TvyxpUCTibFUhS0MmJHO4B3WvsIJ5Un+Q4BC0qt/hBfHeJUVCFOFSTBw3elw/
 aluP0uhMdNsC4bMotOu8dhlyf/41ZLLglDu//sJG3nDvoDLJDcGpwoM0ssTO4vInUbQ6
 MFvmul+sEU3cffEwmP9Rm1wCiagxEmHqyNxuEwf1uWhkgE972NvJW9V10KUp3K71skAQ
 KJa/Sq5FSwL1dio6jQIfGGFkQxpbb5+W9mN6fq3/HADxIKQ9gGwnQ5c9GN20DAspWjg7
 YexQ==
X-Gm-Message-State: APjAAAXXF9Hcq20UyKnvsCBCWoY9BKqQrLRfe3LLA+3anV5lvyXYJSGT
 z15wmUj8FbIUOPBX2YO7M3PaIu9EH7NaQg==
X-Google-Smtp-Source: APXvYqz68CmmxQ9APEplakQtMhlN0b6rmVRLruQ8px1ztPnQuGyq3/TI84rpp/8ZKi5SXFClo+FZuQ==
X-Received: by 2002:adf:dc03:: with SMTP id t3mr20039634wri.80.1566807047822; 
 Mon, 26 Aug 2019 01:10:47 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c187sm17261114wmd.39.2019.08.26.01.10.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 01:10:47 -0700 (PDT)
Subject: Re: [PATCH v2 2/5] soc: amlogic: Add support for Everything-Else
 power domains controller
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
 <20190823090418.17148-3-narmstrong@baylibre.com>
 <CAFBinCBy-VxfSMPMR0cEDuNg8=UOUVvWfkDi2Tp=QhBZka93aQ@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <f6e7e4de-e1b7-f642-07cb-fa029ff2a883@baylibre.com>
Date: Mon, 26 Aug 2019 10:10:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBy-VxfSMPMR0cEDuNg8=UOUVvWfkDi2Tp=QhBZka93aQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_011049_687267_5E1BE2EC 
X-CRM114-Status: GOOD (  29.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ulf.hansson@linaro.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/08/2019 23:10, Martin Blumenstingl wrote:
> Hi Neil,
> 
> thank you for this update
> I haven't tried this on the 32-bit SoCs yet, but I am confident that I
> can make it work by "just" adding the SoC specific bits!
> 
> On Fri, Aug 23, 2019 at 11:06 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> +/* AO Offsets */
>> +
>> +#define AO_RTI_GEN_PWR_SLEEP0          (0x3a << 2)
>> +#define AO_RTI_GEN_PWR_ISO0            (0x3b << 2)
>> +
>> +/* HHI Offsets */
>> +
>> +#define HHI_MEM_PD_REG0                        (0x40 << 2)
>> +#define HHI_VPU_MEM_PD_REG0            (0x41 << 2)
>> +#define HHI_VPU_MEM_PD_REG1            (0x42 << 2)
>> +#define HHI_VPU_MEM_PD_REG3            (0x43 << 2)
>> +#define HHI_VPU_MEM_PD_REG4            (0x44 << 2)
>> +#define HHI_AUDIO_MEM_PD_REG0          (0x45 << 2)
>> +#define HHI_NANOQ_MEM_PD_REG0          (0x46 << 2)
>> +#define HHI_NANOQ_MEM_PD_REG1          (0x47 << 2)
>> +#define HHI_VPU_MEM_PD_REG2            (0x4d << 2)
> should we switch to the actual register offsets like we did in the
> clock drivers?

I find it simpler to refer to the numbers in the documentation...

> 
> [...]
>> +static struct meson_ee_pwrc_top_domain sm1_pwrc_vpu = SM1_EE_PD(8);
> nit-pick: maybe name it sm1_pwrc_vpu_hdmi as the datasheet states that
> it's for "VPU/HDMI"

Maybe

> 
> [...]
>> +#define VPU_HHI_MEMPD(__reg)                                   \
>> +       { __reg, BIT(8) },                                      \
>> +       { __reg, BIT(9) },                                      \
>> +       { __reg, BIT(10) },                                     \
>> +       { __reg, BIT(11) },                                     \
>> +       { __reg, BIT(12) },                                     \
>> +       { __reg, BIT(13) },                                     \
>> +       { __reg, BIT(14) },                                     \
>> +       { __reg, BIT(15) }
> the Amlogic implementation from buildroot-openlinux-A113-201901 (the
> latest one I have)
> kernel/aml-4.9/drivers/amlogic/media/vout/hdmitx/hdmi_tx_20/hw/hdmi_tx_hw.c
> uses:
> hd_set_reg_bits(P_HHI_MEM_PD_REG0, 0, 8, 8)
> that basically translates to: GENMASK(15, 8) (which means we could
> drop this macro)
> 
> the datasheet also states: 15~8 [...] HDMI memory PD (as a single
> 8-bit wide register)

Yep, but the actual code setting the VPU power domain is in u-boot :

drivers/vpu/aml_vpu_power_init.c:
108         for (i = 8; i < 16; i++) {
109                 vpu_hiu_setb(HHI_MEM_PD_REG0, 0, i, 1);
110                 udelay(5);
111         }

the linux code is like never used here, my preference goes to the u-boot code
implementation.

> 
> [...]
>> +static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
>> +       [PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
>> +                                    pwrc_ee_get_power, 11, 2),
>> +       [PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
>> +};
>> +
>> +static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
>> +       [PWRC_SM1_VPU_ID]  = VPU_PD("VPU", &sm1_pwrc_vpu, sm1_pwrc_mem_vpu,
>> +                                   pwrc_ee_get_power, 11, 2),
>> +       [PWRC_SM1_NNA_ID]  = TOP_PD("NNA", &sm1_pwrc_nna, sm1_pwrc_mem_nna,
>> +                                   pwrc_ee_get_power),
>> +       [PWRC_SM1_USB_ID]  = TOP_PD("USB", &sm1_pwrc_usb, sm1_pwrc_mem_usb,
>> +                                   pwrc_ee_get_power),
>> +       [PWRC_SM1_PCIE_ID] = TOP_PD("PCI", &sm1_pwrc_pci, sm1_pwrc_mem_pcie,
>> +                                   pwrc_ee_get_power),
>> +       [PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
>> +                                   pwrc_ee_get_power),
>> +       [PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
>> +       [PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
>> +};
> my impression: I find this hard to read as it merges the TOP and
> Memory PD domains from above, adding some seemingly random "11, 2" for
> the VPU PD as well as pwrc_ee_get_power for some of the power domains
> personally I like the way we describe clk_regmap because it's easy to
> read (even though it adds a bit of boilerplate). I'm not sure if we
> can make it work here, but this (not compile tested) is what I have in
> mind (I chose two random power domains):
>   [PWRC_SM1_VPU_ID]  = {
>     .name = "VPU",
>     .top_pd = SM1_EE_PD(8),
>     .mem_pds = {
>         VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
>         VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
>         VPU_MEMPD(HHI_VPU_MEM_PD_REG2),
>         VPU_MEMPD(HHI_VPU_MEM_PD_REG3),
>         { HHI_VPU_MEM_PD_REG4, GENMASK(1, 0) },
>         { HHI_VPU_MEM_PD_REG4, GENMASK(3, 2) },
>         { HHI_VPU_MEM_PD_REG4, GENMASK(5, 4) },
>         { HHI_VPU_MEM_PD_REG4, GENMASK(7, 6) },
>         { HHI_MEM_PD_REG0, GENMASK(15, 8) },
>     },
>     .num_mem_pds = 9,
>     .reset_names_count = 11,
>     .clk_names_count = 2,
>   },
>   [PWRC_SM1_ETH_ID] = {
>     .name = "ETH",
>     .mem_pds = { HHI_MEM_PD_REG0, GENMASK(3, 2) },
>     .num_mem_pds = 1,
>   },
> ...
> 
> I'd like to get Kevin's feedback on this
> what you have right now is probably good enough for the initial
> version of this driver. I'm bringing this discussion up because we
> will add support for more SoCs to this driver (we migrate GX over to
> it and I want to add 32-bit SoC support, which probably means at least
> Meson8 - assuming they kept the power domains identical between
> Meson8/8b/8m2).

I find it more compact, but nothing is set in stone, you can refactor this as
will when adding meson8 support, no problems here.

> 
> [...]
>> +struct meson_ee_pwrc_domain {
>> +       struct generic_pm_domain base;
>> +       bool enabled;
>> +       struct meson_ee_pwrc *pwrc;
>> +       struct meson_ee_pwrc_domain_desc desc;
>> +       struct clk_bulk_data *clks;
>> +       int num_clks;
>> +       struct reset_control *rstc;
>> +       int num_rstc;
>> +};
>> +
>> +struct meson_ee_pwrc {
>> +       struct regmap *regmap_ao;
>> +       struct regmap *regmap_hhi;
>> +       struct meson_ee_pwrc_domain *domains;
>> +       struct genpd_onecell_data xlate;
>> +};
> (my impressions on this: I was surprised to find more structs down
> here, I expected them to be together with the other structs further
> up)

These are the "live" structures, opposed to the static structures defining the
data and these are allocated and filled a probe time.

I dislike changing static global data at runtime, this is why I clearly separated both.

> 
>> +static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain)
>> +{
>> +       u32 reg;
>> +
>> +       regmap_read(pwrc_domain->pwrc->regmap_ao,
>> +                   pwrc_domain->desc.top_pd->sleep_reg, &reg);
>> +
>> +       return (reg & pwrc_domain->desc.top_pd->sleep_mask);
> should this also check for top_pd->iso_* as well as mem_pd->*?
> if the top_pd part was optional we could even use the get_power
> callback for *all* power domains in this driver (right now audio and
> Ethernet don't have any get_power callback)

We could, but how should we handle if one unexpected bit is set ? No idea...

> 
>> +}
>> +
>> +static int meson_ee_pwrc_off(struct generic_pm_domain *domain)
>> +{
>> +       struct meson_ee_pwrc_domain *pwrc_domain =
>> +               container_of(domain, struct meson_ee_pwrc_domain, base);
>> +       int i;
>> +
>> +       if (pwrc_domain->desc.top_pd)
>> +               regmap_update_bits(pwrc_domain->pwrc->regmap_ao,
>> +                                  pwrc_domain->desc.top_pd->sleep_reg,
>> +                                  pwrc_domain->desc.top_pd->sleep_mask,
>> +                                  pwrc_domain->desc.top_pd->sleep_mask);
>> +       udelay(20);
> all four udelay(20) occurrences should probably be usleep_range(20,
> 100); (or some other max value), see [0]

Ok

> 
> [...]
>> +       /*
>> +         * TOFIX: This is a special case for the VPU power domain, which can
>> +        * be enabled previously by the bootloader. In this case the VPU
> nit-pick: the indentation seems to be off here

Exact

> 
> [...]
>> +static int meson_ee_pwrc_probe(struct platform_device *pdev)
>> +{
>> +       const struct meson_ee_pwrc_domain_data *match;
>> +       struct regmap *regmap_ao, *regmap_hhi;
>> +       struct meson_ee_pwrc *pwrc;
>> +       int i, ret;
>> +
>> +       match = of_device_get_match_data(&pdev->dev);
>> +       if (!match) {
>> +               dev_err(&pdev->dev, "failed to get match data\n");
>> +               return -ENODEV;
>> +       }
>> +
>> +       pwrc = devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
>> +       if (!pwrc)
>> +               return -ENOMEM;
>> +
>> +       pwrc->xlate.domains = devm_kcalloc(&pdev->dev, match->count,
>> +                                          sizeof(*pwrc->xlate.domains),
>> +                                          GFP_KERNEL);
>> +       if (!pwrc->xlate.domains)
>> +               return -ENOMEM;
>> +
>> +       pwrc->domains = devm_kcalloc(&pdev->dev, match->count,
>> +                                    sizeof(*pwrc->domains), GFP_KERNEL);
>> +       if (!pwrc->domains)
>> +               return -ENOMEM;
>> +
>> +       pwrc->xlate.num_domains = match->count;
>> +
>> +       regmap_hhi = syscon_node_to_regmap(of_get_parent(pdev->dev.of_node));
>> +       if (IS_ERR(regmap_hhi)) {
>> +               dev_err(&pdev->dev, "failed to get HHI regmap\n");
>> +               return PTR_ERR(regmap_hhi);
>> +       }
>> +
>> +       regmap_ao = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
>> +                                                   "amlogic,ao-sysctrl");
>> +       if (IS_ERR(regmap_ao)) {
>> +               dev_err(&pdev->dev, "failed to get AO regmap\n");
>> +               return PTR_ERR(regmap_ao);
>> +       }
>> +
>> +       pwrc->regmap_ao = regmap_ao;
>> +       pwrc->regmap_hhi = regmap_hhi;
>> +
>> +       platform_set_drvdata(pdev, pwrc);
>> +
>> +       for (i = 0 ; i < match->count ; ++i) {
>> +               struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];
>> +
>> +               memcpy(&dom->desc, &match->domains[i], sizeof(dom->desc));
>> +
>> +               ret = meson_ee_pwrc_init_domain(pdev, pwrc, dom);
>> +               if (ret)
>> +                       return ret;
>> +
>> +               pwrc->xlate.domains[i] = &dom->base;
>> +       }
>> +
>> +       of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
> return of_genpd_add_provider_onecell(...) to propagate errors (if any)

Indeed, thanks.

> 
> bonus question: what about the video decoder power domains?
> here is an example from vdec_1_start
> (drivers/staging/media/meson/vdec/vdec_1.c):
>   /* Enable power for VDEC_1 */
>   regmap_update_bits(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
>                                    GEN_PWR_VDEC_1, 0);
>   usleep_range(10, 20);
>   [...]
>   /* enable VDEC Memories */
>   amvdec_write_dos(core, DOS_MEM_PD_VDEC, 0);
>   /* Remove VDEC1 Isolation */
>   regmap_write(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0);
> 
> (my point here is that it mixes video decoder "DOS" registers with
> AO_RTI_GEN_PWR registers)
> do we also want to add support for these "DOS" power domains to the
> meson-ee-pwrc driver?
> what about the AO_RTI_GEN_PWR part then - should we keep management
> for the video decoder power domain bits in AO_RTI_GEN_PWR as part of
> the video decoder driver?

I left the decoders power domains aside so we can discuss it later on,
we should expose multiple power domains, but the driver would need to
be changed to support multiple power domains. But will loose the ability
to enable/disable each domain at will unless it created a sub-device for
each decoder and attaches the domain to to each device and use runtime pm.

It's simpler to discuss it later on !

Thanks for the review,
Neil

> 
> 
> Martin
> 
> 
> [0] https://www.kernel.org/doc/Documentation/timers/timers-howto.rst
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
