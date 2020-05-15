Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E11D4752
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVriMwjPrtXoMjrUDlk03yF7ItYF3Z331CerLiuht6M=; b=Emo8Kuf7pNIGgP
	fh50Rg3q3mmZd5gEpd17HmXmUCcdeg1DCiN58WyL5BL2TToJXFPM0tz4GzUk5P0ajKBkH0RHM1A0Z
	0D/D2nDqPBXB1GEL2ibwfX4KlRt2hCoYNL+FOAeKa223c9Ma+VhY7uUnbikdOCj5jL3iAHOfMYpR0
	0Aecvy01pLv9TUa/IAq9Xf2p/oJc6eRpKdBRIAW197iDMBbB6cRc5yxU2SxvMt2fehMkLNe0eAt8U
	KdbXGTC+bpiKDNN1um//XujFGgqHb9vzXeEU4E2w6tPWH1c72TuYDxvu1hZjyi17X4a1dwuzGHscT
	6QjFI8/mIDsbgYpnDyCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZV3o-0000aL-Ib; Fri, 15 May 2020 07:47:12 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZV3h-0000Zj-HZ; Fri, 15 May 2020 07:47:06 +0000
Received: by mail-ej1-x641.google.com with SMTP id o10so1434127ejn.10;
 Fri, 15 May 2020 00:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5lxGFQ07X6Q8DMktNn+V6OUFm3XKfN9+/9X+gPiac5E=;
 b=XO7hisfHsS4YVUivvf2oEeQ9nIqK7UArYsQyGR3gq7VYo7NFdIjB+jJOxoTvWul5JN
 zctEbgWOxP2RZYYWH5YGpNhD/m5MjRuI7yD+9yD0fKV2hrOtf+FsyfepUtbaEzYA5e8r
 Ksrl0ALiP5Qds+sU4O7Gu6IV4uS6k9+cvdHfp0ky2UFwjnL/jx7DTnEsZeXndeEQwyOt
 f3xh9zwYs+G6Ttwxc9EGMCEorKAo7hPm1H73ZWwftASdAUk5dIYXxn+KyLuWNmMhaPPL
 DP2/wnV7PGOLtoNBSdBbmxqpjjrvEL2/XmwEtcVWcIg4T5XWIHIQL2RiCwMJ0/TEmNUp
 JA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5lxGFQ07X6Q8DMktNn+V6OUFm3XKfN9+/9X+gPiac5E=;
 b=RtQLwFjgQhBcz9Eisvvzhi/FUq3aOuxfQZ7RoW7zr8JxM9iLlPwNiW6HWIZssl1dkB
 CBU7QgNUOup9tfPSu1XyxQCK0eAl2S4+Jj4fkw17IkLfJPIijfnXlzo6I9DUrhrZUKDO
 hnGgnx5L3v2DedURlWjY0rFtGeRL2A1Np1qJfsJtBsYy+TQKef182lTVkSwnFdbWsTbZ
 j5paAHLH4qfAWK+1ZSnVrqolYfx5f6XD3lz3OgIOyH0GMtbUvbmMayg1yJQHPAUdU7pL
 RTOMlEWq5umSdzHpK8lRHCcpnqIQ+XqXSrJ5j/3K9m9IyfSgGb1d8cwIHt1LiIJ8KAXO
 hUDQ==
X-Gm-Message-State: AOAM53066CrB5b5vfMNmJCM+a7KfPyNld2HSgcBIZU3naM9e2lnIOlEU
 ilZInlUsQwdWVE1XeDheApadeGTDpzbEMslaAP0=
X-Google-Smtp-Source: ABdhPJwlZAX4LwThW+b3j9NzVp/2b7ebUkgMHWawmR/nqaObhB1maBHD24f2YC5LN00lGpjpRF/cJgmt6va+CCTNNIM=
X-Received: by 2002:a17:906:9518:: with SMTP id
 u24mr1645422ejx.137.1589528821013; 
 Fri, 15 May 2020 00:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
 <20200514182750.GJ14092@vkoul-mobl>
 <CABHD4K8F_sk3Xsevu4pMtR1jEanh5-dSATLYySPKW-nDY9fAvA@mail.gmail.com>
 <20200515065827.GL333670@vkoul-mobl>
In-Reply-To: <20200515065827.GL333670@vkoul-mobl>
From: Amit Tomer <amittomer25@gmail.com>
Date: Fri, 15 May 2020 13:16:24 +0530
Message-ID: <CABHD4K92yySOJs9heBienGBieu6N+ALj7NKcAPvThQGXMWfOdA@mail.gmail.com>
Subject: Re: [PATCH v1 1/9] dmaengine: Actions: get rid of bit fields from dma
 descriptor
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_004705_581057_E075B6D1 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

> > > So i see patch 1/9 and 2/9 in my inbox... where are the rest ? No cover
> > > to detail out what the rest contains, who should merge them etc etc!
>
> and what is the answer for this..?

I do have a cover letter for this series , But CCed only to Actions
Semi SoC maintainers
and mailing list.

Also, As I said going forward I would Cc every stake holder at least
for cover letter.

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
