Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE5737D95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+YPSwuUH44vqsZZQRW5aGz5a/OgO2iquvldAsH4I5M=; b=tLf3pXsepx3HLZ
	+tG/SNfXZcGXvC9hbzRTlHSvYElMN0SPtZoB8ypSUcMM4kbTgsKTwJkQWMx2ywtq50yW+vicQ/45z
	EJvxK5Y34dt/GILOGDHi3wlLg2nQcDUP/jNILJVyYzRoyPl3FJpNTjvnOcCBVzvrrwmSFB+rn4ZYy
	C0i7v2oquTtmE1cd4TMX+n7KiTcm3QrCZBu6c6+5O9xvf6JwKmyfH9DUjLqHhyTx2xShgifa0UuwB
	YTOVBhZ99b/VaTX/apqgMAUXMigW7KZ1ps4bizoICQwASeXpcAFGK76cRbyWK2D6GqgrLz5Bs06MM
	juS4wwiXfZlWXEVKymUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyMR-00052N-JA; Thu, 06 Jun 2019 19:47:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyM9-0004nj-G3; Thu, 06 Jun 2019 19:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8wGfAmKyoK9bVApTeJ1ikTLIPBAYdTrgDhJ6H/YeNVg=; b=hlCoftlD4vXaRZDY67sAXvm8V
 OQ8QaSeCUx0r/Fw5MLgK70sscCrAeobQfYhM+Rw/ITkQBPPaxBBw3fXTuWxDns8n4qyq2182EV1rV
 LbSwI/3IHApyncflZ8uBKcfD2+qtFBy1LKNQ+u44mC6A570tRya6zW9SZ4PBlgd1OnjrYFcuzqdt9
 u/Lph9cpAkLXXkNMdIpsxg9rctAbO4uCeCu5v/x72UV0Gx+ok35OutSGcJhD7h/WBYqZgPcf+ncxc
 /EADL9R7fNK2ZY8HrHjYH225UwdExkVYAwAuf7gmI+SdiTspK8AAqlc6nu6EXcEOHabVYsnKTSZ1X
 RT+fmWvUQ==;
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyM6-0005P2-Pa; Thu, 06 Jun 2019 19:47:23 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so3089018ote.13;
 Thu, 06 Jun 2019 12:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8wGfAmKyoK9bVApTeJ1ikTLIPBAYdTrgDhJ6H/YeNVg=;
 b=JXj2zIOFKEDcuxGqOXtaHzoMslRkH8F57wmo6Zg/C6Z48YMAJJzLyoK0y6q78VFXce
 sdIPp8OqGlBPq3V7mf87QV2UbHH7BIm1Fc3aHqwzCA+oljMlGYlHfkc3TI0I484O1K1S
 OXOMxDp8X8FWBYd/ysRIABwzI1ccbF3aeS12gtq8RJ0gFh57xBlSAoFVpPOzPKUEw+nG
 KtQmVAhtVZFxD6tK91fpiuOjaUaptaq/Q5Ev9mslUgwgexLbnMK5+ugOd7rQ7C1RqPlX
 xDPvBzguKkH0bAG2BPJA6lYOrrj/kAtz+rZsKRLu43r3SFAQxC7HLLwcCN35PWjP9wmm
 z7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8wGfAmKyoK9bVApTeJ1ikTLIPBAYdTrgDhJ6H/YeNVg=;
 b=IpbYLBonqlHM1aVmGgpyJqkFhyllioYZy5w/iW17HlhhCUUTVprZGjSmz4SDKoQZVF
 gh4zmhAU3gx3ql+BTVF38NyTvJKHvFvV1WlyW8a5XauQJUlS0Dw5Yv9GCV1Ks+cBLXhd
 6Kkm/flkEEi8wUZrJqMc8OeSQ9DkXCwf5sHV61w3qOIiapNAH6Dup/qHsDyoSInQ4MaX
 qu+vVHF3J3wAQ2ha8j1P4aMWWSo2iUv/PJ9xz6I5AQ431uy/LMbKYfd9YFXfoi1fRfAN
 qa8VLIV++EUAszn5A/GXnqRHy27Am/C9/W3gWedfdKYYl5CF4U90R4WMtKXB4BCwl9hm
 IfeA==
X-Gm-Message-State: APjAAAXI1t0k+Rz5/gThbA8rwm33ikCBmIF8sYxfHpis3/n8j1+FBxmJ
 rezLTQvo2d3Iv0N4a8kksgORQ2W7F+IryfCFZQQ=
X-Google-Smtp-Source: APXvYqzuT2RwZC2LIrDFehW31R9jvGbrmRuApk42Pg+UA3g4byiNms1PcIULKfXunwPAiHdFS6Np+7uvtr1uGqZj/+s=
X-Received: by 2002:a9d:14a:: with SMTP id 68mr15424609otu.96.1559850438867;
 Thu, 06 Jun 2019 12:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190603094740.12255-1-narmstrong@baylibre.com>
 <20190603094740.12255-3-narmstrong@baylibre.com>
In-Reply-To: <20190603094740.12255-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:47:07 +0200
Message-ID: <CAFBinCAR47VuoDoWerX4YZ4=v2G4+L0MW9kP0bEhrLWaWOPdfA@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: meson-g12a-x96-max: add 32k clock to
 bluetooth node
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_154722_859236_42B5D34B 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> The 32k low power clock is necessary for the bluetooth part of the
> combo module to initialize correctly, simply add the same clock we
> use for the sdio pwrseq.
>
> Fixes: c5c9c7cff269 ("arm64: dts: meson-g12a-x96-max: Enable BT Module")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with the correct fixes tag:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
