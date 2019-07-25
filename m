Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A535F75499
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/EzUzwK9G/Wm7KUGt9z/PMIgcWCyWyaoiSHGULeev0=; b=RwuhRa1i4YVhFQ
	Cz//fJ7OXHE7Y3HgCDm6xYGfq6mgI1918RJ9hfd5ss2I0T6YqBKHvP5tbQ5F3Jq3UyqCxwJ8BoKxh
	1RHl84X2hqKUlNNKnYTGhxlIfRFyMu5trB5DzMCYVEZpzaU0wuPHbvN7W2qEYgd8fqIZa9aO9NtfX
	jXmKQRg1tJQp1/9nOZXbHZpoXsytfoQ+OVU0gIVsd2PjkFesMc0SaHUpHEhuF1gJgyEbNONtotZD4
	1/fxr7vGg0tR3lBwj2cFSL78oJplkqsRGAGHXlIQjMUt4uErflMdR/Lg3tv77fA+TmFLvwpvQa7i7
	MO/Xe6nM8G4ViEtU+MfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgvh-0000uC-2i; Thu, 25 Jul 2019 16:49:21 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgvH-0000pQ-Bl
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:48:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so94521428ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
 b=Oq3bWQYZfePc311A34AbLZpfdLSyWQ9zAmOxY8w/LT5D3Z7amPYgg7slXVnLbaYT5s
 dApXuC+dvlXm4a7wKv0nZdbyayoNVDZ4t5PoK8tbVG3OE7LmMafdc1Ctd/dWKEzxKHln
 xwxF9Q7T9eZPyvnh7tT9vMxAjquvbNlDsV/PY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
 b=lQcfaZk/s1CMX+nWm5AWtKfPnKDYIbFaWK1+mmEGZGtvLllBbKRDEcYURQSAqFk00C
 3Xn9Oq4GMmhb9r72O0wsEgQQNsNRILTgiTdpXoWpAtd0et91CKwGn7MoYYgRPk6WFrx4
 uoHDDFJbIMkn3FDi8wnATijr++bGJqo9r+kTNitbcLRtn0iZ/b3Q6E3IA6OVeXaike2Z
 5IIk4GJCj3mQSqp7NZZCcAsB1mFWCp8efraPur2H2bHRy3K4xB6veM1Fb5qNWQggOrXk
 aK94rwAksEMFy5D87WxnbDC7I4e+AC0eNmgTlk4ACov12rSvL1ZsF+jcdu3dSIbmyHX5
 7Dkw==
X-Gm-Message-State: APjAAAVzKv8M4Qx61SSL1iEXJetOrUEbVEnnQR54F82ZQ6icvNbfBY4q
 ACnHMBl5kuNV8eCsB9BtmaND4IC+DrA=
X-Google-Smtp-Source: APXvYqz7sWevJqvnEG1eI7Ov9pCQFTcUjqIm0x9sLj48d+STZjRk2WQNMMgVK8jnyknayXM1qRJX1Q==
X-Received: by 2002:a5d:9291:: with SMTP id s17mr13059308iom.10.1564073334028; 
 Thu, 25 Jul 2019 09:48:54 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id n22sm82761984iob.37.2019.07.25.09.48.52
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id j5so94521239ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
X-Received: by 2002:a02:ac03:: with SMTP id a3mr94891125jao.132.1564073332377; 
 Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-2-mka@chromium.org>
In-Reply-To: <20190725162642.250709-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 09:48:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094855_488422_0C9E4503 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jul 25, 2019 at 9:26 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
>
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - allow MIT license
> - move pinctrl section to the bottom
>
> Changes in v2:
> - rebased on v5.4-armsoc/dts32 (0d19541e3b45)
> ---
>  .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +---------------
>  arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 124 ++++++++++++++++++
>  2 files changed, 125 insertions(+), 114 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
