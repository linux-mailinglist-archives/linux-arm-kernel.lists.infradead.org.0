Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2924AE8A65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djZojeD9x7FY3h8PsqafTXdvS2ieFm6cofebXMINOD0=; b=Tj1V+Z1BF18EKm
	pu7TpOnmxYjaVR0Q/1rN44rGgqwL9njJgMPck+yVlhKrShHQ2MMJhZ2JmjWVNxMcNa0Qh2IoivAYB
	otIa+Wg/I2AyrkRMgb62yxyHTeRuuA6bCxW2tGSOHQf/CqT3/YWU2rx6eEzU90z0aTJabS9WHDo9i
	C4qE0KVoz37P6vW1h0wdqHqFyi2LZnEPkbkNUQbsSyDRKEVKOJwGIOP6N62TVNyhhiA62EZM1TcBl
	rU3xahLnYWDwukaMwlTXXBjcH4greWLPY54iH5yh2nuzjzti7SsyeabcVv72kXxSRDVMUVidBrn9+
	PnZA9TYoFN59Wk8HzTpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSGG-0000u4-Ew; Tue, 29 Oct 2019 14:14:16 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSG4-0000sb-9i
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:14:08 +0000
Received: by mail-ua1-x943.google.com with SMTP id o25so3835421uap.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WRiAkOhbI4dV58chbNSol3Yacs8NwxdmyZ2dChnRtrM=;
 b=xajKtnJrhLWyaOykhKGtlxEGtudWLdubnUwcx9nZIUmZ4B4YcwrOPiyj85JY+B6kxA
 uT2KUH+00Vf5ICMMKVHjppY+r/euFqo4OijPnQeKEp5lNbBSxpgT1jL68LVXsnvoNTA5
 s0f0EGVTrFfjcYf3jfJFCVHPjNHopZ/3FeHYPtMdAIRL0lJsT1x95wGkyZ5O3eTrynBR
 tJw5mEIpEpxkuCVlRhHU7wNjXhJH4apI5dDYiIwN+Bx2LjcyVYa3HphmngId8dOU8EQ7
 3dv0emRFlpZpV/ZQ24gLpSg/D/u4yH52OPvGqnZR6PfQn3c5lnm9ynCXkzLAY8NcZ2Zr
 2jzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WRiAkOhbI4dV58chbNSol3Yacs8NwxdmyZ2dChnRtrM=;
 b=P2ZS5eGT+MxSqHNArtoxd2jqzjda03r81jEqTKWKlhTWAWIRWD20hfyBtze3oXL93P
 IDXzEcUBETnuKlAXbGqe6n4x7yMNJ4b3jSK9WNaW8cz1cYRisCY5I+OZ4sm1dhWa6CFo
 oWhOI35w+JLkJ2itjVrVUK4Vy2hHHV+GJ8WXrMduCeKKZp2iVfuf+FwxnxrHamCZmPmO
 4Fnmk13zY2dJgTgnLqxd4bX233MjYc8MbHWV4OBmy7OKrsUXmdLwEBLBDHQ+WvU2eUmk
 6zQjO13/l5yhtk0QTuBZkd730XGmCf9rYG56dIfbfSmA2xSmtwYb4R+9Gs+qFuhDETqF
 1q7A==
X-Gm-Message-State: APjAAAVuTvU412gYGdlzY3YiA/RtRMV+KomLdOqUTgUdb4EMS9IitXvf
 DPe1zW9O6CobToQX2X4BmwD1y2bK+RhdMetj0ML8vA==
X-Google-Smtp-Source: APXvYqwXDN2mRvdj+26BcZ/ILI0ofvlyph74hhkrx25WZ8XAd6RsJ1WmNMUZxWgcMl8KizcybIyWzpVf3nQ5cmC3Sso=
X-Received: by 2002:a9f:31a9:: with SMTP id v38mr4022990uad.33.1572358443061; 
 Tue, 29 Oct 2019 07:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
 <20191021064413.19840-4-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191021064413.19840-4-manivannan.sadhasivam@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2019 15:13:51 +0100
Message-ID: <CACRpkdbSF8C=fY8s-=e=zVjTHu30_mA+MP=Y_J=jkSp96APWhw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] gpio: Add RDA Micro GPIO controller support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071407_250723_00FFB82D 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 8:44 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Add support for GPIO controller from RDA Micro. This GPIO controller
> is an in house IP, developed by RDA Micro (now Unisoc) for the use in
> RDA88* series of SoCs. There are multiple GPIO ports present in all SoCs,
> each capable of addressing 32 GPIOs. But only first 8 pins have the
> interrupt capability.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Not even 300 lines! Nice.

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
