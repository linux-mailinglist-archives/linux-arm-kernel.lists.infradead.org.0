Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8B55D85A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jndlU6MPU7flfhvpTEt+5lcQWujmTwo2X1i0EvUJ2i8=; b=iiceWIwd7HL2LA
	KrcuGXp1y5ZZKMKz7qhTYklAakr0BfZQqZnh+IrCcit8ZoX6HmszSgXga7RjNs5UabLLbfKomEIY3
	zWH9C2Yf3i7inRqZJOv7H+YC0Go7nuOrIovKXsoX85ZYez3b3mC7DRenl1RZUeG2DQCyVdaS32efd
	GbGVWSZ30+6M2Sc+id5rTpov5R00E6sC/hhm+HYoZfvZTXNDrvG4ikHsJ5JXwlSQnoGVJugj5XlSL
	vo6Cyb29FMSQMCdIjYfOMkqZDzpXXKX1uEKXYC+JljaXZJo4vIoQn/gZcF3v2Slk5XGRajCLR/cvZ
	pOnFT7C89/+nA2S4YJHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiS0u-0001ks-Mw; Tue, 02 Jul 2019 23:16:41 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiS0h-0001kN-Ll; Tue, 02 Jul 2019 23:16:29 +0000
Received: by mail-oi1-x241.google.com with SMTP id w79so414611oif.10;
 Tue, 02 Jul 2019 16:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TCrBHpvs2bjlY0tZQ78kB/teoCTIaxox5gIgv2Zg7MM=;
 b=CuI2IgTXX842IlAyxReyqFM1sRgD7KsYh/dPgH6QAHgmHFKOPh7/a3W6pU8NOrWD0i
 r0HgT9QAhB3P0L/SWdmy2QahcMIkNdOT9sM4bcNQi4Ow67paIGHcnPZqpW4yB3lDIPYr
 3LvXJK+WTzqu0K9DtXHI7rFi97IFGrcgRoSResKlOVMBTEYfPmMfxpIT9k+/4uJ1yP8z
 HPI5nCrJ5EzIiMBe7xemYcyUYwvaQdSLLELy1yUsDPMaZfgnz3HGUWHwT8mgyNVshEBb
 ruxaz1jL4/BjMVUXqdAUlRklzGjyHeKoZ/I+J8ZcWABIvPw0KHcl3yLKYqpM3asVZDIp
 CZgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TCrBHpvs2bjlY0tZQ78kB/teoCTIaxox5gIgv2Zg7MM=;
 b=TbC1+XYvCH7wT1EAPICa0ZQKrMSogmnfpqg7TkX0UjsI10Bj8+UVLScEkYq96bSgDq
 zEIMyg2G5JtV8hlykT1F0ynicr6PPuIUcRH9S9fHBgA6kGdByeN/d6yJT0ROENIr1Az4
 7ztJirXhRnACWndLXb12d2U8/+f08AQGrTFmNfAUHnFWLTkb9NYQ/hQto9iNr9krBUlY
 Nx7tN2wklITT/SiOtiUgH+7UX6csJnJg+1WzQt8aOmC/Gk7yfrEzSvGmB8mSLbdccS9i
 lWMgTcOkZvBpP1xmCpJEDzp1DoEQj0Oai3WCOx5ExWkg5xxGfuukwtDiv0c7/kj870Xb
 t2Kg==
X-Gm-Message-State: APjAAAU8xrw1Yf8+O3BUTrHHXt2c4EcoG/H/N4Ru3lY2jzxJFnwYdbzw
 8l3VBxD65U+l+NroUoIJiI8nLhxgVBypiSFVsThjCWvn
X-Google-Smtp-Source: APXvYqwmd7VMNZTet4EgIbGsgiX7YKyruChF5ByKLBpLAB5R3TkByx3a5jpZ7+k3zDWzGsAg0iUnSr7TbRx2PMhG4lo=
X-Received: by 2002:aca:4306:: with SMTP id q6mr4696022oia.39.1562109386381;
 Tue, 02 Jul 2019 16:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:16:15 +0200
Message-ID: <CAFBinCA1gUUbEj=++1rGcFQ1RdyxSheofAo=TKw3-UaenFAcug@mail.gmail.com>
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_161627_741452_33123ECE 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: amergnat@baylibre.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc Alexandre Mergnat

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add a setup() callback in the eeclk structure, to call an optional
> call() function at end of eeclk probe to setup clocks.
>
> It's used for the G12A clock controller to setup the CPU clock notifiers.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
this will probably work fine, but I want do double check first

are we planning to get rid of meson-eeclk (mid-term)?
Alex has some patches to get rid of all these IN_PREFIX logic.
I'm asking because if we want to get rid of meson-eeclk it may be the
time to do so now to have less logic to migrate later on


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
