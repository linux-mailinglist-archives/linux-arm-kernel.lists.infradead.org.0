Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B231C5C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxywS78Bw9Wl5nty3qN54x0rCKxSfWGHW2oAQq7eIks=; b=LXwY2EZYf4E/My
	9ZauWx7bDBSeLAFqG2zZBg70ru9TIGNxP49fRUllrDEGC5gDbkHufKfIFXvAyjNSVlf8VNHDuGmFg
	tfX4/4+DZedf1h0sWcXRnyKAx+fuKGokNSVZkHUMie1jpf5Ux3HVf5e1+EorWX6pHc2Wa8lcBXtLO
	TkknERcIO28vXE98ZVJ7ibnzZxbBVB66Y2r6avxA0mFTGLynow2GoMveek1dP816HSiAxOLaqhyr5
	F6r8kzF1FTEjEX4R5/4FWfNGMCwkHipUwW2J9Uk8al1+4kZerLtbJoK+v2soUzo7APWkKmFMyI/n9
	9IRQ4ccAXAUxkcHL0I9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTWh-0005Kr-2g; Tue, 14 May 2019 09:15:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTWS-0005JS-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:14:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id d9so9940894wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 02:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=WHxIikLCyzadwzBR9VCleTtgnBQzuu/J56HNxGMdIDw=;
 b=BnqvVBmslpi2JZdrAHWNmnzh291ev9Noqx2p1BSS5FFLZ/QmeMP/CPtcJLK98GZTw5
 hoqoo3cdxU1pg7p2kshCBipP1NfmlEevwSbtZDnCmZCaccD/xwUixYS/EoMnRy+v3Zrd
 Q61ro2lC+5dX5Q69cCwW7IWlmVOFSN+F5RVS0pw1ayU1+F/c+e6whO/RRoEotoL2kO7K
 s0DWFmR4+Tb5WefdOIuZLjA5vAi58w/HnbyJQFr/qS59I0VEmMtpIFpWowKTXKReV3b9
 Xt8MerNtojSZ6/ZzagiLJiAUfbHqm44KeJFSU91Gvxo1laO0gBUlQM13H2fKvHy/Pem8
 4wHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WHxIikLCyzadwzBR9VCleTtgnBQzuu/J56HNxGMdIDw=;
 b=QSfe9CvgOK+EG1S5JY5Z7YK1q+mEWbKCJDhuKExLhdoj9oXl7wg6KrsQ5+Q7AZQ5Mk
 jbdqvqcdTHtZ29nUv8OBhYONAy03IUqDH53Je0ol4HaMsGYj7DBRDE5L2UL/w4kJlfTv
 At97YmBmVR5usmk75HD2wnZCrxmESnOWYNlCGdES7KFVe6cfWXqWqR1jmARZgU+8kJEC
 ifxsmivXyPMdFNwzk8SoIMcDvxd1d+vHlZyTZZqwGiEK1XxXwpD8o6OXtD8W7TuccBxc
 YJZG78XPwl/lZaJuwkZ4uenS8THotV2o8UpHwWrK5YDHeJxPi7TCSLdvYa8C52La7glb
 sozA==
X-Gm-Message-State: APjAAAV7Za44+6XVF0qOJyL8odhZ4KxzN8qRkPeevhJLnhTT+N4ppMXm
 kC73eheT94vQE99rxn0adP4YzA2D+5u+Qw==
X-Google-Smtp-Source: APXvYqzf+dSBEvOTHFEA7BpX9uCb381SseTb8LeMKVgOuG2PWYyraQWFwTH2qcHUwYjoH7p2xpk/Qw==
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr10469376wrn.209.1557825294494; 
 Tue, 14 May 2019 02:14:54 -0700 (PDT)
Received: from ?IPv6:2a01:cb1d:379:8b00:1910:6694:7019:d3a?
 ([2a01:cb1d:379:8b00:1910:6694:7019:d3a])
 by smtp.gmail.com with ESMTPSA id u14sm14706822wrn.30.2019.05.14.02.14.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 02:14:53 -0700 (PDT)
Subject: Re: [baylibre-upstreaming] [PATCH 0/3] mmc: meson-gx: add
 ddr-access-quirk support
To: baylibre-upstreaming@groups.io, narmstrong@baylibre.com,
 ulf.hansson@linaro.org, khilman@baylibre.com
References: <20190513091548.16674-1-narmstrong@baylibre.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <65423579-52c0-40ca-143a-6bc6ed33c90e@baylibre.com>
Date: Tue, 14 May 2019 11:14:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513091548.16674-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_021456_111159_629AF20C 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/13/19 11:15 AM, Neil Armstrong wrote:
> On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
> the data from DDR, leading to a broken controller.
>
> Add the amlogic,ddr-access-quirk property so signal this particular
> controller has this bug and needs a quirk to work properly.
>
> But each MMC controller has 1,5KiB of SRAM after the registers, that can
> be used as bounce buffer to avoid direct DDR access from the integrated
> DMAs (this SRAM may be used by the boot ROM when DDR is not yet initialized).
>
> The quirk is to disable the chained descriptor for this controller, and
> use this SRAM memory zone as buffer for the bounce buffer fallback mode.
>
> The performance hit hasn't been evaluated, but the fix has been tested
> using a WiFi AP6398S SDIO module, and the iperf3 Bandwidth measurement gave
> 55.2 Mbits/sec over a 63 Hours long test, with the SDIO ios set as High-Speed
> at 50MHz clock. It gave around 170 Mbits/sec as SDR104 and 200MHz clock.
>
> Neil Armstrong (3):
>   dt-bindings: mmc: meson-gx: add ddr-access-quirk property
>   mmc: meson-gx: add ddr-access-quirk
>   arm64: dts: meson-g12a: add ddr-access-quirk property to SDIO
>     controller
>
>  .../bindings/mmc/amlogic,meson-gx.txt         |  4 ++
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
>  drivers/mmc/host/meson-gx-mmc.c               | 65 +++++++++++++++----
>  3 files changed, 57 insertions(+), 13 deletions(-)
>
Test with SEI510 board no problem or regression seen

Tested-by: Guillaume La Roque <glaroque@baylibre.com>




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
