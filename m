Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731331001E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+bcILH6/wizqpEhDqmOIXXfLaQ//UDrJEVRAeP785gg=; b=ZD0PUjbbeFdvtNdqjst2b+5Jh7
	F4SGYFwk4OVy0cXTeYGkbxubnBYr23991IiBSVpK8IYED8N1N0M3W4gDy63lPblk0c3hmAiUJYy++
	P8/CsHmDFdib/B7DWaQu290xeqkrDrSyeu51x5hVG1QQov5WfYFweV1+TWJe5VnC0qebpUTIviFpH
	rsDTK36jFB0kK0ZvzslknZCsti9TxCLDpvi5dSaYbEil51ASCBTekqYvwsKToMN560lnoku20Mbvn
	4q5f/YJ4ZwMGvHJnYAZwuF3Ii1bUcPQ5jJ565jxTv1f/1WuSegnfNd0pLPdv8LT/wnnpc31uXIvNX
	EY1cEmRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdl2-0004h7-Lp; Mon, 18 Nov 2019 09:55:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdko-0004fz-V1
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:55:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so18008460wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=PgGBXNN0Jirm20pqBP2alAmny4JZsXPFHK67g56bQ0w=;
 b=GUqxG6CLejc6KGV040NaZ4pursegloLrR/ifPEW5TMnYTJN40jTwfTDcoPyHl++AYH
 7hDIjGeJs7/35Jcr3FMbYzv8jczm/IjAVdmFufSTHr+KbQDxIlzz1fFOP9rEPt9H0fYi
 C/0COGPKR46Q/kAu9c2Db+OGR2LoRA5af1KdmcLpaA18ymFFLoneezHQbBk0iF3z6Z+2
 V5qu0n5zE8uOBPZCrOuSW6lF3GziCSS0CJiebQ/UorvBuSDkTyaVQsSs9ob5+HFgGA8O
 YdLUl+AuVNp/TpadiKD69zNPJfoxDGwOW1K6v535KB67jnYfaN70laGOpM+pbhCWGWT3
 Rp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=PgGBXNN0Jirm20pqBP2alAmny4JZsXPFHK67g56bQ0w=;
 b=edjod0zhgA8wz3nN175WyhHEzjvRe5vaZocEHk65ExpHyEXKubu7cZIFpfE71dV8Vv
 iyvQfivRxIiZbLSP89cTD4zFPaXrT4AKVTT1dhybVjUkTsyZJ5telNUAyvYD9Kh37w+1
 aP46YUz6Vmz5ryOlFV/chCNOF8FYEFAwmkKHO0KZl4ON242wK8FzJTo12ojzHfNMfLsR
 fSalcK1Aqhz7rnOcdnhgxMaEKh5yjxpWT9wx0ZTcthBQDRzaK5HblBxbqzBPeN609b45
 EyXTKOPw6dqkztq1WzwnxL/tu4LlGhpa9vsDRapFtSGOXjFnEQphDh1otmiVFTppfk/G
 1HPg==
X-Gm-Message-State: APjAAAV5FhfJsXfPO5+LHgyeAKXPheG0O547vGp9fU8V7VC3uY4Q1jk4
 FiSgBkD2S8t61H4y67Tf7aSMIA==
X-Google-Smtp-Source: APXvYqyHTu9Hx3fhpKYkJTLr1HNLDFQ01pm20kXFjw2y/6FC4VNE3s2de/14tyIsevI46o9k72VsZg==
X-Received: by 2002:a1c:39c2:: with SMTP id g185mr27162171wma.88.1574070928635; 
 Mon, 18 Nov 2019 01:55:28 -0800 (PST)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id a11sm20052731wmh.40.2019.11.18.01.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:55:27 -0800 (PST)
References: <20191117140731.137378-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v3 0/2] add the DDR clock controller on Meson8 and Meson8b
In-reply-to: <20191117140731.137378-1-martin.blumenstingl@googlemail.com>
Date: Mon, 18 Nov 2019 10:55:26 +0100
Message-ID: <1j7e3xpkz5.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015530_999017_CEC76E09 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sboyd@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 17 Nov 2019 at 15:07, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
> registers. This series:
> - adds support for this DDR clock controller (patches 0 and 1)
> - wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
> - adds the DDR clock controller to meson8.dtsi and meson8b.dtsi
>
> Special thanks go out to Alexandre Mergnat for switching the Amlogic
> clock drivers over to parent_hws and parent_data. That made this series
> a lot easier for me!
>
> This series depends on v3 my other series from [0]:
> "provide the XTAL clock via OF on Meson8/8b/8m2"
>
>
> Changes since v2 at [2]:
> - add #include <linux/clk-provider.h> as suggested by Stephen Boyd
> - drop unused includes
> - use devm_platform_ioremap_resource instead of open-coding it as
>   suggested by Stephen Boyd
> - drop trailing comma after sentinel element as suggested by Stephen
>   Boyd
> - dropped patch #3 "clk: meson: meson8b: use of_clk_hw_register to
>   register the clocks" because it's now moved to my other series at
>   [0]
> - dropped dts changes so this series exclusively targets clk-meson
>
> Changes since v1 at [1]:
> - fixed the license of the .yaml binding and added Rob's Reviewed-by
> - drop unused syscon.h include (spotted by Jerome - thanks)
> - drop fast_io from regmap_config and add max_register as suggested
>   by Jerome
> - dropped original patch #4 "clk: meson: meson8b: add the ddr_pll
>   input for the audio clocks" because I could not test that yet (that
>   patch was a forward-port from Amlogic's 3.10 BSP kernel)
>
>
> [0] https://patchwork.kernel.org/cover/11248377/
> [1] https://patchwork.kernel.org/cover/11155553/
> [2] https://patchwork.kernel.org/cover/11214227/
>
>
> Martin Blumenstingl (2):
>   dt-bindings: clock: add the Amlogic Meson8 DDR clock controller
>     binding
>   clk: meson: add a driver for the Meson8/8b/8m2 DDR clock controller
>
>  .../clock/amlogic,meson8-ddr-clkc.yaml        |  50 ++++++
>  drivers/clk/meson/Makefile                    |   2 +-
>  drivers/clk/meson/meson8-ddr.c                | 149 ++++++++++++++++++
>  include/dt-bindings/clock/meson8-ddr-clkc.h   |   4 +
>  4 files changed, 204 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
>  create mode 100644 drivers/clk/meson/meson8-ddr.c
>  create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

Applied for v5.6
Please note this will get rebased once v5.5-rc1 is out


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
