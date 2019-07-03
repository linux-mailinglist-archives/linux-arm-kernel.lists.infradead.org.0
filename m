Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED055E309
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCAC82r7RShl80POiDsf4v6vXpn410Tf8YHgpm8y5xs=; b=SFi5GM+jUA2zA8
	PHZoHOSuadjqQNxXXP5mDjEadrRXZoQI+o1Dnx6G9r2tushvnoILsMo/XHKnyoTG/RGyU/xZRGrWc
	o1y1KhmBgnRxwmmNm7Xt4EwHk2mq+Evid4AhK3gW5VqWE42AuK2USsCWOOaAVqCG8pgjtIjq+5KkJ
	8LXuPq30GgIv4NWvXimb6sKnWQiyhvtHFme7t8C7T7WnfIE5Ok/6mJcdL2kpwbZWRfKbv+3DGfJEG
	bD14v1fKTLGwQeOPTjb4XeVceMO7s9vvHTEJCE+E80HzfACG2drrqz74plenRhMeQA+GJ6wrJYQZ3
	X+EJmVA9CghDCsQbkyRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hidhT-0001FX-LS; Wed, 03 Jul 2019 11:45:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hidh8-0008Ng-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:45:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so1865178wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 04:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=xRM3DVh9DsuQz16USxYQS7Smf9h6SGJQ053F4dMRpRU=;
 b=008PJMdwKFL2Oxdt2I5iMPhyZ3qVvnb5aME0kmmtc0GTVVxzy1c8mMdK1Ev5ILA5O2
 55KzKDHcgmyPERgyfBQdCIpl7i34/xMgWGtyI1n2GDG5u8+qzUceCoCaRL10e+8gVihE
 QBSlmpptkADAqWWgyTOn8qpsNjo1ivBNFObhwjr5QQxRA5YbPIUoB0ysw824tvFNqv3g
 ABqJNiB1kB0PaDZew2/r3ZzQYBG56gBJ3INrF4e4EJkbYQaGU9FC6OY60lP0tU/qfhWi
 8nsbvzCSQjI3oY4gVKcRFtifPn+RALASmAkRkh9oGFuomkGj50d/13S4V+kk+imEbSBe
 g8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=xRM3DVh9DsuQz16USxYQS7Smf9h6SGJQ053F4dMRpRU=;
 b=enLnYnkEvLR+wQfuTcuRsMDGgsTqKpJSnNSfesif147eyK1vk4h10Vx3bxinoLIkQS
 x0tZkx3zjFc0lxg6u7ZYwta8m+fdSuo2Kzwt5yTE7319Mn1muyiA/6af+MoLSP8Ccqx8
 UKZw0Gj8YRzZycUKblejAcMQ33kcAaZloqUyv4uezz0QriHZ1Sm9I0loMJBKwwSPJNin
 h+gaDVCKdfG9WwQnTWFPLeFEFx/DNEpCfh2SWXXuoJKhwTDJeTr+rl+HxF7CitpkfpVV
 X00pj4x+LaqcbgUCzB8aEXdf/BSPWQOXMQGG+QgUOgKZk9hA7qgSBy4MsL5Txrkv/7YK
 waKw==
X-Gm-Message-State: APjAAAX8NT51HgUbPc5cZv8FHfu610s9cQSsdx/oyCUlc5UGeNcT2iRU
 o7SNGtPQVrcwGaBzE1vuiS1lL7tjXz4=
X-Google-Smtp-Source: APXvYqxDoWWv8HvVXmL+edDBfuGwhfZa/FRH6SaeQwpQNUT+YtGlMokLtVzi9wOEdoQLYaytnzb4NQ==
X-Received: by 2002:a1c:b707:: with SMTP id h7mr7699725wmf.45.1562154295737;
 Wed, 03 Jul 2019 04:44:55 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm1870384wmt.6.2019.07.03.04.44.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 04:44:55 -0700 (PDT)
Subject: Re: [RFC 06/11] soc: amlogic: clk-measure: Add support for SM1
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-7-narmstrong@baylibre.com>
 <CAFBinCD8aBVo-WTaKTe7JyxqFyd=cVXDzHpwED4dx=rUtE3Uig@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <eebfb5d6-21bf-f759-c74e-3eb7d04820e4@baylibre.com>
Date: Wed, 3 Jul 2019 13:44:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCD8aBVo-WTaKTe7JyxqFyd=cVXDzHpwED4dx=rUtE3Uig@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_044502_765238_AFC299FE 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

On 03/07/2019 01:51, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Mon, Jul 1, 2019 at 12:49 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Add the clk-measurer clocks IDs for the Amlogic SM1 SoC family.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/soc/amlogic/meson-clk-measure.c | 134 ++++++++++++++++++++++++
>>  1 file changed, 134 insertions(+)
>>
>> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
>> index f09b404b39d3..e32e97613000 100644
>> --- a/drivers/soc/amlogic/meson-clk-measure.c
>> +++ b/drivers/soc/amlogic/meson-clk-measure.c
>> @@ -357,6 +357,136 @@ static struct meson_msr_id clk_msr_g12a[CLK_MSR_MAX] = {
>>         CLK_MSR_ID(122, "audio_pdm_dclk"),
>>  };
>>
>> +static struct meson_msr_id clk_msr_sm1[CLK_MSR_MAX] = {
>> +       CLK_MSR_ID(0, "ring_osc_out_ee_0"),
>> +       CLK_MSR_ID(1, "ring_osc_out_ee_1"),
>> +       CLK_MSR_ID(2, "ring_osc_out_ee_2"),
>> +       CLK_MSR_ID(3, "ring_osc_out_ee_3"),
>> +       CLK_MSR_ID(4, "gp0_pll"),
>> +       CLK_MSR_ID(5, "gp1_pll"),
>> +       CLK_MSR_ID(6, "enci"),
>> +       CLK_MSR_ID(7, "clk81"),
>> +       CLK_MSR_ID(8, "encp"),
>> +       CLK_MSR_ID(9, "encl"),
>> +       CLK_MSR_ID(10, "vdac"),
>> +       CLK_MSR_ID(11, "eth_tx"),
>> +       CLK_MSR_ID(12, "hifi_pll"),
>> +       CLK_MSR_ID(13, "mod_tcon"),
>> +       CLK_MSR_ID(14, "fec_0"),
>> +       CLK_MSR_ID(15, "fec_1"),
>> +       CLK_MSR_ID(16, "fec_2"),
>> +       CLK_MSR_ID(17, "sys_pll_div16"),
>> +       CLK_MSR_ID(18, "sys_cpu_div16"),
>> +       CLK_MSR_ID(19, "lcd_an_ph2"),
>> +       CLK_MSR_ID(20, "rtc_osc_out"),
>> +       CLK_MSR_ID(21, "lcd_an_ph3"),
>> +       CLK_MSR_ID(22, "eth_phy_ref"),
>> +       CLK_MSR_ID(23, "mpll_50m"),
>> +       CLK_MSR_ID(24, "eth_125m"),
>> +       CLK_MSR_ID(25, "eth_rmii"),
>> +       CLK_MSR_ID(26, "sc_int"),
>> +       CLK_MSR_ID(27, "in_mac"),
>> +       CLK_MSR_ID(28, "sar_adc"),
>> +       CLK_MSR_ID(29, "pcie_inp"),
>> +       CLK_MSR_ID(30, "pcie_inn"),
>> +       CLK_MSR_ID(31, "mpll_test_out"),
>> +       CLK_MSR_ID(32, "vdec"),
>> +       CLK_MSR_ID(34, "eth_mpll_50m"),
>> +       CLK_MSR_ID(35, "mali"),
>> +       CLK_MSR_ID(36, "hdmi_tx_pixel"),
>> +       CLK_MSR_ID(37, "cdac"),
>> +       CLK_MSR_ID(38, "vdin_meas"),
>> +       CLK_MSR_ID(39, "bt656"),
>> +       CLK_MSR_ID(40, "arm_ring_osc_out_4"),
>> +       CLK_MSR_ID(41, "eth_rx_or_rmii"),
>> +       CLK_MSR_ID(42, "mp0_out"),
>> +       CLK_MSR_ID(43, "fclk_div5"),
>> +       CLK_MSR_ID(44, "pwm_b"),
>> +       CLK_MSR_ID(45, "pwm_a"),
>> +       CLK_MSR_ID(46, "vpu"),
>> +       CLK_MSR_ID(47, "ddr_dpll_pt"),
>> +       CLK_MSR_ID(48, "mp1_out"),
>> +       CLK_MSR_ID(49, "mp2_out"),
>> +       CLK_MSR_ID(50, "mp3_out"),
>> +       CLK_MSR_ID(51, "sd_emmc_c"),
>> +       CLK_MSR_ID(52, "sd_emmc_b"),
>> +       CLK_MSR_ID(53, "sd_emmc_a"),
>> +       CLK_MSR_ID(54, "vpu_clkc"),
>> +       CLK_MSR_ID(55, "vid_pll_div_out"),
>> +       CLK_MSR_ID(56, "wave420l_a"),
>> +       CLK_MSR_ID(57, "wave420l_c"),
>> +       CLK_MSR_ID(58, "wave420l_b"),
>> +       CLK_MSR_ID(59, "hcodec"),
>> +       CLK_MSR_ID(40, "arm_ring_osc_out_5"),
> is this index 40 or 60?

Exact it's 60, thanks for spotting

> 
>> +       CLK_MSR_ID(61, "gpio_msr"),
>> +       CLK_MSR_ID(62, "hevcb"),
>> +       CLK_MSR_ID(63, "dsi_meas"),
>> +       CLK_MSR_ID(64, "spicc_1"),
>> +       CLK_MSR_ID(65, "spicc_0"),
>> +       CLK_MSR_ID(66, "vid_lock"),
>> +       CLK_MSR_ID(67, "dsi_phy"),
>> +       CLK_MSR_ID(68, "hdcp22_esm"),
>> +       CLK_MSR_ID(69, "hdcp22_skp"),
>> +       CLK_MSR_ID(70, "pwm_f"),
>> +       CLK_MSR_ID(71, "pwm_e"),
>> +       CLK_MSR_ID(72, "pwm_d"),
>> +       CLK_MSR_ID(73, "pwm_c"),
>> +       CLK_MSR_ID(74, "arm_ring_osc_out_6"),
>> +       CLK_MSR_ID(75, "hevcf"),
>> +       CLK_MSR_ID(74, "arm_ring_osc_out_7"),
> is this index 74 or 76?
> 

Exact, it's 76 !

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
