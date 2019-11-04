Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A7DEE38B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImdOWk+9tau39qW5KdmKy8NufwhHcTzf+IgCcLRkjoQ=; b=KHsyvfvyg0VpdS
	D5i15N47oRVSvH7HNmPC5ioSIa6CuMtc1YzLcSj5aelNc1KKr1G89OMp/LTBnNLTv0KyhYI/1SpxF
	qoSEQGfHFdUE7rhESZKkMKTdF00RGfd9F7lHmU7ZBQXqy2yO4cf7bZ3tHZPxYwGP+A2Ug+61oTfoE
	zQurLHxudrPn8/bVJJxixSjLenivcHkvEwYRtRGO/YhRaU6BRbuxCEjtrOM9bFQO+YRvH7cO5XgBs
	BBbsRfBgpE++ykyZ9srmhvQ5g122sr1eYdTW2BX7fxLJMF9bTrqRDUjMpmpq1SnyE1Tdb8Qnw5WSP
	/F/Rhx+HEwJPb1eWh+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe9o-00074q-It; Mon, 04 Nov 2019 15:20:40 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe9f-00073y-7O
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:20:32 +0000
Received: by mail-lf1-x144.google.com with SMTP id 195so12522770lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WWIcS6Kmcinpk4nazH38gksGZeb2V5O9XJjjx6H21Q8=;
 b=zc1uRzF40CpT6LkCRwwck/CCCxwcxTrBQVaJv5/aHXhXLsGWCoT60D3wxJkb0QrznY
 K54Xuuex7dbG1qBAFgp1gf4crcrXjrajNMsPHoTCOpaH93oqP2l6NpmAe128gLDaXXLg
 yzaGFREMiBKw0T8NTU9AjwlQsv9MiITfUUicI6ryR/otQbP3royH+MiBCg0UxfLbMhxc
 mzYGabnkXYbzgX0uXlqdxdijf/dy79voiwy9F/VF5G0eUCumIdOAuWdfHZRo91IoiFXH
 yIUgxMzrthfkDeLoaFN8V+/OWHmE0LrSLCmL5fxIATQWB40ZPkfE/h/vUMZK/ORTKvJx
 LAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WWIcS6Kmcinpk4nazH38gksGZeb2V5O9XJjjx6H21Q8=;
 b=dm/zaMNNZ3atd5UElko9ersM0PFpXoGVqzNaKU9h1jlSjDeGPdFt9HcDj67RwSxUSY
 3vW6GdE4q/iO8o2BB5o7GHBPBlIfd0QMPBmCMzGgpmpnUqM301mfzzK8YoBSlIdyNL5W
 +DBtqwbOIg3gMtgeW7lKeSPx55kfSiZxRSi//OIGysbJtVchFg8YpU8rNmS+Qpdtks/+
 Fok3Dez86mM3XUyTAj83cpv+beNnoXJJKDQw0SPtQw6hkk8eWZ8GPFrmb/3IF1hYgckC
 Sz5oPMq/ZsvbWozyjsCoHZ7McA/6Djri10B+ZLlDNmGP36m1xglq6Qv4ryz5OxYvyl9j
 ZnpQ==
X-Gm-Message-State: APjAAAWBPcnGadwqkGLbzT/3ZSA/ToSLgRShrGFZ4D4P9x1kkZq19N8h
 YfzFUrwFRxSjnZjeYALJMK3JaqR44NBgdJ+ZSMWe6g==
X-Google-Smtp-Source: APXvYqwPjUaJnzHm1yNiOffbukbBDzPd9LLjWB9u5Xvz7aYxG7tWRntIx7qmsDoGrfBOfmcGRICRRmKGUue7Gnrqs2g=
X-Received: by 2002:a19:ca13:: with SMTP id a19mr16886127lfg.133.1572880829843; 
 Mon, 04 Nov 2019 07:20:29 -0800 (PST)
MIME-Version: 1.0
References: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
 <20191104001819.2300-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191104001819.2300-2-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:20:17 +0100
Message-ID: <CACRpkdYnUbNJtLcLtZXcL8s_Cq64Q85pyy484J4ZvobAODLOSA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072031_277702_B3CAA0BF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 1:18 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> Use more of the gpiolib infrastructure for handling interrupts. The
> root interrupt still needs to be handled manually as it is shared with
> other peripherals on the SoC.
>
> This will allow multiple instances of this driver to be supported and
> will clean up gracefully on failure thanks to the device managed APIs.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>
> Notes:
>     Changes in v3:
>     - retain old irqchip name for ABI compatilbilty
>     - add revew from Florian
>     Changes in v2:
>     - none

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
