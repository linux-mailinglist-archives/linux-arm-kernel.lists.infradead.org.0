Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106837B118
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrsNipmIXuvqDt/OHvjf1m2ejL/da4ngVkV02AKyx5I=; b=VZu/JrARacUtoz
	Ex9ihQzBei9gTzO3KwvzMJJwDGi8alXjn8Az2/cCufUiO00a1yG9X1Q5hZt22poVrD+T8NkkyAjV9
	zffmiBVA0X0qqyiug3glZ+SBirMKWv8k44qWSxrhvSYb9qT62Qd1l+COeR/1H2KtJuSKkfU9IQ7jI
	c9clpq9U0MJjCwaBb8S72ypUUkw7n/gISspAWJa0kSUMuh3iQcb1Fag9THTjZuHO+aTXNmiC9p++8
	YjyIWZNhhFS7pmfWbS7sRY0FNckLYStONqgECEDoLDzJ9cyse1LqOgUa/rgwji01kbXDbC+fZPV8W
	XLq3sQdEeJMEHNfk+UNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWRt-0004RX-E8; Tue, 30 Jul 2019 18:02:09 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWRi-0004QT-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 18:01:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so130185569ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 11:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
 b=STnYbrirbKr1yAmc2nPF92sj0DFq3tq71Bs1c1x0ibWy4hdKDtZ8Tq4VPh1Kn85/6B
 w6lcKTR8uT01woEtqCg9jLmTWvC64bWHDataDtPgVlKtQQaaffkWMeVo4I/xwBfioTRL
 EcR2XKnbW3Nia+1xvzACV2DzMbUJEtS9EKIhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
 b=ZekzCsz+VcjipYjUtc/tAvyBSnBAme4V2CgR18zng15Kr7goBOOeD1H05rL6TRfvQz
 2wePYK9jhK8calwCypqFaHpLuEz0dzAYmlLs5FgCLDW6k3ZgTcYvGl3VXpTmiuexkwZQ
 fZ+RWVHOcoceaM7otpwxAWTPf4rLjuTAB/WneYDX2b2iBhPSePo4BtXgkEFFdJNFZkpb
 AfIptd9h7lAolXx8tKkSTBazmjPzJQsIWzR8tOyD4SIs230o4bLm21GQWGwfw5Y4A3MB
 tjGwYDYKjGDU7x7Qtso4c9CiQG+ykKnse2DN+8ufikzh8x6sddeSQMgmQfM1n47In25R
 1TYQ==
X-Gm-Message-State: APjAAAUhH+rrMwJuq+4oqI2oFPuTQACiA3Byt5Y+hnhlYOwIfNjR9gpa
 urpRKJfGyc54xcYS5B16rIZiW0EVpWE=
X-Google-Smtp-Source: APXvYqxMaRzlEKqBlSHiX9lLeBkoARx+0DhofS40xYkPr6H3fILLDkxciGB7/EX9U9mPEn/Bq+O5wA==
X-Received: by 2002:a5d:8451:: with SMTP id w17mr33167932ior.226.1564509716144; 
 Tue, 30 Jul 2019 11:01:56 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id e22sm49864028iob.66.2019.07.30.11.01.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 11:01:55 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id k20so130185207ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr103345503iob.142.1564509714317; 
 Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190730173444.56741-1-mka@chromium.org>
In-Reply-To: <20190730173444.56741-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Jul 2019 11:01:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: A few fixes for veyron-{fievel, tiger}
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_110158_635875_53CD6B89 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Jul 30, 2019 at 10:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> @@ -130,12 +138,13 @@
>                         regulator-max-microvolt = <1800000>;
>                         regulator-name = "vdd18_lcdt";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1800000>;

Please remove "regulator-suspend-microvolt = <1800000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>                 };
>
> -               /* This is not a pwren anymore, but the real power supply,
> +               /*
> +                * This is not a pwren anymore, but the real power supply,
>                  * vdd10_lcd for HDMI_AVDD_1V0
>                  */
>                 vdd10_lcd: LDO_REG7 {
> @@ -145,7 +154,7 @@
>                         regulator-max-microvolt = <1000000>;
>                         regulator-name = "vdd10_lcd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1000000>;

Please remove "regulator-suspend-microvolt = <1000000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>
> @@ -159,7 +168,7 @@
>                         regulator-max-microvolt = <3300000>;
>                         regulator-name = "vcc33_ccd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <3300000>;

Please remove "regulator-suspend-microvolt = <3300000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


Other than those things, this patch looks good to me and feel free to
add my Reviewed-by.  NOTE: when I tried applying this to my tree git
complained and I had to apply manually.  Could you try sending this
patch atop Heiko's for-next tree?  The yell I got:

error: sha1 information is lacking or useless
(arch/arm/boot/dts/rk3288-veyron-fievel.dts).
error: could not build fake ancestor


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
