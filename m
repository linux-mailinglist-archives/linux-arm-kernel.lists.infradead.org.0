Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734C423F8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5xd24WQh9M9x+Dq4Oz97DH2bVpHZUIs+DAEv2kywHk=; b=Xr0jJxg+calhtc
	DBpIHMxkK8G8GD2EpRIT6HgmKlCfp/7e/C8DK793F5v4HbPwoZEhhMAm8xqZ0+t/Sb5G3VRdRijBV
	98bN+eb6xkvz4LuPjePi00DGe3rInl1Y/4EenAJrCQUn3MfjQo0CHQ8gsnayakch5NpXMxLnpPkv5
	T+xOGxrm7PfHHHqeetRALFn+peatPqfsYYae5uHscgmjvQxKpQGYk+TGakKM4bOGhFs/tVATTkFt/
	vFzxAcs2+7fNTli0dwGQv6SJD+AzTrHCI2uCxBdyM3x3YaTrrfPibXUY0WKKfEBjX15ODlPuKtP9V
	LBfo6aVKSaxh8gQX6WIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmVs-0007Sx-Iw; Mon, 20 May 2019 17:55:52 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmVk-0007Ry-0p; Mon, 20 May 2019 17:55:45 +0000
Received: by mail-oi1-x243.google.com with SMTP id q186so4000653oia.0;
 Mon, 20 May 2019 10:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TmOplSbOfwPXiFLdMSnHPPDbLWjw+oFluB1geaReHmI=;
 b=KZjhBKGLwyndxwWL6jtb95hY1xBVkukLaGn9BsJy2YgB9WI9qT5FUGS8fweJo82pMN
 FEVaoluxUufAssA0ighz7jFjymDluWnk0dPaXuThEfHLH20ItweBAuY7OZx9Fo7ztOcp
 gm2NNK7UdUnNEt4hCYMsK5iKjn5xPL3i6kht8hl4AWIVaN8BFVU6Qve7hGvouVopgfR/
 4czpH6/ycX1pHYeBexVlbIgnzgOocLq/qc/aO1Ih8v+BblWAn6Mgz+XyXa+uNsmiGQlU
 IgpfuMQ+QzlcDleA35auW9O6vee/TqOr8zXg+pL5yKfkOR2M77+sU5KBn2wLeOlcivMt
 X15g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TmOplSbOfwPXiFLdMSnHPPDbLWjw+oFluB1geaReHmI=;
 b=l0EIHdVHiZwjGEQwUSY1xIVVzSgIH3u6uTP4ntQQ5qTfgXEfVOJqqmqd/VJxgk+RBJ
 7jkCQZW8uQhUphP0kY9ZQ4uH2iUPkLOT6RTF6cZW2KTWv2rEFpwPH6Le4QVYf1hpGOYc
 CGW/O9gtOlxP9kePjvDlpSL4B53WmettpW7O8uSgPzbXafB3i91ZVSZCvFQq8WTA9Bxd
 wNZm0vFVLzWRAjtfIV4u5dGxCNLxrhEqOR3lUwCE/P4rbevv7DoR0LX3fS2qPTa5QAlG
 KPJfNhysF42O0oJKvYWBaUV6uxF0s4+vb5BlPa7URdFwmakFLSawqR2XEqsItF3PCGEj
 mc9w==
X-Gm-Message-State: APjAAAU/Yo0h7rmB3aTIV0Pb/M8RBwhZ/Vy/MlojBoaGbI9UW2xwmuqP
 X5G5LNF47x9N4KJHRzjFCTbSX+oH1fFZptFMkr0uOzQH
X-Google-Smtp-Source: APXvYqyG0v0OSWuexhekflnwntq/Q+vi0aE9b2sYgWysotk+X4xcLiCnq0ct6UNtu0iUbwSdClu2x6C9Fc4llN1jktw=
X-Received: by 2002:aca:f144:: with SMTP id p65mr277382oih.47.1558374942891;
 Mon, 20 May 2019 10:55:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190520140228.29325-1-narmstrong@baylibre.com>
In-Reply-To: <20190520140228.29325-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:55:32 +0200
Message-ID: <CAFBinCD8Gkb0aRXWPb1uuezSHuS9DxQmnhuuSttspDzWHNAV1w@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: meson_saradc: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105544_065610_FDF99823 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: lars@metafoo.de, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 linux-amlogic@lists.infradead.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 4:02 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/iio/adc/meson_saradc.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
> index 510d8b7ef3a0..e39d95734496 100644
> --- a/drivers/iio/adc/meson_saradc.c
> +++ b/drivers/iio/adc/meson_saradc.c
> @@ -1,14 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+
the original license text didn't mention "... or later"
personally I'm happy with either GPL-2.0 or GPL-2.0+

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
