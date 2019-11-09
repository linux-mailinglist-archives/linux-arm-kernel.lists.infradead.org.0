Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C4F5C88
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 01:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1SBe9q3FCRpRQwZBMWcYyyTxs/Xzer9IooCr+7hThU=; b=NCv8m+z7mxIfQ1
	coR7hgPo+y1s/Q7usm7wmqVTzBMT53nEWN4KUMKb6/YBSbC2P5+/EGANtJY7lOD456nk5ZgyQEQFM
	s7CqhjrnAhoUsJGirHZ4Vlap3DlMPL+9+KIJJiNHQWK5PVEUVOYX9+9VpBLCHkNul3Ha7+iJtrXQW
	MeN9iraoPhjtJSLL4LWZycy8jhzRMxIYrgjmumZTKet/SDs1FluFBmmC6jJy4hiXX92rTnR+wil1N
	HzpdO9E3oZ5lv3wHD81T8qKlQPs6d7QrdCpz+BQIFK6NS/L/7ieXlNbb5+474N7a//bzJHruHk316
	5dsnWmFLUMo5l53OnMAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTEqh-0000eE-Ta; Sat, 09 Nov 2019 00:43:31 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTEqR-0000ZO-FH
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 00:43:17 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 27F203E89E;
 Sat,  9 Nov 2019 00:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1573260191;
 bh=HP0JoQqY6fFFwnhroRKWW+tbc4y6o7uevtlIKKk2lck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Spfis8EPQrT1jmuBWxRN1bYPqN7qI+dZCD2uI6o13I6ZCqKhwoEAAqyIjjXfWx5nd
 WTjfSug/z6k8vEUEb2DynRbA7PSIj3pO2Hhm8GSq9rh9D/LZq2bifJ0+1a6M5ZL3um
 7jlr3PXT16W6oEzlgUptYVjkEjpVYEQF9Bjmenwc=
Date: Fri, 8 Nov 2019 19:43:10 -0500
From: Brian Masney <masneyb@onstation.org>
To: georgi.djakov@linaro.org, agross@kernel.org, bjorn.andersson@linaro.org
Subject: Re: [PATCH v2 1/4] ARM: qcom_defconfig: add msm8974 interconnect
 support
Message-ID: <20191109004310.GA4494@onstation.org>
References: <20191024103140.10077-1-masneyb@onstation.org>
 <20191024103140.10077-2-masneyb@onstation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024103140.10077-2-masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_164315_601783_E173F797 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 06:31:37AM -0400, Brian Masney wrote:
> Add interconnect support for msm8974-based SoCs in order to support the
> GPU on this platform.
> 
> Signed-off-by: Brian Masney <masneyb@onstation.org>
> ---
> Changes since v1:
> - Set CONFIG_INTERCONNECT=y since its now a bool instead of a tristate
> 
>  arch/arm/configs/qcom_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> index 9792dd0aae0c..cbe4e1d86f9a 100644
> --- a/arch/arm/configs/qcom_defconfig
> +++ b/arch/arm/configs/qcom_defconfig
> @@ -252,6 +252,9 @@ CONFIG_PHY_QCOM_IPQ806X_SATA=y
>  CONFIG_PHY_QCOM_USB_HS=y
>  CONFIG_PHY_QCOM_USB_HSIC=y
>  CONFIG_QCOM_QFPROM=y
> +CONFIG_INTERCONNECT=y
> +CONFIG_INTERCONNECT_QCOM=y
> +CONFIG_INTERCONNECT_QCOM_MSM8974=m
>  CONFIG_EXT2_FS=y
>  CONFIG_EXT2_FS_XATTR=y
>  CONFIG_EXT3_FS=y

Georgi: Since Greg wants to allow compiling the interconnect support as
a module [1], should I change CONFIG_INTERCONNECT to be a module? Or
leave this as is? The GPU works fine with interconnect as a module on my
phone. I know it's more for the cpufreq case.

[1] https://lore.kernel.org/lkml/20191107142111.GB109902@kroah.com/

Andy/Bjorn: This series didn't get picked up for this upcoming merge
window. If it's too late for this window (which is fine), then I'll
hold off on resubmitting this until rc4 since I'll most likely have
more device tree changes by then.

Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
