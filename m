Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9B95D878
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY4JYblIFmKWEhnsxOVNtOWqI0jz3atubfSM6rLC90w=; b=gjr6R13girtawB
	vE3nZAzD80i/Vvm4B/3ZHw0fKk4VCONLnZqvEcgKC4Nvurv3DqGL9vl28Rj1O+FB90l3LwgsqKbAj
	SZTNlx5ZzGjbrTuDgkEHlgxnDDqbgjSATdNwwwStLOnQ/3Km4Ksm+NliW8392pDW3CF2zKDRPpNDi
	mPSO0vofga6OsYTRdMiTIlLx7RSDO/Br5A10jdV6vccD0ct1/yo4iarYRVoLVpdoUgwLQi3pexKLq
	tWvF9fVxmCvyGUSZY3YsdUh1Lo6gLlTDsKGerxgTdSWt839mIusnZsrnPo4KiCl11ElEmJo8CxjKf
	uTQhSw1ZKoytxKfsrmRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSSW-0002u3-Tu; Tue, 02 Jul 2019 23:45:13 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSQz-0001th-Lb; Tue, 02 Jul 2019 23:43:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id m206so446913oib.12;
 Tue, 02 Jul 2019 16:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PmEB/x0Lo8kjE6XO29I6yQcxMJdkJpBobZcgW1H9skM=;
 b=dQE6ToJhgtp1wCfPTOfOeyy3Wlzl33q0h9WcnIJA48XtbfKqzHONGYC3W61NGQfNim
 wJaXkOCEQLLrI2TSIZQwvLCc1Rqhy7tkKbFJItgpBZmmCqqY0TzvUJ2rx0vWwv7zrFmZ
 kZ5OII7eqEx3/ovCXbefJGBE8F7LYBJp3Eh1m81WkMA/alEl+TNmkxdUWAI5Udj6A0C+
 vsbKbIDFDrMiyP7vv46AElwnFPDzMcamevSZp3I5khh3FwrFUuoHiTauuxpXCu4bPH8a
 8Vi37k2YDn8vy9Meo0Fcg75al7N0hdAtajz3wPYu473GTV9bU6aDJ8XppI7nkwKlrfGl
 vp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PmEB/x0Lo8kjE6XO29I6yQcxMJdkJpBobZcgW1H9skM=;
 b=LW0u86eE+s6hzsDgEbOqrRb0fe0O3qZyHl6kprScmY0a3tltATq0HSCkccVULHh6Qt
 PnrobSiINgZHvfV0+2EUeJ/nnPmR2JxGQc+tv+Pv5IaXETtsbDcOO0i8e6TBmjLDW30A
 jPTFNXfLoT5MrpJy56hudjWjWu3aCR4WYFFCP+KjVvN8vvrFCt14zSLhBfP3M7wqoil5
 m1NmoehnkZrSFhXwTwKpD9gsR2ImNDa/p2EXdizt07qqx7KJ8QzyISOtFylM6dWrESay
 bQ7neZgOJ3jVcbZsSwGvmcCUYGYSokrrVSmSpVnOknsafmA4nn1z6xO5ZTve+xyKbE94
 fhRQ==
X-Gm-Message-State: APjAAAUdTcAvigBR8rYAPcUVDbqXoT5hIjD8R+8na3oSr7xVOW56v2At
 hQac3MW7sPm1hjiWuJjnGyeifDI3l87uY5eaNSQ=
X-Google-Smtp-Source: APXvYqwGO400fcqFqegu43ZWYESJ1x0EcFHLkunurhz/yLrGFeET/1sUvrRHA32DeHN9rz4+lxZGWrgg9XsKuY7U36c=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr1514748oib.15.1562111016670; 
 Tue, 02 Jul 2019 16:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-13-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-13-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:43:25 +0200
Message-ID: <CAFBinCByCn1NMz4ATnR66114jYj8=KG-tY5S4iRfoPEw3uLF8g@mail.gmail.com>
Subject: Re: [RFC/RFT v3 12/14] arm64: dts: meson-g12a: enable DVFS on G12A
 boards
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164337_938297_4DB61E88 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Enable DVFS for the U200, SEI520 and X96-Max Amlogic G12A based board
> by setting the clock, OPP and supply for each CPU cores.
>
> The CPU cluster power supply can achieve 0.73V to 1.01V using a PWM
> output clocked at 800KHz with an inverse duty-cycle.
>
> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
> between all the possible cpufreq translations and checking the final
> frequency using the clock-measurer, script at [2].
>
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
