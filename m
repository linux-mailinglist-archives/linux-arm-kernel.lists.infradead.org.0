Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3969C269B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 20:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8UlQS8OtFMvSkp032FNRy3XezOPZdY0N01BudjiaVU=; b=OzR9ZoLPW99xkw
	tTWzQQr8vfobexoN11hPtEZGISqaFmZVdPsjtxLGFzQiwPrcYzMwrWUX+yZi94Ait5iko1f47EyGc
	kGJn7OO6ic7SePDw4hrsbPrv2chQrW2f/2rhxHVeAX0ANIIVS4BoWDv/pEQ8tmimpllPAPbJjGvC4
	lKkFAOvJxI9gsdsM5tyUZnAUnG2cnp8K8/0+tJq+Vf2WqMsFM7OCH/oXI920fbM7dNKkMdEEVsoAp
	iEs/EqSD8Gig+jRWnpXTU4bXMU2LpLtHvQvDnzQYG4qu5L/LLcic8pVWfXr5kNIlmYLXy8JG34lAW
	8uoN+rg3b4jbXswJdHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVke-0001Ba-AC; Wed, 22 May 2019 18:14:08 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVkW-0001A4-D2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 18:14:01 +0000
Received: by mail-ua1-x943.google.com with SMTP id n7so1199976uap.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
 b=Vkv0JYag5RXjIyQv9tMB50n4hClGqOqpOhB2GGfs8w4zpDNVkiYMS8ZJDnx0wvP5XB
 F92PsIOC6CoRrTLnhridwl8W06XlPQzWSBucGXbUj0XK8y4FlsyM1ZIF6ySGv9hgOIJN
 N3J3A51yuRx/HD8R01BubkDaT1q5W+xw/9QRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
 b=t6vO22lKE6WRFazbC6/hPSZN7grzRZUGMnKwJB1l2tJkVAv9VOzOlmufyzuDs/3ZiJ
 0MJ/4X09A5r3c2RF3uutKzOCLt3rRKTU2VC4QUQTMu7thAzkWdENEAldkcUseJ+0vkVz
 sIz9hVpIflmHTq7oW8EOBbwRHDCwCWVKAipc+u812JhY/BWUi2Ma+BXN1ZdjvdFvfy1q
 YBuTJykMqH+B4L47+WyVfaDjbpwSlpoJRJT8HLusIXzL7thT8O3M7vXbFZD2SCKwNpVk
 OxyLe24EOddLQlb1OtOoYEFX5p6HDtpbci9jLKnHi3d6N9LVOBaIizX4fT5kSHGkZRoQ
 GnRg==
X-Gm-Message-State: APjAAAUDWdOOXTv/vSpcwlhpUC0se/NvTgQt+RFsXWZD7tUYPM13zuUC
 vTxSzoHB5AYqq7XU84FAoml/5B1rpTY=
X-Google-Smtp-Source: APXvYqxx8W48S5D7cO0OqXuHHUVvpcCVFQPBQbTo0ASJu7IBuUbrcDZ6wwK2Ax6ISRdhAX2KuKn6oA==
X-Received: by 2002:a9f:2727:: with SMTP id a36mr47309852uaa.45.1558548838371; 
 Wed, 22 May 2019 11:13:58 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com.
 [209.85.217.49])
 by smtp.gmail.com with ESMTPSA id l31sm1996735uae.15.2019.05.22.11.13.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:13:57 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id k187so1961377vsk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:13:57 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr28744866vso.87.1558548836544; 
 Wed, 22 May 2019 11:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org> <3108277.JP5bvJISVS@phil>
In-Reply-To: <3108277.JP5bvJISVS@phil>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 22 May 2019 11:13:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for
 veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_111400_438253_98AF454F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 22, 2019 at 2:14 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Dienstag, 21. Mai 2019, 00:00:49 CEST schrieb Matthias Kaehlcke:
> > The NPLL is the only safe way to generate 500 MHz for the GPU. The
> > downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> > devices) re-purposes NPLL to HDMI and hence disables the OPP for
> > the GPU (see https://crrev.com/c/1574579). Disable it here as well
> > to keep in sync and avoid problems in case someone decides to
> > re-purpose NPLL.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
>
> I was actually expecting to just drop the 500MHz opp from all
> of rk3288 ;-) .
>
> To not have to respin, I just modified your patch accordingly,
> see [0] and please holler if you disagree :-D .

Seems fine to me, thanks!

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
