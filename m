Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A1F2FA85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQDfhs2eb2wSAKqtzHwux73Ef+64Q2RODA150CvrCtc=; b=mSib1K2RC8LPoZ
	ww35JJLECMc3OxnOaMLON9GUcHj8aDXb4aKRT/2p8nU3dQKBxCf0US8Iwm1vh3bl7HfJ+J4Gfl7WZ
	ZrTXMUEZ80zORPwzSvHVyWML8NjXnFlTfFoiFkpTTWwhWb66n80hIYJjPGsd4BgsY1ng4PBqQxnhh
	18pUd6s9c2MEYAhNCCh27vZ+bjv3W6szbhpyVvt3AbUvYsiXpX+JbK4uF0nSkZ6MMqmL7eT5xEroO
	phaNEpy8pI/ShBTlv9ToXcHgO7gl0ih61pfhgnxRTDKjGYmtgu2h+JAM0KUXIAGK4N9N6ljgwjq3Z
	1S1YUSZGRdtiUlQUrIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIdk-0001QQ-EC; Thu, 30 May 2019 10:50:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIdd-0001Pb-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:50:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id q62so5581856ljq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 03:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GujjVqYvghBdPSX7VxmS3hXD06wuFEV0tCXXC5n3oh4=;
 b=CN811zv1FoQncDkpdI4s24Vm513HQAcNhLAIqU7HDOaOPuJWllTxOn0Oi6d1Rjj6tY
 DVUDJveBUUWmitED4VkyHwOIjXWNOzwVDNjfLrbIchJ0azhabEyazvXu3hqS6w5GWz+h
 qVM6BU+lh+HOz1h/vWsg4SjwHfQzbkxm7B384a8peK/m0FWTquO1qRIGDLw6zaXleo3X
 +r3SViaE1FGYG6OKF3HYKIdGdA2QjzU1fNzEgnnZtQPB7jtNX2L+8OzvMLW7ygucnBJz
 0YQz1JSQ9TBcbxHU1ZtBHAxG+r+RNTeq5WvS/thKwYe3hYy2/lYjFJDm0gg9X0aPm6mG
 myXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GujjVqYvghBdPSX7VxmS3hXD06wuFEV0tCXXC5n3oh4=;
 b=g9P152nHBUM0t/bbzJgoxbhXIArVv3htDRFUTiajDFdllQDqrNKzMpr+ZnkZv87GwS
 Yow8QCvToozylh4uOYshMMMshdSXKBVtcXKCWa5QSYrGto3v/fTsHI36UrIsB+lXbI/J
 jCtkQqRy3+FujeRU07EwbLPMuEZ5ImIZZy82kqFHtYtHai2WDyJKDeIA8SaQmvVelrBm
 Gi5bZbtfQa/liX2BiUcIBiiPd3qOejSncejJ9m9K6KIocqSN45ihZ6qtxFaX1+Df6lYP
 dxd33h84DstS+GPqVJTCgZxHx63KJs6Z8PclJ3abdhyhJQRMcsirDKtW7cmB0g1xG1xp
 OyRw==
X-Gm-Message-State: APjAAAUD8ZBgvN7f0i6HrEWgmhSbXFfdCDy+wRDdXYmovkexImY5t29G
 aTIrxraUD8OwxSsfgWJiZrCkIWd/pMoKEuU8pHQEDg==
X-Google-Smtp-Source: APXvYqyGYcwGA+tlm2mIFPQTecQ6k0i2fgItTjNXwyTFBBO6k++0mUY3y8F8YUjWgZ86rp7hRUeomyES04W9v59jRmk=
X-Received: by 2002:a2e:a0ca:: with SMTP id f10mr1730806ljm.113.1559213423052; 
 Thu, 30 May 2019 03:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190530091139.11643-1-sudeep.holla@arm.com>
In-Reply-To: <20190530091139.11643-1-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 May 2019 12:50:12 +0200
Message-ID: <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node by
 default
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_035025_780807_753A4934 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
> idles states and CPU hotplugging. We need to disable this DT node by
> default. Setups that want to access the flash can modify this entry to
> enable the flash again but also ensuring to disable CPU idle states and
> CPU hotplug.
>
> The platform firmware assumes the flash is always in read mode while
> Linux kernel driver leaves NOR flash in "read id" mode after
> initialization. If it gets used actively, it can be in some other state.
>
> So far we had not seen this issue as the NOR flash drivers in kernel
> were not enabled by default. However it was enable in multi_v7 config by
> Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")
>
> So, let's mark the NOR flash disabled so that the platform can boot
> again. This based on:
> Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

It's a bit sad that this cannot be easily fixed (I don't know if it can even
be fixed with firmware updates?), it's kind of useful to be able to
update the flash from within Linux, as that mimics what pretty much
every IoT device (such as routers) is doing and would be nince for
an OpenWrt port.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
