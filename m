Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6414A1164B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 02:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eijQa501aQftPxpVjpG8wznBIynNWgkg+hhLI3Tb8SQ=; b=WfEp93IA5/OcOj
	/IXKaEPlOKT017af6rpDXeLdUDn0JeDn41lbaGtgxqeZ4zjoBqGezqsfuyFq+YQzHNG0rnR5AlGFh
	q2Aknl3hXa/2BtP6qaSNgNz9tU2LXfbXLohBINIzR5K66LLv42ZhfL7Hkw0AajEn0yorqzaGffgcL
	F53/z6KLzLjPDzade3qGVAutdKir3yPhOJQ3FFERV/miDh4xQEUgBnNY+KKteHMUbdGsG/KuXt2lq
	3wsypI9HKuIUBU4O5OOTkFz3QzNgoRGvOu7PLtzQgMk1Qrc8/F42NlBeU6VnYlCWnv3zOHckgDAKW
	QBCpTrwziTv2VrXnSQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie7VD-0002az-UN; Mon, 09 Dec 2019 01:06:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie7V6-0002aR-MK
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 01:06:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB68A2070A;
 Mon,  9 Dec 2019 01:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575853572;
 bh=diImKIxWYiCfkVFDpFphmhIAKhSJkzitOSJh3ppOi8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JXD0FoNc+Hf9Pd51Sg5TFhXQdy/jILHk2oxaKvx8nNkgYUTogvLeifcwjg2FefGpu
 FzzScTc/MEMZtXZ3xiDSD8l7ZrVSWXeWD4vJE+XtTnMutj0mA1p614qMS5TZuADRYg
 zPnqBm3su8c94kAu9k4IZ5Ac3q0m7mrpYaFcdEQk=
Date: Mon, 9 Dec 2019 09:05:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: imx8-clock: Add ADMA clock ids
Message-ID: <20191209010031.GP3365@dragon>
References: <1573647909-31081-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573647909-31081-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_170612_772233_D74C3411 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:25:13PM +0000, Abel Vesa wrote:
> According to the RM, the Audio and DMA (ADMA) subsystem is a collection
> of audio peripherals and some system modules.
> Add the ADMA specific clock ids to the dt-bindings clock file.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  include/dt-bindings/clock/imx8-clock.h | 96 +++++++++++++++++++++++++++++++++-
>  1 file changed, 94 insertions(+), 2 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
> index 673a8c6..6e0c752 100644
> --- a/include/dt-bindings/clock/imx8-clock.h
> +++ b/include/dt-bindings/clock/imx8-clock.h
> @@ -131,7 +131,60 @@
>  #define IMX_ADMA_PWM_CLK				188
>  #define IMX_ADMA_LCD_CLK				189
>  
> -#define IMX_SCU_CLK_END					190
> +#define IMX_ADMA_AUD_PLL0				190
> +#define IMX_ADMA_AUD_PLL1				191
> +
> +#define IMX_ADMA_AUD_PLL_DIV_CLK0_CLK			192
> +#define IMX_ADMA_AUD_PLL_DIV_CLK1_CLK			193
> +#define IMX_ADMA_AUD_REC_CLK0_CLK			194
> +#define IMX_ADMA_AUD_REC_CLK1_CLK			195
> +
> +/* CM40 SS */
> +#define IMX_CM40_IPG_CLK				196
> +#define IMX_CM40_I2C_DIV				197

These two don't look like ADMA clock.

Shawn

> +
> +#define IMX_SCU_CLK_END					198
> +
> +#define IMX_ADMA_ACM_AUD_CLK0_SEL			0
> +#define IMX_ADMA_ACM_AUD_CLK0_CLK			1
> +#define IMX_ADMA_ACM_AUD_CLK1_SEL			2
> +#define IMX_ADMA_ACM_AUD_CLK1_CLK			3
> +#define IMX_ADMA_ACM_MCLKOUT0_SEL			4
> +#define IMX_ADMA_ACM_MCLKOUT1_SEL			5
> +#define IMX_ADMA_ACM_ESAI0_MCLK_SEL			6
> +#define IMX_ADMA_ACM_GPT0_MUX_CLK_SEL			7
> +#define IMX_ADMA_ACM_GPT1_MUX_CLK_SEL			8
> +#define IMX_ADMA_ACM_GPT2_MUX_CLK_SEL			9
> +#define IMX_ADMA_ACM_GPT3_MUX_CLK_SEL			10
> +#define IMX_ADMA_ACM_GPT4_MUX_CLK_SEL			11
> +#define IMX_ADMA_ACM_GPT5_MUX_CLK_SEL			12
> +#define IMX_ADMA_ACM_SAI0_MCLK_SEL			13
> +#define IMX_ADMA_ACM_SAI1_MCLK_SEL			14
> +#define IMX_ADMA_ACM_SAI2_MCLK_SEL			15
> +#define IMX_ADMA_ACM_SAI3_MCLK_SEL			16
> +#define IMX_ADMA_ACM_SAI4_MCLK_SEL			17
> +#define IMX_ADMA_ACM_SAI5_MCLK_SEL			18
> +#define IMX_ADMA_ACM_SPDIF0_TX_CLK_SEL			19
> +#define IMX_ADMA_ACM_MQS_TX_CLK_SEL			20
> +#define IMX_ADMA_ACM_ASRC0_MUX_CLK_SEL			21
> +#define IMX_ADMA_ACM_ASRC1_MUX_CLK_SEL			22
> +
> +#define IMX_ADMA_EXT_AUD_MCLK0				23
> +#define IMX_ADMA_EXT_AUD_MCLK1				24
> +#define IMX_ADMA_ESAI0_RX_CLK				25
> +#define IMX_ADMA_ESAI0_RX_HF_CLK			26
> +#define IMX_ADMA_ESAI0_TX_CLK				27
> +#define IMX_ADMA_ESAI0_TX_HF_CLK			28
> +#define IMX_ADMA_SPDIF0_RX				29
> +#define IMX_ADMA_SAI0_RX_BCLK				30
> +#define IMX_ADMA_SAI0_TX_BCLK				31
> +#define IMX_ADMA_SAI1_RX_BCLK				32
> +#define IMX_ADMA_SAI1_TX_BCLK				33
> +#define IMX_ADMA_SAI2_RX_BCLK				34
> +#define IMX_ADMA_SAI3_RX_BCLK				35
> +#define IMX_ADMA_SAI4_RX_BCLK				36
> +
> +#define IMX_ADMA_ACM_CLK_END				37
>  
>  /* LPCG clocks */
>  
> @@ -287,7 +340,46 @@
>  #define IMX_ADMA_LPCG_DSP_IPG_CLK			42
>  #define IMX_ADMA_LPCG_DSP_CORE_CLK			43
>  #define IMX_ADMA_LPCG_OCRAM_IPG_CLK			44
> +#define IMX_ADMA_LPCG_AMIX_IPG_CLK			45
> +#define IMX_ADMA_LPCG_ESAI_0_IPG_CLK			46
> +#define IMX_ADMA_LPCG_ESAI_0_EXTAL_CLK			47
> +#define IMX_ADMA_LPCG_SAI_0_IPG_CLK			48
> +#define IMX_ADMA_LPCG_SAI_0_MCLK			49
> +#define IMX_ADMA_LPCG_SAI_1_IPG_CLK			50
> +#define IMX_ADMA_LPCG_SAI_1_MCLK			51
> +#define IMX_ADMA_LPCG_SAI_2_IPG_CLK			52
> +#define IMX_ADMA_LPCG_SAI_2_MCLK			53
> +#define IMX_ADMA_LPCG_SAI_3_IPG_CLK			54
> +#define IMX_ADMA_LPCG_SAI_3_MCLK			55
> +#define IMX_ADMA_LPCG_SAI_4_IPG_CLK			56
> +#define IMX_ADMA_LPCG_SAI_4_MCLK			57
> +#define IMX_ADMA_LPCG_SAI_5_IPG_CLK			58
> +#define IMX_ADMA_LPCG_SAI_5_MCLK			59
> +#define IMX_ADMA_LPCG_MQS_IPG_CLK			60
> +#define IMX_ADMA_LPCG_MQS_MCLK				61
> +#define IMX_ADMA_LPCG_GPT5_IPG_CLK			62
> +#define IMX_ADMA_LPCG_GPT5_CLKIN			63
> +#define IMX_ADMA_LPCG_GPT6_IPG_CLK			64
> +#define IMX_ADMA_LPCG_GPT6_CLKIN			65
> +#define IMX_ADMA_LPCG_GPT7_IPG_CLK			66
> +#define IMX_ADMA_LPCG_GPT7_CLKIN			67
> +#define IMX_ADMA_LPCG_GPT8_IPG_CLK			68
> +#define IMX_ADMA_LPCG_GPT8_CLKIN			69
> +#define IMX_ADMA_LPCG_GPT9_IPG_CLK			70
> +#define IMX_ADMA_LPCG_GPT9_CLKIN			71
> +#define IMX_ADMA_LPCG_GPT10_IPG_CLK			72
> +#define IMX_ADMA_LPCG_GPT10_CLKIN			73
> +#define IMX_ADMA_LPCG_MCLKOUT0				74
> +#define IMX_ADMA_LPCG_MCLKOUT1				75
> +#define IMX_ADMA_LPCG_SPDIF_0_TX_CLK			76
> +#define IMX_ADMA_LPCG_SPDIF_0_GCLKW			77
> +#define IMX_ADMA_LPCG_ASRC_0_IPG_CLK			79
> +#define IMX_ADMA_LPCG_ASRC_1_IPG_CLK			80
> +#define IMX_ADMA_LPCG_AUD_PLL_DIV_CLK0_CLK		81
> +#define IMX_ADMA_LPCG_AUD_PLL_DIV_CLK1_CLK		82
> +#define IMX_ADMA_LPCG_AUD_REC_CLK0_CLK			83
> +#define IMX_ADMA_LPCG_AUD_REC_CLK1_CLK			84
>  
> -#define IMX_ADMA_LPCG_CLK_END				45
> +#define IMX_ADMA_LPCG_CLK_END				85
>  
>  #endif /* __DT_BINDINGS_CLOCK_IMX_H */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
