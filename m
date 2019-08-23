Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C5C9B447
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLPYj9iaXlDS5Z9AlKYWTz7UJ3qG0DKZ3RvdKC0xKic=; b=VTZ5bQd1Y+VTUW
	hy9BOivFDz+aZL9UN0iF2Nskqcb2a7kHJ+IXi47eTrmojD2VzYrQgcSz26/RFUkDN/Bl+citLzecg
	Y99oAsAooGqEVVDayIAhBJQC2xQfGmUyPtEzmruYA0Wlmr7kMyHcHF0LEi2D06fobILA92QjJTlkj
	xaI/EcqEnH7QxvMJkt0oRVn/K6xKEJfxHCGxmMuilYpdqfvveM0Tic/UtpP8a/k5lpN2l/l1H02J4
	6lsfif/AW+NS0Zobgvr+WZNtC+b1OmJLafTU6OiCnIBVy1hibKGuGnVLAF3+qMD2NkJ8QMwd89Sw+
	lbGK46dcfYg4otk0xTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1C8n-000232-SV; Fri, 23 Aug 2019 16:10:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1C8b-0001Cd-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:10:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so9627266wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 09:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=qCpJ5DiOoAHU5lhDofCgzNtjT/DAKjPBpHrmlHOG6vQ=;
 b=j/qmk0ilPhQUF7l0BN9NueVXnVk2TKnE2zRM8pYHg2uQDvM/AGnH+Bfx6hFLi7fMA5
 +pwScOhCd4T7VHxRIEH4eBmsM4mLGXagmBK8019XMPY7vfm4XHPmV9qMAoyE+idALv01
 o7oNlPtNdnmURS3gpvwjKwUcVItSTRYeVFdCPkJZZPVwvRd1joN4Ni+1b0OLf73t1wbN
 th/Tv6JxhO5HfB+s8kXKbo0JAlOSinY2G7P9cRqm4RQSzqsYnM3u3JxjmeJRPXAqt19Y
 CtUXa/GyRT/rRgMqOLJofptHhMWhFh8rOycf/niTiIfDQd+JvLT3tunPocq01Y86lZHg
 8hRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=qCpJ5DiOoAHU5lhDofCgzNtjT/DAKjPBpHrmlHOG6vQ=;
 b=It6ZX3ltXkWVmHbxFArUGREzy9uNEJxHsCST3DqEiTQBBhrO8S53LAuwIWee74AECl
 8Xcw1oMFXyT3J4YTF2mRhH/yFL2BHfrUIsCk5T58y/1gKABrTw21etOtV2Svudm3cn5P
 +K4m8G/cgq14T8n0vkgPI1USATqnIZhqdePaOaZE23uT8uDXeoLvs2PuAXCD/8rTG7l+
 xbG/HhmTT1vV8MGlSFM2DOa9gsv8+U8MIg4/zDBu/TLZ/BkAsQKLAPYndtohj87lSrjB
 tONdg1P6BJnGT/V3ZXk3+fgSNQfwq6DatpOk7M3t4hsdsOw+p7bXhtanCOtgJRlugx7n
 myJg==
X-Gm-Message-State: APjAAAXRU3HHmzOM16AUCDrTVNCamx/bHn3oxtxWgdFWxNmZqqROUE92
 SwcXgVYEL9Hm91DXSMPEBCJ2UA==
X-Google-Smtp-Source: APXvYqzAdjPuuRgo0jN5MfNpSucyg8E+yaUYECo/wLyzD0iRmP6TdW/S7hVnAWdyxU8Skx4en26LQQ==
X-Received: by 2002:a7b:cd17:: with SMTP id f23mr6259424wmj.177.1566576603459; 
 Fri, 23 Aug 2019 09:10:03 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s2sm2909998wrp.32.2019.08.23.09.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 09:10:02 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [PATCH 0/6] arm64: meson-sm1: add support for DVFS
In-Reply-To: <20190822142455.12506-1-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
Date: Fri, 23 Aug 2019 18:10:01 +0200
Message-ID: <1jlfvjeucm.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_091006_029660_C4B7ED47 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 22 Aug 2019 at 16:24, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Following DVFS support for the Amlogic G12A and G12B SoCs, this serie
> enables DVFS on the SM1 SoC for the SEI610 board.
>
> The SM1 Clock structure is slightly different because of the Cortex-A55
> core used, having the capability for each core of a same cluster to run
> at a different frequency thanks to the newly used DynamIQ Shared Unit.
>
> This is why SM1 has a CPU clock tree for each core and for DynamIQ Shared Unit,
> with a bypass mux to use the CPU0 instead of the dedicated trees.
>
> The DSU uses a new GP1 PLL as default clock, thus GP1 is added as read-only.
>
> The SM1 OPPs has been taken from the Amlogic Vendor tree, and unlike
> G12A only a single version of the SoC is available.
>
> Dependencies:
> - patch 6 is based on the "arm64: meson: add support for SM1 Power Domains" serie,
> 	but is not a strong dependency, it will work without
>
> Neil Armstrong (6):
>   dt-bindings: clk: meson: add sm1 periph clock controller bindings
>   clk: meson: g12a: add support for SM1 GP1 PLL
>   clk: meson: g12a: add support for SM1 DynamIQ Shared Unit clock
>   clk: meson: g12a: add support for SM1 CPU 1, 2 & 3 clocks
>   clk: meson: g12a: expose SM1 CPU 1, 2 & 3 clocks
>   arm64: dts: meson-sm1-sei610: enable DVFS
>
>  .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
>  .../boot/dts/amlogic/meson-sm1-sei610.dts     |  59 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  69 +++
>  drivers/clk/meson/g12a.c                      | 544 ++++++++++++++++++
>  drivers/clk/meson/g12a.h                      |  26 +-
>  include/dt-bindings/clock/g12a-clkc.h         |   3 +
>  6 files changed, 697 insertions(+), 5 deletions(-)

Series looks good to me overall.
Just drop patch 5 and expose every ID necessary directly with patch 1
(same goes for the GP1 clock ID)

>
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
