Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEF346CED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f99y4rpsj4hhsE3/aAP9KH9z5q77QV0UQAbk6UVmcjE=; b=SrpIoG35b0onWd
	Sx9DOJP8IBhNDWdGCwEj5soxppjfLnb+OiPc5gfmjQR+M7F0n03XnrvZBxMYZkicRrUwOex9HXq/B
	0+6fbhh2r/tVADv25f02h5TDuaVvvR/lN8eaZr9mNRAaXvY7HvGUzUkD1tn8mCabsGV6ktTo2O9Lt
	+yQ0h5SN43WBR1EVOTYei1JHyPvHsXJLLopbGBZI5iaGjD2cCWyTb8rPQxwRr7aeimrbuBy+I3UYL
	G4Dm0LYXBWCRs4WnbAVdKyduGOPO39sJtuK+JtaGMcikaXF0qsj085Pk3FwFQhdZBAgbqhsafgHVm
	Zfs4Ymvnn9MQBOVJ2Iwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbvaS-0001Ha-L0; Fri, 14 Jun 2019 23:26:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbvaI-0001HF-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 23:26:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so2295732pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 16:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=X0PaE8UgoSXCd5aH+z1B3Qe35NkfrQQNqk1NT+8oFYY=;
 b=I6dxrrNm0Se40AINnZKnyGQJ06/YQci/tt03JWr+PGNRuMl/6+Hov9DrEm575HWHSk
 V9VysQXgsdArAItkM+P5p30FxsyGS/OvIHA3GVfrNLcMkTCzNth27BnGvGSecv/UYYKe
 m9mar59Z3WQJDD07KEadz1JVDhXTqioVAc5hMvLtwLL+o8a+bpXrIp9mX6HH7q23UK5x
 vmI6E85am3K1i3hm3pxlQDrXPuhAieTErM2TOkN9pgigqOT+yT9orTFLscdibRzdfVZg
 B5ebeZydNzHStUkxJ6nfO9mwZstU/6PqUqqlSIYlJ+KqWtdXZn9hRwFlSVyKEOUOh2tJ
 grLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=X0PaE8UgoSXCd5aH+z1B3Qe35NkfrQQNqk1NT+8oFYY=;
 b=BZn6Mzf6/p2fWE0kWT/zcF4dFE1TZfPohB4j7FATmV0+Xz0cDdGK+1u00f+EH/6wEj
 EfeGN2Hce9xc2DuZK1xONBg7bKoFqyCmxRK1Hg5Q1IfKAzh3b7REQmBoKnsmOXdN7YJ3
 ANvEVDENtisaNFPgQ8uipwIKU4wcrZuYBhrPDrFY+R7KQt1rkQz82v8B77auF4bTBlbr
 uWh1KUxi1Oq88eptx4ZQhvtijaWZqFoyvwp78hiWuEWad3WAhgEuj44unhESwRUHhAVp
 KoycipSQWoUU/kLzQ1KptihBgv1u9a6gDfz1PXlqm0oix+JgsYNDr1pHNr/AUEelXvWu
 FFsQ==
X-Gm-Message-State: APjAAAUAmmTClfbv6cTQ4kNIoBeEEQVNYOlZiL19M6Djmpn6OMBLO54Y
 ImZXwmue9o3wont66CC/oElg1w==
X-Google-Smtp-Source: APXvYqzPsMayZPDa651TozhfBKS4Z0Ea6ktolXjYCwX53TQIkUwRp3PKK3Daaxs62z9Bgmauuz/pVA==
X-Received: by 2002:a17:90a:9503:: with SMTP id
 t3mr13459977pjo.47.1560554773640; 
 Fri, 14 Jun 2019 16:26:13 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 e184sm7032630pfa.169.2019.06.14.16.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 16:26:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [PATCH] arm64: dts: meson-g12b-odroid-n2: add sound card
In-Reply-To: <20190611143120.25074-1-narmstrong@baylibre.com>
References: <20190611143120.25074-1-narmstrong@baylibre.com>
Date: Fri, 14 Jun 2019 16:26:12 -0700
Message-ID: <7h8su3eokr.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_162614_232104_1CCAFEBE 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

> Enable the sound card on the Hardkernel Odroid-N2, enabling HDMI output
> using the TDM interface B, being aligned on other boards sound cards.
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
