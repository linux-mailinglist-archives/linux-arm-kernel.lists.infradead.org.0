Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03E9188666
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaeojGFB3At+y8KEVxhiFrCebtgnLc1OfLWHawwtaLg=; b=hLO+eaAYHKFh7C
	Zm13nm+nH4XY0e/eFEiH8w2V7pU2r1tBR3Vxu9/b5Pnaw4Snc0huxSfvbZZv4lRjCjBpEnQu48UP6
	mvd6x9rTORIc6Bbpl3yTSXfKDp63ah3CbBAXVUOlYUK3cV/vd5BMuPSxHffjW5OmkD+QkvwE3dF5W
	7uzBHNodvXVPbO9Z+Aju0vqbWfFGAODbb8guflZRG4ZNP8ByNELl+P0fU4EzRHIYQR+7o1zCiITTF
	0vS6bFy5rXyjJFEU/BNTLgWg0e+EKt+gDqs51RSvjWHpJuaJgigTRjh7kPCAJLOfnPCYjDkjHiuRj
	5X1h509f4PEWgp6KwfmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECfz-0006vk-HF; Tue, 17 Mar 2020 13:54:35 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECfq-0006vH-06
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:54:27 +0000
Received: by mail-ot1-x343.google.com with SMTP id a6so21601314otb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZmJ1DX6hWX/M0tJ4tb+T+vnuuVl9PBhyVPx9KWg+TfE=;
 b=oq96GvwKE3QjPaVLIL6puTSWYMA2JZDVaTmuQkU5YS2oAf/mr3PnEKvKHJR0ZRhtIa
 co1ejwVmMjf45HEIGsFS7ucBT3DK6y8RniLfZE9atxfSrHzRC4LR7/HbpPoNhsm9Csw9
 4WgJovPpiFVSd6SpId/tkc9AFWMsO7+/Fgrhd5ZALH+GelrL93lZpFiNJkbpxOyGI9jj
 cfuiFY4wiYKRNaziZ2clJGs0DujKo7wScsDUBJMincBMB9URA1hz8xIaq7/5PVaD2a+m
 3b74LJeSYTOYbUGyuvbKRYBDDMHveVikkENWoxUtiLK++DNrQ92vG/eDVnrxruhpAR9B
 pdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZmJ1DX6hWX/M0tJ4tb+T+vnuuVl9PBhyVPx9KWg+TfE=;
 b=qzJe4J9niadn27Ir90YUSwPaoCOhQYHHyMLoGYuzCYRjC6KjLr3rUOiThFBWIfoNbm
 hdv+3J+9fjcyVr7ha5Tis3ydnIjc/RwOqRjSf8/JzsxRZnY4Epy9IQWP9bcg449OpSyK
 9cwQFIgPoYs/FAGiUhyxlBi7+cyPrEhoK28bLJgz5C8OljNkIDPjZ8+H3/gLBBOHqM7S
 3M6t2+KQ67xIXdXe9Rd1Sw5yuCw19OR5wwRbcmd5NaCWMrkpunM8Xnv1vzUngoryf6J0
 ghf7e4oBdMQh2DAlc/ABI8/SeOer6twOZn5NDBLiixpaj0I97WkYPAZlZ8enWQhPRZbU
 NH2g==
X-Gm-Message-State: ANhLgQ21KScVobqdnwhZPsBKfMRxCFzQvgZdfrOcC80DYGh/n00qZHvp
 kjtX9vvYTowwNBE5fzSCgpBUtZCeGPymaK2yo4XIZA==
X-Google-Smtp-Source: ADFU+vthRF1CGXBIcX8eCWjLSUuv0ijsh47UzzDn/jzCwqg/7g0xalXEDtotKi4n7rENshDbZBHeysQsEaf4csLdeEE=
X-Received: by 2002:a9d:1d43:: with SMTP id m61mr3763477otm.91.1584453264637; 
 Tue, 17 Mar 2020 06:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-7-robert.foss@linaro.org> <20200312053544.GY264362@yoga>
In-Reply-To: <20200312053544.GY264362@yoga>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 17 Mar 2020 14:54:13 +0100
Message-ID: <CAG3jFyuEWqkWSZzVt04y4GcO=0LUwLq4bHe_=dirWePdVW+NSA@mail.gmail.com>
Subject: Re: [v1 6/6] arm64: defconfig: Enable QCOM CAMCC,
 CAMSS and CCI drivers
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065426_069799_D328F84B 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, dinguyen@kernel.org,
 leonard.crestez@nxp.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 06:35, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 11 Mar 05:35 PDT 2020, Robert Foss wrote:
>
> > Build camera clock, isp and controller drivers as modules.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>
>
> Thanks for the series Robert!

Thanks for the quick & thorough review, I'll send out a v2 with all of
the feedback corrected.

>
> Regards,
> Bjorn
>
> > ---
> >  arch/arm64/configs/defconfig | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 4db223dbc549..7cb6989249ab 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -376,6 +376,7 @@ CONFIG_I2C_MESON=y
> >  CONFIG_I2C_MV64XXX=y
> >  CONFIG_I2C_OWL=y
> >  CONFIG_I2C_PXA=y
> > +CONFIG_I2C_QCOM_CCI=m
> >  CONFIG_I2C_QCOM_GENI=m
> >  CONFIG_I2C_QUP=y
> >  CONFIG_I2C_RK3X=y
> > @@ -530,6 +531,7 @@ CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
> >  CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
> >  CONFIG_VIDEO_RENESAS_FCP=m
> >  CONFIG_VIDEO_RENESAS_VSP1=m
> > +CONFIG_VIDEO_QCOM_CAMSS=m
> >  CONFIG_DRM=m
> >  CONFIG_DRM_I2C_NXP_TDA998X=m
> >  CONFIG_DRM_NOUVEAU=m
> > @@ -732,6 +734,7 @@ CONFIG_MSM_GCC_8994=y
> >  CONFIG_MSM_MMCC_8996=y
> >  CONFIG_MSM_GCC_8998=y
> >  CONFIG_QCS_GCC_404=y
> > +CONFIG_SDM_CAMCC_845=m
> >  CONFIG_SDM_GCC_845=y
> >  CONFIG_SM_GCC_8150=y
> >  CONFIG_QCOM_HFPLL=y
> > @@ -762,6 +765,7 @@ CONFIG_QCOM_COMMAND_DB=y
> >  CONFIG_QCOM_GENI_SE=y
> >  CONFIG_QCOM_GLINK_SSR=m
> >  CONFIG_QCOM_RMTFS_MEM=m
> > +CONFIG_SDM_CAMCC_845=m
> >  CONFIG_QCOM_RPMH=y
> >  CONFIG_QCOM_RPMHPD=y
> >  CONFIG_QCOM_SMEM=y
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
