Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3112517A125
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kXOG/a9hQqfnEjqeaTBAAQMoPh8pE8H4sE6aHaGOVG0=; b=Bb3L/TkfX85buqbVxW96NmD9Kb
	X2th27UPPwrzZT8cYF7DOy+0Y5q0aWkKdmSqX+mQJmpFpjViHukopuXv/CAA8vqcx/9WyCG+g+3Qe
	FP5XPNUYS4qkj8rbZL865eL+36GzOJHtKDONCu6C7Hv3QHEEH9FHagPmMn18XbAolP8X5ewSSMCTH
	MvcphmKJfedDHKgiVaPqmTT7SJVmko/O9nbUsRpjwJlunBNKtEnFQ0gMCRBlQSO99vOIpy6WlDMDn
	C0TiBllnvGlAYBoVTs11qE8Vwk/M+hBS4e1DgxorONck/OgAJnQY/dfDw14lWB+60v0++RgTM3hwH
	GxgTwcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9llk-0005sH-Ga; Thu, 05 Mar 2020 08:22:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9llc-0005r6-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:22:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id u9so4669229wml.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 00:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=wy8PG+5094H0kwoE9azcIFtGBXe17DljDLj1gap6KjQ=;
 b=XQhSxSzu+98TQDBaQbX8qV6wCsTohykSPQpUarrD/+uUdM2OhBCJRgfHiQgAeL2bqG
 G87zQyeBW8INB88/a53JTOHfVNbpSp170zFo6ePYkoaYwrIkfClzdYU/ZE072Pq2MwIZ
 Gm1D0BQH7FmM5AiBCcb01izbcw1l1h42XG0YJgv8L9V0og6/XIQgYZ8AQ8mGWH/HAM3a
 cZHIb+VqXxsktjtO3C4zj7LMmWlcHd766DKDxx+7HwWMdGqV5C5Nfz3aJBhl9G60u4ZM
 iJ2Nzj+6dVprj7KACOhkfYoW0JHDsxB7scJbNkpoq+xbFn94AW9l5OBu7i1aWpIZEQv9
 PNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=wy8PG+5094H0kwoE9azcIFtGBXe17DljDLj1gap6KjQ=;
 b=HtluyKlknVdingOdgZRSY5oPpPBlDAgO0t7pGz0iaupEURMvHLepXvWfC5y/wksiur
 EGIcczXc7ZuMMc+qbZ0h2aIm6hmldLhlV1P0XbkT1wa6ju7H2Nz+G+w+SDXuc/OJia4a
 5g2821Dfl1V5XljTaYXQfvfq9ysCXScpuB9R6YCsEp9sY54jFXXscTSSg0JsE+sFGsXk
 pJIZnHibM/AMm3Yix/LeC+ZhjgLFFB3hI8bxRjokFx9nZ2s6egW55KMJHQdrcWNqwzue
 0ZK96qaWcOwlPfDeZtTuANeyVPDWGbVs3B4zIRTO/ThM1y/fPMFenm2u47/TP9U4rQ67
 RHvw==
X-Gm-Message-State: ANhLgQ0NAWfjEtdENDhny33L3jHNXAk8MwcGCwitECJEyAMZLnZ33rOW
 WjjV4vKxpew3pvtACzpFBka+KA==
X-Google-Smtp-Source: ADFU+vtQyU4UfDH9d2/TXDERF+INdtSbx2/ljMK+EMqmPS+JCjhE5+wuGnUWn9fPAey5YSeP3jbcRA==
X-Received: by 2002:a1c:dd45:: with SMTP id u66mr8644559wmg.154.1583396523188; 
 Thu, 05 Mar 2020 00:22:03 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m16sm11943105wrs.67.2020.03.05.00.22.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 00:22:02 -0800 (PST)
References: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
 <1582985353-83371-3-git-send-email-christianshewitt@gmail.com>
 <cc4c54c8-aa7f-8755-dc35-94e32d0019cd@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: meson-g12b-gtking: add initial device-tree
In-reply-to: <cc4c54c8-aa7f-8755-dc35-94e32d0019cd@baylibre.com>
Date: Thu, 05 Mar 2020 09:22:01 +0100
Message-ID: <1jftencity.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_002205_020053_42A51232 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 03 Mar 2020 at 15:50, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 29/02/2020 15:09, Christian Hewitt wrote:
>> The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
>> board with an S922X chip.
>> 
>> - 4GB LPDDR4 RAM
>> - 64GB eMMC storage
>> - 10/100/1000 Base-T Ethernet
>> - AP6356S Wireless (802.11 a/b/g/n/ac, BT 4.1)
>> - HDMI 2.1 video
>> - S/PDIF optical output
>> - Analogue audio output
>> - 1x USB 2.0 port
>> - 2x USB 3.0 ports
>> - IR receiver
>> - 1x micro SD card slot
>> 
>> The device-tree is largely based on meson-g12b-ugoos-am6.

largely indeed ... Would you mind pointing out why the am6 dts can't be
used and why this one is needed ?

Maybe I missed something but they look the same to me.

>> 
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/Makefile              |   1 +
>>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts | 557 ++++++++++++++++++++++
>>  2 files changed, 558 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
>> 
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index eef0045..1fd28e8 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
>> new file mode 100644
>> index 0000000..819f208
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
>> @@ -0,0 +1,557 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 BayLibre, SAS
>> + * Author: Neil Armstrong <narmstrong@baylibre.com>
>> + * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
>> + */
>> +

[...]

>> +
>> +&spdifout_b {
>> +	status = "okay";
>> +};
>> +

Again, not support by the HDMI controller and not used in the sound card.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
