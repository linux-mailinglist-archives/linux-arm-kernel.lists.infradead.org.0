Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183E843258
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 05:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh+eueW4yvN9SFNTv5dKUw3PDIkcsst5TETT1XcM1Ik=; b=m09JiWNbxANcLl
	PuOCTDRH6pfGYetm1n8i82WkJkWqFeCxk5UndYUYLN8P7s0oM1Za87VxVVIAYpQs6Zyu3nEqRbLOo
	BKZN+9nojVAfGpDQro9lO5CJ2AwoKKN8dNoN2LeNtsNxNMlE8Xx53WW2wxGNsHE9DSMJBhw+rYStL
	39iJLTd/X4IkSfQgRrtYMQGcsxQiyKJ1J4JvC1pwUKWkyP5XsJN/vA2wom9mFPMxI3oyi8uyEBl0r
	bBGx1v8i6bzE43VqtoKNxOF0JiQqMhzpo2UWsjciTiGgphF9k7HCRaQiLXytslcwnsYgu24AE4+2H
	e0X+LYuJwilXy1UpMTGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGTE-0008VP-DA; Thu, 13 Jun 2019 03:32:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGSx-0008Ue-Ai; Thu, 13 Jun 2019 03:31:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh12so7484309plb.4;
 Wed, 12 Jun 2019 20:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nzGBiH9Q2cHj69v2s9SzWAcskIQxRVWhnxjtOISSfH0=;
 b=P3+W71Z7wOq9r8J9vPu4J49YzWsvoiYpKSpycf1qS/PpM52rE88Oag+c2qaNi7/2f2
 B2vFG4DCa0POM6uTUi0Zia+afz9c3sPd6I4KV5yof6kGAQs+wplvUjZPekYBSx5fGRfw
 +RgrUpwADxnUhYoWW4zzACqtWio9HSLHDq2kPVjGwEgfIL8KvX4tj4qgL7zEFUmbBbLA
 fAQqbaAXYmEZrxgMUCdtaTvmGUzPNRutOqnFkECRPCyp18KKI/5d5CCF2qMj488IJZb5
 eqs1bvGTk80kDWb/pJhk8MxZWrTH65Zeuptnjgmpmnl0K8snjNv/+SmrSTJJAwpKMh+1
 9A0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nzGBiH9Q2cHj69v2s9SzWAcskIQxRVWhnxjtOISSfH0=;
 b=uFpwRtvnjaB5zQmvJOX6G3Y1KZFbfKlGb+DEH693eQj6wltekur5niN72m4v238fqj
 +4K3adRz5Y8WPcoPBIRtwi43Oi3S3OaG54OTjGOVp8CxRY5TkDmZ+ocRoW/TC2xLJnZc
 7Cx+qMIcxsqkq48ctL7/F39D3jWwp0xvYV9b9xpQFupE+WG4cfj0iXIDNVi/aWUKqkUY
 AE5dZXTgu/RJYrRe7s2sYE7CP/f4EluxhSVZPuEtkKuucdo3apyWiqn55MFwwCfdPWyK
 lPeyHbiyl60ixYAHdnyCsuaHUj1jVNNTJ69Vh87Pato/ZVmMfbQLZj3Yips2sFhCOXmV
 cWlw==
X-Gm-Message-State: APjAAAUvm8bjqgIU1/ql3qmqduNsYhmtGlbrMox/gL3IkfLpZMOQvEv8
 gJci9GvgMEO24a9aMT3m+g4=
X-Google-Smtp-Source: APXvYqzWKE85pfVmqmvHVbcmT2pdlkwsEpSroa8BFRjBzzgBTWFi6CVwqLEqha4xH+IoiFuJd4jOMA==
X-Received: by 2002:a17:902:b594:: with SMTP id
 a20mr5329327pls.259.1560396714089; 
 Wed, 12 Jun 2019 20:31:54 -0700 (PDT)
Received: from [10.230.1.150] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h6sm5445482pjs.2.2019.06.12.20.31.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 20:31:53 -0700 (PDT)
Subject: Re: [PATCH v4 0/7] cpufreq support for Raspberry Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 linux-kernel@vger.kernel.org
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <6a9e1450-80ad-a13c-59d2-d0b39f25f67e@gmail.com>
Date: Wed, 12 Jun 2019 20:31:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_203155_393563_D923ADC5 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/12/2019 11:24 AM, Nicolas Saenz Julienne wrote:
> Hi all,
> this aims at adding cpufreq support to the Raspberry Pi family of
> boards.
> 
> The series first factors out 'pllb' from clk-bcm2385 and creates a new
> clk driver that operates it over RPi's firmware interface[1]. We are
> forced to do so as the firmware 'owns' the pll and we're not allowed to
> change through the register interface directly as we might race with the
> over-temperature and under-voltage protections provided by the firmware.
> 
> Next it creates a minimal cpufreq driver that populates the CPU's opp
> table, and registers cpufreq-dt. Which is needed as the firmware
> controls the max and min frequencies available.
> 
> This was tested on a RPi3b+ and RPI2b, both using multi_v7_defconfig and
> arm64's defconfig.

How do we go about merging this? Stefan, will you pick up patch 3, 6 and
7 and submit them for 5.3/5.4? Viresh has already picked up patch 4.

> 
> That's all,
> kind regards,
> Nicolas
> 
> [1] https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface
> 
> ---
> 
> Changes since v3:
>   - Fix sparse warnings in clk-raspberrypi.c
>   - Minor cleanups
> 
> Changes since v2:
>   - Fixed configs to match Stefan's comments
>   - Round OPP frequencies
>   - Rebase onto linux-next
>   - Minor cleanups & checkpatch.pl
> 
> Changes since v1:
>   - Enabled by default on the whole family of devices
>   - Added/Fixed module support
>   - clk device now registered by firmware driver
>   - raspberrypi-cpufreq device now registered by clk driver
>   - Reimplemented clk rounding unsing determine_rate()
>   - Enabled in configs for arm and arm64
> 
> Changes since RFC:
>   - Move firmware clk device into own driver
> 
> Nicolas Saenz Julienne (7):
>   clk: bcm2835: remove pllb
>   clk: bcm283x: add driver interfacing with Raspberry Pi's firmware
>   firmware: raspberrypi: register clk device
>   cpufreq: add driver for Raspberry Pi
>   clk: raspberrypi: register platform device for raspberrypi-cpufreq
>   ARM: defconfig: enable cpufreq driver for RPi
>   arm64: defconfig: enable cpufreq support for RPi3
> 
>  arch/arm/configs/bcm2835_defconfig    |   9 +
>  arch/arm/configs/multi_v7_defconfig   |   2 +
>  arch/arm64/configs/defconfig          |   2 +
>  drivers/clk/bcm/Kconfig               |   7 +
>  drivers/clk/bcm/Makefile              |   1 +
>  drivers/clk/bcm/clk-bcm2835.c         |  28 +--
>  drivers/clk/bcm/clk-raspberrypi.c     | 315 ++++++++++++++++++++++++++
>  drivers/cpufreq/Kconfig.arm           |   8 +
>  drivers/cpufreq/Makefile              |   1 +
>  drivers/cpufreq/raspberrypi-cpufreq.c |  97 ++++++++
>  drivers/firmware/raspberrypi.c        |  10 +
>  11 files changed, 456 insertions(+), 24 deletions(-)
>  create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
