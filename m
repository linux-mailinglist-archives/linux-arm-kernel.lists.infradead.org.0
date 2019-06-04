Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A043340D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aOwj2IWW2FN/bOFRQZBCVViuoUnocfTMOg+cnyv97E=; b=on+kgnLehuGrYX
	o30ZnjQ2L5pxvVum4aTNZMSP3dW2XmTuf+ghS3H55fnndWZBW8nGA51QW7H26KaShsoYAfTqbPENL
	y8AolCDwCYf8XIRw6AbvH4bibMPaRBK9d3bJeqokAzKH5ZkhlPnIJJ5qD9Uu3+GTZkuhgRol/70jt
	KOtWR1t1yL8lJunmGcQtjPnMBMGI9BnL3MYVUhLf/ls3YRmLdfpdB6hvNQu4JIp/ubMcPJ6nvRlRq
	Iy2jMBMfJBLH6mb+hJHDjmn0dMxr9mUCMTWmuxXUVGMabzwRDIPPOoJYRdfT/m4mL/4J1cICVLMvt
	B31s0FB6MeoNidR1c8pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Ig-0008At-Cw; Tue, 04 Jun 2019 07:56:06 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4IZ-0008AA-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:56:00 +0000
Received: by mail-lj1-f195.google.com with SMTP id i21so4175332ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6xvjs+U7cpHXvVtpfAyZDYD6TtycrFDEwniXbUsYUvo=;
 b=qQhsj4jR2gmcmls5V/xevMRIQMbWCMd0HLpSDaB0f0TOrJMOe1+/eGALWlr4iLTLLb
 qpQSZPSt037mNYAwV2E+pu1Nqvlbm9QtvnOeBquPO+7nmn3uZNVpMZ++QVoLAwNokZFr
 S0mH00OdBDRIKbt9pEJciJ79t8H8vSzyJaoc9/fWvhUIPnhm6w0vZi3YkwQOjILYfJd+
 BqjNlj+02aqYFtxsBP9V37risDy8D5Qg7yWuhqIxCBjCNEIZoJ/I+27QSlCtbCXOuMW9
 0AekM7uTThbsTRbIB+IpJwgSdXa2TCxjsEnApZow61mtPw+Q414aKPIO5o7aTnJanIkL
 80RQ==
X-Gm-Message-State: APjAAAWn9rrHbjf3ZyP1bjNwmugjmhUy1nbpQZ54HQY7iLbXG2oIAp7j
 bk8RECRImsZufOJl5zpw6oyqEl9Xw3j2sjOsZQU=
X-Google-Smtp-Source: APXvYqyxsQgy3LYD4yJOMTnAw432x6DOOdEil+9+TRmuB5xIWpmLOpJqhGsjgMcDM4EG+5kFGdexvJTsrAHoB2UF4oc=
X-Received: by 2002:a2e:8555:: with SMTP id u21mr15732385ljj.133.1559634957595; 
 Tue, 04 Jun 2019 00:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <1559634748-19546-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1559634748-19546-1-git-send-email-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jun 2019 09:55:45 +0200
Message-ID: <CAMuHMdXzLGtUOagfEeTS0XjN7T0HkoM5XMjnFYaCPDO9VSmCRg@mail.gmail.com>
Subject: Re: [PATCH] arm64: configs: Remove useless UEVENT_HELPER_PATH
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005559_653173_68530358 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 9:52 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
