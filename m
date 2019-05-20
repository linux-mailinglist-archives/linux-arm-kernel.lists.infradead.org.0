Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF0D23FDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7F01ApQ3BLgBk0KQ/1e+DOvYDddRQ1/BkTJvXongqk=; b=gzqqq0NM57gr7C
	y8HMhT24/LyPKwmYVZ9K0nVtN0n+cFyrc3X8e4YXigMdYqeccNsSVg7IwqJKlRrerZoIQSOIqajt3
	EDSOg6JkLRmV2+DepU3kx9+nHHKN0mtiFWDTAfTvYO22V5BrMQUPCg3s12ikkxm5cgzOfX8vco+0S
	5nbjsyRc/lDCa7BHuDNWGaDw4C8sOWkn7S3xjR5uKfwjLeLQxkTEwEECc9GTJ0YPPey/tAUFo9ZvX
	3eNPcmpKXLG/WmayEXmjG2duhx2IaYKJBw1KLt4YhePPCd51MTXPMEnb/QNxn37zSvurN8BWauiak
	LB0vXj5V9drBeWYdjuEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmdW-0004Fm-SQ; Mon, 20 May 2019 18:03:46 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmdN-0004Dj-RU; Mon, 20 May 2019 18:03:39 +0000
Received: by mail-ot1-x344.google.com with SMTP id i2so8473244otr.9;
 Mon, 20 May 2019 11:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lg7t75rB4qsd4s6bpU4YxhlW8EWy8AlH8d1j0mkYGbQ=;
 b=aB/+gm/N1HtoFCU/k46QW8IBr9SqqX2Xd1UivpNP9QWz8TAu9TYbiIF2+3EMwo4JB+
 bC3eXFKgjWk3FzIkHstiW0t2sl0GiPFWlF6087C4LfbG/DUfpBlSO0Dpfwhn9MBa9GFy
 TO8coCBXhkCs9buhCyAjRsQDKbblWQDtMGKevRb8gUKpffwVcNRhoVnvhlqO6hvQ33G/
 L82DmaoMlvySscXWNU7DDgKKkl7bbSlJIXFhg3tFnpU6+mOUraWjQ14oa6UrO/uUWiCT
 MSUbDSm/svW5aSGRFccKZzdBx7931ih3B9Z/TcOFzvWYyfJHGtkpNUNHz9Fy+94JQhDq
 Uw3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lg7t75rB4qsd4s6bpU4YxhlW8EWy8AlH8d1j0mkYGbQ=;
 b=k+TJZ2+qi1yjux96m+vsL8p+tBFisXRP23/A9M/5TxXshIeH0k8Ct3L6bwDtFazRHw
 2yJLtZrD2vpiJin2r1/1uMQF477jNIbqH63a32bpeBe1MNnp2Kg/ORVaH4rVjQCPHQ/a
 +nT9HzpEuC0R0BxNMkTzODE05RyUvyNaLQvy/Kfn5iL9Mli7C9TM/ZA6ut0DBXsoM6dV
 mgV3zmdENr0JLH6/u/3EMkdvLwrYhl9nqYn3wN3a4HG4aydKgaQ6k4kHHmhGQDDTRpd7
 bTIFfWWP74aJ0O3/se9Z1spqNq51ze+ZoX4Qp4gjkSm13eOtR3/gxMJKDCskP5ypvpWk
 yTBA==
X-Gm-Message-State: APjAAAW6A2q/t4IKFpgJ8oB6DITTbMWx5aQxGIAIgKc8iH3DJdhxL8/N
 nexun8Frojmgv2wilc+YP+y5iAZlkn+0pWorteezM7QVsa8=
X-Google-Smtp-Source: APXvYqxUQ4r21V391pp1rPbD48TGr1U/0J/RR9mhH1nqmJEvSFynCdpRaHREgDtfIR3rbJ3Gdi1/Ka7KaQ4LloCsTS0=
X-Received: by 2002:a9d:7c84:: with SMTP id q4mr37874589otn.98.1558375416758; 
 Mon, 20 May 2019 11:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143812.2801-1-narmstrong@baylibre.com>
 <20190520143812.2801-9-narmstrong@baylibre.com>
In-Reply-To: <20190520143812.2801-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:03:25 +0200
Message-ID: <CAFBinCB3Q9ZZP6UwiivWB_eb47vh6j2N9Og1qZWAi6hm4+17Tg@mail.gmail.com>
Subject: Re: [PATCH 08/10] ARM: dts: meson8b: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110337_911391_CF45EF0A 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 4:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm/boot/dts/meson8b.dtsi | 42 +---------------------------------
>  1 file changed, 1 insertion(+), 41 deletions(-)
>
> diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
> index 800cd65fc50a..c38b0828b7ec 100644
> --- a/arch/arm/boot/dts/meson8b.dtsi
> +++ b/arch/arm/boot/dts/meson8b.dtsi
> @@ -1,47 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
the GPL text below states "either version 2 of the License, or (at
your option) any later version" so I believe this should be GPL-2.0+
the second license text matches the MIT license [0] better than the
X11 license [1] due to the phrase "THE AUTHORS OR COPYRIGHT" (while
X11 uses "THE X CONSORTIUM")


Martin


[0] https://spdx.org/licenses/MIT.html
[1] https://spdx.org/licenses/X11.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
