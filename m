Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208FF1B01B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWdTwd2zcy/f7AapfzAvVAXBEZMxsOGQME+MOhdRmpE=; b=uGdv7Jje21yTxk
	R3aUBA386bgV63TjmrMaYu8ACCtc+/H7fm/V3iHtp5BjajFd+WibQlHeJxnq0fkY6fsfLUBP8gMS5
	Ra5zu+nG0A33Uy0sdbp9KBsyoqOcczF8nNDncTntA7CK1IHjg5Q4CH1f2pptex7xSoezqtijT6pZ3
	xO0Q2iXI/3dxSMfqdLOmm8cc6fcVseL3A5qTsKDlcbFCjxkiGbQ0nIcFe4xbV/t5U6I9vr4Tc9lTf
	laNmFPtsf3inC1aIEwMx7aHfiKrPR2uOph+Q8uEo5ck32l9JhR8T8LlMHihfTtqQD5QS8BPc+2MvB
	MR++ObXfp38ZXYlQuUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQAW-0000xd-R8; Mon, 20 Apr 2020 06:44:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQAO-0000wh-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:44:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id g4so515114ljl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NgOqIRpLDJeJNx24vbd2CV+KIapgXOXxX4iBPbrgTik=;
 b=K2Pjm9Tj7zHwiYuKEvfwP7zEG7BkatDtSAcfTeYN4jFzItHyBGcGvx4RxenavagXY/
 Uz/SGDvIdDurFIJWSLmvvbOoxUED4gcDKNuXrNqVNg60GHuJkTm9zSoeXZHfHXGpOWhD
 sY1+IVYGVAUjM1RoLVWRpIaYwbwPcIE/a09AGaP0wNLSRkHMMqpLZJU2hn+m8C3/mrHA
 5n28aqYcyKEO1CDDkGpSzPdCGayLaieagMquIm356hadahuyUNHE73LbxMkmXVSYE0tr
 hei0pLQrHr4BnjGhKch95pifzAoXA5CyEJGTqzSnuOIiUTZR2Hn+wfpur5tfgIWyqROP
 fTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NgOqIRpLDJeJNx24vbd2CV+KIapgXOXxX4iBPbrgTik=;
 b=CfvedY+byDfcyt8ozu+snxGqZbotYjxavgwApYs9B4/TGmwTjzgamwvc171G9Z62QF
 tIp2hWKOeATo/ejzPZpnLRE/ROKfX5QRZDy6tkEnkJ1iXCTsW1Cu7Et+UpsorePXI3+t
 AES394AVVTqYfnOl5/BM40WsMAJXCi1BBTXg8ty7GpYLFglbz6Eh83mvi1NB02TqyW2I
 Go+y9FJf1AUtXdQRnSjbuycMUKRdpMEzOE/lYzE6KtBsvu4zcX3Y6YT+XNdAW6PTlbzm
 N+rmRCI6q+1nZsjEtiGIsJVdY4PpjJtmLPo3FFM4xeNiRDBLsFGMl8uyX4mFWShVj00r
 zNgw==
X-Gm-Message-State: AGi0Pua4o6CK18ZfWYE18hKlMeIk4CeL5ADz15mIsQD//Df/gCMHUfi8
 Xhn+nb0nnnhy9iH/gUXUSYc3FuEfbIN/YkZ4/zTklw==
X-Google-Smtp-Source: APiQypIWrvbuGilFqwUK4J/jFPRrcItaSJloXE/A2PHW3NnuJWBony0etnuvXn7iJyfUT6gETNUhWZTt7e4q+ysOKeg=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr6983364ljg.99.1587365064709;
 Sun, 19 Apr 2020 23:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-6-robh@kernel.org>
In-Reply-To: <20200419170810.5738-6-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Apr 2020 08:44:13 +0200
Message-ID: <CACRpkdY7YWQobPt7KHJWkzScag-y608rhc6+vzLo_3hDWT1iig@mail.gmail.com>
Subject: Re: [PATCH 05/17] clk: versatile: Kill CONFIG_COMMON_CLK_VERSATILE
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_234428_575957_FE639543 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:

> CONFIG_COMMON_CLK_VERSATILE doesn't really do anything other than hiding
> Arm Ltd reference platform clock drivers. It is both selected by the
> platforms that need it and has a 'depends on' for those platforms. It
> selects REGMAP_MMIO, but really CONFIG_ICST should do that. Also,
> CONFIG_ICST can't be enabled for COMPILE_TEST unless something else
> selected it.
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Good catch!

Since this conflicts a bit with other Kconfig patches I have pending for
mach:s in arch/arm it'd be great if I can get an ACK from the clk
maintainers and merge it with the rest in a pull request to the
SoC tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
