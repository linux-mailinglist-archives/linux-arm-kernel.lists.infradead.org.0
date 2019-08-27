Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066879F5F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85z+cEloBoY8cpHF8OqdsQOEJPtpZZPbDOhMkdHmKho=; b=hxxcbvKREoPGrJ
	vLOPBag92TGL9rVPfjykWwsj+m9RKIhMR2hrtbRPx0Nhuhx4gtoZOSazNxe0BsrgNwTG1CquwmqmE
	D1/4oraTpcclJB+JLda+gwbC8VPQTLLGbA/qWuxZygc0UZmeQ0LEPolpf9psTTte/RIEHSsrSFHjp
	IXDrzjcIUNFiQOdPODBTkeRW7EqOI1je9DrnKBHGyqN8jZNRCCRtlgifAru1IdkaGBA+lBe1X/mnF
	kcQNmyqdcGT98otzebTHqUmSaUs58ojQtXb6UcmrhQcm8u80arh+b4Bqy4mzmpNOroZ1brLkoKyfh
	VKB0pbOiTwrt9Cv8sWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jpl-0006oG-Pt; Tue, 27 Aug 2019 22:21:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jpZ-0006n9-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:20:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id h3so215718pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=jcIe2G6yMMRWoek2YXqj+2l5DQ3NAT74ZzyzDO4SEaM=;
 b=sykyZlpRtuWsYyj6rIL4Og85v/5wIEU3g4JnxrjJHexOSNH4AxIz07vLeEGoOL9egO
 pZWHsuqYJOi5EevKaws6twF33sqmItY6s5GdKlcj7a/fMCHmHYMG6LFcF22idXKjfPiI
 2aoj6pQP4D55QP1g2FIXiblfj4c0YRmytTgaAacKgZ0xuDnYywihqM0VbGwf89P/uNIA
 zIleYgZGn460D5ge0yXdkyWEnToUtvoapJs8zCEgMlR72FmIq842ejppTtLH0uWtEGTi
 TlCksGrTWxnzWTDw4LqOVSoD+BArm08sJ1oFPEXs3nECK/Sq6x3r7wiHcVqwc6ow//UD
 mbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=jcIe2G6yMMRWoek2YXqj+2l5DQ3NAT74ZzyzDO4SEaM=;
 b=kL0eH4Vs7HtcF40PYHTv/wacLXUQOjSAvHi80HnbBhBTLEThHhC3RVkZg56R+5vhFn
 JR0AyhoOuDPN+iQBBjFrb7aiwreRJSme+z8FHyur9FVR5pRG+ZbJbIMlJGphI/K1afAZ
 5h9qQD2VjsPbUqTvSOU37Z/uSXVCp72E6ShJ09T09zOMWKxJ86KGOj5exqvOxPFsYBuQ
 /5bvUB/GNObD5COrAcWrC7LE3nzIAUYDR15sgIgSt3PsWfHAiz6nI/auzyNgJ8xbfnMZ
 mKkCf1aECASAa8H33LATwJ+Qo89LyRxMaggPWTVe8/qxT7AFFeyZlitb3NupkMfooLyM
 ehrA==
X-Gm-Message-State: APjAAAVQtcrSBSKAI+6cL1j1HB9y6EiTwhzfgPLDRvekInvrfayLwSru
 cuq+F6Dg9ODSItOh37p2qaKegw==
X-Google-Smtp-Source: APXvYqzfpz005+UkcTyFJzuQwqb+J5gwxlWLJz9C+msCE7EdBCszwfTLGoj6qCIAvrRGyWeNtKWw5Q==
X-Received: by 2002:a17:902:d888:: with SMTP id
 b8mr1152706plz.115.1566944447835; 
 Tue, 27 Aug 2019 15:20:47 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id 24sm323463pfo.3.2019.08.27.15.20.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 15:20:47 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 2/5] soc: amlogic: Add support for Everything-Else
 power domains controller
In-Reply-To: <25e60f94-9be1-76b0-147f-abdd2d01872f@baylibre.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
 <20190823090418.17148-3-narmstrong@baylibre.com>
 <CAFBinCBy-VxfSMPMR0cEDuNg8=UOUVvWfkDi2Tp=QhBZka93aQ@mail.gmail.com>
 <f6e7e4de-e1b7-f642-07cb-fa029ff2a883@baylibre.com>
 <CAFBinCDDygiafTwLgqB9BimqrmwxL2=HFQD8cX8CQL23AFZNXQ@mail.gmail.com>
 <25e60f94-9be1-76b0-147f-abdd2d01872f@baylibre.com>
Date: Tue, 27 Aug 2019 15:20:46 -0700
Message-ID: <7himqiuu69.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152049_896025_64FD0240 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 27/08/2019 00:40, Martin Blumenstingl wrote:
>> Hi Neil,
>> 
>> On Mon, Aug 26, 2019 at 10:10 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>> On 25/08/2019 23:10, Martin Blumenstingl wrote:
>>>> Hi Neil,
>>>>
>>>> thank you for this update
>>>> I haven't tried this on the 32-bit SoCs yet, but I am confident that I
>>>> can make it work by "just" adding the SoC specific bits!
>>>>
>>>> On Fri, Aug 23, 2019 at 11:06 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>> [...]
>>>>> +/* AO Offsets */
>>>>> +
>>>>> +#define AO_RTI_GEN_PWR_SLEEP0          (0x3a << 2)
>>>>> +#define AO_RTI_GEN_PWR_ISO0            (0x3b << 2)
>>>>> +
>>>>> +/* HHI Offsets */
>>>>> +
>>>>> +#define HHI_MEM_PD_REG0                        (0x40 << 2)
>>>>> +#define HHI_VPU_MEM_PD_REG0            (0x41 << 2)
>>>>> +#define HHI_VPU_MEM_PD_REG1            (0x42 << 2)
>>>>> +#define HHI_VPU_MEM_PD_REG3            (0x43 << 2)
>>>>> +#define HHI_VPU_MEM_PD_REG4            (0x44 << 2)
>>>>> +#define HHI_AUDIO_MEM_PD_REG0          (0x45 << 2)
>>>>> +#define HHI_NANOQ_MEM_PD_REG0          (0x46 << 2)
>>>>> +#define HHI_NANOQ_MEM_PD_REG1          (0x47 << 2)
>>>>> +#define HHI_VPU_MEM_PD_REG2            (0x4d << 2)
>>>> should we switch to the actual register offsets like we did in the
>>>> clock drivers?
>>>
>>> I find it simpler to refer to the numbers in the documentation...
>> OK, I have no strong preference here
>> for the 32-bit SoCs I will need to use the offsets based on the
>> "amlogic,meson8b-pmu", "syscon" [0], so these will be magic anyways
>> 
>> [...]
>>>>> +#define VPU_HHI_MEMPD(__reg)                                   \
>>>>> +       { __reg, BIT(8) },                                      \
>>>>> +       { __reg, BIT(9) },                                      \
>>>>> +       { __reg, BIT(10) },                                     \
>>>>> +       { __reg, BIT(11) },                                     \
>>>>> +       { __reg, BIT(12) },                                     \
>>>>> +       { __reg, BIT(13) },                                     \
>>>>> +       { __reg, BIT(14) },                                     \
>>>>> +       { __reg, BIT(15) }
>>>> the Amlogic implementation from buildroot-openlinux-A113-201901 (the
>>>> latest one I have)
>>>> kernel/aml-4.9/drivers/amlogic/media/vout/hdmitx/hdmi_tx_20/hw/hdmi_tx_hw.c
>>>> uses:
>>>> hd_set_reg_bits(P_HHI_MEM_PD_REG0, 0, 8, 8)
>>>> that basically translates to: GENMASK(15, 8) (which means we could
>>>> drop this macro)
>>>>
>>>> the datasheet also states: 15~8 [...] HDMI memory PD (as a single
>>>> 8-bit wide register)
>>>
>>> Yep, but the actual code setting the VPU power domain is in u-boot :
>>>
>>> drivers/vpu/aml_vpu_power_init.c:
>>> 108         for (i = 8; i < 16; i++) {
>>> 109                 vpu_hiu_setb(HHI_MEM_PD_REG0, 0, i, 1);
>>> 110                 udelay(5);
>>> 111         }
>>>
>>> the linux code is like never used here, my preference goes to the u-boot code
>>> implementation.
>> I see, let's keep your implementation then
>> 
>>>>
>>>> [...]
>>>>> +static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
>>>>> +       [PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
>>>>> +                                    pwrc_ee_get_power, 11, 2),
>>>>> +       [PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
>>>>> +};
>>>>> +
>>>>> +static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
>>>>> +       [PWRC_SM1_VPU_ID]  = VPU_PD("VPU", &sm1_pwrc_vpu, sm1_pwrc_mem_vpu,
>>>>> +                                   pwrc_ee_get_power, 11, 2),
>>>>> +       [PWRC_SM1_NNA_ID]  = TOP_PD("NNA", &sm1_pwrc_nna, sm1_pwrc_mem_nna,
>>>>> +                                   pwrc_ee_get_power),
>>>>> +       [PWRC_SM1_USB_ID]  = TOP_PD("USB", &sm1_pwrc_usb, sm1_pwrc_mem_usb,
>>>>> +                                   pwrc_ee_get_power),
>>>>> +       [PWRC_SM1_PCIE_ID] = TOP_PD("PCI", &sm1_pwrc_pci, sm1_pwrc_mem_pcie,
>>>>> +                                   pwrc_ee_get_power),
>>>>> +       [PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
>>>>> +                                   pwrc_ee_get_power),
>>>>> +       [PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
>>>>> +       [PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
>>>>> +};
>>>> my impression: I find this hard to read as it merges the TOP and
>>>> Memory PD domains from above, adding some seemingly random "11, 2" for
>>>> the VPU PD as well as pwrc_ee_get_power for some of the power domains
>>>> personally I like the way we describe clk_regmap because it's easy to
>>>> read (even though it adds a bit of boilerplate). I'm not sure if we
>>>> can make it work here, but this (not compile tested) is what I have in
>>>> mind (I chose two random power domains):
>>>>   [PWRC_SM1_VPU_ID]  = {
>>>>     .name = "VPU",
>>>>     .top_pd = SM1_EE_PD(8),
>>>>     .mem_pds = {
>>>>         VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
>>>>         VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
>>>>         VPU_MEMPD(HHI_VPU_MEM_PD_REG2),
>>>>         VPU_MEMPD(HHI_VPU_MEM_PD_REG3),
>>>>         { HHI_VPU_MEM_PD_REG4, GENMASK(1, 0) },
>>>>         { HHI_VPU_MEM_PD_REG4, GENMASK(3, 2) },
>>>>         { HHI_VPU_MEM_PD_REG4, GENMASK(5, 4) },
>>>>         { HHI_VPU_MEM_PD_REG4, GENMASK(7, 6) },
>>>>         { HHI_MEM_PD_REG0, GENMASK(15, 8) },
>>>>     },
>>>>     .num_mem_pds = 9,
>>>>     .reset_names_count = 11,
>>>>     .clk_names_count = 2,
>>>>   },
>>>>   [PWRC_SM1_ETH_ID] = {
>>>>     .name = "ETH",
>>>>     .mem_pds = { HHI_MEM_PD_REG0, GENMASK(3, 2) },
>>>>     .num_mem_pds = 1,
>>>>   },
>>>> ...
>>>>
>>>> I'd like to get Kevin's feedback on this
>>>> what you have right now is probably good enough for the initial
>>>> version of this driver. I'm bringing this discussion up because we
>>>> will add support for more SoCs to this driver (we migrate GX over to
>>>> it and I want to add 32-bit SoC support, which probably means at least
>>>> Meson8 - assuming they kept the power domains identical between
>>>> Meson8/8b/8m2).
>>>
>>> I find it more compact, but nothing is set in stone, you can refactor this as
>>> will when adding meson8 support, no problems here.
>> OK. if Kevin (or someone else) has feedback on this then I don't have
>> to waste time if it turns out that it's not a great idea ;)
>> 
>>>>
>>>> [...]
>>>>> +struct meson_ee_pwrc_domain {
>>>>> +       struct generic_pm_domain base;
>>>>> +       bool enabled;
>>>>> +       struct meson_ee_pwrc *pwrc;
>>>>> +       struct meson_ee_pwrc_domain_desc desc;
>>>>> +       struct clk_bulk_data *clks;
>>>>> +       int num_clks;
>>>>> +       struct reset_control *rstc;
>>>>> +       int num_rstc;
>>>>> +};
>>>>> +
>>>>> +struct meson_ee_pwrc {
>>>>> +       struct regmap *regmap_ao;
>>>>> +       struct regmap *regmap_hhi;
>>>>> +       struct meson_ee_pwrc_domain *domains;
>>>>> +       struct genpd_onecell_data xlate;
>>>>> +};
>>>> (my impressions on this: I was surprised to find more structs down
>>>> here, I expected them to be together with the other structs further
>>>> up)
>>>
>>> These are the "live" structures, opposed to the static structures defining the
>>> data and these are allocated and filled a probe time.
>> I see, thanks for the explanation
>> 
>>> I dislike changing static global data at runtime, this is why I clearly separated both.
>> I didn't mean to make them static - the thing that caught my eye was
>> that some of the structs are defined at the top of the driver while
>> these two are define much further down
>> I am used to having all struct definitions in one place
>
> I'll let Kevin leave his feedback on this aswell.

I don't find the current approach super easy to read either, but OTOH, I
don't have any (good) ideas for doing it better, so I'm fine with the
current approach.

My primay wish is to have a single domain controller for all the EE
domains, which this series provides well.  We can iterate on cleanups as
we expand to other SoCs.

Unless there are major objections, I plan to queue this for v5.4.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
