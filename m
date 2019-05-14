Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B78E1CC9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIGN5i7wKANpczJn93E7a5EZiM8jwSqSAneuweO+FrY=; b=XeD6uKku6CO9e/
	jw/n7FF6emPkprHUMdV3GePTb/T8zqW2IJDOi7WB0TcDYwZ4QsjDyLDBbfv6AfSv1uWUZij0TyLWK
	AxLbKXQvSa5+l90+NEB/cBTUb9CSiEJCss7nHPnumjyiylz+pUM1IGzxcTSMDkkp17XgAtNjMCEzR
	3c0gyvwVr4/OxI1DTODdFTdD+M32pTJpJptwo3UJI+4pz5tsXOqDGNuY3Xm9AGccfK+vQ4SI7wLWT
	swrIrepRQMqQlSBkY00zAQwlYWqrCwGR6cVpeC2rywXdnihLhHyp3lkmoyHNoLt67MTjDCPW3aEK5
	Xr8fF1rSRrlaAyS2xRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQa2H-0005df-U8; Tue, 14 May 2019 16:12:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQa1z-0005QK-VI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:11:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id h13so12327101lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PFgQt6BW2pIoMsM0lCcv9vdjEyov9kr04yFP2mWeZfM=;
 b=YmXRWFM7VxahkVGZN3+5ZvbjiZ09JClcYGdbAQxSqxO449WgZ2BzdVLc3XU/4bvo3V
 dWnluPTo2V6V2ArC6gmUMDcJADsW4Y4/P6s+uNNXudme6j/TUkNjmDHo3qg5KMnOVipK
 epTijDwOTpV7gwKUW/w8mGmR/mgxMYoMdNS20QjcmgD6ONOuw3iWrR/NLoH/6lpJsPzl
 awDuQp4UU5IQsPMgD63VYMBDwVNqWM6qoiLUBwRAZnwNzUIRj1FhdMJ8znml+RUoL/iy
 /03cpZXc+liWkKM7CZMbC8f8belR2Xa4+ptHQA+VSFF5j5VxdMRCefmlGbNNeM13grD+
 8lcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PFgQt6BW2pIoMsM0lCcv9vdjEyov9kr04yFP2mWeZfM=;
 b=ISVvASnV8jprVRxLUyTjz27G4U7qsLMDvCLnakjdXfYZoIqbLWncQfl9ALNwdAXBxm
 UJyakqjE9oiSkQAsLQxui70nBmJukUF0XoNMsqvcvj3WfydUkJcp24G8ynw2Y/HBDBUV
 L1c23VD5zRdehKgaAyyobEII4woou/Yhc711G0/5mcsA0WWJTrf9oZwOgx1pY5kEoxpy
 sbe8a1OEbnAtiJtaMwrRb+YrbFMRtog5vAvATJeh41AL0YzgCmlIHFNjniYpLSF6CY1K
 JIK52L9/Fes7pC9wB4bxa5fDcOAmKFR9eVoN2223p3sUb0s00AbsfJuKGqpa6i9xi8km
 dvkQ==
X-Gm-Message-State: APjAAAUPsFPAhS2xporoFPGfnW0XVqmMnaYLv26kWCTzDhFZQhZDJebA
 MQkSPafTTrU4EOL19V4zneVRqg==
X-Google-Smtp-Source: APXvYqxUGvPXQ7Qq4tpSwPhp8W3XwJW8r6LU07ubRPD8vQNCN8xqRM53UxJbMv4Q7yRTfB+GMmwtag==
X-Received: by 2002:ac2:4899:: with SMTP id x25mr13100139lfc.44.1557850314156; 
 Tue, 14 May 2019 09:11:54 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id s26sm3588430ljj.52.2019.05.14.09.11.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 09:11:53 -0700 (PDT)
Date: Tue, 14 May 2019 18:11:51 +0200
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCHv1 0/8] qcom: Add cpuidle to some platforms
Message-ID: <CAHYWTt3LAmT4=a9=e6Y_bP1okH0-3zM4i64p0ot+8chDG-DLhg@mail.gmail.com>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1557486950.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_091156_525155_BE705CF6 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, David Brown <david.brown@linaro.org>,
 Andy Gross <andy.gross@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 04:59:38PM +0530, Amit Kucheria wrote:
> Fix up a few entry-method="psci" issues and then add cpuidle low power
> states for msm8996, msm8998, qcs404, sdm845. All these have been tested
> to only make sure that the C-states are entered from Linux point-of-view.
>
> We will continue to add more states and make power measurements to tweak
> some of these numbers, but getting these merged will allow other people to
> use these platforms to work on cpuidle, eas and related topics.

Hello Amit,

Your subject looks a bit weird:
[PATCHv1 0/8] qcom: Add cpuidle to some platforms

No need to specify reroll count if it is the first version,
and there is usually a space between PATCH and reroll count.

git format-patch [(--reroll-count|-v) <n>]
it should take care of this for you.

Please also add all that is on either to: or cc: in any patch in the series as
cc: for the cover letter.


Kind regards,
Niklas


>
>
> Amit Kucheria (6):
>   arm64: dts: Fix various entry-method properties to reflect
>     documentation
>   Documentation: arm: Link idle-states binding to code
>   arm64: dts: qcom: msm8916: Add entry-method property for the
>     idle-states node
>   arm64: dts: qcom: msm8916: Use more generic idle state names
>   arm64: dts: qcom: msm8996: Add PSCI cpuidle low power states
>   arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states
>
> Niklas Cassel (1):
>   arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states
>
> Raju P.L.S.S.S.N (1):
>   arm64: dts: qcom: sdm845: Add PSCI cpuidle low power states
>
>  .../devicetree/bindings/arm/idle-states.txt   |  7 +++
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  2 +-
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         | 13 ++--
>  arch/arm64/boot/dts/qcom/msm8996.dtsi         | 28 +++++++++
>  arch/arm64/boot/dts/qcom/msm8998.dtsi         | 32 ++++++++++
>  arch/arm64/boot/dts/qcom/qcs404.dtsi          | 18 ++++++
>  arch/arm64/boot/dts/qcom/sdm845.dtsi          | 62 +++++++++++++++++++
>  7 files changed, 156 insertions(+), 6 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
