Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1B59D953
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 00:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iG+7YfdToUC36cDClQiSJAglaPGUfu2A+VGDN1Cu+fg=; b=t8nk0n1tFIoEpP
	QGAWNsrBfHlf/hQe8ETO6GyVIrpHdYo7B3mmYOTPTtyF8mo2cJ8Lxbn9k2mPrxEQrP1AiFfexkrLY
	5zaN22FPy1ApAYA81xvLU75dB86iHV4EQgXWZdXQScYJ9e8nragy5ZvtQ1UCxdOqC2liYsGatsLfa
	FiGEkrFAQWws00hTPpc8xQCVGFdoXE4vdrsNGjJ/jtTFisKKloziEMoW8CJJR9C9dy0MqG5Kou980
	sInV5msETOyh7nJavgf36e1Pyh2WCfoZ8Ofn7xINhRNsKSIdUnUsr4nqkzYG5NIv80zwEFgQYC2DE
	E8LASZzHFYspv9RZdrdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NfP-0004GV-5N; Mon, 26 Aug 2019 22:40:51 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Nf0-0004Ar-O4; Mon, 26 Aug 2019 22:40:28 +0000
Received: by mail-ot1-x341.google.com with SMTP id k18so16841434otr.3;
 Mon, 26 Aug 2019 15:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DBtUgp09ILtLJx82v7/9S8a2bPggcu3SBMJmSRWkOWU=;
 b=q9KKwFI2spBd11DLhVGrnyWQ1itKWiJjNUpvQb1lcigAsiIa+zqXV82lgLULFRFzvY
 i/A5q06MVmhusfme0Ht+CbyPFuNMSHhcZYLY8I4jksbTYGpNIuOmgXorJ5KIDpiRD80d
 0zhLZqPjdoEjoVBAOLrpQMonWWoSoNqSpUUzUZBAm8wRtSHcdYw60KPG3ITSWALzqpTQ
 CEKoNBmEfKEjOnz2LA4YCMClL8//qfoXF7ybS3TZRxu+x2+AyvdmlGx5GAmhZ5KV5AbL
 1LCSqWmL7gpHIxS6ZfGtcF+QfQvgAeypN9W97aH7Zp97DKtIu6KdXpA6IwBYNPrKjm66
 Un+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DBtUgp09ILtLJx82v7/9S8a2bPggcu3SBMJmSRWkOWU=;
 b=FseH80sIIbJIrcVqdspPN+Pp1VQaHvL4sIy/5qkwso7KGWMcVYap5LhstZL6npdySL
 sLSkya2ZobkZSScQ1Jrjzv2psJXnMdza8FdytlRQDoFqXU6zbLxhK0gzg3nZiksCKq3v
 o/5EH604mE0zgiJbxABlT7OJzAMDnIM6FUMD6DR22hw970/9WeL4YqRzlPB8tneB1L/J
 2+oIKPqMSJURyAtbh759/yWGhaD1B5Qak7zd8aqnB2tm0JF7BXL+fyBOKLO8hdlePooy
 nIHD6oEcHpvtKlDtCaOENewSF//eAX0Q/kRGBFl9GIyeEKcPmbLZ5pE5WeTJqbaLWk7f
 6OYw==
X-Gm-Message-State: APjAAAVKhCG3AL2gdQG+g7Ynuf4lT8XQdoeNdQdL9aOynspvNJcte+92
 WPWP26UFkCpBHAdfTdwBMHRjYd5aHskM6bIdhcY=
X-Google-Smtp-Source: APXvYqz1tIwsKtjQUBPVQFswHzIWhO2ha2uKXMrM0jPjl6uCPWwQ2ehNr4SbBIrZI0zPPR9GJOgG6djB2Nf93UqVxso=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id
 e26mr16553944otj.96.1566859224972; 
 Mon, 26 Aug 2019 15:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190823090418.17148-1-narmstrong@baylibre.com>
 <20190823090418.17148-3-narmstrong@baylibre.com>
 <CAFBinCBy-VxfSMPMR0cEDuNg8=UOUVvWfkDi2Tp=QhBZka93aQ@mail.gmail.com>
 <f6e7e4de-e1b7-f642-07cb-fa029ff2a883@baylibre.com>
In-Reply-To: <f6e7e4de-e1b7-f642-07cb-fa029ff2a883@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 27 Aug 2019 00:40:14 +0200
Message-ID: <CAFBinCDDygiafTwLgqB9BimqrmwxL2=HFQD8cX8CQL23AFZNXQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] soc: amlogic: Add support for Everything-Else
 power domains controller
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_154026_813306_637849F9 
X-CRM114-Status: GOOD (  33.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Neil,

On Mon, Aug 26, 2019 at 10:10 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 25/08/2019 23:10, Martin Blumenstingl wrote:
> > Hi Neil,
> >
> > thank you for this update
> > I haven't tried this on the 32-bit SoCs yet, but I am confident that I
> > can make it work by "just" adding the SoC specific bits!
> >
> > On Fri, Aug 23, 2019 at 11:06 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> > [...]
> >> +/* AO Offsets */
> >> +
> >> +#define AO_RTI_GEN_PWR_SLEEP0          (0x3a << 2)
> >> +#define AO_RTI_GEN_PWR_ISO0            (0x3b << 2)
> >> +
> >> +/* HHI Offsets */
> >> +
> >> +#define HHI_MEM_PD_REG0                        (0x40 << 2)
> >> +#define HHI_VPU_MEM_PD_REG0            (0x41 << 2)
> >> +#define HHI_VPU_MEM_PD_REG1            (0x42 << 2)
> >> +#define HHI_VPU_MEM_PD_REG3            (0x43 << 2)
> >> +#define HHI_VPU_MEM_PD_REG4            (0x44 << 2)
> >> +#define HHI_AUDIO_MEM_PD_REG0          (0x45 << 2)
> >> +#define HHI_NANOQ_MEM_PD_REG0          (0x46 << 2)
> >> +#define HHI_NANOQ_MEM_PD_REG1          (0x47 << 2)
> >> +#define HHI_VPU_MEM_PD_REG2            (0x4d << 2)
> > should we switch to the actual register offsets like we did in the
> > clock drivers?
>
> I find it simpler to refer to the numbers in the documentation...
OK, I have no strong preference here
for the 32-bit SoCs I will need to use the offsets based on the
"amlogic,meson8b-pmu", "syscon" [0], so these will be magic anyways

[...]
> >> +#define VPU_HHI_MEMPD(__reg)                                   \
> >> +       { __reg, BIT(8) },                                      \
> >> +       { __reg, BIT(9) },                                      \
> >> +       { __reg, BIT(10) },                                     \
> >> +       { __reg, BIT(11) },                                     \
> >> +       { __reg, BIT(12) },                                     \
> >> +       { __reg, BIT(13) },                                     \
> >> +       { __reg, BIT(14) },                                     \
> >> +       { __reg, BIT(15) }
> > the Amlogic implementation from buildroot-openlinux-A113-201901 (the
> > latest one I have)
> > kernel/aml-4.9/drivers/amlogic/media/vout/hdmitx/hdmi_tx_20/hw/hdmi_tx_hw.c
> > uses:
> > hd_set_reg_bits(P_HHI_MEM_PD_REG0, 0, 8, 8)
> > that basically translates to: GENMASK(15, 8) (which means we could
> > drop this macro)
> >
> > the datasheet also states: 15~8 [...] HDMI memory PD (as a single
> > 8-bit wide register)
>
> Yep, but the actual code setting the VPU power domain is in u-boot :
>
> drivers/vpu/aml_vpu_power_init.c:
> 108         for (i = 8; i < 16; i++) {
> 109                 vpu_hiu_setb(HHI_MEM_PD_REG0, 0, i, 1);
> 110                 udelay(5);
> 111         }
>
> the linux code is like never used here, my preference goes to the u-boot code
> implementation.
I see, let's keep your implementation then

> >
> > [...]
> >> +static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
> >> +       [PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
> >> +                                    pwrc_ee_get_power, 11, 2),
> >> +       [PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
> >> +};
> >> +
> >> +static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
> >> +       [PWRC_SM1_VPU_ID]  = VPU_PD("VPU", &sm1_pwrc_vpu, sm1_pwrc_mem_vpu,
> >> +                                   pwrc_ee_get_power, 11, 2),
> >> +       [PWRC_SM1_NNA_ID]  = TOP_PD("NNA", &sm1_pwrc_nna, sm1_pwrc_mem_nna,
> >> +                                   pwrc_ee_get_power),
> >> +       [PWRC_SM1_USB_ID]  = TOP_PD("USB", &sm1_pwrc_usb, sm1_pwrc_mem_usb,
> >> +                                   pwrc_ee_get_power),
> >> +       [PWRC_SM1_PCIE_ID] = TOP_PD("PCI", &sm1_pwrc_pci, sm1_pwrc_mem_pcie,
> >> +                                   pwrc_ee_get_power),
> >> +       [PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
> >> +                                   pwrc_ee_get_power),
> >> +       [PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
> >> +       [PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
> >> +};
> > my impression: I find this hard to read as it merges the TOP and
> > Memory PD domains from above, adding some seemingly random "11, 2" for
> > the VPU PD as well as pwrc_ee_get_power for some of the power domains
> > personally I like the way we describe clk_regmap because it's easy to
> > read (even though it adds a bit of boilerplate). I'm not sure if we
> > can make it work here, but this (not compile tested) is what I have in
> > mind (I chose two random power domains):
> >   [PWRC_SM1_VPU_ID]  = {
> >     .name = "VPU",
> >     .top_pd = SM1_EE_PD(8),
> >     .mem_pds = {
> >         VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
> >         VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
> >         VPU_MEMPD(HHI_VPU_MEM_PD_REG2),
> >         VPU_MEMPD(HHI_VPU_MEM_PD_REG3),
> >         { HHI_VPU_MEM_PD_REG4, GENMASK(1, 0) },
> >         { HHI_VPU_MEM_PD_REG4, GENMASK(3, 2) },
> >         { HHI_VPU_MEM_PD_REG4, GENMASK(5, 4) },
> >         { HHI_VPU_MEM_PD_REG4, GENMASK(7, 6) },
> >         { HHI_MEM_PD_REG0, GENMASK(15, 8) },
> >     },
> >     .num_mem_pds = 9,
> >     .reset_names_count = 11,
> >     .clk_names_count = 2,
> >   },
> >   [PWRC_SM1_ETH_ID] = {
> >     .name = "ETH",
> >     .mem_pds = { HHI_MEM_PD_REG0, GENMASK(3, 2) },
> >     .num_mem_pds = 1,
> >   },
> > ...
> >
> > I'd like to get Kevin's feedback on this
> > what you have right now is probably good enough for the initial
> > version of this driver. I'm bringing this discussion up because we
> > will add support for more SoCs to this driver (we migrate GX over to
> > it and I want to add 32-bit SoC support, which probably means at least
> > Meson8 - assuming they kept the power domains identical between
> > Meson8/8b/8m2).
>
> I find it more compact, but nothing is set in stone, you can refactor this as
> will when adding meson8 support, no problems here.
OK. if Kevin (or someone else) has feedback on this then I don't have
to waste time if it turns out that it's not a great idea ;)

> >
> > [...]
> >> +struct meson_ee_pwrc_domain {
> >> +       struct generic_pm_domain base;
> >> +       bool enabled;
> >> +       struct meson_ee_pwrc *pwrc;
> >> +       struct meson_ee_pwrc_domain_desc desc;
> >> +       struct clk_bulk_data *clks;
> >> +       int num_clks;
> >> +       struct reset_control *rstc;
> >> +       int num_rstc;
> >> +};
> >> +
> >> +struct meson_ee_pwrc {
> >> +       struct regmap *regmap_ao;
> >> +       struct regmap *regmap_hhi;
> >> +       struct meson_ee_pwrc_domain *domains;
> >> +       struct genpd_onecell_data xlate;
> >> +};
> > (my impressions on this: I was surprised to find more structs down
> > here, I expected them to be together with the other structs further
> > up)
>
> These are the "live" structures, opposed to the static structures defining the
> data and these are allocated and filled a probe time.
I see, thanks for the explanation

> I dislike changing static global data at runtime, this is why I clearly separated both.
I didn't mean to make them static - the thing that caught my eye was
that some of the structs are defined at the top of the driver while
these two are define much further down
I am used to having all struct definitions in one place

> >
> >> +static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain)
> >> +{
> >> +       u32 reg;
> >> +
> >> +       regmap_read(pwrc_domain->pwrc->regmap_ao,
> >> +                   pwrc_domain->desc.top_pd->sleep_reg, &reg);
> >> +
> >> +       return (reg & pwrc_domain->desc.top_pd->sleep_mask);
> > should this also check for top_pd->iso_* as well as mem_pd->*?
> > if the top_pd part was optional we could even use the get_power
> > callback for *all* power domains in this driver (right now audio and
> > Ethernet don't have any get_power callback)
>
> We could, but how should we handle if one unexpected bit is set ? No idea...
hmm, I see
if we need it for other power domains then we can still implement it,
so it's good for now

[...]
> > bonus question: what about the video decoder power domains?
> > here is an example from vdec_1_start
> > (drivers/staging/media/meson/vdec/vdec_1.c):
> >   /* Enable power for VDEC_1 */
> >   regmap_update_bits(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
> >                                    GEN_PWR_VDEC_1, 0);
> >   usleep_range(10, 20);
> >   [...]
> >   /* enable VDEC Memories */
> >   amvdec_write_dos(core, DOS_MEM_PD_VDEC, 0);
> >   /* Remove VDEC1 Isolation */
> >   regmap_write(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0);
> >
> > (my point here is that it mixes video decoder "DOS" registers with
> > AO_RTI_GEN_PWR registers)
> > do we also want to add support for these "DOS" power domains to the
> > meson-ee-pwrc driver?
> > what about the AO_RTI_GEN_PWR part then - should we keep management
> > for the video decoder power domain bits in AO_RTI_GEN_PWR as part of
> > the video decoder driver?
>
> I left the decoders power domains aside so we can discuss it later on,
> we should expose multiple power domains, but the driver would need to
> be changed to support multiple power domains. But will loose the ability
> to enable/disable each domain at will unless it created a sub-device for
> each decoder and attaches the domain to to each device and use runtime pm.
>
> It's simpler to discuss it later on !
OK - does this mean you and/or Maxime have "discuss decoder power
domains" on your (long) TODO-list or do you want me to open this
discussion after this driver is merged?


Martin


[0] https://www.kernel.org/doc/Documentation/devicetree/bindings/arm/amlogic/pmu.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
