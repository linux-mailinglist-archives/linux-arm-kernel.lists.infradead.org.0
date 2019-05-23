Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794E2273EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 03:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MPfQgZ0NWjeq8Aj5Ptr035Zza2vbW3NLHIu7NOo5nM=; b=Y4mI/IcAZSl0s/
	NJRo610V8iHlgHq9/GU8qCM6R+xZeH78hlOHQGA8Dzd2r/PhBXAgFg2+8kK0OTKQ3T4GBBQ1JVMIb
	r53QtJKCTm/gOrt9+xMmYrDyDzel4kIx+LW0MHiKAKDr90tNt2TcNDnxo4zCgLu8CIBPOPoi7YUnT
	MulUEMrcwHBvEjy9PjSWgkDLzFWC181tsuD3AWh91UbAHyskGykl/gJffuLMJCcZfhZNIfyFCdON5
	u6XIv76JQ9FvAdUzIUt+zF+QAg8xSktQgPMsS3sTGR6oVOJcGc9TuDx3vWN0Lquo9pmhDb70n7d5V
	ckU5uz1/Jlp5Ey/LuxBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTcQH-00006O-O6; Thu, 23 May 2019 01:21:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTcQA-00005H-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 01:21:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so2188896pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 18:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aZA+MNZ2gy6tyuVfxVa4+g2Ok6wQVnYjHxlUytPK634=;
 b=PUOdCk/UEJMFygnW4qCafnKIOUDF9MkSj5dza7t9Rj1736a5ouarchneF9tOUqj8/z
 SwjwewLHDFiwc3/ab4+IUd6mSSbU3wGjHT55wHa0aIKC1NBiPkwHIDEbMwsD2hEcB4Ln
 QF8G7EF8TV+3fes/dMKH9cXzQXwp1u7XFF2Z+TinznOq3GXu9qtm1Bny5T7RiZw8XzNE
 Cxh4wMPEVxaRVCYDbo6IjJEEZzAhqXOME50oAR82x8GVyzLbA7wTLFKB//3urtelO0qw
 BdP2z8abMTXZd7YPnMcb5AUSc4Ao/ie6Fl/4q52kn16qfHT0MciIDBn+BG+YVnjcAlf+
 bBRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aZA+MNZ2gy6tyuVfxVa4+g2Ok6wQVnYjHxlUytPK634=;
 b=ePKCmUZqiXgziBKNKENQFoGMnk8GJD59/lh1ctTDjyoBJE6+RdOo8nD8YDeDC5lHmJ
 bTPjLRy+bhRpeXvmS1/IXbcncnOL6MCOpTJyuW8+ejZlxkmVt8ZMeVjYBd38zDRDTTp2
 RI/wRWtFiSyf3d2Di8oZvsNSVO+tFFOoZ3PVwRAR16kqejAn4z+j+rqHIyMhQSDsXvwi
 +aavsTCRD4nQpx3rRCMUAjVaZbrViNMAmlLp3psOlV2aX10tPFurrLyoCpCdrmCRwvTs
 v4elnsTfiz4DndMWBMgp4yVpLi9s2dao9tk0FWRYlYCsKt6Z/EQ6DAYRLGa0IzH8JqbZ
 9asw==
X-Gm-Message-State: APjAAAW8mzyjCN3Ms2bmVFmzYuenK/5UzEohEoexofmG0N/KsDTsPm7W
 RZAzPJsvjM5GLJpQjoh0kkK+cQ==
X-Google-Smtp-Source: APXvYqwZPRmT7k3u0C+6WYbp7uBd/JRJE1geAcqL1D/11qfWc7DMiFMpRi9UzoUrwq9R8sy64EUUhA==
X-Received: by 2002:a05:6a00:43:: with SMTP id
 i3mr21282572pfk.113.1558574484468; 
 Wed, 22 May 2019 18:21:24 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id u1sm40517035pfh.85.2019.05.22.18.21.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 18:21:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, mjourdan@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/5] 32-bit Meson: add the canvas module
In-Reply-To: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
Date: Wed, 22 May 2019 18:21:23 -0700
Message-ID: <7h1s0q55kc.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_182126_314414_92CF8FD2 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> This adds the canvas module on Meson8, Meson8b and Meson8m2. The canvas
> IP is used by the video decoder hardware as well as the VPU (video
> output) hardware.
>
> Neither the VPU nor the video decoder driver support the 32-bit SoCs
> yet. However, we can still add the canvas module to have it available
> once these drivers gain support for the older SoCs.
>
> I have tested this on my Meson8m2 board by hacking the VPU driver to
> not re-initialize the VPU (and to use the configuration set by u-boot).
> With that hack I could get some image out of the CVBS connector. No
> changes to the canvas driver were required.
>
> Due to lack of hardware I could not test Meson8, but I'm following (as
> always) what the Amlogic 3.10 vendor kernel uses.
> Meson8b is also not tested because u-boot of my EC-100 doesn't have
> video output enabled (so I couldn't use the same hack I used on my
> Meson8m2 board).

Queued for v5.3...

> Martin Blumenstingl (5):
>   dt-bindings: soc: amlogic: canvas: document support for Meson8/8b/8m2
>   soc: amlogic: canvas: add support for Meson8, Meson8b and Meson8m2

these two in v5.3/drivers

>   ARM: dts: meson8: add the canvas module
>   ARM: dts: meson8m2: update the offset of the canvas module
>   ARM: dts: meson8b: add the canvas module

and these 3 in v5.3/dt.

Thanks,

Kevin



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
