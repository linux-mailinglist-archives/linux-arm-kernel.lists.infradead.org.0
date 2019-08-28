Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438E69FCA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlIPEdJCZpvT7U0P9RyW8LYpKdiSuROJ0rNfKqmM1yo=; b=F9+A3JOxnwYr1s
	eY6V2RhkGl00aSsJZyg4pK4ot8ydNMGOpv2sg6b/BbVGng3I079x/fQkCWaqW7/9iR8S4VajNOSPp
	RyISFu1xPXBLEy0ULpYTSd2yk5/qFzwmFIckGOhlMdB6b0dlFFopfG9IYfCSi0bn87iCl0Rjkks3I
	OjMhkz1QJQ8mkYQh3rw61o86/WI119qdsUCiMJNACjRwFazC5/mVe6z2Z9WXNg9q98DtcrEhG/8fk
	Ld9uKEgQ9bA73Uff74HzuYYTCH097fUUqN8ZW8j8/je89dXn7Q2nIrdRL3i3wJhvydbd517YRMdWL
	me5rcEVcCn1WsDJrhFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2t3G-0001lT-4I; Wed, 28 Aug 2019 08:11:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2t32-0001kT-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:11:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id y8so1474807wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=eqxGNYrdtuK3SqiJCuvuQ/MzG5G751K98+gYpAVutqc=;
 b=P80buuQWsphNP6jREPV9Yws4dRQ7P0oOQLJevgEYYwLT3PHrJvQdpfP7m+z1ZM01SX
 TWLR2nOrqbxu04cjxyj+H2VurQ5K9D/lo0/O75yOHfKlwPEpZx+6Nspl5XSs0Z6aGXTF
 f0QtyxLe9BkWjANhgwOmPIjQ97xARayjbVQpMikUPIeMf/hsWtG+rfkGXFk+q4//IfW9
 gRixhJmfDRLDOMtSkF+qnsNAf58ljCf/dWMYOA57HhwIz9PYKbSejKGuZIECWCYjJtH9
 7kXYTDEnAQfd4Yo1+s0gYpy9i0ESORwXIN6r3mfMTNpNo5GzbRhLAb6RBzOL0dczg+lc
 JF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=eqxGNYrdtuK3SqiJCuvuQ/MzG5G751K98+gYpAVutqc=;
 b=Kx7/v/3BXJ8A462ZVpiE1hwa7MWw3z4r5vSp/FntoW6Oo2s+e0j2yxtg9srzX4JZ+t
 m4N7QfOJIC3nZMa5ybbLOFNfjQ+N8wKHycxfBIo9Ll5R2OgUVPAS6NKknvX+DwWMNjWh
 Q1zT8X8c+ehhyL9qz/gmsdNoumA6CAGvIqmraz+QGMQm9QZia1w6tmSLWXB+3U0HVkA+
 1PKZy9WOWcTJQtXZLFBo7/iHcLP+eP9m7nuHS0ZNsxmjno4jw0N/H/AEtkrlrks5nWfF
 p9k418EOiJRS8h6Z5yqENheGiGMbDoFvGwKHBRXn7Xo4dO/YAwBOOBPlC/spRb+4yha0
 SBAw==
X-Gm-Message-State: APjAAAXTqM+kB7qrxYjGNO2xMA19YNgtEjUMlpYIZr9Utj25SEQj+qVW
 igL/D7YF54n0PZicctFNCXbIbw==
X-Google-Smtp-Source: APXvYqzwX8FTlhdjUpZFriJLF7P3vR+CknbqtKPsxaLV3l7qvZqJ+ykNQCGzZRQgUdNj9dWbhLJxPw==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr3193282wrn.184.1566979878558; 
 Wed, 28 Aug 2019 01:11:18 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d17sm2668811wre.27.2019.08.28.01.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 01:11:17 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 0/5] 0/6] arm64: meson-sm1: add support for DVFS
In-Reply-To: <7h1rx6uti8.fsf@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
 <1jblwc6wjq.fsf@starbuckisacylon.baylibre.com> <7h8srexw1i.fsf@baylibre.com>
 <7h1rx6uti8.fsf@baylibre.com>
Date: Wed, 28 Aug 2019 10:11:16 +0200
Message-ID: <1jo909ogkb.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_011120_690645_4AE2727C 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue 27 Aug 2019 at 15:35, Kevin Hilman <khilman@baylibre.com> wrote:

> Kevin Hilman <khilman@baylibre.com> writes:
>
>> Jerome Brunet <jbrunet@baylibre.com> writes:
>>
>>> On Mon 26 Aug 2019 at 09:25, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>>> Following DVFS support for the Amlogic G12A and G12B SoCs, this serie
>>>> enables DVFS on the SM1 SoC for the SEI610 board.
>>>>
>>>> The SM1 Clock structure is slightly different because of the Cortex-A55
>>>> core used, having the capability for each core of a same cluster to run
>>>> at a different frequency thanks to the newly used DynamIQ Shared Unit.
>>>>
>>>> This is why SM1 has a CPU clock tree for each core and for DynamIQ Shared Unit,
>>>> with a bypass mux to use the CPU0 instead of the dedicated trees.
>>>>
>>>> The DSU uses a new GP1 PLL as default clock, thus GP1 is added as read-only.
>>>>
>>>> The SM1 OPPs has been taken from the Amlogic Vendor tree, and unlike
>>>> G12A only a single version of the SoC is available.
>>>>
>>>> Dependencies:
>>>> - patch 6 is based on the "arm64: meson: add support for SM1 Power Domains" serie,
>>>> 	but is not a strong dependency, it will work without
>>>>
>>>> Changes since v1:
>>>> - exposed GP1, DSU and CPU 1,2,3 clock in patch 1
>>>>
>>>> Neil Armstrong (5):
>>>>   dt-bindings: clk: meson: add sm1 periph clock controller bindings
>>>>   clk: meson: g12a: add support for SM1 GP1 PLL
>>>>   clk: meson: g12a: add support for SM1 DynamIQ Shared Unit clock
>>>>   clk: meson: g12a: add support for SM1 CPU 1, 2 & 3 clocks
>>>>   arm64: dts: meson-sm1-sei610: enable DVFS
>>>>
>>>>  .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
>>>>  .../boot/dts/amlogic/meson-sm1-sei610.dts     |  59 +-
>>>>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  69 +++
>>>>  drivers/clk/meson/g12a.c                      | 544 ++++++++++++++++++
>>>>  drivers/clk/meson/g12a.h                      |  24 +-
>>>>  include/dt-bindings/clock/g12a-clkc.h         |   5 +
>>>>  6 files changed, 697 insertions(+), 5 deletions(-)
>>>
>>> Applied 1 to 4
>>
>> Will there be a stable tag I can use for that so I can apply patch 5?
>
> Ah, I should've finished reading the list before asking.  I now see your
> clock PR.  I'll use this tag[1] unless there's a different one I should
> use.

I just pushed clk-meson-dt-v5.4-3 for you, with dt changes only.

>
> Kevin
>
> [1] git://github.com/BayLibre/clk-meson.git tags/clk-meson-v5.4-2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
