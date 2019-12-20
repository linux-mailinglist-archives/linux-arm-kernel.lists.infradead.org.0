Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BF11282A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 20:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KB1jDJ1/44sXAmbuebaKs1jW51lAlwGTcwtHxLZIDRg=; b=uf6wIyL8n1u51l
	C54ZOBeK/+ECovAHKv8upcf57mYSkOkfvwAGOFDUtKvansrxHOnlvIy2huv2VV5WqIqj0DC+q7Psr
	Z52JJCraMDg7w8xgk2syGnlx2nctADKRLespCfn3ybqDVGVMnL4IztIXbUDTQ25rTLZXa4+1o/z5o
	7l/hhOAg7OFRvBcBkOpoN+OdXS0oTJna26INreIu99H9CWFGsKt/cva+CT9rA5QbQxHYMiyJ1C5QH
	xHxnqpL9LwwE1PTl5cRpNoZbpI8S1iMWANij8OG10u+Qx18xH5OXAAj/alVG6ri5qmQziCCstBJrS
	iNvApz+5uud+HJm5OphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiNk2-0000cF-O4; Fri, 20 Dec 2019 19:15:14 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiNjm-0000bu-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 19:14:59 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id A0BC93E8F9;
 Fri, 20 Dec 2019 19:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1576869295;
 bh=LluZtUkUbAmOdVnGAE/kzWOQmltL3S4yn/9qvQHJL00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uOxTe+Lcc2uGCoTRc6a4LloepZ9d9IIksXtI9wSFYwrlYe6xKNpKLkk9F5Bc1QQp9
 /1GNdv1P3wpMtKD3dW9i/L7sOEDSivv11N/TasIYPUaFMSCpYSe37g5Geko8QuYvIf
 mLdL32qYWdJbC44zy8XVbHcumMV2HturhkAafoQE=
Date: Fri, 20 Dec 2019 14:14:55 -0500
From: Brian Masney <masneyb@onstation.org>
To: Loic Poulain <loic.poulain@linaro.org>
Subject: Re: [PATCH] arm64: Add qcom Kconfig fragment
Message-ID: <20191220191455.GA6954@onstation.org>
References: <1576850160-1564-1-git-send-email-loic.poulain@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576850160-1564-1-git-send-email-loic.poulain@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_111458_403040_6C6A3973 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 02:56:00PM +0100, Loic Poulain wrote:
> Add qcom Kconfig fragment which enables the appropriate symbols for
> support of Qualcomm based boards, like the 'popular' dragonboards.
> This permits to fully support the boards upstream without having to
> rely on downstream deconfig changes.
> 
> This patch has been tested with Dragonboard-410c and Dragonboard-820c.
> 
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
> +CONFIG_EXTCON_QCOM_SPMI_MISC=y
> +CONFIG_INTERCONNECT=y
> +CONFIG_MFD_QCOM_RPM=y
> +CONFIG_PHY_QCOM_PCIE2=y
> +CONFIG_PHY_QCOM_QMP=y
> +CONFIG_PHY_QCOM_QUSB2=y
> +CONFIG_PHY_QCOM_UFS=y
> +CONFIG_PM8916_WATCHDOG=y
> +CONFIG_POWER_RESET_QCOM_PON=y
> +CONFIG_QCOM_APR=m
> +CONFIG_QCOM_FASTRPC=y
> +CONFIG_QCOM_RMTFS_MEM=m
> +CONFIG_QCOM_RPMHPD=y
> +CONFIG_QCOM_RPMPD=y
> +CONFIG_QCOM_SOCINFO=m
> +CONFIG_QCOM_WCNSS_CTRL=m
> +CONFIG_QCOM_WCNSS_PIL=m
> +CONFIG_SCSI_UFS_QCOM=y
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

msm8974 is arm32 and should be dropped.

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
