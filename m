Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12EC18D8C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 20:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDOAjpBCq8aVVSK9oMGCyZr3SmJVT6NWo6nawE14hmA=; b=JyIdDnwaRhpSsq
	xDOM4Kn1fricxwwyb2U6Cocv4fHiKDarsZyWuz8KRI56s9V/GDWt97nKWYRNUQlOhvYQk34zYZdkD
	UyptbtR7nFUOfsE7mLixibsrPHYa2AUaqoDvwZSC7Q2v5j5DIaBsf+uL6zbHqjGtvAWd8gKJrImgK
	qWFBqblRECOLhnsMM+YDmpoA/XWRf0UGGGHHiSGYQiBuBl8SO1q6UKk6ukvTkeW47h2FOKNqQvUW+
	hKr5PEijqq6zbQLAs/NLJ85sMEZrvHah5OT8hmahp5VTXYWQAM+RPJ+M4pX7YXotdOoM4qJu/39Vk
	v740kbN355PY+Ds1JkYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFNhC-0006nY-Jg; Fri, 20 Mar 2020 19:52:42 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFNh0-0006ll-ME
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 19:52:32 +0000
Received: by mail.z3ntu.xyz (Postfix, from userid 182)
 id BA59EC43CB; Fri, 20 Mar 2020 19:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1584733946; bh=MDnzSJT+llofSXN9pFcQrkcAec3ckxZl7QrMwV659OU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=aV5+AQ5HFMQtjamOGfq2RPgVngbnXZM/kr1CKeliXJGmCvn29OoiLOtA6k1WRlax7
 ppDPVYf6XCWEK9PcBUBVZ1Xni7o+4PhcPo24OtDDVKzAeMh6FFkVJUUdehwdS4CHkD
 yWwVP/6VCUwDibK8MTf/YgWud5NfbK1AkV6/wBT0=
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on arch-vps
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
 PDS_OTHER_BAD_TLD,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.4
Received: from g550jk.localnet (80-110-124-168.cgn.dynamic.surfer.at
 [80.110.124.168])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 7BB74C43BA;
 Fri, 20 Mar 2020 19:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1584733942; bh=MDnzSJT+llofSXN9pFcQrkcAec3ckxZl7QrMwV659OU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=D3dkUm3eV3UFiDyYuYr9T3nrTLJiA18jxrZ26rNJ/7pLpyiLXTm1wf6cEuMUKeMhc
 PDTdZxAD0QrTDo0qFjaXiqDhT3hLDf4SME6700HUqDMR8nbCvYuR4j7xFjEiURtWh1
 TORTze3yF0dIb1duzBBDNGWr81ua4lgRGNUpmH7E=
From: Luca Weiss <luca@z3ntu.xyz>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com, marcin.juszkiewicz@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 6/6] arm64: defconfig: Enable QCOM CAMCC,
 CAMSS and CCI drivers
Date: Fri, 20 Mar 2020 20:52:20 +0100
Message-ID: <2523204.mvXUDI8C0e@g550jk>
In-Reply-To: <20200317135740.19412-7-robert.foss@linaro.org>
References: <20200317135740.19412-1-robert.foss@linaro.org>
 <20200317135740.19412-7-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_125230_944681_01D5D775 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: z3ntu.xyz (xyz)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Dienstag, 17. M=E4rz 2020 14:57:40 CET Robert Foss wrote:
> Build camera clock, isp and controller drivers as modules.
> =

> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4db223dbc549..7cb6989249ab 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -376,6 +376,7 @@ CONFIG_I2C_MESON=3Dy
>  CONFIG_I2C_MV64XXX=3Dy
>  CONFIG_I2C_OWL=3Dy
>  CONFIG_I2C_PXA=3Dy
> +CONFIG_I2C_QCOM_CCI=3Dm
>  CONFIG_I2C_QCOM_GENI=3Dm
>  CONFIG_I2C_QUP=3Dy
>  CONFIG_I2C_RK3X=3Dy
> @@ -530,6 +531,7 @@ CONFIG_VIDEO_SAMSUNG_S5P_MFC=3Dm
>  CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=3Dm
>  CONFIG_VIDEO_RENESAS_FCP=3Dm
>  CONFIG_VIDEO_RENESAS_VSP1=3Dm
> +CONFIG_VIDEO_QCOM_CAMSS=3Dm
>  CONFIG_DRM=3Dm
>  CONFIG_DRM_I2C_NXP_TDA998X=3Dm
>  CONFIG_DRM_NOUVEAU=3Dm
> @@ -732,6 +734,7 @@ CONFIG_MSM_GCC_8994=3Dy
>  CONFIG_MSM_MMCC_8996=3Dy
>  CONFIG_MSM_GCC_8998=3Dy
>  CONFIG_QCS_GCC_404=3Dy
> +CONFIG_SDM_CAMCC_845=3Dm

You seem to have this option twice in this patch.

>  CONFIG_SDM_GCC_845=3Dy
>  CONFIG_SM_GCC_8150=3Dy
>  CONFIG_QCOM_HFPLL=3Dy
> @@ -762,6 +765,7 @@ CONFIG_QCOM_COMMAND_DB=3Dy
>  CONFIG_QCOM_GENI_SE=3Dy
>  CONFIG_QCOM_GLINK_SSR=3Dm
>  CONFIG_QCOM_RMTFS_MEM=3Dm
> +CONFIG_SDM_CAMCC_845=3Dm

^

>  CONFIG_QCOM_RPMH=3Dy
>  CONFIG_QCOM_RPMHPD=3Dy
>  CONFIG_QCOM_SMEM=3Dy

Regards
Luca



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
