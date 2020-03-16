Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC10186E4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 16:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CflIEWoU530Le3BJrPpya1F/XYp5fCXxg8wEGeX7ets=; b=I3xa2y+YAsvo0a
	DiTW5V2QDnGk2z0R3yZiD2QwSOEc0bS1JMR0OIsNje2u8tl/lBRMQ65bBwHM9quiov5MpSHSNB+w+
	m6Mt4/CLooYIRmAT7wbXxhuzQ5SRVyNQqpxZ9ruvFGRQiQd2VxU77v5Ri+/nwCpkDrbVvjSddk0ZI
	AQpPRwu3YBnasej91ytrtzSDM4rtrQyAJj5fjsrk3ZCwJHMiOI9OYJiuJvafPIRY6hLmW854ff42L
	tcAapzGIhyuODoLuwqJbFv2LMAF93z1ej9W6HjYAG1j4L7lnLJNF3fZzeHkyaHLElQduWlfcO+bsG
	B5sF4U/uKTV7GoDd9EKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDrLp-0002AO-JJ; Mon, 16 Mar 2020 15:08:21 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDrL4-0001Y6-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 15:07:36 +0000
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 02GF7B88019506
 for <linux-arm-kernel@lists.infradead.org>; Tue, 17 Mar 2020 00:07:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02GF7B88019506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584371232;
 bh=Rw7FkoGoAr5+lj/fVdrKHLBKuXz3aq8uOxZajjwfLLY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=l7CAvx/cw+RVhDXoI99jRcJ8KFpNDVyEnrwx0fVPkqZt668YTTBEtNmbGrxyjVt9l
 cec0qAHjdnpZ2STJIhd1SDEm1cuFHAIkjhfEBIYpZ+qXggIg2H3Q+2H2zYT9kAqNRw
 RQeSSdz4iQaJZbycLBs37uTtWGc2kCG7gsUY7Vi88tyeZ4jD9GSdugaNKFI2QWy5tk
 cGilP+crfLty+nxjUFkZPsA1pxmgXLBZeT1lL98otBBgiycaegfU5Oseh4jzrKQFc1
 3xIeI1Mab2uCYHOrD8IFe4LGX8qZePQI6VR9ND828Mtv7ekfaqYBIpfUTcZMSQcqvP
 5XQP5oN0JJnhQ==
X-Nifty-SrcIP: [209.85.221.179]
Received: by mail-vk1-f179.google.com with SMTP id k63so4961827vka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 08:07:12 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0ImUuZX2Uga3dGc/6oG42yuyvcCaRc2pBX45Pwn00Fe/CJLiWk
 0trPUJ4kRQCRyKlaxtO9w9ZW+qR9HqMbBz23GUY=
X-Google-Smtp-Source: ADFU+vvt4JvEKoc2fiG1QZUGkCfGZdrNf7msR8JwP3bm9Zl48bXtXmtuXQ4zo1fMNGt6GPj09x1shsb0dz2vw7Ad/c8=
X-Received: by 2002:a1f:2f4c:: with SMTP id v73mr402146vkv.12.1584371230992;
 Mon, 16 Mar 2020 08:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 17 Mar 2020 00:06:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQJ9aUD+SEnWwsJYAh3GPKWJzH6_SQnEvP662iLNGMrdA@mail.gmail.com>
Message-ID: <CAK7LNAQJ9aUD+SEnWwsJYAh3GPKWJzH6_SQnEvP662iLNGMrdA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add devicetree features and fixes for UniPhier SoCs
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_080734_824677_50C4EFFF 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> This series adds new features that includes XDMAC for each SoC,
> USB controller for Pro5, SPI for PXs3-ref, and thermal zone for PXs3.
>
> And more, this adds ethernet aliases to determine device name assignments
> and fixes for SCSSI clock/reset IDs and stabilization for ethernet.
>
> Kunihiko Hayashi (10):
>   ARM: dts: uniphier: Add XDMAC node
>   arm64: dts: uniphier: Add XDMAC node
>   ARM: dts: uniphier: Add USB3 controller nodes for Pro5
>   arm64: dts: uniphier: Enable spi node for PXs3 reference board
>   arm64: dts: uniphier: Add nodes of thermal monitor and thermal zone
>     for PXs3
>   ARM: dts: uniphier: Add ethernet aliases
>   arm64: dts: uniphier: Add ethernet aliases
>   ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel
>   arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel
>   arm64: dts: uniphier: Stabilize Ethernet RGMII mode of LD20 global and
>     PXs3 ref board


I applied 3, 4, 5, 8, 9.

Thanks.




>  arch/arm/boot/dts/uniphier-ld6b-ref.dts            |   1 +
>  arch/arm/boot/dts/uniphier-pro4-ace.dts            |   1 +
>  arch/arm/boot/dts/uniphier-pro4-ref.dts            |   1 +
>  arch/arm/boot/dts/uniphier-pro4-sanji.dts          |   1 +
>  arch/arm/boot/dts/uniphier-pro4.dtsi               |   8 ++
>  arch/arm/boot/dts/uniphier-pro5.dtsi               | 160 ++++++++++++++++++++-
>  arch/arm/boot/dts/uniphier-pxs2-gentil.dts         |   1 +
>  arch/arm/boot/dts/uniphier-pxs2-vodka.dts          |   1 +
>  arch/arm/boot/dts/uniphier-pxs2.dtsi               |  12 +-
>  .../boot/dts/socionext/uniphier-ld11-global.dts    |   1 +
>  .../arm64/boot/dts/socionext/uniphier-ld11-ref.dts |   1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi   |  12 +-
>  .../boot/dts/socionext/uniphier-ld20-global.dts    |  14 ++
>  .../arm64/boot/dts/socionext/uniphier-ld20-ref.dts |   1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi   |  20 ++-
>  .../arm64/boot/dts/socionext/uniphier-pxs3-ref.dts |  28 ++++
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi   |  55 ++++++-
>  17 files changed, 304 insertions(+), 14 deletions(-)
>
> --
> 2.7.4
>

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
