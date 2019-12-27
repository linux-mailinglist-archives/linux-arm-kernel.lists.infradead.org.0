Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B3C12B207
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sbmNMkXQg9LQh7bQyIZgHUlocbNQZ5vUtcjTM24jZU=; b=niI078nW/WFq7n
	Ph76auwmcvBWmYF3XtvqMyQ5aNns6vT5Kodu73HEbHHEGwjxfVjbKJoAUEH9Br+5PI9RV0Gh5oThq
	8R55969sQ4EUfpz24JGDpHfx3DOW1hwZ0+MpgZhpkoxLCDK/SQ+tCC9LhhZpC0zWfgtXkF9SlgtBd
	FCxMhJ2XciotDykiAOQfhp+pjMl+gTkhjgpXxeITF+Uy2jwuryeb2BUJGcGzLXE/zM9MuMOJsh5/3
	ZRu63Uzz6nAP+plWgQrdKEOFPqbx7eePeejYg4Nb1hVhc0WK+UfytwHnPuVbdFC8l+QY1CRyR6eNp
	vvB26gslT8RMmWS9ddTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjHh-0001NP-PB; Fri, 27 Dec 2019 06:39:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjHW-0001Mu-FZ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 06:39:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id b22so11361646pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 22:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=t0JhfQXqwvsrBVHIc9FoCtLnTmKQkndMD2Zq+leqajk=;
 b=ATeg/AZpEVVu/zzKxM41Gi38Tego1wb4/bAhm5+kH/7D3iosOE0ZaLSI4hsJ2sw3Py
 yi9T+xKB8IiYFZsxGDS5EqPNS4pQ3m9uz/n/rILt/Z61xaxMKGgGuApZ2wWNvK6VI/Xc
 1+IKM8EQ1fNer+hMWAou4/OhTnYjoaKcq8oCerlJGjm5iPDAwimFyuMCIWtO1MPlKRsF
 ZxzjGVvdYzTgntX/o2FgtZq0BiGycxuLPuSM0WpjH37YnMmZkuu5iK2KiMnCf87tDLjF
 +NZYtuEqX7qm5nQ1s1MnGonfwqXCxW4u7JygoPXpi/opDP4XG+KlmKUACFoQW7IdqATY
 oqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=t0JhfQXqwvsrBVHIc9FoCtLnTmKQkndMD2Zq+leqajk=;
 b=H+3Qg6RNl5sJqxczfoBmu8flXRRAqnZzCzAB4zj3cgLWTQPg3C2M4IF3JVsVZfa129
 HwMUjbOaJ9qPtMjMIE9/unm3G6vy+6bBj9qIbt9tmEAkKq7hRWlM/Ytm7yzk3qUI9f9X
 QlIhUXZhQQpXUeCThSq0jX0WXE3hJUJwLCpN00zJlUSm62jtP61GafUpLvC+ETj2U1F3
 ZKCD9hln3AGNA1G8l3OTQqxhQATNKBjG7PawxLOJ3fM5S27ys4xwTXS+HVR2xm5a/P3g
 Nw1KgUwQjfUTqBJZSc3Cck3XRqMMB02hYR9tUwPBJW8IqSXMncVPpwI8DGDsowjfQRgR
 1cuw==
X-Gm-Message-State: APjAAAXvXiN0AFyDvciu4RBg2lzP8T0P+K/m9h8HeqiC53dJmdHV3Ay5
 kuG9/G9mmNGhWHgTxCcR9R9uSA==
X-Google-Smtp-Source: APXvYqyFA5E8nGzaiWY8T+cpTP6ABUjEiZB7ONgvKrMEFw6iP/g3fmeY4/Xr2ZWP5NFoXB4htPGF+w==
X-Received: by 2002:a17:902:b609:: with SMTP id
 b9mr50522157pls.70.1577428769647; 
 Thu, 26 Dec 2019 22:39:29 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l9sm35705531pgh.34.2019.12.26.22.39.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 22:39:29 -0800 (PST)
Date: Thu, 26 Dec 2019 22:39:15 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>
Subject: Re: [PATCH] arm64: Add qcom Kconfig fragment
Message-ID: <20191227063915.GI1908628@ripper>
References: <1576850160-1564-1-git-send-email-loic.poulain@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576850160-1564-1-git-send-email-loic.poulain@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_223930_643420_00DF7A68 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 20 Dec 05:56 PST 2019, Loic Poulain wrote:

> Add qcom Kconfig fragment which enables the appropriate symbols for
> support of Qualcomm based boards, like the 'popular' dragonboards.
> This permits to fully support the boards upstream without having to
> rely on downstream deconfig changes.
> 
> This patch has been tested with Dragonboard-410c and Dragonboard-820c.
> 

As Catalin said, this should be added to the generic defconfig. I have a
few of these queued up already for v5.6 in linux-next, but please do
send me additional patches and I'll include them in the qcom/defconfig
branch.

> qcom.config fragment has been generated with ./script/diffconfig
> 
> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> ---
>  arch/arm64/configs/qcom.config | 57 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 arch/arm64/configs/qcom.config
> 
> diff --git a/arch/arm64/configs/qcom.config b/arch/arm64/configs/qcom.config
> new file mode 100644
> index 0000000..9358df8
> --- /dev/null
> +++ b/arch/arm64/configs/qcom.config
> @@ -0,0 +1,57 @@
> +CONFIG_ARM_QCOM_CPUFREQ_HW=y
> +CONFIG_BT_HCIUART_3WIRE=y
> +CONFIG_BT_HCIUART_QCA=y
> +CONFIG_BT_HCIUART_RTL=y
> +CONFIG_CRYPTO_DEV_QCOM_RNG=y

=m

> +CONFIG_EXTCON_QCOM_SPMI_MISC=y
> +CONFIG_INTERCONNECT=y
> +CONFIG_MFD_QCOM_RPM=y

This is for 32-bit targets.

> +CONFIG_PHY_QCOM_PCIE2=y

=m

> +CONFIG_PHY_QCOM_QMP=y

=m

> +CONFIG_PHY_QCOM_QUSB2=y

=m

> +CONFIG_PHY_QCOM_UFS=y

I recently proposed a patch to add 8996 UFS support to the common QMP
driver, so hopefully we can get that merged for v5.6 instead.

> +CONFIG_PM8916_WATCHDOG=y

=m

> +CONFIG_POWER_RESET_QCOM_PON=y

=m

> +CONFIG_QCOM_APR=m
> +CONFIG_QCOM_FASTRPC=y

=m

> +CONFIG_QCOM_RMTFS_MEM=m
> +CONFIG_QCOM_RPMHPD=y
> +CONFIG_QCOM_RPMPD=y
> +CONFIG_QCOM_SOCINFO=m
> +CONFIG_QCOM_WCNSS_CTRL=m
> +CONFIG_QCOM_WCNSS_PIL=m
> +CONFIG_SCSI_UFS_QCOM=y

=m

> +CONFIG_SND_SOC_CROS_EC_CODEC=m
> +CONFIG_SND_SOC_MAX98927=m
> +CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
> +CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
> +CONFIG_VIDEO_QCOM_CAMSS=m
> +CONFIG_VIDEO_QCOM_VENUS=m
> +CONFIG_WCN36XX=m
> +CONFIG_BT_QCA=m
> +CONFIG_BT_QCOMSMD=m
> +CONFIG_INTERCONNECT_QCOM=y
> +CONFIG_INTERCONNECT_QCOM_MSM8974=y
> +CONFIG_INTERCONNECT_QCOM_QCS404=y
> +CONFIG_INTERCONNECT_QCOM_SDM845=y
> +CONFIG_INTERCONNECT_QCOM_SMD_RPM=y

Selected as needed by previous options.

> +CONFIG_PHY_QCOM_UFS_14NM=y

Follows CONFIG_PHY_QCOM_UFS, and should be replaced by
CONFIG_PHY_QCOM_QMP

> +CONFIG_QCOM_CLK_RPM=y
> +CONFIG_REGULATOR_QCOM_RPM=y

These two are for 32-bit targets.

Regards,
Bjorn

> +CONFIG_SND_COMPRESS_OFFLOAD=y
> +CONFIG_SND_SOC_COMPRESS=y
> +CONFIG_SND_SOC_MSM8996=m
> +CONFIG_SND_SOC_QCOM_COMMON=m
> +CONFIG_SND_SOC_QDSP6=m
> +CONFIG_SND_SOC_QDSP6_ADM=m
> +CONFIG_SND_SOC_QDSP6_AFE=m
> +CONFIG_SND_SOC_QDSP6_AFE_DAI=m
> +CONFIG_SND_SOC_QDSP6_ASM=m
> +CONFIG_SND_SOC_QDSP6_ASM_DAI=m
> +CONFIG_SND_SOC_QDSP6_COMMON=m
> +CONFIG_SND_SOC_QDSP6_CORE=m
> +CONFIG_SND_SOC_QDSP6_ROUTING=m
> +CONFIG_SND_SOC_RT5663=m
> +CONFIG_SND_SOC_SDM845=m
> +CONFIG_VIDEOBUF2_DMA_SG=m
> +CONFIG_WCN36XX_DEBUGFS=y
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
