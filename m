Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C955B9F643
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sG/qRA648X+xiJDbOoFBxllYdS0mSBbR5Zk1bfAKST4=; b=XxEsPbE8EvAvFN
	DtEJ74+ZcdGKsnDsOi9fLsHqtX08RKLbrbF3C4gZm9pLP3j4H8RzPQYcyEybf0zGOw+2xHYqrDX7f
	G4Dx2VEM4kZDDOAyxm+Jhn9wk2u0w/ccETp7XAvXc1b8pEPsCznYEgjMiN6KHB+EjV8k5OhDY3/1b
	1fKJ/KBINyenwsl+gl9UGmarMvG/I/aCOpvJLdcZT9x3/v6cEuedUGklhn9L7ggbzQKqw6IP2jNYY
	KoJY7AaQQ70FUYqWfRT/ZQV+ZlpiXEB6xWbmqKPGScZzpAlTrXq/C//D5kVVZ8w+Km7Sur10YckI0
	osP77IxrRD1/c7BW4zow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2k3p-0006oC-5J; Tue, 27 Aug 2019 22:35:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2k3V-0006em-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:35:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id i30so307550pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=jdwDMeG5Gy8r+selbq8n2uifwalgXCtHNkU64dqsTgM=;
 b=erWudouuqQ0Yh6EkCEe6Xx4WugJd7xm8WMPsfPht6ox6w5IPtS+q29u/A3mTFBZEJH
 LTadr2zS+89ffAaJDt+4ZaeHq8EO/BwyhyWXOdmun2Z48Yuk1NzOGRvhk8itUKqyW9qk
 8rG/O3+euT/5hvx3SWA9cke3mhhXIEApT0fnMlDy94G+6fKTrakyFJ3JCZVaUG4VOXMI
 ayIIGSg+l9SMXi0NnVNxx8fPKRwgOJgtg1MbMsNqzMyqSr+MwJqxSrGpYN3ymU5ZFb85
 Q5vtcLg87ILuyBPxJBjVphvQZOQQRva8uBM4Q4mSwXZIJkpT+0bi4iFCbPRlNeCjvbpq
 hNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=jdwDMeG5Gy8r+selbq8n2uifwalgXCtHNkU64dqsTgM=;
 b=rD8JYKRBHbiFp2uyPQZZ7cftRfABql5Lx7kWozEoNPDWOJ2t3GaIF0LocUwjYmgMjh
 tJ/Jwlj8uAcMBqx+Dp6bjKAE/vFfqHrCiKcWI/jnafSHOLAtPin8LizB3VdRE4TJNHTu
 hs+5sg3AyKLSIPP3UGhwSNYUOgll2ghuYaIyPaxp3NO98Gt9l+utM2ec+UV6gZp2X2Ho
 ZMkBs+x7ahqp9uEVDyzAKSkixQ+rewABDvWqkilB5Xs8XLowkexflNBUC6eFvyOfp0lM
 eCXOAq6qcqydN5sPeoCqkK6McspgDGNkXqgQY00DemVtPN70hORik6flmg5QYaC6s3A3
 UaZw==
X-Gm-Message-State: APjAAAU1K9i9JFnk6JHXp48Um/Fy9cbyTGzVmYxi4GArvKMzoGDo1KMK
 CXLuG/dtOvlQWr3mAyX4SUMGKA==
X-Google-Smtp-Source: APXvYqxRh6iZPF7EBcmWzywBoXlbYwRouh4Bcrsl9kudC14pWnkhfyepcM10JRQLzhwAV0ZpX28itQ==
X-Received: by 2002:a63:3009:: with SMTP id w9mr737348pgw.260.1566945312087;
 Tue, 27 Aug 2019 15:35:12 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id d18sm364839pgi.40.2019.08.27.15.35.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 15:35:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 0/5] 0/6] arm64: meson-sm1: add support for DVFS
In-Reply-To: <7h8srexw1i.fsf@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
 <1jblwc6wjq.fsf@starbuckisacylon.baylibre.com> <7h8srexw1i.fsf@baylibre.com>
Date: Tue, 27 Aug 2019 15:35:11 -0700
Message-ID: <7h1rx6uti8.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_153513_374341_16D25BB1 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Jerome Brunet <jbrunet@baylibre.com> writes:
>
>> On Mon 26 Aug 2019 at 09:25, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>>> Following DVFS support for the Amlogic G12A and G12B SoCs, this serie
>>> enables DVFS on the SM1 SoC for the SEI610 board.
>>>
>>> The SM1 Clock structure is slightly different because of the Cortex-A55
>>> core used, having the capability for each core of a same cluster to run
>>> at a different frequency thanks to the newly used DynamIQ Shared Unit.
>>>
>>> This is why SM1 has a CPU clock tree for each core and for DynamIQ Shared Unit,
>>> with a bypass mux to use the CPU0 instead of the dedicated trees.
>>>
>>> The DSU uses a new GP1 PLL as default clock, thus GP1 is added as read-only.
>>>
>>> The SM1 OPPs has been taken from the Amlogic Vendor tree, and unlike
>>> G12A only a single version of the SoC is available.
>>>
>>> Dependencies:
>>> - patch 6 is based on the "arm64: meson: add support for SM1 Power Domains" serie,
>>> 	but is not a strong dependency, it will work without
>>>
>>> Changes since v1:
>>> - exposed GP1, DSU and CPU 1,2,3 clock in patch 1
>>>
>>> Neil Armstrong (5):
>>>   dt-bindings: clk: meson: add sm1 periph clock controller bindings
>>>   clk: meson: g12a: add support for SM1 GP1 PLL
>>>   clk: meson: g12a: add support for SM1 DynamIQ Shared Unit clock
>>>   clk: meson: g12a: add support for SM1 CPU 1, 2 & 3 clocks
>>>   arm64: dts: meson-sm1-sei610: enable DVFS
>>>
>>>  .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
>>>  .../boot/dts/amlogic/meson-sm1-sei610.dts     |  59 +-
>>>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  69 +++
>>>  drivers/clk/meson/g12a.c                      | 544 ++++++++++++++++++
>>>  drivers/clk/meson/g12a.h                      |  24 +-
>>>  include/dt-bindings/clock/g12a-clkc.h         |   5 +
>>>  6 files changed, 697 insertions(+), 5 deletions(-)
>>
>> Applied 1 to 4
>
> Will there be a stable tag I can use for that so I can apply patch 5?

Ah, I should've finished reading the list before asking.  I now see your
clock PR.  I'll use this tag[1] unless there's a different one I should
use.

Kevin

[1] git://github.com/BayLibre/clk-meson.git tags/clk-meson-v5.4-2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
