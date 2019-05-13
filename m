Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2FF1B9A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ukIK9g26xDHzmDMRY8fFvKtSag8i+++AFclLqP1I7I=; b=cH6paaZv21r1md
	NhbOYL2R29IDM5LiHQzNywtQpZzqD7z44Yy5K2eife4nBjCKQiuR69FyiOraIGswtLx+Rd0y/6JpE
	T9gAzSzO/7LH6t8wvdY4LiHgXDmMnfnY2kWhk/d6MXlbc4e9Pr1TRACxIMHtW4nC/a2yQxmQ9KS4p
	i+nQUzgcFntfiACteZxxvBCX6I5C2puuKXEDJMz4LeRNVTvCrS8Za3U/v0H8VUrQa6ZdjbX8qity5
	8WM5Xpa7hpGjwSF7nI0hnB618hosKweFv4/66oQJrVsK8JpXydu5fHAtVGXahYv0850xwPZn/lQxo
	MF1fiFld9Cx4ps7Fep8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCeg-0005Kn-GV; Mon, 13 May 2019 15:14:18 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCeZ-0005KL-1I
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:14:12 +0000
Received: by mail-ed1-x541.google.com with SMTP id p27so18116066eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=b3ZsxbY91h2byIdigyViRztW48WAaM07J61Fsufp2zg=;
 b=Ytf5rDGs1k8Tv4JCFwOIHXj93yat5az5zLREOibB9Io7ACItmsO2sG1iDQpG8Qa9I1
 zSDszGlTwMs7OT8u2Y6VhPYJ5IcwuPJfsKri52BI1GSq3l5D4Sp15bYGVRl2/wVArCTL
 na9u1qZRUsjLMa5jtO89frg3gLnKi5Hwt+lBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=b3ZsxbY91h2byIdigyViRztW48WAaM07J61Fsufp2zg=;
 b=hRQr31fNi9qWuPc22cvZgEtTCkJyCbBbEdgbsz0ihlFElai9a5CKtNsER6ULn5IjbK
 eTuXnyavoPp4TYErtbXjE2nF/DQJBnAfiSESHn6jAa2JiV6AvgPIT6DKxYh6DQLOpBXR
 Ue6fVGLDZfLJmPhSHQOdN9N0paUvFFL530/fMb4wdy3u/SBebjDJJKddicvKc7574xXI
 Jo7+O14x3OZ4V3vUHG6OeW0XTKaY1uNtCHKnMMPlU1zJKb8V7vsGDnB9UeaYlPaLzbl2
 3XKP/pktFcuD1zcY6NRkfYDVrGlJVlV0mdneqMCKWydan4TAbIp9egUCt2CMPvhssU7q
 4xpg==
X-Gm-Message-State: APjAAAXHegP8+qmlDr3oCjVuZvobgueF2BT2+5hmVN/+6EOcVDx74tos
 8wno4sU/Mr81w/1KAf6SoWPS/jML7Uk=
X-Google-Smtp-Source: APXvYqz90G91DTeR9OP/EpXrfldPUD2lfY202QZGhScBhFkopAxaDjX2LA1QA1yYZgJhko7DSYIOJg==
X-Received: by 2002:a17:906:4244:: with SMTP id
 r4mr8073761ejl.211.1557760449369; 
 Mon, 13 May 2019 08:14:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id gt16sm909611ejb.60.2019.05.13.08.14.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:14:08 -0700 (PDT)
Date: Mon, 13 May 2019 17:14:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: peron.clem@gmail.com
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
Message-ID: <20190513151405.GW17751@phenom.ffwll.local>
Mail-Followup-To: peron.clem@gmail.com, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081411_077766_B321735F 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 07:46:00PM +0200, peron.clem@gmail.com wrote:
> From: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> =

> Hi,
> =

> The Allwinner H6 has a Mali-T720 MP2. The drivers are
> out-of-tree so this series only introduce the dt-bindings.

We do have an in-tree midgard driver now (since 5.2). Does this stuff work
together with your dt changes here?
-Daniel

> The first patch is from Neil Amstrong and has been already
> merged in linux-amlogic. It is required for this series.
> =

> The second patch is from Icenowy Zheng where I changed the
> order has required by Rob Herring.
> See: https://patchwork.kernel.org/patch/10699829/
> =

> Thanks,
> Cl=E9ment
> =

> Changes in v4:
>  - Add Rob Herring reviewed-by tag
>  - Resent with correct Maintainers
> =

> Changes in v3 (Thanks to Maxime Ripard):
>  - Reauthor Icenowy for her patch
> =

> Changes in v2 (Thanks to Maxime Ripard):
>  - Drop GPU OPP Table
>  - Add clocks and clock-names in required
> =

> Cl=E9ment P=E9ron (6):
>   dt-bindings: gpu: mali-midgard: Add H6 mali gpu compatible
>   arm64: dts: allwinner: Add ARM Mali GPU node for H6
>   arm64: dts: allwinner: Add mali GPU supply for Pine H64
>   arm64: dts: allwinner: Add mali GPU supply for Beelink GS1
>   arm64: dts: allwinner: Add mali GPU supply for OrangePi Boards
>   arm64: dts: allwinner: Add mali GPU supply for OrangePi 3
> =

> Icenowy Zheng (1):
>   dt-bindings: gpu: add bus clock for Mali Midgard GPUs
> =

> Neil Armstrong (1):
>   dt-bindings: gpu: mali-midgard: Add resets property
> =

>  .../bindings/gpu/arm,mali-midgard.txt         | 27 +++++++++++++++++++
>  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  5 ++++
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    |  5 ++++
>  .../dts/allwinner/sun50i-h6-orangepi.dtsi     |  5 ++++
>  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  5 ++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 14 ++++++++++
>  6 files changed, 61 insertions(+)
> =

> -- =

> 2.17.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
