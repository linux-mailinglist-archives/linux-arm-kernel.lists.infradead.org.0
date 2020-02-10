Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E92157325
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZ390342xtS5cEnYKSnEFG54Siiqv7m6FjCAYY7Z/yg=; b=c/eXOqndf1OBoE
	GDQfWok3p3zWx8rKUAOoZ0GtmjBP7OPFsy2+3boGfv5gorpRp02gN5Bd+uRdAjeIyUuoWYqmMoPRs
	uIT/YV1yF6NhGt9yqBoCCqBHNhknRgBHB9hyrMi4rUCw45JCqfzaGo1lnDlOCHYCPi9Khjd3/A3Ee
	sYbC692XwD4yIZE/XIpWlTG270nq+V7SGlsCDDuBNxOffyYxjKYdl6yauPBovW5JurWx6GkB5mTDl
	gn2EPWeGpbLsF1UxFj6W+OvubyfXcoSfoI5lYr9ONw2HyRG5RuEsYL2tmSre2IZLUDu1Jnq5GO/21
	DGi3pK4wH7Z70uH4T+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16jh-0004FK-1f; Mon, 10 Feb 2020 10:56:17 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16ja-0004Es-Aw
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:56:11 +0000
Received: by mail-il1-x141.google.com with SMTP id v13so5376405iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d2IBt4/L/Nkmzl5hW1D/wjWzKHtqUWjVQiav92+TxjY=;
 b=MxzfVtZRAKUIarDmqF9d8MtEWcqpjh3ZP6t4+CyS8iwJfg0VnRBEN5ecfTDSB/ifw5
 Oe347EZ7IjQ/Ttkp4C8larMqFO3D5OVo62hVxbh4VB3YtEOic4v59wV2OxqSTcuqaAVZ
 LSOuY+hEW35bByT0bXCtc6yvB+n7dHLJUDyaSyLv0aadoQKM8mWVpWgp+Cwa53vCsTUw
 XZrC/jqYPGVltNO292Ad157gdmd/UuL51Qh1NxLP0atu/cJMiPWTUjy57gsZ2DfsD10S
 NW92pC8NuZwhD0VTS3sLgeUes7Ghgp4jE+43B+Zy+lkj+fhmiFl44cZVQm9/58ycOa2K
 mYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d2IBt4/L/Nkmzl5hW1D/wjWzKHtqUWjVQiav92+TxjY=;
 b=BLlOwBHRV+5SZ1EnEHzuVo7ARkEQrXXPqAeiUOtZ4a0MEQjau7QVeNQ8YtyM+kpD5b
 7WS9kp7npQlyyOLfdJRkkR44MgsSNpXBW6mWYFMiuhvA0VDuxa1u2+egossA+KMMxOxM
 d8AtM2j+az3FbM8Dl+aFDXc8ws4kTsHaXa7Rwq2mClHkH4jjhX8C6XwXF/OxoQ3R/iXs
 YmLP+ZQJZZ/pb+Ci92+2mlqjYCEeBR6hCgyoDtaKubcAF8rCzhHCXNLv0JdB6WXw2siF
 pWtfRWfUKmH9olbrbiyYKhFCyNnvyak2U4U3vuHFpY8CH3MBAUiKX5D4LgDC24Qo9XLC
 ZNcg==
X-Gm-Message-State: APjAAAVnYPvxz6sF6IApG3IdlXp7lacgoRrMrfEwa5N75nizDP4vCl0K
 kZGC4qxkiQTNXG/YQt15ZEp6hV402Kwr5lNo/a4=
X-Google-Smtp-Source: APXvYqzSD3AIuSazFlh5pPF5er+MSkw4OA9zMqA91tlC+bDSAj88WNPxzkmfnD9iDxhN7ozPY0QwiaRGDUDo1oQbwSw=
X-Received: by 2002:a92:5d92:: with SMTP id e18mr761070ilg.75.1581332169369;
 Mon, 10 Feb 2020 02:56:09 -0800 (PST)
MIME-Version: 1.0
References: <20200210105108.1128-1-linux.amoon@gmail.com>
In-Reply-To: <20200210105108.1128-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 10 Feb 2020 16:26:01 +0530
Message-ID: <CANAwSgQzwRJE9mK+RwuCjsMaBMmD1f3fx+g-23B5Opo19kywUw@mail.gmail.com>
Subject: Re: [PATCHv3 0/3] Add support for suspend clk for Exynos5422 SoC
To: Linux USB Mailing List <linux-usb@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025610_380241_51B26308 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

Sorry typo this patch series should be PATCHv1 and not PATCHv3

-Anand

On Mon, 10 Feb 2020 at 16:21, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Long time ago I tried to add suspend clk for dwc3 phy
> which was wrong appoch, see below.
>
> [0] https://lore.kernel.org/patchwork/patch/837635/
> [1] https://lore.kernel.org/patchwork/patch/837636/
>
> This patch series tries to enable suspend clk using
> exynos dwc3 driver, for this I have added new
> compatible string "samsung,exynos5420-dwusb3"
> so that we could add new suspend clk in addition
> to the core clk. exynos dwc3 driver will help
> enable/disable these clk.
>
> -Anand
>
> Anand Moon (3):
>   devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
>     clocks support
>   ARM: dts: exynos: Add missing usbdrd3 suspend clk
>   usb: dwc3: exynos: Add support for Exynos5422 suspend clk
>
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 4 +++-
>  arch/arm/boot/dts/exynos5420.dtsi                    | 8 ++++----
>  arch/arm/boot/dts/exynos54xx.dtsi                    | 4 ++--
>  drivers/usb/dwc3/dwc3-exynos.c                       | 9 +++++++++
>  4 files changed, 18 insertions(+), 7 deletions(-)
>
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
