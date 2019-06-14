Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E1646CEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ1jdKiycjSyRsT6579W197jkc0+4OiiNhjihhXeLsk=; b=aBMsaQ7LUxdsAN
	YdOoOlIYIjQvBg0as3oC0pa8Ov1qD6cUX66skvwQyob26ZfHmmNfH9FPylRy75NxqGEJ5SVgQ8rwJ
	dOgB24Wxu+CIE9Li8qBoQAQl082kjuc8Rdkk378Z6d0JGTVsqw3W7Vl6yI7SCzKqyYxBznzD4c5qV
	MYE3jQzWl1wvaPfnh3IJy8SwDnoyj5KOQTGh3koygQDoWr1K/jJCda+C9D3Z4yDr/LDhmDoSLd9Co
	Xl8wAWTFeUhAeX25eBl32uEtUT7Mw3PGyrq3KnaOQkNpdbhS6N/zLSbVF7i78HDV8lKr5ZHgOzFOC
	u/ZQ0NNPRaeKx8SnrLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbvao-0001YN-73; Fri, 14 Jun 2019 23:26:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbvaV-0001TI-4s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 23:26:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so1603904plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 16:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=txevGFdZuzBEDJGiWgJSEl3KtJMa2A1EwegQ2ClWo7Q=;
 b=ZeLyUTv0uYJ5hEPB7IEAFeiDjo7xDzKAvcGAl5pLbVYX7Le3G2x6V+kc+HKai82pKb
 KG2ze4kSons5LiQdoZW568SCESgX2Fa81ZPT4f90AkBercg6UABHZhjMl/NLPAU8C71a
 FLlPUcFVktoDfDyUEPwzlVS00DTHdHPQpD07mE7Sv8SumaVbnGe0JYvyJy0YA+9D/b9M
 uCOIILN48ezUlW5gQTzCMZh0oWZ0vMryGFBNotSmHJUDRT4CTmAb8ccpXuERhvH/NEY+
 RvxS9N2hWMHaxZkh7secmk9YrRNLKTij1eT4Mx5y3kDiuyQwPMOCvaXfbEtJ+lhYSse2
 UWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=txevGFdZuzBEDJGiWgJSEl3KtJMa2A1EwegQ2ClWo7Q=;
 b=ScCTOkpfjC9l35OzmbOM8x+K3W/0TLWNXWrDXmxoCMUKnyH5/u71oe4yIIMYob6Vid
 qOuYkJ8h3hziSXshutDCkr+dqUna8lKi16Qrs7oQSrrGVm1kwWnRapbkZG+A2THZ6D0b
 HeHXVuiSphaS3fudzID1wOjIDpvNtPvtrVR2+uKSJFa7men7tKrp32ysBKaeJsKCn+NX
 KCqM02MLGw02pD0XhzQWXgQUk/CRk0f+KwUxi4oj0TWAehs374mWNOKZWip5L/+KGVXg
 nwCF/Rjbn2bELvVnmB/BXkisJFiRZ7Y8YIQlzxwdtuNl/GDhiWeq2Lz0kgETIncTJnb0
 mmEw==
X-Gm-Message-State: APjAAAUisQnnvNxwtPRiiCaAW9+bY9uH1S/jyt6/usWfuQ7EK/EO/W6L
 R4s2Rh6zUiX/jXbZJpqqY716oA==
X-Google-Smtp-Source: APXvYqzm5PDiqQqzsIvfn/LmZzXIR8BpV5+IdKHziBqsEa3r1EdH/tZs9utNM8iLfpFvrT8HIxiL1w==
X-Received: by 2002:a17:902:760a:: with SMTP id
 k10mr75503097pll.83.1560554786407; 
 Fri, 14 Jun 2019 16:26:26 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id a3sm4508235pje.3.2019.06.14.16.26.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 16:26:25 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [PATCH] arm64: dts: meson-g12a-x96-max: add sound card
In-Reply-To: <20190611150101.30413-1-narmstrong@baylibre.com>
References: <20190611150101.30413-1-narmstrong@baylibre.com>
Date: Fri, 14 Jun 2019 16:26:24 -0700
Message-ID: <7h5zp7eokf.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_162627_202287_1A740D49 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Enable the sound card on the X96 Max, enabling HDMI output using the
> TDM interface B, being aligned on other boards sound cards.
> SPDI/F support is also enabled to the physical toslink port and to HDMI.
>
> The internal DAC connected to the audio jack will be added later on, when
> driver support is added.
>
> Tested by running:
> tinymix set "FRDDR_A SRC 1 EN Switch" 1
> tinymix set "FRDDR_A SINK 1 SEL" "OUT 1"
> tinymix set "FRDDR_B SRC 1 EN Switch" 1
> tinymix set "FRDDR_B SINK 1 SEL" "OUT 1"
> tinymix set "FRDDR_C SRC 1 EN Switch" 1
> tinymix set "FRDDR_C SINK 1 SEL" "OUT 1"
> tinymix set "TOHDMITX I2S SRC" "I2S B"
> tinymix set "TOHDMITX Switch" 1
>
> then:
> tinymix set "TDMOUT_B SRC SEL" "IN 0"
> speaker-test -Dhw:0,0 -c2
>
> then:
> tinymix set "TDMOUT_B SRC SEL" "IN 1"
> speaker-test -Dhw:0,1 -c2
>
> then:
> tinymix set "TDMOUT_B SRC SEL" "IN 2"
> speaker-test -Dhw:0,2 -c2
>
> testing HDMI audio output from the all 3 ASoC playback interfaces.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
