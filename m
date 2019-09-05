Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1C1A97B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 02:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VTcbOk70Uv0FA6D5V5daSo/lWdHU6oBt071oaRJWIGw=; b=IBorcw/1ua8ShL
	Z79d9btnLnILS6hOxJd4DiIO3k7EPpSTQT/SSM/FQOUY5AzS7RIXOlin1n3u/3wtJuTcu9OyNEtzO
	LGd20AOCa4bXbnYWTIWwja6mJziH7hbYt/g92/+UcVCTH7Poh5XVv/85CNuHdRF7ffFt36WKd24oN
	6SjIZn64pP/MxfLMsdsMxFbcF+bdwes/MXbUlzQoBFt9rmVxGbway7eNgK/mgvg64f+VoObdHlSBi
	afLVM/g62SwyNQOfTv7+sGAHkwfQA0aP3RXDpXz07FvtTloEoaZ8HOF/jUa3e5YBfoKrSALotauds
	2w3ThwkO8mt753i/mH9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fsU-0001Nb-N3; Thu, 05 Sep 2019 00:43:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fsN-0001NI-3h
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 00:43:52 +0000
Received: by mail-qt1-x843.google.com with SMTP id c9so698777qth.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 17:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=vWtL2Vub1f+32siEIcYJodOWeAIoKseX4/7ukdIJ8rM=;
 b=DUOjf08vaf+rDQo0po8Z+oo2S2EhpkZ8EiRQxGgVm1LSslML92VV/8+I4c4y7fFNRW
 vaLdtbReVGCMKdFKjj3pI0SlhgTi9udAKNktgiAiF0NhKFNbynjTdfzh28y0C2MbGsaM
 GsU0pjlWzOnLvRmOnXrLirf8zcpYFJLRTDVzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=vWtL2Vub1f+32siEIcYJodOWeAIoKseX4/7ukdIJ8rM=;
 b=i72nO+LuGsOMlizy8FZw4N9y2zi595zEy59Q6ECho/WUMr+i8NG+uM3ciERuQ6coaT
 3rYb68fwodVYK2EDsPcKIdoKpECMJK4FHPBVARTOIZxmtTfKk/Ifo1WjpIRwBWUqBkGC
 h4MFQiCDlazmD/IFF52q8hB+mEddiMAnTLj4O1oowWY9qNddUI+oPEJGt/kJMdQUJlQ+
 +gmVgETgg4guDblwYISr+GQoODmOpO/iPxtGqlYCqwmn+eSIXohB1DmowwWizmc2stED
 f1k09wjzoe9jQ1vpT3gyJ6pxJKb0e6vd+G0cghJcF4mL3wTzoR7SYmIEbC79Gz2se1Fc
 pFqA==
X-Gm-Message-State: APjAAAXSznujF/t3uylZiy1Sl3wU+OeR6kPGfO4CnsNl7r2CNGMozb19
 tSjZZEqa1K++KbZkzOJQhWjSXZNWEhy/zLHGyEaDiqR1
X-Google-Smtp-Source: APXvYqxh+0oAV4ZBPS7dGr9Y7LoZnq29Cfydu9xInfMG6mrl3YTwB+pT8pISnzJLoVlQ4OMWr1UILB7SE5B2VG8tB70=
X-Received: by 2002:ac8:2f81:: with SMTP id l1mr923228qta.269.1567644229728;
 Wed, 04 Sep 2019 17:43:49 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 5 Sep 2019 00:43:38 +0000
Message-ID: <CACPK8Xdp4gVuetmiu2bRTTH6oHhRrC7FELHWKVB2ZGSbPbH7HQ@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: devicetree changes for 5.4, round two
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_174351_342530_9D06EA63 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM maintainers,

Here are some late fixes I collected for the ASPEED boards.

I've thrown the commits on top of the ones in the first pull request, which
you've merged. I've not sent a second pull before so if that's not the done
thing then let me know what you prefer.

The following changes since commit 49b0f3be0b86292eed6f6aedadf4252131d9c111:

  ARM: dts: aspeed: swift: Add eMMC device (2019-08-22 15:34:20 +0930)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
      tags/aspeed-5.4-devicetree-2

for you to fetch changes up to 89b97c429e2e77d695b5133572ca12ec256a4ea4:

  ARM: dts: aspeed-g5: Fixe gpio-ranges upper limit (2019-09-04 17:34:34 -0700)

----------------------------------------------------------------
ASPEED device tree updates for 5.4, second round

 - Alternate flash support for Vesnin
 - Minor cleanups and fixes

----------------------------------------------------------------
Eddie James (1):
      ARM: dts: aspeed: swift: Change power supplies to version 2

Ivan Mikhaylov (2):
      ARM: dts: aspeed: vesnin: Add wdt2 with alt-boot option
      ARM: dts: aspeed: vesnin: Add secondary SPI flash chip

Joel Stanley (2):
      ARM: dts: aspeed-g4: Add all flash chips
      ARM; dts: aspeed: mihawk: File should not be executable

Oscar A Perez (1):
      ARM: dts: aspeed-g5: Fixe gpio-ranges upper limit

 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts |  0
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts  |  4 ++--
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 10 ++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi            | 20 ++++++++++++++++++++
 arch/arm/boot/dts/aspeed-g5.dtsi            |  2 +-
 5 files changed, 33 insertions(+), 3 deletions(-)
 mode change 100755 => 100644 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
