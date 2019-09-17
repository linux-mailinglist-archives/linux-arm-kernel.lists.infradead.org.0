Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDFCB518B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPeZ179QOzog6ymjKkh56L6EcSZEIGzXYbWUira4kQA=; b=qysOpmMoPK/w8o
	vm8EI9vQ6W9KKYjY6v/Lhk8skAtht13EZn9GJGcjQGDb224ILFnIsq88VyuAGzhKi7xNY93CrHyJ2
	eZ/dg4t9OTGjAdfUkOvbw0kFbH+eStmFJQBmd7H24yjhh/ajMpxec1+xCs/JsBZPx43KmL6Bt5XxQ
	SPEjgsNphI+szEKQBSPgToSkhZTQ6goLPfM5NyBVOGxtKdKoM+m9LUEl9sRQ+K65nos1AzGWiOvLu
	EG7w3od2diJgqiWnhvXtJgzgn3aJyvP+8HVYr07H6jvdjIAfRoVM6bKBZ2YN3G3Td4kdTWJrm99Rk
	n9432dVDqYmor243oAgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFR5-0007fx-Av; Tue, 17 Sep 2019 15:30:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFQt-0007fZ-Hj
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:30:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id y23so3996048ljn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 08:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U7U8moLlDVowM942w0wFn2RDx3UpoaT8o6vvEjgsH5E=;
 b=qxSFeRXgApl3/YAkpiP244gkuvCu9gZE94ZIDwUGLqD5lgQQ+mBZ0HPqUhw8mZDIW6
 /A7Co64J1fVu2rmy4DGFujlNDV5XBxV80ZjqavpL5yrgkFvGv/LB+NNM/+txKoo1pGGq
 Y2la2ewb2OmImkkIoXLJA1vMOlx603madR3LmC+UsUTYcI6/5yAyljZetPncJD5NenMx
 JH7DJxKjRuEiUGH+lRXlTRv+0QsWincFlXNBNUWZ9aHru5bLVNLLWAwPoQCI1sLf+dYg
 6/FDTDLVstu08jcpXq2zBvfcVQAJq2VdN59mvBKfAIAiW57CNwpQ5H+9vuv+3KTWL1/q
 Wtfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U7U8moLlDVowM942w0wFn2RDx3UpoaT8o6vvEjgsH5E=;
 b=Bjl/id/i2dYpE+HSJwX0iTuv29MDyMxKFOOvQwIHJX0A+rn/+dr/MZiy3mnIjy2Eu2
 SC9jbNC13nr9uyFqrSLur5vgCk12RQN8SPuerqs53DpwDKtfISuEn+o2d28utMd8iARD
 3t0zJuimKl1UxPwhMVr08MMlRcQXohIMhefaG8rIGrFDBV2ZNkhBhUdhFfM8yr8qM4OL
 IDnTPGGU7+ow75oNRv2XtcP2jirJwDECxBllnnC47+OZStFKcTjb2m4RJYrgz1GEzfyY
 f5Xjo3/MVE8tiDix2DQ3CqtCCq/CKVInvwOettti1bNKyHHdeOPvscPS1Y8tqRByiQ+d
 K3Iw==
X-Gm-Message-State: APjAAAUfaZV1bQKIpyf1YnxeoWDv+V17VIcNz6wV161n8rqgiBQ37VbH
 KQVEUkeBEUxs9Xa0M7xtRPfdn6zY7XV6PWgfukU=
X-Google-Smtp-Source: APXvYqxFRbsQ6+Zafm4+WO/QbgGTy9wabeK8fsemf1KaFpUaUUgPvuf3wzttSsDKD98BHoTQQP+cGKhnHgmr/RaBwW4=
X-Received: by 2002:a2e:8e90:: with SMTP id z16mr2303904ljk.178.1568734219583; 
 Tue, 17 Sep 2019 08:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190917143714.12876-1-marex@denx.de>
 <20190917143714.12876-2-marex@denx.de>
In-Reply-To: <20190917143714.12876-2-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Sep 2019 12:30:15 -0300
Message-ID: <CAOMZO5AVwF6JXUewODcrcXruBA3fBHSEddSVcoE8gUnQzR0V4A@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6q: Add ethernet PHY power GPIO
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_083023_585813_737C101B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Ludwig Zenz <lzenz@dh-electronics.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, Sep 17, 2019 at 11:37 AM Marek Vasut <marex@denx.de> wrote:

> diff --git a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
> index 845cfad99bf9..687caedf0784 100644
> --- a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
> +++ b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
> @@ -86,6 +86,7 @@
>         pinctrl-0 = <&pinctrl_enet_100M>;
>         phy-mode = "rmii";
>         phy-handle = <&ethphy0>;
> +       power-gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;

This is not a documented property.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
