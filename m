Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4725DF00D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLSm5ScVmN+jkj3QOLNqQ1v3lyaTks0WK9kyh0Dgags=; b=ogfFGI0D4epBSF
	6jmkjc3jvaGrc+9rsZBmHBcDHkj5xEu9J8LmqVmXHezB83XEBFsrUSbG+QaXmRwJGcdruTqSKXu5h
	Qp2l2phmc3A/zgMLxvSBHJ33Nqcpb2aJkW7zzwxDQKXvsqOB1OYeDgIOV/B+U1vsLPSJW/1Ind/hq
	LufK4i0qaY9J/tKfr0yZ393cA5VRoz1zxJpS+vmEtIBzvVzkh05lheIua6Dey/nqElEiN8dJ6Nbro
	U1y6xeZtsWAlZsZlHr+ofom6WH7kswAVe36BgoRDIzOGfALytse7RTZjn6p2OMfHE2YElu1pukPOh
	rg/bsnTnJ5wQ34CtdfLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0S4-0002o8-58; Tue, 05 Nov 2019 15:09:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Rn-0002lX-7H
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:08:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id 139so22285843ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QVqID83DP10XiL25090Kooovcd+jO11tv2frcA+Aozo=;
 b=IzWJ8eph2aMxyPkk5igmYy1MthwwzUaNNXGjE+UmXl4Ai8USe++fFWTr0NBUQsepvF
 LuDljy6BcLt5EAcx3M+jaBI+d0v0YH+d7sqVrZQOAvnT0ZX09AJNiygpNyxOxdMIwK9L
 IPh63EBPqTpUDyn+VeQbr4TTvs0f/TCY8wMi0tbqEi/G6nLyGm+B8sQR6j94wZhVSv2Y
 1aT4qx8YL9Q0syw1LLSaEPv0h7lgfHRLVaZU1iW5/C7mFV2QWT02LHGkn1KP3/WRpFsI
 bO5d4/K1Y74cPxlotdLI6qruTOKAGs6Gf02Ck6aMvxR9mh4VkmpD1KsVZsIu2g0DA4Qj
 OdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QVqID83DP10XiL25090Kooovcd+jO11tv2frcA+Aozo=;
 b=DIJWeZRSeVEkZtvVVI970yfZfqFUwSZCQAK/v5TPWnZ0JzLaIWNe55yUMxR2vwRomm
 jvhvgfE9nTkw7bxc6fN7gL4oRQ79qZxgCOrSyg+K9ve9msujmPesAUD3FrusTz+GeGjS
 0QLRrFNlu0CJRk38FNqu4arOOChtvdvSnZ7VZSimDl074oeTEVo52mEI1CrV8Tf2ev0j
 9eNKXHWA6SrirRUC3rP98uJMo9WqBjNSwMk1cVjckz0IOIfBw1BvXxinXJx/OeU8c/rr
 znSh9GKqWOonT2GRZw6tcBrC5LVqQWih4zS688LTHbfFU7yt9/piUHFoGCRKBYMrvIVE
 8kNg==
X-Gm-Message-State: APjAAAVRcWaYsKtTJAEleEYaOc3vgBp/AI3fEjZTyGcN1AJA/wXQylzC
 9U3Ig4+6pPRNeSie/ohEXQLMVcAOFixTTVWc1ErL9Q==
X-Google-Smtp-Source: APXvYqynNx7yVsamkmDQicrZYF0b3QMUV7NDAKJOqJVCjIt3Qt+Lg0xp+qeqgaKJN+sWlsoFYyEaDeJbse6mZMDwMIo=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr16057690lji.191.1572966521035; 
 Tue, 05 Nov 2019 07:08:41 -0800 (PST)
MIME-Version: 1.0
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-8-andrew.murray@arm.com>
In-Reply-To: <20191104163834.8932-8-andrew.murray@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 16:08:29 +0100
Message-ID: <CACRpkdb=5i3+H3OtGXSYQEjSq5ROrysfmnG-koGck+chEEgLnQ@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] dt-bindings: PCI: Use IRQ flags for legacy PCI IRQ
 interrupts
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070843_278458_8C842A7F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 David Daney <david.daney@cavium.com>, linux-pci <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Binghui Wang <wangbinghui@hisilicon.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Jesper Nilsson <jesper.nilsson@axis.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Fabio Estevam <festevam@gmail.com>, Tom Joseph <tjoseph@cadence.com>,
 linux-arm-kernel@axis.com, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Xiaowei Song <songxiaowei@hisilicon.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, rfi@lists.rocketboards.org,
 Zhou Wang <wangzhou1@hisilicon.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ley Foon Tan <lftan@altera.com>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

thanks for your patch!

On Mon, Nov 4, 2019 at 5:39 PM Andrew Murray <andrew.murray@arm.com> wrote:

> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

When I add examples I usually make sure that above the examples
are the appropriate #include files, this is becoming more important
as we convert to yaml, then you need the right includes because the
examples will get compiled.

With that taken into account:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
