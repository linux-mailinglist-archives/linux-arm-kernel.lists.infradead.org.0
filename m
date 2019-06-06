Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C6137DAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67CcZgEXSYWWenlqI67+c/olPBfaQd3krMktvdX3J10=; b=i8Tpk6v7aEayG6
	8uDtowMOe10oLutPY/RA84S68V8Q/6PnNDMngLmosBxA5WAS6M0PvG6ZG7EAlsUtB0MVksfff2DPw
	2hLMIYKkhEcuukEuG9BYZ+2hFzJMfC9dMxaslxgqRHp2rur9FsedUSUfFRBaM/xqoYSePNEhomzrG
	cuv1IYiINRBc2cS7O04YCt2JdCnLehwA1ZGHdKotsFs7W07eT8pjGGhqXFKr+5heVwZki0jn3gsu8
	FoVeQIYm4b1mZZGt3y0Py6Q2si8VGKSxQjHshbrN9z0+iVOEU6RAagifda3fRyDrBu52dhoRtw7cc
	fADjc9NFF71ZhOoSK0Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyTN-0006qw-GM; Thu, 06 Jun 2019 19:54:53 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyTE-0006q6-Hu; Thu, 06 Jun 2019 19:54:45 +0000
Received: by mail-oi1-x243.google.com with SMTP id y6so2499623oix.2;
 Thu, 06 Jun 2019 12:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KSoI84zbFfjJh+yucOPwxT6kilJj6MAJP+rtvhtzHSI=;
 b=JfdsVdvsUGgY9HlTxARM693KrJ3d3LOhodM05kVM/jqD2yctg/yUCsdNDvltCR/9o2
 bOn0L2jTGRvvPmte2dhpruXCv1vsV6NcePYUNiSH+8NbGnjxW8H+HpNz73Jss8GI7Qen
 cbhhmflFI0OToHaa1Pvq86yQY167iVJTH5audBJA9tVchznxATtih6JS7zzjNbXUffu+
 hkxsrmKCKotcHvUpUJIIUwQqn8kkfCGzpe71UDYrkFq79XBSXjZVyacCoYWvgvlxqekz
 y3TF8Nk0nTFY+cJKspYmD2v0wVA7gpGzQ6h5SgPF0ztjl4i45nc/qPvJrN13fEmGOuJK
 Ae1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KSoI84zbFfjJh+yucOPwxT6kilJj6MAJP+rtvhtzHSI=;
 b=XrEDi75zcp24tFq4iMhyAOGPpnIPMwZRXQvvl6UtQ6GIfWgDsBq7DaU7u1Xp4pj2tV
 VWgbiGiYEOkD92JKStGttQ6GHsJo46faUYlq3pm9RhTby1rTNEQJXgqeN7U+0beyVJfc
 79aKzhEkNdW5xJr0ZpT9vE3+jFKWsCaBfMt9fmeHtapB7aGH7J3WQig+997HN7RZiQia
 CKMGfniphhiPcF0qVZxP+0vDQHRA38Dd5OAhtEMY16JyvCtk3a/lChE2V8WWzQkubF5W
 2U/chwhp014KJ8dOD24KDDraYLaW4nBRBz4yAxUePEGU/Thm3F1heUIRAd41l+bjcUuv
 wLsA==
X-Gm-Message-State: APjAAAVVz1JUI/4fDPM6LgCEbWvls5Zm7mAsP+AuROVRHQRxtW5wucN8
 UQscH0JNgVPundRsKyH9hSdD9XcM4v6SQuefShY=
X-Google-Smtp-Source: APXvYqyw70dr2fyJDIqlurnAqWsemlv1vzvsRBlsbzDIcPAIal/g3gva1/cOrXlnngTXqo0jEtGlY7jBnw/bVGVCAps=
X-Received: by 2002:aca:4403:: with SMTP id r3mr1320040oia.39.1559850883385;
 Thu, 06 Jun 2019 12:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190603094740.12255-1-narmstrong@baylibre.com>
 <20190603094740.12255-4-narmstrong@baylibre.com>
In-Reply-To: <20190603094740.12255-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:54:32 +0200
Message-ID: <CAFBinCA0vy2eB+LCVDokeoEkkeu0A1VQQsTFwdBJoh3a6EAyOg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: meson-g12a-sei510: bump bluetooth bus
 speed to 2Mbaud/s
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_125444_595840_11B16D88 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Jun 3, 2019 at 11:48 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Setting to 2Mbaud/s is the nominal bus speed for common usages.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

I tested with this speed when I updated the meson_uart driver back
then to allow higher baud rates [0]
so I don't see a reason why this shouldn't work


[0] https://patchwork.kernel.org/patch/9517907/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
