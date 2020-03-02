Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764B7176141
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcYV+EAMLMd6CmPJPcXbjKMcH+zRwW/09wnncGURLDY=; b=E/KLoScQtFUWIl
	IBNo2qzLy9rKV8MdTLWXqhBS+moGl/l/Twkg0ppIkLXJD41h6K15S9Z2UOAOyB2NDq7VMhubvk5dG
	DZuyaH8zlsfdfJaeaqbc73HWnUwT7U29E41nVL16CYfVTbvkujshw55PxUmwaIOe0CVsKfBwmStwI
	RK3Hcu/1MZFBGEaf/uCXR+FRk8ehFMNs7jbp+MiVablg5vrTZZH/DpKsrCJwI3hTKs5oYf6GoiVZP
	h3wTzC3lqSwmw0bKOu2jIEFf55xK82hc0lmbaFmLOFvLlS/k0c+JSOI6+ZvSKyTcp4y1IuO1U4WeG
	4zrqlZaXi/HfrXnk6pQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p3m-0007hj-22; Mon, 02 Mar 2020 17:40:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p3Y-0007fj-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:40:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id z12so188019wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=K5oqHdhYQsbfwq1JYk39e1I9fjT9r5f+6YhvHb0bQI8=;
 b=MCD49OCiX7UTc2zw7TI6NhGlqWX7Y9VHIk0EDfdExeozCcgciVDPFIH0fd/R1lvBv1
 47evh82+1UHr89jfexA+0pUGgrrkrcWozvZL3nbDc/HB4oXlYJZg4IMGjBw4cQOxf8yH
 vRtckG3qJipaBRkTbNJsxz9XaG9Hazisn3fEh/2BUikhnxMx3Wyp9YMxm/YfCCvP8a1l
 H4IRAUwogSyWctz59D0VCd1sI2lu6JdXgwM3TOk1lQ8BPfTgvMmsZhAD1y1XEcrVSYJ8
 FTkEtknCxWWByrppNDuALB5r+pwuIPmMaHxHgsNGpNRwx/nN4tW5IlNPEN8FZfP26OVv
 zDnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=K5oqHdhYQsbfwq1JYk39e1I9fjT9r5f+6YhvHb0bQI8=;
 b=XVLc9eNzgMTROemonDgZluEdpP5KQxiZx9f/8QetkxkJN+VsUM5rp+r7qc0P+D8m7L
 zyrZw0BrJ1mLCkln540BbWGf0svfMtOYU419gVDXg8kJx//d9A62U5+DnvrtPjNQXR3Z
 zR9PMrb2vdIYLZYkSzPZ2K/KgejbP5W2H7YU2dzyeRQpGTFR7kkMCB37kVxMrsRSutNN
 zIqlbHDzJUfVM3wxoLsoC+uf2b7FjJcJ5uJo2sZJV+3nihR5oPd1kqquSEgKhcmPUOVq
 NnaeuMqrMQdSdnQQ5LKdLEKUMBX00UDT/dIYAd4MyYOx6xmUoh6j/I/mSF76G2Hw+xqd
 3Ffg==
X-Gm-Message-State: ANhLgQ0eHhP+dB/b+28WvnPYMmBUkCRxIfnLeX9ZZrc6Pk5RGQm1EnBp
 Oh0wmUOANkcTpaW9eMSk2eVIMA==
X-Google-Smtp-Source: ADFU+vu4eyZf264stx6XXEuonL5I+rb48iCgNQ3uaj7b59BY/gStshUsUmb52p8X8SoOhZlTgoxJpg==
X-Received: by 2002:a05:600c:2283:: with SMTP id
 3mr155939wmf.109.1583170835939; 
 Mon, 02 Mar 2020 09:40:35 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u20sm150314wmj.14.2020.03.02.09.40.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 09:40:34 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v9 0/3] arm64: meson: Add support for USB on Amlogic A1
In-Reply-To: <1581990859-135234-1-git-send-email-hanjie.lin@amlogic.com>
References: <1581990859-135234-1-git-send-email-hanjie.lin@amlogic.com>
Date: Mon, 02 Mar 2020 18:40:34 +0100
Message-ID: <7hblper6y5.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094040_510277_00E70E55 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Michael
 Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kishon,

Hanjie Lin <hanjie.lin@amlogic.com> writes:

> This patchset adds support for USB on Amlogic A1 SoCs.
>
> Because of my mistake I fogot to add PHY maintainer(Kishon) to mail list in
> before versions, so I have to send this v8(and lateres) version again(only with dwc3
> bindings and driver patch removed).
>
> This patchset is composed with :
> - bindings of the PHY
> - bindings of the USB Control Glue(already accepted in v7)
> - PHY Driver
> - USB Control Glue driver(already accepted in v7)
> - dts of the PHY and USB Controller
>
> The Amlogic A1 USB Complex is composed of :
> - 1 DWC3 USB controller for USB2 Host functionality
> - 1 USB2 PHY for USB2 Host functionality
>
> The USB Control Glue setups the clocks and the reset about DWC3 USB
> controller, and binds to the USB2 PHY. It also configures the 8bit
> UTMI interfaces for the USB2 PHY, including setting USB2 phy mode.
>
> The USB2 PHY driver initializes the phy analog settings, phy PLL 
> setup and phy tuning.
>
> This patchset is based on A1 clock/power domain/reset series at [0].

Gentle reminder ping.

Once you pick up the bindings and driver (patches 1-2) I'll pick up the
DT patch.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
