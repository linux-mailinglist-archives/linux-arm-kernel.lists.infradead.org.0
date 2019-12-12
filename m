Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D063B11D155
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7h0iXUZGywV+H0eTRRv4OwYK9CoBA7dpfwoSHoxnCN0=; b=c0w5q5DzA2qUoB2OVVshoTO0z1
	fDvWW1t1xa83o9G4JhRC+qr15wglOWBlI0HhtAuE7QmR3AJR5TxVevXzWx9S2kTKq4C8xjWXlErpN
	cUBArA222UJEF3m/RUyI0Xh2OswqNU667vt/37GPUQsgQ+RDQTp0J+Yrmhwy8IZke/Jz+TILSk90P
	CvTW4vsJEYAF6K0bKqkVUWASDBmU609zHSvCM6dTZkV4iEeQ/UQNjxyllgyWqJiZWyYjNzbGHQCUJ
	0i1Xb6WI8NWZ8O40zXJtGeLdYxRKgXMt0Se7Dy+xc8I68hMSfZdAM13nAi3w/LgEf4zKi+caRhLMv
	xc5Oy1GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQhc-00033y-9Y; Thu, 12 Dec 2019 15:48:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQhR-00032I-In
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:48:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so2893377wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 07:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ZSDD0/glpJ1MgC2m3fsC6RmNqv5qfMCzBU/Ws2SvIi8=;
 b=uBvEJvm6xdv/CK4SU85EVr9Mxaq6c28Tocn0XUIdJ+tDyPSZrt0IRxbFwAAZ62yiW5
 9KQVcubwDSY+6CA8hl1fFj9eJov2sRbL/5ESoQ/0bw8vPsA8+jUb149QEZlxiuaHM6gO
 xfkZyTDKaqE4d4r+JCCuwBQv5GWOYOFYudxnuQu6fjI/B0PJXfRn/Ehp46d3CgXQXCiK
 gbIwUpYQ3S+yRiAnpcjUPo8nO5nRZFvC9OK58nUPRUiv//D0JhQBh+VSvn4UN2UHfPTp
 R8xFcowCLsIU3cJ/DPXOlSpTfYNh12UTR1/DeTmqbb1LcZYE2U5lMvCreTJgZ3l4ZzUY
 o+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ZSDD0/glpJ1MgC2m3fsC6RmNqv5qfMCzBU/Ws2SvIi8=;
 b=JYganFWZzN9EB4+J0MK7oDxvCVA2QN8iiLj2Tfx+NRFAxb5lh+AVe7+fGmqoOCBveb
 NlESrqdG3jJnub5V5Pr9/QMGB+095Mt+5cJpqlla1DBv6UH/BaD8AoHui9pE2F1PtJN3
 ZLShJwXs7SPzMLZKSrUwS6PQrV1jcoB1PmPt/7zsaiBq3WvfmtO5yb2lX+oT4yQbFsrb
 puoi/dPQQ59xRJFI7t2u9DDsTFV09LcPKJSaJ+E+PrkHaBoeo4sEPamVuvLNkTo2Nmow
 lQVC7XZarjWQGE3BEt82Gzd0oWa0A963/g5rTbZ7qnWote9XPMziZVeVlV9p5lf0oKpq
 75ww==
X-Gm-Message-State: APjAAAWPSEZijO/ro0M9Jt/xU5z4cSTOqIw28LmI2Xpcze11eTVC3wZK
 n27AhF26MDPvhTe4KJxB4HLv/w==
X-Google-Smtp-Source: APXvYqwXq66n5SLrBk1VKsZ4xywwLs9fJTHh0tdpXlZ2eIUT6PJDbAVb67zUzRsHvrqVeSqYp7yuWg==
X-Received: by 2002:a1c:3141:: with SMTP id x62mr7208553wmx.18.1576165700213; 
 Thu, 12 Dec 2019 07:48:20 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id b17sm6464442wrp.49.2019.12.12.07.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 07:48:19 -0800 (PST)
References: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: Re: [PATCH 0/3] ARM: dts: meson: clock updates
In-reply-to: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
Date: Thu, 12 Dec 2019 16:48:18 +0100
Message-ID: <1j8snhbl4t.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_074821_617007_39D61C5A 
X-CRM114-Status: GOOD (  14.14  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 08 Dec 2019 at 19:05, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> This series moves the XTAL clock out of the main (HHI) clock controller
> because it's an actual dedicated crystal on the PCBs.
>
> The last two patches add the DDR clock controller whose output is used
> as input for some of the audio clocks.
>
>
> Dependencies:
> - patch #1 has a runtime dependency on my other series:
>   "provide the XTAL clock via OF on Meson8/8b/8m2" [0]
>   Jerome has already queued this for v5.6
> - patches #2 and #3 have a compile time dependency on my other series:
>   "add the DDR clock controller on Meson8 and Meson8b" [1]
>   Jerome has already queued this for v5.6, but you need an immutable
>   tag for the dt-bindings

Bindings tag clk-meson-dt-v5.6-1 available with the necessary ids
branch v5.6/drivers with the actual driver changes

>
>
> Jerome: can you please rebase the v5.6/dt branch tomorrow on top of
> v5.6-rc1 and provide a tag so Kevin can apply this series?
>
>
> [0] https://patchwork.kernel.org/cover/11248377/
> [1] https://patchwork.kernel.org/cover/11248423/
>
>
> Martin Blumenstingl (3):
>   ARM: dts: meson: provide the XTAL clock using a fixed-clock
>   ARM: dts: meson8: add the DDR clock controller
>   ARM: dts: meson8b: add the DDR clock controller
>
>  arch/arm/boot/dts/meson.dtsi           |  7 +++++++
>  arch/arm/boot/dts/meson6.dtsi          |  7 -------
>  arch/arm/boot/dts/meson8.dtsi          | 24 +++++++++++++++++-------
>  arch/arm/boot/dts/meson8b-ec100.dts    |  2 +-
>  arch/arm/boot/dts/meson8b-mxq.dts      |  2 +-
>  arch/arm/boot/dts/meson8b-odroidc1.dts |  2 +-
>  arch/arm/boot/dts/meson8b.dtsi         | 24 +++++++++++++++++-------
>  7 files changed, 44 insertions(+), 24 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
