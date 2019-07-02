Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF495D880
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+xgWb183prqD6SGcsjh1PEa2nMhrxMbe1zN5PDALGk=; b=IAEFoSUaEDEzR4
	XsYneYPYPTO87tw3WXxctOswbFEoJLAZjbAh1HOpn+CVvqMwFW0UF1CG81vUy6fvI380QNjfM5UYH
	ihKWWMUw1hKGq3bsXaklKN8YxV4J+3IN2ldvoNVrB+tizhoXTd6YeRP5F0SOfjjpGp8HHMftQMLIL
	bCBanENRogsE8jj9loBe5QZQndeNUCGfphjpf50faqC7UA51+Oh/41s6FGWNhIMpWlVHfvq+PsPuk
	IoNfU3mRG1WwYBjv7JpuQSU6VQ60EXulykA0/mYb4Aob031U/yb89BIPSfEouMAl8O/sbG6RAMqyN
	k3yhbkPwEBBpiEwO7jFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSZB-0006mb-8r; Tue, 02 Jul 2019 23:52:05 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSYv-0006lG-VJ; Tue, 02 Jul 2019 23:51:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id o101so371015ota.8;
 Tue, 02 Jul 2019 16:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y8CM/kRSfMkCLm6zorYMm+jmWg0Fr4K0UKURUwHLiI0=;
 b=PfODrLPtL/UekUDd5MyivTx7mO9uIfNsXn1/AL0i36O2i27oA1cIPzJin/uG0IzLpt
 S5Xx4hNZq+KvGLbjNVEp6xTRbGAEhi4yUzsW8Ess3o3NKkAOE95F2vOSdyhlEcznDyvv
 xWIqWX+5HZ4QLRhxnRt7fzGhBZa4c+Ajk0dju9VV38wAzvIA9M8anMy41hE5CJCzvwBg
 c5+JnLVr/aQTZoX0A+1JjZ4QhYcpUFm1qVW/f/D+wGe/TmQIsuVjaKeb/c3hSHeL4/rQ
 ufoupQW/yrA97DAebmIYhmreBqQP+BMggZbsvGxPifIVEyoan8dMPhjTceDK9vkatgAb
 W4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y8CM/kRSfMkCLm6zorYMm+jmWg0Fr4K0UKURUwHLiI0=;
 b=UwEcOTzCha8WEz7IelkAzT7TuRVVbouN3hRdJCAFqAD/HK+KecHsns8ROGAHpKg43Z
 /qDQOFGURloEBoHOuSG8mx/zhyfPacLKTYvJaSOEZMWLVPk7ZTyitNyElevHYZMYFYJo
 TrAjwCDJGLFfZnTpYd6XwfLu4pVnQVCDmZnvQ8TCxEd2SvLErdQeDgd4JNnP+FuOQV2U
 S8UYkdcfPj9cVbu7uVf+N77miyc5CGHoZKDd895S7AHf7qxIauKzhj6sPx06A6sWwVc6
 C60eCdLB3/VoRu2nwMAykhfrZdUkhbRyQc0m5FhWKtDV6zDAdUvkVMyUmVOVLV/zJkTw
 4UaQ==
X-Gm-Message-State: APjAAAXL/hi8ymltNh44vseMhD8Y23v+KFU5+/lnBuETzL3AvaRC+1OQ
 tn/oOKrqFkA8z2IpLHgYJfp7RWRryZH4XdMwrYECIA==
X-Google-Smtp-Source: APXvYqxPGdi5M83frYcEZkzIV4wjd1HSnqegfLcqSwdA8d9Vo+sKThli7P7OnkwgIwXWNWYlTAlgfzSDd8+mXHOWQbM=
X-Received: by 2002:a9d:39a6:: with SMTP id y35mr27461252otb.81.1562111509160; 
 Tue, 02 Jul 2019 16:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-7-narmstrong@baylibre.com>
In-Reply-To: <20190701104705.18271-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:51:38 +0200
Message-ID: <CAFBinCD8aBVo-WTaKTe7JyxqFyd=cVXDzHpwED4dx=rUtE3Uig@mail.gmail.com>
Subject: Re: [RFC 06/11] soc: amlogic: clk-measure: Add support for SM1
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_165150_032877_5D23C732 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Jul 1, 2019 at 12:49 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the clk-measurer clocks IDs for the Amlogic SM1 SoC family.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/soc/amlogic/meson-clk-measure.c | 134 ++++++++++++++++++++++++
>  1 file changed, 134 insertions(+)
>
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index f09b404b39d3..e32e97613000 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -357,6 +357,136 @@ static struct meson_msr_id clk_msr_g12a[CLK_MSR_MAX] = {
>         CLK_MSR_ID(122, "audio_pdm_dclk"),
>  };
>
> +static struct meson_msr_id clk_msr_sm1[CLK_MSR_MAX] = {
> +       CLK_MSR_ID(0, "ring_osc_out_ee_0"),
> +       CLK_MSR_ID(1, "ring_osc_out_ee_1"),
> +       CLK_MSR_ID(2, "ring_osc_out_ee_2"),
> +       CLK_MSR_ID(3, "ring_osc_out_ee_3"),
> +       CLK_MSR_ID(4, "gp0_pll"),
> +       CLK_MSR_ID(5, "gp1_pll"),
> +       CLK_MSR_ID(6, "enci"),
> +       CLK_MSR_ID(7, "clk81"),
> +       CLK_MSR_ID(8, "encp"),
> +       CLK_MSR_ID(9, "encl"),
> +       CLK_MSR_ID(10, "vdac"),
> +       CLK_MSR_ID(11, "eth_tx"),
> +       CLK_MSR_ID(12, "hifi_pll"),
> +       CLK_MSR_ID(13, "mod_tcon"),
> +       CLK_MSR_ID(14, "fec_0"),
> +       CLK_MSR_ID(15, "fec_1"),
> +       CLK_MSR_ID(16, "fec_2"),
> +       CLK_MSR_ID(17, "sys_pll_div16"),
> +       CLK_MSR_ID(18, "sys_cpu_div16"),
> +       CLK_MSR_ID(19, "lcd_an_ph2"),
> +       CLK_MSR_ID(20, "rtc_osc_out"),
> +       CLK_MSR_ID(21, "lcd_an_ph3"),
> +       CLK_MSR_ID(22, "eth_phy_ref"),
> +       CLK_MSR_ID(23, "mpll_50m"),
> +       CLK_MSR_ID(24, "eth_125m"),
> +       CLK_MSR_ID(25, "eth_rmii"),
> +       CLK_MSR_ID(26, "sc_int"),
> +       CLK_MSR_ID(27, "in_mac"),
> +       CLK_MSR_ID(28, "sar_adc"),
> +       CLK_MSR_ID(29, "pcie_inp"),
> +       CLK_MSR_ID(30, "pcie_inn"),
> +       CLK_MSR_ID(31, "mpll_test_out"),
> +       CLK_MSR_ID(32, "vdec"),
> +       CLK_MSR_ID(34, "eth_mpll_50m"),
> +       CLK_MSR_ID(35, "mali"),
> +       CLK_MSR_ID(36, "hdmi_tx_pixel"),
> +       CLK_MSR_ID(37, "cdac"),
> +       CLK_MSR_ID(38, "vdin_meas"),
> +       CLK_MSR_ID(39, "bt656"),
> +       CLK_MSR_ID(40, "arm_ring_osc_out_4"),
> +       CLK_MSR_ID(41, "eth_rx_or_rmii"),
> +       CLK_MSR_ID(42, "mp0_out"),
> +       CLK_MSR_ID(43, "fclk_div5"),
> +       CLK_MSR_ID(44, "pwm_b"),
> +       CLK_MSR_ID(45, "pwm_a"),
> +       CLK_MSR_ID(46, "vpu"),
> +       CLK_MSR_ID(47, "ddr_dpll_pt"),
> +       CLK_MSR_ID(48, "mp1_out"),
> +       CLK_MSR_ID(49, "mp2_out"),
> +       CLK_MSR_ID(50, "mp3_out"),
> +       CLK_MSR_ID(51, "sd_emmc_c"),
> +       CLK_MSR_ID(52, "sd_emmc_b"),
> +       CLK_MSR_ID(53, "sd_emmc_a"),
> +       CLK_MSR_ID(54, "vpu_clkc"),
> +       CLK_MSR_ID(55, "vid_pll_div_out"),
> +       CLK_MSR_ID(56, "wave420l_a"),
> +       CLK_MSR_ID(57, "wave420l_c"),
> +       CLK_MSR_ID(58, "wave420l_b"),
> +       CLK_MSR_ID(59, "hcodec"),
> +       CLK_MSR_ID(40, "arm_ring_osc_out_5"),
is this index 40 or 60?

> +       CLK_MSR_ID(61, "gpio_msr"),
> +       CLK_MSR_ID(62, "hevcb"),
> +       CLK_MSR_ID(63, "dsi_meas"),
> +       CLK_MSR_ID(64, "spicc_1"),
> +       CLK_MSR_ID(65, "spicc_0"),
> +       CLK_MSR_ID(66, "vid_lock"),
> +       CLK_MSR_ID(67, "dsi_phy"),
> +       CLK_MSR_ID(68, "hdcp22_esm"),
> +       CLK_MSR_ID(69, "hdcp22_skp"),
> +       CLK_MSR_ID(70, "pwm_f"),
> +       CLK_MSR_ID(71, "pwm_e"),
> +       CLK_MSR_ID(72, "pwm_d"),
> +       CLK_MSR_ID(73, "pwm_c"),
> +       CLK_MSR_ID(74, "arm_ring_osc_out_6"),
> +       CLK_MSR_ID(75, "hevcf"),
> +       CLK_MSR_ID(74, "arm_ring_osc_out_7"),
is this index 74 or 76?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
