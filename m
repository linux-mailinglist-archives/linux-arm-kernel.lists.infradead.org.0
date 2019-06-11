Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D5F3CBC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeO2gwaikLrj+X3cbO5tiqgQFL/5ZHNQcEq5oStogBE=; b=MptAkObMNyWvq4
	wNIia2U1mRoscgI9Qg6QFlm3hBjIi4Zplxu8mUjwS4sUwuxnk8maMRY7PjICw78FZNeZPZn7U21BG
	SuMoni/QH9uCnplYR+/4ct6hSNhtOnsFelo+iguU26AzofnQjPFS2bDBgOJAMUMLRHXySjkNr/8/+
	BQNjdYdMqjQFv3LWGV/0ayRLfRQlukgiBUKsL73zcU0+YF5ffRC6z9+Wz/ge+9iqx1l9tmf1fVyAT
	qsqEKXMew5/jIaLXm0azueFnorXUJcWAVUrSl4S+qo3BcLrMEdxebR8iubNRFQ9wdML1x0twtFkYJ
	2YsoWzaDpRE6gBzSbAIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafyY-0000CG-K7; Tue, 11 Jun 2019 12:34:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafyH-0000AR-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:33:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so12867763wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 05:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=DvikrMBwh9tftYU3dRCC1yJiv8IUHz4wGcpoKbApB0A=;
 b=SzihAGcave6PcRHaptIfqetvYX2s/CIsqZx4gGmhOkRcqD3r6E3yVhD0MwYTg6JyxN
 Ff9Azg842+7V7Eai50NIu+lriYWLYTPBlftbbRJpwrcbLCnH6DuubjPVVN9+/oqGvFkU
 tZLcQIrjhccq4nF28oJUdBI2ouNCpCurYD2a5W1zgycAmBFSSRUpqE6Tm2kU4tEeiNEV
 yyUIG1maTEhQMr/mzjilwiUjfDFhA6M2BgRovVDP01hpqVu5JseG3dhjYbct+zZV0ZmC
 x/9m97bjmTANsKa1n5D/iKp5YKRlyHUkejHCFHLyyAdu0Uhqx5LIgPiIM8AlBBDtDOC7
 QIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=DvikrMBwh9tftYU3dRCC1yJiv8IUHz4wGcpoKbApB0A=;
 b=N0D0nYeWAn9p1Tr0uPeXCJhi2D1KrmwvcifvVBvbQ/Y0v5Sq4agbaaAh5FD0S9THZ+
 qHbboVCtUk3h52szP1Evc5HuBDdYfI6LiNSsgzR5HJAOpeekhOh8bhnhES5lqzLZUbyo
 Toyk3Z+AAmh4b6S5mYnFC8fpQYrvTQylpOlFv3or009m686PbyFHrxqai1P5VvP4OEs8
 xGgVkoFXFLNEVyNOxVThZcbvsvLqCq0tCLcNQ0DhljSju3p8RrB0izjjlq72TZiIrqaO
 9G73n7ynGdyCGM2hKbMU1OPT1X5VPJ/yGUD+QUjcnk1uOyXQpN29ws54dE7OcCYsW1Gx
 4GPQ==
X-Gm-Message-State: APjAAAUUubwPIDN353zDXMn965eBQlFzRO/y10BF90ArRXqk1UFnR3BG
 vn6c1kg3kR35CxIFbDfmGHmYWzEMr5Q=
X-Google-Smtp-Source: APXvYqxKyUgIOeO42Kn0nHkZYiOxQ1QsohML52m1DvilPZ1AePnj8NznUOj0MKLMxd2jVLtQMThCnA==
X-Received: by 2002:adf:eb4e:: with SMTP id u14mr2772546wrn.168.1560256428217; 
 Tue, 11 Jun 2019 05:33:48 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y17sm29500399wrg.18.2019.06.11.05.33.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 05:33:47 -0700 (PDT)
Message-ID: <6ff3ed67f7bd0903bacb8d975816e780a3907dc1.camel@baylibre.com>
Subject: Re: [PATCH 0/4] 32-bit Meson: audio clock support
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 narmstrong@baylibre.com, linux-amlogic@lists.infradead.org
Date: Tue, 11 Jun 2019 14:33:46 +0200
In-Reply-To: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
References: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_053349_889992_38F2F1E2 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-20 at 22:03 +0200, Martin Blumenstingl wrote:
> The audio clocks on the 32-bit Meson8, Meson8b and Meson8m2 are
> (probably) identical to the ones on GXBB, GXL and GXM.
> 
> The first piece of evidence is that Amlogic's vendor kernel is using
> the same basic driver (just slightly modified) for the 32-bit SoCs [0]
> and 64-bit SoCs [1].
> 
> Then there's buildroot-openlinux-A113-201901 which ships
> kernel/aml-4.9/drivers/amlogic/clk/m8b/clk_misc.c. It contains the same
> registers and bits (just slightly different naming) than the mainline
> GXBB/GXL/GXM clock driver.
> 
> There is no working mainline ALSA driver for this yet so I am not 100%
> sure that everything is correct. However, due to the evidence listed
> above I'm sure that the basics are correct so this is a good starting
> point.
> 
> 
> [0] https://github.com/endlessm/linux-meson/tree/d6e13c220931110fe676ede6da69fc61a7cb04b6/sound/soc/aml/m8
> [1] https://github.com/khadas/linux/tree/1bd6972cd0093725c0b1dc87f6546648bbb22452/sound/soc/aml/m8
> 
> 
> Martin Blumenstingl (4):
>   dt-bindings: clock: meson8b: add the audio clocks
>   clk: meson: meson8b: add the cts_amclk clocks
>   clk: meson: meson8b: add the cts_mclk_i958 clocks
>   clk: meson: meson8b: add the cts_i958 clock
> 
>  drivers/clk/meson/meson8b.c              | 154 +++++++++++++++++++++++
>  drivers/clk/meson/meson8b.h              |   8 +-
>  include/dt-bindings/clock/meson8b-clkc.h |   3 +
>  3 files changed, 164 insertions(+), 1 deletion(-)
> 

Applied
Thx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
