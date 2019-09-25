Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D40BE86F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZiWTFsHyo0QCBjCxDukNbVIHT1a3ZkZueyx6mbuDhs=; b=ALVSW5Wsa9dvef
	BrlKdqQGhR346gRLV4IvCmN88Qp6ONDAVjIzZNqzPW2ZOEEcLJq/mLF3v57XAw9RAX6wmTYonPWoU
	PwE9dg1qrfdBgG+drrAnDMlfQvmf3z6fAhEBszKvRJfySdyUB3p51xKI/O0Flmq9ANrzSNTWaz+nK
	tq3fB2xoEHmRNsJgymT1Y+Y6QaiNQ30UAbm4aGvWVE6Gl1DKjq2BiOByFUj2ueUGfEY3CRhLAG0ng
	r9SVHkLZuGWghy4IFiUXtuYC9hlteDuDEgqDLExtYpEJgRaitef5MahqfgSeGbQ1xYh26qT2cNGu8
	YPkIx0ZCw31Rk+m2SzmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDG4d-00076W-S1; Wed, 25 Sep 2019 22:47:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDG4O-00075r-Go
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:47:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so418240pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=i+W79Fs+JtLmvj8CWOzkvZTsSvzosH+D6ZGyUem3ZnA=;
 b=QiOYkbRmVsN0NOymJrZmyNk1Aqs67OzdvJqNVdBgR1dAcP4rnJgsfYdIiaSEoto46F
 Jz05CrdMfASGsfvx5uv5JpHJk/u8jtuxC7qN8ceDRcUwoV+tZQ/pzFDvo9ENX/IOInt1
 F21xWgdJ446psjlOHyUlz8fTjAqdrTpwK8msB0hKdgsYgf2cGR6fEc7iDCD3shAxGd1W
 aXm7YRXOtY4TbhADrjU9hMXBWsaEJVy+8InX35P8rxGIA/P+2i8iB6cLsaa9mxgb/GJb
 /QejV4k2p03XCnSOcWdeEaWORIHuF4vrHU1GFW1bVSrrlWcx/stVQYHCq0DIVxhfDffB
 Y/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=i+W79Fs+JtLmvj8CWOzkvZTsSvzosH+D6ZGyUem3ZnA=;
 b=GXrx1p+H6dgjTMJAWuzbi5Q9cX9CperJLUAsfxuNUlkdxXBHEv8CkF3RYHdz27SEgD
 4VOHjSIe3VC8o8TbYH46Zy1Xq8+KMBx1VeM0I5er8fNo3qy09e3iVtXPOy+CnNhQ0Xc5
 yrbjY3EpEn48dMbNQvyjm1VmU3csHtLU4Fkzy0ZkFrAVN8Dl3qWsRsH21eTVeB2gW8Mm
 ku8rnL5JWuC6nq2os+tB/55Co2iMdqH6ME5KyKj1rtysl+R2iB7AhCx9vi/Ix2TuNSM3
 kqsf97ahAsgdfdr15SFFAHRMwlT3c9sPybGXG6bP/aMitFaHFNe0t78Ol+Ei8Jom7i09
 1LOw==
X-Gm-Message-State: APjAAAVt7bcENvbTnhUbe4WHTcGFiahXJSzE9B6rt6XXS+KYMeknXhGZ
 kIBMYdONkN/wC1uDIoWHeplMKml0t7SEPQ==
X-Google-Smtp-Source: APXvYqz9kGKfiISSY6GKYU59WSD/o/ecZYyCnkLsLXzxHGjEjI0j1FcxGdHUuVDusWLEWSDsnbyIGQ==
X-Received: by 2002:a17:90a:d792:: with SMTP id
 z18mr106795pju.60.1569451655789; 
 Wed, 25 Sep 2019 15:47:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id bb15sm205894pjb.2.2019.09.25.15.47.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 15:47:35 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
In-Reply-To: <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
 <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
Date: Wed, 25 Sep 2019 15:47:34 -0700
Message-ID: <7h7e5wt2m1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_154736_564931_36AEE52B 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Jerome,
>
> On Mon, Sep 23, 2019 at 11:29 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>> On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>>
>> > So far the HHI clock controller has been providing the XTAL clock on
>> > Amlogic Meson8/Meson8b/Meson8m2 SoCs.
>> > This is not correct because the XTAL is actually a crystal on the
>> > boards and the SoC has a dedicated input for it.
>> >
>> > This updates the dt-bindings of the HHI clock controller and defines
>> > a fixed-clock in meson.dtsi (along with switching everything over to
>> > use this clock).
>> > The clock driver needs three updates to use this:
>> > - patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
>> >   the explicit reference to CLKID_XTAL while at the same time making
>> >   the code much easier (thanks to Neil for providing this new method
>> >   as part of the G12A CPU clock bringup!)
>> > - patch #3 ensures that the clock driver doesn't rely on it's internal
>> >   XTAL clock while not losing support for older .dtbs that don't have
>> >   the XTAL clock input yet
>> > - with patch #4 the clock controller's own XTAL clock is not registered
>> >   anymore when a clock input is provided via OF
>> >
>> > This series is a functional no-op. It's main goal is to better represent
>> > how the actual hardware looks like.
>>
>> I'm a bit unsure about this series.
>>
>> On one hand, I totally agree with you ... having the xtal in DT is the
>> right way to do it ... when done from the start
> yep
>
>> On the other hand, things have been this way for years, they are working
>> and going for xtal in DT does not solve any pending issue. Doing this
>> means adding complexity in the driver to support both methods. It is
>> also quite a significant change in DT :/
> my two main motivations were:
> - keeping the 32-bit SoCs as similar as possible to the 64-bit ones in
> terms of "how are the [clock] drivers implemented"
> - with the DDR clock controller the .dts looked weird: &ddr_clkc took
> CLKID_XTAL from &clkc as input and &clkc took DDR_CLKID_DDR_PLL as
> input from &ddr_clkc
>
> RE complexity in the driver to support both:
> I still have a cleanup of the meson8b.c init code on my TODO-list
> because we're still supporting .dtbs without parent syscon
> my plan is to drop that code-path along with the newly added fallback
> for "skip CLKID_XTAL" (assuming this is accepted) together for v5.6 or
> v5.7

TBH, I'm big(ish) "functional no-op" changes like this are not things I
get super exicted about, especially for SoCs that have been working well
for awhile, and are do not have a large (upstream) userbase.

OTOH, since Martin is doing most of the heavy lifting for keeping this
platform working upstream, I'm happy to take the changes, as long as
Martin is willing to deal with any fallout.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
