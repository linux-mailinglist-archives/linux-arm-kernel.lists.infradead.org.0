Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B75D72198
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHeBsFqPPbXXuPu0K9lpMHqM2xDlOHcHCCJa3kACIjg=; b=t/ge9m7z+5z1S6
	CDbe3eFMmwZo5gKTAE0iADtzHCOkRE3FoDQs9/fo8AF/m7rjisllTyPrukww1ZJ9Qi+EbDn622UHO
	OfbYoLMrOyzVRWrZQtKNl/nbAdOcx0nwiGj/OMCBMf4xrtBDy6SjtZRTfUfZ3z2VhkNzJlnwXviZI
	xIJXVI9FpcSjID8FSev1rBmLbKu/d1stXLBkzq0sGi8jMwKHSrZJsn7dDO8GFWNAG7XcYVTPuWkWh
	7YIXfLunTYP4jzlk07S9Cl/AisBqBRBVKszh7GIUyqZQBdGsnAHlDPFWI6K1qGQEyVZwkPPMS9SBw
	5eq/uaVe28i/aFdtIAHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2Ql-000621-Rs; Tue, 23 Jul 2019 21:34:43 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2QQ-0005xs-DV; Tue, 23 Jul 2019 21:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563917650;
 bh=qgUZqMvf9CDgIeP64ai2WtrFeE/F4JInROCU4QA90us=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Jq8Vzi93QsM0GOvk8S6IRQWD8YncdKgxoyQKOPJysWeKwghvIqEUDfJlEE/k2mCLN
 vlo3j9sM41UrgCryrL1bKbNRL+g2Qsudv1ZbWtXgUDi5HY5VlLkE3Terx5YY1U/Zjk
 4u53L15HcmbCNb0mHASCROmOPEJUyYnLZGlUVrQE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.115]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LuP5z-1iW8rV0G6p-011n66; Tue, 23
 Jul 2019 23:34:10 +0200
Subject: Re: [PATCH v4 7/7] arm64: defconfig: enable cpufreq support for RPi3
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 linux-kernel@vger.kernel.org
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <20190612182500.4097-8-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <98a6dccd-b834-3596-cc4a-e97ebc9b01cb@gmx.net>
Date: Tue, 23 Jul 2019 23:34:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-8-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:N3LqJoGUpptYNWRuJlS5DD9eWKeIqYHeFd/EMl9rCmCiDKtzLpx
 //855m3bntUOdB0/cZOBDSX4i4ubIEVPPWa+qMQGV2jRUPAZ2Gi2j7ja9rSqfVQbdA52r41
 YUPsgu3fQ5FFvUhzp8d/LqGMOv2i+VtAnWyoDsiC40arjmmFwW/SmyZJYnu0jxKI0hUghrq
 YU7RDm7dg3Hk/VTcCwvMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3DbHgGNVAlY=:3Fr6YLvCxR1vG+tDZUofNV
 Zvz0ywwaj1vMIeNiio2oorANWuTQGi/LnrwlYKLD8l+2b7jv49lU+pYOtf/hcOhH66bXzLoG8
 KczZSzN8EwNrUqyyZJWtpzip3Ct+q+WHLQ6hRnbcBDaq2c8TLprDFC0yGNWrBooTJ38NAKEVD
 hPsTk6DmMIVzVW+ZvxiO1E4PKiZwHDCGbenZjvKMJLLFZd9AfWs5NvBn0LgmEbHRJST3moXyS
 KBMFAeDh7fNhopRfPI6ha1bGYhH/wydlgEHyHoB2bObAFuw98m66eWT+HgeP6au2eLvH0JRgM
 3HoL8twG+thkckIFHvigdWmZnt6u6Hv/ZfLGeIg8RC3qPkqfsFQu69mzfcFcfRnfg8xmc5DPj
 QO+8CIU/BiAYZ/3e6slmOEUcuU+9VG896hiDpgDQhN6iaUkPPhR/QiSKI2KUQG32bdb9ugWPV
 zk2N+CKqPkQEpawLV1RpfVATMRgMrh26lYnB45cWH/x+Wq9YkuzgwpNCYzMqkgT8CYn/Gchrl
 1LpKDBRPhZMXaEJDcjpLhA8I4721UA1mgbHMk5CC4sLWSRtRfUxoqZ6xtTW2lpHw99fjl/ix5
 wPSQFMJt1SbNJXqDaIOqSL8d9b+q11vKNTpgQHBh78dg/fUapfZPBxJFydogyNJAlZ6nFsaXg
 /KxBCkVF8LU2a2hbP3jWHVnlzp2uQAjiVNPJFqL7ZHIxUciPKCHdX89M7EtNc5CMB4/Yo+tL0
 gpsw0X0fC7Z/mJAIRoqsMkcgc2xgxBpd4dHKZEi1PYhHUcsy3tSNQCZllxHC1XHWYJ/d9w9bS
 u94G3LkEDfjS8c3WTU3bpuQLEk3K/61iU4n6UFC4yxm6fikboMUf4F0OAAm7KZ+b0tLSROmbJ
 g6dggzlaqucuBOM+dXzjAaFJnnQxWQLgJYugxMnOCI6iFTfV8qJUddHkcyewjk6Eu0VrD6mhI
 re2qXMNEhvSwsHj7twmxwKivHO8RleJZ03E5CLe9WlZy87D9oGLHi5vWbrk/i2RJ7FWcOJEby
 lpMlR6xU6hrE7+ckmzaLdzVaHk+2fyoYg5QSUKKTm62XYwIJpyEtFSDmFEu7KN08m7W8vgMTx
 sjCdFNQnalq4uw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_143423_055224_93CC4F62 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Am 12.06.19 um 20:24 schrieb Nicolas Saenz Julienne:
> This enables both the new firmware clock driver and cpufreq driver
> available for the RPi3 family of boards.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>
> Changes since v2:
>   - Build both drivers as modules
>
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5a8e853833cf..5e322e61b101 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -83,6 +83,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
>  CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
>  CONFIG_ARM_SCPI_CPUFREQ=y
>  CONFIG_ARM_IMX_CPUFREQ_DT=m
> +CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
>  CONFIG_ARM_TEGRA186_CPUFREQ=y
>  CONFIG_ARM_SCPI_PROTOCOL=y
>  CONFIG_RASPBERRYPI_FIRMWARE=y
> @@ -653,6 +654,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
>  CONFIG_COMMON_CLK_S2MPS11=y
>  CONFIG_CLK_QORIQ=y
>  CONFIG_COMMON_CLK_PWM=y
> +CONFIG_CLK_RASPBERRYPI=m
>  CONFIG_CLK_IMX8MM=y
>  CONFIG_CLK_IMX8MQ=y
>  CONFIG_CLK_IMX8QXP=y

Applied to bcm2835-defconfig-64-next

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
