Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EC896CBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 01:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/N2KWWWnSs78KNatjHeC8eIwMOHOsAAW5GbHgJ6ulM=; b=h57aosEl+8x7uT
	MRbk/A9vafDSl5i/BEtKSFIY8FARAWt2J+cymNB89telOuWOc8EAzZz4lQhrfDYk7pTq1VlNY/gZ8
	OkQElDDFhX3tr7hBeaoVEO8wx0PH/beitHPqM/blcSo1uFJ7tl5IbQQz/6IjkSKaZTotqnxnU7xmC
	wYcdPZQ5SMtX+JL09fTnpN4heiKSq5i2WFlvKDfn35kwa5TS6mcEl2Eq0ytesH5poek8nMGnUksmv
	R7LuvMl9wf/s4x3VjEQDAsQL/UHtulvcez5rzW3QDy5fBMlWz9EWxjn0qJ33CkCfluWMk8ne8f3hb
	52H6XivM1i68ajK1IOMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DDP-0002q2-II; Tue, 20 Aug 2019 23:06:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DDF-0002oL-Ee
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 23:06:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id o70so93020pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3ZdYND6Wl1bRQZobvgDGilBtsFiFe5f8MwN/RoglplU=;
 b=p+vl6bqwnZBpeaHiyriodr3YU5vPNi6dgqkRp3GiaA9JczUyoLile77Dj2B+BZggDJ
 NzlvH7CyYBerZlpjYj15RbbWMyJGouIgFI2T2IMOh0Aye5krAxOLBcXbXZaO3fM5C0/h
 hUUGR5wuWOwGkH10sOSgrfyyEGNPU8PX1FsNAGfHSISAOMQM/dR20jKpSyidDWMVnYU3
 gEqghkvroFGIBsJ9s+b3i/1R0ZbvMjdA3YSrdWgQJh2pU3bdRUNrB6vTH/T6Y0N7Mt/d
 /stEefEeTo4i0TNewxUdzqaM15UhIX5rWx63ufnkwEr7MaZcPeaYBa9JWg+w9N+xuwMz
 VEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3ZdYND6Wl1bRQZobvgDGilBtsFiFe5f8MwN/RoglplU=;
 b=idYc9iombfytKLcgwXN6PExR/1q1Q3XKL3ZEZpDZ0aJzWjAsrhz56G88PpsWJgFvvu
 faKYP++mrz2vhrY6kQStjnTyM4Qs3enQJ5x54GIaVJcK9gwcfY/DABZ66UOgexraDOa3
 u5GBQK4LnfFrkWUn9UOWZXkzecjEdR1CpzfJT3jzO8fUYHxthfAeejUQzLjeHytL9kbr
 1ONM+HRMBHgT51BnGC7P/6QoE7H125JdIaP0tkWsTPVnvLspyQJeromBgld3ILdOFjlS
 Ypd2XT8YHZFcmQGCODFwXi1TXmPnvoTThEg70i2Rr2gN2UJpp2SViXd/5G0BgOJwK8Gt
 nhiA==
X-Gm-Message-State: APjAAAWE5qgDz3+rWNludzZn6EdxWSuWLjB1FMN1onVqcoWwNe2T5C96
 4om5iuK+kmkNuiUFdKUsnVzNPg==
X-Google-Smtp-Source: APXvYqxALtnddgGMFc2X2U+yCFu2yJS7dzJAjVYSdhFC5iity/GwPzH8lvuhFKcFPxyXSfOTqNZTzg==
X-Received: by 2002:a17:90b:8ca:: with SMTP id
 ds10mr2269923pjb.139.1566342408736; 
 Tue, 20 Aug 2019 16:06:48 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id d18sm17691015pgi.40.2019.08.20.16.06.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 16:06:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: Add support for Amlogic SM1 SoC Family
In-Reply-To: <7h4l2bej1c.fsf@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
 <7h4l2bej1c.fsf@baylibre.com>
Date: Tue, 20 Aug 2019 16:06:45 -0700
Message-ID: <7ho90jbfne.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_160649_574170_46C96E26 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Neil Armstrong <narmstrong@baylibre.com> writes:
>
>> The new Amlogic SM1 SoC Family is a derivative of the Amlogic G12A
>> SoC Family, with the following changes :
>> - Cortex-A55 cores instead of A53
>> - more power domains, including USB & PCIe
>> - a neural network co-processor (NNA)
>> - a CSI input and image processor
>> - some changes in the audio complex, thus not yet enabled
>> - new clocks, for NNA, CSI and a clock tree for each CPU Core
>>
>> This serie does not add support for NNA, CSI, Audio, USB, Display
>> or DVFS, it only aligns with the current G12A Support.
>>
>> With this serie, the SEI610 Board has supported :
>> - Default-boot CPU frequency
>> - Ethernet
>> - LEDs
>> - IR
>> - GPIO Buttons
>> - eMMC
>> - SDCard
>> - SDIO WiFi
>> - UART Bluetooth
>>
>> Audio (HDMI, Embedded HP, MIcs), USB, HDMI, IR Output, & RGB Led
>> would be supported in following patchsets.
>>
>> Dependencies:
>> - g12-common.dtsi from the DVFS patchset at [1]
>>
>> Changes from rfc at [2]:
>> - Removed Power domain patches & display/USB support, will resend separately
>> - Removed applied AO-CEC patches
>> - Fixed clk-measure IDs
>> - Collected reviewed-by tags
>>
>> [1] https://patchwork.kernel.org/cover/11025309/
>> [2] https://patchwork.kernel.org/cover/11025511/
>
> Series queued for v5.4...
>> Neil Armstrong (6):
>>   soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
>>   dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
>>   soc: amlogic: clk-measure: Add support for SM1
>
> ... these 3 in v5.4/drivers ...
>
>>   dt-bindings: arm: amlogic: add SM1 bindings
>>   dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
>>   arm64: dts: add support for SM1 based SEI Robotics SEI610
>
> ... and these 3 in v5.4/dt64 with Rob's tag.

And I forgot to add that I boot-tested this on an SEI610 as well.

Tested-by: Kevin Hilman <khilman@baylibre.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
