Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CECB685
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6WMTyzWros9Zb2Bt5nX/hRtTb61z2o8jb3vg36qUG4=; b=UEEzbH/FLKfu86
	GUqlxklw7dcnogyY7K46JQcTAvrbeo9W74sbE0C8gzbuzbbuQsN1WWIjBBurc4Nwe2Aca98iiBsi3
	mrqTqmKqIT1g++79eggGiC5uCTuAqVnXnWPehrY/erX9/bRgTiGAePxnRJxjQUhHA1dD/uB4jQHk3
	Lkf8MzMMqxKD99GYqJLMfoCLd1xnccHyI8Y4aAzehfh0Fqrs8ne9nZWjEpC8eRE2UZZ12E4kl7f/s
	oKPTY9zT885v0DxtHiiTCTDFe1xgT8xgTVL4nFpCu/yQv+dxv7gxsdZu3JLvjZsw+ooaJNH8jqlR3
	ZiLwr+rHbSwds8w9lkVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqJ9-0002UI-Pc; Sun, 28 Apr 2019 20:21:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGg-0007S0-QA
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id e18so1562496lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=J7dHBq89Wr3zJaeUg/jK43Amy6ws/ZiUTRY2IFNeyK8=;
 b=HHCTt1yF3gablZ0Y+cqQ7QeNmcmrQNxiKLdpMGe+iSX3ubKJRndjjdlSssk8mGpTde
 kK356t9Ij4ZiUo+OBpJBGT1jB2n6Conz0Fz0xze1RtjVVuG0ZHbwDVxVzDiS4xpzFUQY
 qCRqF+jIJ63oEZk+WmvvAq/OcRzgPXjDTCWZXl/TFc+Uy+dsE0dC0jTTCQ9zmHrKhFjL
 nGVadY/NKUUFOeg71ThU/TDtUiI4fFO2FtkT3zhi7UUdCF7inVuhZRyLOTb17csaF0jn
 f9Ng6jBC9qeBmPm6ot/xBDtmsERKq0iqDtOwqmoEya8Gqg+t61VB34Z8fGgbkw6q4yc/
 n0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J7dHBq89Wr3zJaeUg/jK43Amy6ws/ZiUTRY2IFNeyK8=;
 b=dyMi28kK/ABJMSKheOFuZX+auvVBhl2xXE4WXBHdUBlSIIz3a8JnEu4MOksdoFFHIW
 UYH087lCS0pFhGiTs5qqdSGnF1qyO5fnWLuMnb0HBOT70ELf50BC5As+HW47melwmhY7
 tbYOt6CGNf0jr97a/I30wfBkqt5hJjhHl5CuKWIaPaI9hf8F8q0hho1856yLLN8An6e7
 U8VF9pp0zI9I9dChcmvc7ZtmILX7P5Yms54KiLivkwsvqBn0XyZgx7rHvuAGu4zTHwW1
 6Gbu6XB069gXus8ojbfkibjuo5IygAiKlbfFbYRuFScwxqFjJdXZdSq2/MgD2zHWvAGN
 9Drg==
X-Gm-Message-State: APjAAAVnyO6aFug87X1ISZ02aQZR5/H229XKMQv76S4WGqX9Y6dCsAXK
 lCJJaobgMjgQT/rDrm+tHPrNwgEZu8Gr7Q==
X-Google-Smtp-Source: APXvYqw72x0Fm9ZPgaisyQ1kB7IZeN/CQ4afYLSxR28gKssOMAxJm0gK2g0lMwvdefiYRzwyPj7iWw==
X-Received: by 2002:a2e:9592:: with SMTP id w18mr1569116ljh.116.1556482760956; 
 Sun, 28 Apr 2019 13:19:20 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l15sm6546200ljh.62.2019.04.28.13.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:19 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:28:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [GIT PULL] STM32 DT changes for v5.2 #1
Message-ID: <20190428192810.pqqb6hejlejuxfxj@localhost>
References: <81699afe-ea2a-4ac3-f4d7-64bd4b9f29ac@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81699afe-ea2a-4ac3-f4d7-64bd4b9f29ac@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131923_081359_FC80379C 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 11, 2019 at 03:56:30PM +0200, Alexandre Torgue wrote:
> Hi Arnd, Olof and Kevin,
> 
> Please consider this first round of STM32 DT updates for v5.2.
> As you'll see in highlights, main changes are for the MPU STM32MP157.
> 
> Thanks.
> Alex
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
> tags/stm32-dt-for-v5.2-1
> 
> for you to fetch changes up to 3fca6a1ab935e69df40dd67e3425627243685b7f:
> 
>   ARM: dts: stm32: enable cec on stm32mp157a-dk1 board (2019-04-11 11:22:07
> +0200)
> 
> ----------------------------------------------------------------
> STM32 DT updates for v5.2, round 1
> 
> Highlights:
> ----------
> 
> MPU part:
>  -Add initial support of stm32mp157a-dk1 board:
>   This board embeds a STM32MP157a SOC with AC package (TFBGA361, 148 ios)
>   and 512MB of DDR3. Several connections are available on this boards:
>   4*USB2.0, 1*USB2.0 typeC, SDcard, RJ45, HDMI, Arduino connector, ...
> 
>  -Add initial support of stm32mp157c-dk2 board:
>   This board is a "super-set" of stm32mp157a-dk1. It embeds a STM32MP157c
> SOC
>   with AC package (TFBGA361, 148 ios) and 512MB of DDR3. Same connections
>   than stm32mp157a-dk1 board are available. Display panel (otm8009a) and
>   Murata wifi/BT combo is added.
> 
>  -Add and enable SD card support (MMCI variant) on stm32mp157c-ed1/ev1 and
>   on stm32mp157a-dk1/dk2 boards.
> 
>  -Add and enable PMIC support (STPMIC1 chip) on stm32mp157c-ed1/ev1 and
>   on stm32mp157a-dk1/dk2 boards.
> 
>  -Add and enable IPCC mailbox support on stm32mp157c-ed1/ev1 and
>   on stm32mp157a-dk1/dk2 boards.
> 
>  -Add sysconfig clock support on stm32mp157c.
>  -Add romem and temperature calibration support on stm32mp157c.
>  -Add SPDIFRX support on stm32mp157c.
>  -Enable CEC on stm32mp157a-dk1/dk2.
> 
> MCU part:
>  -Add and enable SD card support (MMCI variant) on stm32h743 eval and disco
>   boards.
>  -Add romem and temperature calibration support on stm32f429
>   (and so stm32f469).
>  -Enable stm32f769 clock driver

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
