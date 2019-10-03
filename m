Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C349DC9B6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDFNR1oWKEcpqtFjdmE1ZA3+bRyIub8yaCxQdWzxCD4=; b=IYAJF824I9uRbT
	dlcwYLbQ1IKFYSnJpiFYe5l4Z/CMiMbSL1eKMW3ym9nGd/Cvi8znDNXloTC9MZX9Mf+J02JtsPLMP
	4jGmzt12aMY9aZCAOl72tnAfPLSkR9YHT8/FEv5bkc9aXmgYh2SVfwvJ1Ty3AmsACwy7SInoIsOAv
	NeH9QaOkhr02TG/YOZVhd47VbCORKLXvdJPf1njl1SgJOnxl0VFb7TOTRnl5OUiApVpShqWjv5RzY
	+T+Jk3LMyGHenZMSI26/uiRTa0rr/Vw95ctGWUs/2EHb0dM5Q4Cw8ez5k1MINYeVmMtV53wsH1Rz9
	8k5CWjF+mE5kg/fdbm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxwL-00056R-UJ; Thu, 03 Oct 2019 10:02:29 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxvj-0004go-U1
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:01:53 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b123so1284555vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 03:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iFDz/TY4taQUzdivp2uhhp2+MARTcyK0IBv0Du5TK2s=;
 b=uqSNDSn/JLAR34x+guZaYMpDq4TElfRKkHGCYKGhNePvM0SnjNGMa0VMl3jN5QVYiG
 9jBgksE/27bDxJT4b2GwYGScLnvpABKCkG0LA8BnhcZQrmp2zxh1NK+YNsaJPAqEJciG
 EgL0NO+1ZxIfxRolhUe56b7kgITFMDj1m/vR1s/eZ0SuULuxbGfcsmS6w64d+82HG0u4
 DZYb+5l1/F2TPlNEHkh+/L/4xfmH+hyJlTg1VN0ZrjF1QjSuDrMgHKS1ONcEKpeg5sj2
 TMZe2UhcneGYB3l18O6f0CaqrDSqMto9TF165WOe1WiWm396BpL42ilN+hjX+pLLwwLq
 pRWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iFDz/TY4taQUzdivp2uhhp2+MARTcyK0IBv0Du5TK2s=;
 b=k/kgjccbMtIBBbDWD0lUnoPEgz/aQZ/+k+sIYqjThGvcVLu/szu+JKxru5YR6V+Jr3
 YvUOMaL8KQhtoRH9bXkQQA5Mvhp7ovcNt6QCkt5c8EGvr3nOUN9Nju4whpcWr1ubyfHw
 fwwnaX/1cK6Mk3odkgj6wPheHy4ivDos6f+evNApS3pLLbuqbNprq34B9bydknFFBqPz
 uyxtc38XyqMeW6y8bqp/G/MUDSiiIZPJcyZTPEHXy2hjRO9gydTEyxgXdlPanUvgEjbF
 zClxxokI3aHdF/LfGiVGPz6KH9rtk7+Z5d4Gw6oYRKFZFiJHaxftbwlQZbgUZvZjiK3V
 gN1Q==
X-Gm-Message-State: APjAAAV9ymn1xEbbqZxlgNtR3pBlieHxsh/IEFVIW1XPBWLpkcbi6hrA
 xlB0AaQhnbIjxBrAbY027a5ejct1UdONFoDhoFI5Ww==
X-Google-Smtp-Source: APXvYqxI8ZjwXNgQcX5BTsmzQOL7OxBf6LkFujm61Mkc0rVB1TJKuP0kN3cL0YPgP1kYeTX4gE6Y9Hc1+NZnaTuz2tE=
X-Received: by 2002:a67:784:: with SMTP id 126mr4664591vsh.35.1570096910669;
 Thu, 03 Oct 2019 03:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-7-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916154546.24982-7-manivannan.sadhasivam@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Oct 2019 12:01:14 +0200
Message-ID: <CAPDyKFoDhtXwzsEzh2tST96VQHqu2PKHq4F=Zs__mqA1=AVaTQ@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC
 driver and binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030152_044425_3555F32B 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-actions@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 thomas.liau@actions-semi.com, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 at 17:46, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c31e6492b601..d13138330b97 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1375,6 +1375,7 @@ F:        drivers/clk/actions/
>  F:     drivers/clocksource/timer-owl*
>  F:     drivers/dma/owl-dma.c
>  F:     drivers/i2c/busses/i2c-owl.c
> +F:     drivers/mmc/host/owl-mmc.c
>  F:     drivers/pinctrl/actions/*
>  F:     drivers/soc/actions/
>  F:     include/dt-bindings/power/owl-*
> @@ -1383,6 +1384,7 @@ F:        Documentation/devicetree/bindings/arm/actions.yaml
>  F:     Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
>  F:     Documentation/devicetree/bindings/dma/owl-dma.txt
>  F:     Documentation/devicetree/bindings/i2c/i2c-owl.txt
> +F:     Documentation/devicetree/bindings/mmc/owl-mmc.yaml
>  F:     Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
>  F:     Documentation/devicetree/bindings/power/actions,owl-sps.txt
>  F:     Documentation/devicetree/bindings/timer/actions,owl-timer.txt
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
