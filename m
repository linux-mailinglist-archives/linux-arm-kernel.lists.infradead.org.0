Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0218A21DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 19:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ7lVpcoHWuJJVvc/LjAI5gtuhO+izO7Jq0oAAFuEoU=; b=drIFZ642/9FZx3
	PuCFKxFYrHBcy1T85aYB8uNwPxtZEfJMbD1hCPbePfPLjPUSZjB1Jxxefnlyw7Rzxrogiuu459pze
	T4mbwgeDBvohYt9zyND4Ywb8mpmJC7c/GOkb+RGtg5AIwsmEDikLiZY/Nf8NXP9utJHysWmmdS2NU
	EvpsYwW0JlFmZwsXPUAp3ooeL5m9saEcFqn17vhGQPDbRe/26MvZyTcMbVPglPzA14oJfMsXyTWvs
	11Ak+a/bJ0s+lbDARYYQdS1PW9vvyAEjDJaZ5YU8CfQQsHbO7Pjpq5QWKImyzPLka2gQkWmges2lK
	+Vhyd+2wJnHH0RBuVwSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Nw6-0000AC-MZ; Thu, 29 Aug 2019 17:10:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Nvk-000090-Vy
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 17:09:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so2470094pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 10:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=kSCvC7aVTpQ+5LOQ01CXKZx0peCTBxlJNW1z1aZAAro=;
 b=P1pISjr61U4xB0MG3dgJBQVHmfOJJWK90GKoue2kLfUe0Fop2XP6stoFZIBeKcvh9+
 shq44hi6CMZn/Oltt7P6xvh0S7ywrEOkSw6SctxmynGF466/3BmPev8K/1uF84zI6RbH
 4tS7AOhquP4b/VwP5sK2pyxdHWR0sd48ydHizuoNqCGrGHy/2tY66wc8oyBPKyKmtpRt
 AI+JAUYpZLI1a/7Z+Ku0X6hfkQ8fYiCKUfnBl/knEfCapbe7VPhk5RsMTBJHHjf1e3+U
 2a0hfwcPclnAeZ8QC5JArj1K4yj2KMlbOlIKDFGpXaXoruQ9mj1hfhzBGPZpmM4OU3Wu
 6oZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=kSCvC7aVTpQ+5LOQ01CXKZx0peCTBxlJNW1z1aZAAro=;
 b=ehQVFILhRePQMibPbBizXZEX/9xsbOUyk5e8Z2qdpS2wihcKI1SqX8TOclJYTQuMav
 t0YNBrfzSO4kbTf+VzgBnX1ANXM6aCwaf4Jbv7owlxdzVnxVMLmRqoIsIFSTWFssCdG6
 u1lqnNHDTv1r0w9fvRt1TtaZEl3tCodG0jQ69M1BZy4Dmlso1TFRhdmiHyY7RyHsQ5w1
 K2j8eDqjuwMfSRC7a85kvIvziB9MzSAgqxRpmsi2GkaV95gtIeAox9kXaY1RmDemgVDL
 lyQszUGmeEGD3hpf+SGxUMLmSJ2GKoAIp6dUYKQWef90XB80wfF8gBmHhrDi6lyPRTjl
 gw+A==
X-Gm-Message-State: APjAAAWPdEzX2PVA3jcqlwPNIjOy5hu/Fcv/Spu8Z6Wge/cQqfsAuYCX
 0QyfgeY2grYGiD/WIEk3K+AY1Q==
X-Google-Smtp-Source: APXvYqywtLj0EIwj8vrGaKEIe6n3GWqW4YuS6SjpLbQ2EYDKhDAJrlcrmdCGxwFe+Qvstx8Qi3oH8g==
X-Received: by 2002:a17:90b:907:: with SMTP id
 bo7mr11106379pjb.107.1567098588093; 
 Thu, 29 Aug 2019 10:09:48 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id i9sm2554788pgg.38.2019.08.29.10.09.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 10:09:47 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 0/3] arm64: meson-sm1: add support for the SM1 based
 VIM3L
In-Reply-To: <70d75312-68f0-351c-26b8-0f357721dd9e@baylibre.com>
References: <20190828141816.16328-1-narmstrong@baylibre.com>
 <7hblw9rx8f.fsf@baylibre.com>
 <70d75312-68f0-351c-26b8-0f357721dd9e@baylibre.com>
Date: Thu, 29 Aug 2019 10:09:46 -0700
Message-ID: <7h1rx3sxt1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_100953_040312_85F34B55 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 28/08/2019 19:55, Kevin Hilman wrote:
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>> 
>>> This patchset adds support for the Amlogic SM1 based Khadas VIM3L variant.
>>>
>>> The S903D3 package variant of SM1 is pin-to-pin compatible with the
>>> S922X and A311d, so only internal DT changes are needed :
>>> - DVFS support is different
>>> - Audio support not yet available for SM1
>>>
>>> This patchset moved all the non-g12b nodes to meson-khadas-vim3.dtsi
>>> and add the sm1 specific nodes into meson-sm1-khadas-vim3l.dts.
>> 
>> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
>> Tested-by: Kevin Hilman <khilman@baylibre.com>
>> 
>> Basic boot test + suspend/resume test OK on my vim3L (thanks to Khadas
>> for the board!)
>> 
>>> Display has a color conversion bug on SM1 by using a more recent vendor
>>> bootloader on the SM1 based VIM3, this is out of scope of this patchset
>>> and will be fixed in the drm/meson driver.
>>>
>>> Dependencies:
>>> - patch 1,2: None
>>> - patch 3: Depends on the "arm64: meson-sm1: add support for DVFS" patchset at [1]
>> 
>> I tested in my integ branch where this series is applied, but I'm not
>> seeing any OPPs created (/sys/devices/system/cpu/cpufreq/)
>
> These patches were sent from your integ branch, on top of :
> commit 395df5af4c782ad19fb34b9a2009ca240eeb9749 (khilman-amlogic/v5.4/integ)
> Merge: 2fcc5666dd45 9557737987bb
> Author: Kevin Hilman <khilman@baylibre.com>
> Date:   Tue Aug 27 15:39:46 2019 -0700
>
>     Merge branch 'v5.4/testing' into tmp/aml-rebuild
>
> Rebuilt and retested, and I get the OPPs just fine :
> # cat /sys/bus/cpu/devices/cpu0/cpufreq/scaling_available_frequencies
> 100000 250000 500000 666666 1000000 1200000 1404000 1500000 1608000 1704000 1800000 1908000

Thanks for confirming.

Indeed, there was an issue with my most recent `integ` branch (it was
missing the driver side of some SM1 clocks.)  Fixing that issue, and
retesting this series it all works well.

Queuing for v5.4,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
