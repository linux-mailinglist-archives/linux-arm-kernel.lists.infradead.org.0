Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1A6387D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WqwSuKhmAg77Op/lBmvN3lvd50DBv7RIzAMOZgNd4k=; b=HUjh24kDpUE2Zc
	xDxWyxFjsyGcVLtUzNHZxivGJm128PV3rAd30tFq2ZDBmrey9GrjUDUbtoLRQ332WwpOL/jCch1Qv
	6IEv9rOUXUH1Q8ybc0WcR224qpJWjdlNe39y33iwANe4PoHLxspUihWyYyi2cwrRg4I1a133toG6C
	+EHJ0O81gV11cn+Pwjv/LcFzhyyIn9El7uhaQY6OWMpLNKReVMPUb2itBw12jT/xTqsP2rJZa18cA
	ygtusooJKTPOQ/127nTo4f8YmSSvM9No9cJv/F7b4/IT23agriGJYACRi3jFUhYmAfHzr8wpeW410
	VF1xuBddRTvl9znE1KXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBym-0006jP-Qe; Fri, 07 Jun 2019 10:20:12 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZByW-0006iz-T9; Fri, 07 Jun 2019 10:19:58 +0000
Received: from [192.168.1.162] ([37.4.249.160]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MBmDy-1hPFnq3Uia-00CC77; Fri, 07 Jun 2019 12:19:38 +0200
Subject: Re: [PATCH v2 7/7] arm64: defconfig: enable cpufreq support for RPi3
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-8-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <431a1f0c-8bc8-5c9b-7fa2-f293a2846ce3@i2se.com>
Date: Fri, 7 Jun 2019 12:19:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606142255.29454-8-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:09PmIyPrq3oDWWfzzNFVNklZb0/fNgRWdtV+WDNiSybbPuWbl1S
 gn5ZCLMtkTRonHU3RKBBT91U6MUg1U0BURu+WmhW0euSLUKls8EKDNHqAfve9nI7NMaUBp5
 YkFjMYTc2og/a12gf4QjQb7WNK4H8SvQbE4SZZoXuHkHXkbZ59T9zJshhuMayxpsUsN3H44
 55bykqcVvTf8/wffQiP+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lLfGaMPR4yI=:iCm6gyvGTcdNde4g/GNPsF
 DOMOvdjf3rfYPFalaOgxIoNXRO6io92hou+dyFAn/AGtWong8yie/9AJ/xZnATTR4PTCBvZoh
 oHKoRhhOUqVTwdxC8zKLcfUeoGN74Ir6ISFgmEkAJhT54Iq7wUHVlDP/owGjdv9PFgeUvvXKU
 4QJ/SmjPIJz0qlrIgkImdie0Jze3ymcpGIRcrm5TcOqu9LdhCvRM+mdHIz+Cv6EglQbvPuCc3
 R1QvoWTF/gmfPfBJ6uSZ4k4wCDoJt2lsaggmZaW56vIJ0O2PPxR3gy9n/OVm36DZ1Muk5XoW1
 Psld0DjyMCbvPqBBUxfyN6hbr3jGYAYxcnb2cTLUYsUk1UWy5pqvXTJLUdrucA7IXR0vGlOCE
 lbQvwJ4WolnTl0i1/0fSS0xquo75n/KwdUCc/3CPq80B6lHRRU3Fx3dxVrY3UN7JRBbV7+FDY
 O7WprUd64hoVA4m49xsj2QqENDHRtdeDkd5x7D8KBI57BBIKlUOG/CExPsg6YuJidXe0RAkPp
 vKhOPNBo2oTGMlKVesAnIC9TVqD/0IqORQbclHtSL8rt51P8sw7Uct5E0H4RhNpeB1SCEfTRU
 h/FFHxtY9GMMWMc40E96Susb4SxSF4M3Ry8g+YPHmiMY/hUNG5XxnoYrDTb3WECfv5xjS4Nk+
 SJyPH+oPD3q9Ubotum4i5E6TJSFpKodugNSxH5SQijFlluIMk38aHKmcU7iKwfjf3cKNTrnWO
 VMI3AjeIeJsPlr+hOfYzBnQJBo/XX5weW3CzRfXolB4AAmhe1ciDOxQBBqk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_031957_237341_E0966234 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, rjw@rjwysocki.net, Will Deacon <will.deacon@arm.com>,
 mbrugger@suse.de, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, viresh.kumar@linaro.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 06.06.19 um 16:23 schrieb Nicolas Saenz Julienne:
> This enables both the new firmware clock driver and cpufreq driver
> available for the RPi3 family of boards.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4d583514258c..3b7baffb3087 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -82,6 +82,7 @@ CONFIG_CPUFREQ_DT=y
>  CONFIG_ACPI_CPPC_CPUFREQ=m
>  CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
>  CONFIG_ARM_SCPI_CPUFREQ=y
> +CONFIG_ARM_RASPBERRYPI_CPUFREQ=y

the arm64 kernel tends to get very big, so i suggested to build it as a
kernel module.

Any reason why you choose to make it builtin?

>  CONFIG_ARM_TEGRA186_CPUFREQ=y
>  CONFIG_ARM_SCPI_PROTOCOL=y
>  CONFIG_RASPBERRYPI_FIRMWARE=y
> @@ -639,6 +640,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
>  CONFIG_COMMON_CLK_S2MPS11=y
>  CONFIG_CLK_QORIQ=y
>  CONFIG_COMMON_CLK_PWM=y
> +CONFIG_CLK_RASPBERRYPI=y
>  CONFIG_CLK_IMX8MQ=y
>  CONFIG_CLK_IMX8QXP=y
>  CONFIG_TI_SCI_CLK=y

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
