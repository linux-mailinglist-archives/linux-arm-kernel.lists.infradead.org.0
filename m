Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B7A32B02
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fROUaN1KHzzPcEYnLTNSCTgARF9AWv9OGZpUBoxxZ+c=; b=Y7z0egJXnMV+g1
	z37ypJyUStbr6Sv42k9I4tY3F/spj1gy01PkFEVgLmJ38Vfp8nnYlXIMroBxtPx+nDJQJOO8vp/vf
	PW3Dji93RfNcojG/dMOZPZYIf0Mm82k2lVGSmaLAXPpatdLX83TZkBgb1wj8nPT5ezULuX3WTsYjJ
	o2+YD3Kfi8jW4/N5h/8S/Ce3ElIo8tchOw9OZRnm3wzl6GLkaNRNPpf2VKWVekCjW/YuRLOnlbycC
	JKDCYBh+UW0hwdhryeKzbbw44AGCTK3xxXuK67Xc/dBVdfj8p4nKj6AnWMupIi/1cOPpvOtwTfDK0
	NIvJHO5hnB3e60RegkQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiXp-0001qa-PB; Mon, 03 Jun 2019 08:42:17 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiXj-0001ps-7g
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:42:12 +0000
Received: by mail-ot1-x342.google.com with SMTP id b7so1700149otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 01:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v07iYjGp5nWV9CSxAvLDHJlP76eeAiLKXDinb2hN/Lw=;
 b=nHkL5geTJxbfuQTgK6/8G88ruDwULcnsHmwJzcmvL2oHp0myFdfE1FhPnKasmXKmIC
 Wfd3WTWIxsd+dUj98ycDxuRSzGLYPqt/VQNY/7pH+/qeqPhHcOI7KGX/GJ5FajyXLlW1
 cwF76Go8yIl0bRyDwUgpJp9tHHczY09bKqLsVeOfr9OrUvp6aHIjWYi3ldceuTVP2inL
 WZE18/rqHWgtq98O/eF6M9w5rWQWMDjCuZcQQtCrEn+iRPN0fjfXIXKdH9E0CUcthvzE
 kxxLecILJ6UbOTzN0sRITkxwwx6iP1LqU59LacFnojwKM4GslL38Fj+SBrn6mSIKkWV9
 F3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v07iYjGp5nWV9CSxAvLDHJlP76eeAiLKXDinb2hN/Lw=;
 b=a7qL7nyfh/LURy+WHyrLbZRSO2pmnJZbDSZrrNwkDaZ0GZ2K8pe3KmKbFDZiH0UyFi
 ZURKzcozV1aOXrIp8pUIe4Ia15JgCchJFHfsrR4KyoePORIBfu4AQ6Fac3wHZGF1m/mq
 MHtJf4P2nWCYGu1xogqgDT0wiNjflqOHMElmVHWUpjqKSAD/TFRW8MiNVLjtXLxER1b/
 sT1NVWbJq8j5pCFV1cx6wPG/a8tqGTzgscdcUAZn3Amf72eEIhZOGE5FuF+Gm1Cv5p99
 twFsJoppQoiE2dttEZp5ajkwS/MLVjdoIiN8U0ig8ckindNnrKdYINX9R8L7nMz+V22H
 Se0g==
X-Gm-Message-State: APjAAAWcf/u4xVobVEnDGe1NQ011m7BZJvKmsHs+ON7YANHklwTSEFc2
 l4blp9HIBfZ7ZQhnUC/zMFg96M05iaLTzmn16oVS/g==
X-Google-Smtp-Source: APXvYqwYLd2dpHu6nvkvw3MVvAzbMJxHXUfJpurp+73sDV/UA282/GSNQJj+tD3erUPCO+itTcUjCH4KgWdFE0lty5s=
X-Received: by 2002:a9d:529:: with SMTP id 38mr328019otw.145.1559551329341;
 Mon, 03 Jun 2019 01:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Mon, 3 Jun 2019 16:41:56 +0800
Message-ID: <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add SD host controller support for SC9860 platform
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_014211_343442_C5172D3A 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian & Ulf,

On Mon, 20 May 2019 at 18:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> This patch set adds optional clock support, HS400 enhanced strobe mode support,
> PHY DLL configuration and other optimization to make the SD host controller
> can work well on the Spreadtrum SC9860 platform.

Do you have any comments for this patch set? Thanks.

>
> Baolin Wang (9):
>   mmc: sdhci-sprd: Check the enable clock's return value correctly
>   dt-bindings: mmc: sprd: Add another optional clock documentation
>   mmc: sdhci-sprd: Add optional gate clock support
>   mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
>   mmc: sdhci-sprd: Add HS400 enhanced strobe mode
>   mmc: sdhci-sprd: Enable PHY DLL to make clock stable
>   dt-bindings: mmc: sprd: Add PHY DLL delay documentation
>   mmc: sdhci-sprd: Add PHY DLL delay configuration
>   arm64: dts: sprd: Add Spreadtrum SD host controller support
>
>  .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
>  arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
>  drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
>  3 files changed, 217 insertions(+), 8 deletions(-)
>
> --
> 1.7.9.5
>


-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
