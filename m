Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE9FBBD66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EndtcRJdToV74VmG9AJQk4HGBW/71WbHx/K6q2ilQA=; b=nt9WoTEugpV1jo
	TjP75au58e+rQYfQ3dAW/GJPyHv/YV4KDbh3uPDJmAna9rRRnwfsI6htLYTXtb78YHxXb39swOHk7
	B877deSwUJEzmVvslFNd+xwu1t/BQZPi9yWXIokyEeHK2f+lliUlB1VVNtDxvTvFIc1jm8FVJ9fBP
	aiG47HIESMyqCpDCCJgMe4uHO5N/VGZDCWdq2e2CTvGnuFO6Q+vv2w7NPSmyFveAMPhgINRz6Lo1K
	dTGOMi38O5nQHzY+a6W7C4e5x7RsSbtyRb+7h2rzxrwmg7mRgv+wkX0fhG+i/fwId8JToxxoBF8dg
	3z+g3tDFtoWOXzzowaDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVO8-00079o-Fe; Mon, 23 Sep 2019 20:56:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVNw-000786-MM; Mon, 23 Sep 2019 20:56:42 +0000
Received: by mail-ot1-x344.google.com with SMTP id o44so4952973ota.10;
 Mon, 23 Sep 2019 13:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NCBVHzoVPJRdaVAQ/V0UNMxjnGUzoZBL++du/W+XNNU=;
 b=J6iZz4W8Ac0KBesx6BZtBfbxR7BQScJgoudoCWm4eqelCxtbb8CRR1OpkUlLJgnKMy
 uiw/NRW+0NW3vCN7M2fC1JsmjKmnH2LxLFkq7Vb68H/dFCwMXbRBJWQgo2oJFOHy9sx+
 +7OrBps8hEGSVo1mM/yqiENDR15b/8qkGabDROQaiYpnBOfnd7u9YAD9boIvjV9Bk67+
 Wo12mduo9QhmGcu39rq+MSbbfYh4YAVsQVzrQQx5d0Oehe2ivPKTcPC0CXJEus6t62pV
 5BhF1i61A7KsfXX4on3Vt/2KVsZREtoSJxwo5hZBPL/VNEIx3v6ifpCPFVmdVbj3MwXI
 Fwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NCBVHzoVPJRdaVAQ/V0UNMxjnGUzoZBL++du/W+XNNU=;
 b=Cg9g9907mmwLml2rdumrnGzQ3bBAQxmRmrVWkuxrQdNM+9JV2WGAQSNbOmlTLFgutw
 R6BkWX8/wh1yOfhyCaE7lsv3zy0Lo9pNvO4IUEF84u5pGEhVr1i+SxcOqkt7x48Tdlyz
 nQgnuQn2WkHNVvfkN4Zo/WkT6HHm6qUk4ilhCyOiXYgMgfxho0H0QiHNRFUWm/UZ+8ul
 LSMm4bwp6klqpR2Ac7Vs9K5qlOtTRn6X2t6Sj1k+a8Dm2M4vwegiwi3rwTy7ARk9Jcpd
 2+X/xyLEQAEBTIL970A3lyiVOmoiQW9rwz8VDAMTCBNjYjBa34cS5IFSyd2THxijqcV1
 YXPw==
X-Gm-Message-State: APjAAAVnFvR+rjEAOiqL2yd1N8A9sUI6SG1a9HWHJF2IMo7Ivl4zu2Tk
 3hFlugU5HWiKKVngFf/jTdm1uaXUBQCIqpYQMlc=
X-Google-Smtp-Source: APXvYqyFuoyRlSXDjYvUjGpC3v15Fq1MINoED6Nm8UI7SCewQGRK7t4EFd08t605KjoTnJyFeyLibLTPt+LwwMFBvsY=
X-Received: by 2002:a9d:6084:: with SMTP id m4mr197808otj.6.1569272199532;
 Mon, 23 Sep 2019 13:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
 <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 22:56:28 +0200
Message-ID: <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
Subject: Re: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_135640_758093_8BEBCC4E 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Mon, Sep 23, 2019 at 11:29 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
> On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > So far the HHI clock controller has been providing the XTAL clock on
> > Amlogic Meson8/Meson8b/Meson8m2 SoCs.
> > This is not correct because the XTAL is actually a crystal on the
> > boards and the SoC has a dedicated input for it.
> >
> > This updates the dt-bindings of the HHI clock controller and defines
> > a fixed-clock in meson.dtsi (along with switching everything over to
> > use this clock).
> > The clock driver needs three updates to use this:
> > - patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
> >   the explicit reference to CLKID_XTAL while at the same time making
> >   the code much easier (thanks to Neil for providing this new method
> >   as part of the G12A CPU clock bringup!)
> > - patch #3 ensures that the clock driver doesn't rely on it's internal
> >   XTAL clock while not losing support for older .dtbs that don't have
> >   the XTAL clock input yet
> > - with patch #4 the clock controller's own XTAL clock is not registered
> >   anymore when a clock input is provided via OF
> >
> > This series is a functional no-op. It's main goal is to better represent
> > how the actual hardware looks like.
>
> I'm a bit unsure about this series.
>
> On one hand, I totally agree with you ... having the xtal in DT is the
> right way to do it ... when done from the start
yep

> On the other hand, things have been this way for years, they are working
> and going for xtal in DT does not solve any pending issue. Doing this
> means adding complexity in the driver to support both methods. It is
> also quite a significant change in DT :/
my two main motivations were:
- keeping the 32-bit SoCs as similar as possible to the 64-bit ones in
terms of "how are the [clock] drivers implemented"
- with the DDR clock controller the .dts looked weird: &ddr_clkc took
CLKID_XTAL from &clkc as input and &clkc took DDR_CLKID_DDR_PLL as
input from &ddr_clkc

RE complexity in the driver to support both:
I still have a cleanup of the meson8b.c init code on my TODO-list
because we're still supporting .dtbs without parent syscon
my plan is to drop that code-path along with the newly added fallback
for "skip CLKID_XTAL" (assuming this is accepted) together for v5.6 or
v5.7


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
