Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAC81ABDD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y6QEb5SXzsw6q5zbJyx2NemZqY9U17rWAAD88HGS6is=; b=rHUW+5y2iNRoqreLJh92SwSaOg
	SgttLLvd8hOVflucdpy2CQt9cyGpGehL4p5+wAvCxGAqR/5yLYDRLVaIIqttYVcdS2sIL9/wQOC7I
	099AovISL28SwFrqMRvEVd8j+TY3T1b/pkjGtxlHQbCuYV4497lmsPhcZVv6YxvqqwhXWe2AKegw8
	BEOWKwLShz2tRsVJz4QnBYAXzPbtlFvd0ewcTrVceCvm+RLR0NQmVCvnGO3IdbloTQ+vNeL42NVfG
	AULeQCa+gYi0O1cLUIo+MM7l3rRN840Jwxee5ESKSC6PcuTbDbW7WLc9YGuIbClepaVYukr1DDMOy
	rDqoc95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1jq-0001YL-4j; Thu, 16 Apr 2020 10:27:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1jZ-0001Tn-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:27:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id d17so4141650wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 03:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ytcr4DNGsM/t7kd6jXgpKOZ/wK7hRn1NK12HxIXMRKE=;
 b=y283zphWTaRIHsqXboEQebyUcsf1x9LJ0OAGOqpxQTdsNtsjus/FsAB4jcOrbwQRmU
 ovPNF7Uil97R6r1wi7otHb+HEG0ZivE/3Mal3+mMpWMpsqPOwJBWmUWk0JsYvYbtgPOz
 xB2hC0AxW7bx/I9t4+kspS3NGqOmYzdltktQ1ic+DzL2O/t8O8tatfU4vxj77lCP1rf6
 STIzdzowht1EWGVfD39Z2Aogi27qNWUcCQ2LIEVA6eJ0YMMEx8XGsgiilp69jV55p5Mz
 MnUmmXnQXYlZXExyVCIqsI8j2WrJ9PcuiniGJdjht0BiqboZC/SX3qGiwcre7vT/LzJe
 rLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ytcr4DNGsM/t7kd6jXgpKOZ/wK7hRn1NK12HxIXMRKE=;
 b=p50otumKtdwXXWItvdjGHiw7aN5DMWaT1lobA2LBY7lSmbxvO48EtcPdmUdnQ3ogRD
 Ao3FcO2yE1G6mZtcjaUsoHzCdaveIP6koaRMSpRvccybRy1IPiopQ4aCVFIpkYeMEF+B
 4uGOrRhJC7KPMLNhLuFAciXddJGtfxJkwbBGjBoThQozy6X5fv+Fd7mqkPv7AF3BFqg0
 H0bGssqTTP6X6f81m87het95wqx66WZXCU2mnOjyxAhXUPaJsP0Re9CMLkhY/FPNwLPY
 Wm4iDeFD8+NqRJIsyHCjvfxXDyOSst79n3foHgfSGRojYrtSZbe35gsHvtKjsjtGCxaH
 VnsA==
X-Gm-Message-State: AGi0PubNRCotC2fzmZm0yFjzWZSEQsQpDl+bBAeHX8xmywkoqi5sTEHg
 N/3FMTSxgUdYmqhL2a4xnRAolw==
X-Google-Smtp-Source: APiQypLHefjPm8Xgjdu6ICpgrvUDFrLOqOiQNSaKWVEHJV0E00xqUmBJ6qCW31i21zKvv/bei5YhbA==
X-Received: by 2002:adf:e54c:: with SMTP id z12mr23478210wrm.276.1587032818803; 
 Thu, 16 Apr 2020 03:26:58 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id h137sm3760755wme.0.2020.04.16.03.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 03:26:58 -0700 (PDT)
References: <20200414195031.224021-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 0/2] clk: meson: prepare GX and G12 for GPU DVFS
In-reply-to: <20200414195031.224021-1-martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 12:26:56 +0200
Message-ID: <1jd087bua7.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_032701_998545_840A76B6 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 14 Apr 2020 at 21:50, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> This contains only the clock driver updates from my other series titled
> "GPU DVFS for Meson GXBB/GXL/GXM/G12A/G12B/SM1" from [0]
>
>
> Changes since v1 at [0]:
> - update the patch descriptions to indicate that we explicitly don't
>   want CLK_SET_RATE_PARENT on the muxes
> - split into clock driver (this series) and .dts changes (future
>   series, waiting for testing feedback on v1 from [0])
>
>
> [0] https://patchwork.kernel.org/cover/11466399/
>
>
> Martin Blumenstingl (2):
>   clk: meson: gxbb: Prepare the GPU clock tree to change at runtime
>   clk: meson: g12a: Prepare the GPU clock tree to change at runtime
>
>  drivers/clk/meson/g12a.c | 30 ++++++++++++++++++++++--------
>  drivers/clk/meson/gxbb.c | 40 ++++++++++++++++++++++------------------
>  2 files changed, 44 insertions(+), 26 deletions(-)

Applied, Thx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
