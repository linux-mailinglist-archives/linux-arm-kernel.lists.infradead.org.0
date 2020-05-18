Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4A31D723F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZPmJBwHOgOXHAimxjfHQWToNpAt0gEjTDd6xJUsS2w=; b=XCgG7Hic6go8ql
	k0fLUjwMaIpla/wYziQE/cUXBnUMlRsq71QSjZjHyzZKnbR2vnbx/SzdnSJa/pJc/H2rpKYR1aaxN
	Bh7mQPAPHPFqJUtxmADHto0bwEJv4LN0APzdWqBk6IuMhVXmL08VC3cO+RBGIfMuzxBu5gWQnYkaz
	MBFqoLpeqMlZEB6KTUhfP0eNEbHEWBgzKqqFfroRBFawjL0eCxZ7J9ZnKjvLYKwNMSJXCXh2aPolt
	QeWRFszXo8MANCWochKtcbzx5dc/qQJFjw626K7nLVmA393FpeHuLNVqigXRoS5YGtfa+yew1S2F3
	9jqdUizIkZCa71esCY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaYG-0006sk-N7; Mon, 18 May 2020 07:51:08 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaY4-0006rq-LF
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:50:58 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 04I7oesk015703
 for <linux-arm-kernel@lists.infradead.org>; Mon, 18 May 2020 16:50:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 04I7oesk015703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1589788241;
 bh=BAeKR/CP8c+c34Jrd/Sa5Uac4xG1EKW7xJ1dkN7birA=;
 h=From:Date:Subject:To:Cc:From;
 b=hmZBvJCvFZ/p+FvqzNJxJo+5AbmElt/8YxHvjygTfb80nk20m3vi/zGhDKQgQoYBi
 q3eypeh6FRRfA6WG1EWsP1bVcDLt4EPJynPe1MMKJM1aaJ3IwYBFsjjffjg2jgbzpj
 da4fBZd9/Fgm6AsLEJSZCgBEXaR1UckzzHPBxj+SAUlIuED0CKgDw37RcDsg6nLnf6
 eC8Tafyza2KnEAb9u8FQu3WibpcPH8hFQ+dIR2VrG7SZSSnobpJ5SakD48EXv0V2MT
 oZRU/egizOBwpil5sHPeS+/VdBNqpw5jLr7Iii2k41LCRk8vXRCr39w3OgUsnS5O9J
 qEaakKXRGR6rg==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id e7so2958272vsm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:50:40 -0700 (PDT)
X-Gm-Message-State: AOAM531eKd+15AgyQLxU0ooG+EAi8WCbTSWx0KJ6I+ShC1Ya8LHk8C4B
 VfS/BHYSMb47+ulky8G1sPAiMPJweMu/BLgqFXI=
X-Google-Smtp-Source: ABdhPJz+rRVl4TNOdWB+sVuKR/NvML4+a3CfHecIfsBbBz3Bot35tpH4pAKiTBv9bpirXHJkVnhxj0hz/T+OmvGHJg0=
X-Received: by 2002:a67:d016:: with SMTP id r22mr9596614vsi.215.1589788239877; 
 Mon, 18 May 2020 00:50:39 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 18 May 2020 16:50:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNARUL52pBhg8AD9XeScVqhD8qr2eVEfu4+1v8D+KPyOwNw@mail.gmail.com>
Message-ID: <CAK7LNARUL52pBhg8AD9XeScVqhD8qr2eVEfu4+1v8D+KPyOwNw@mail.gmail.com>
Subject: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.8
To: soc@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_005056_918506_BFDA8792 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd,


Here are UniPhier DT (64bit) updates for the v5.8 merge window.

(I intentionally based this on -rc4.
because I needed a dt-binding fix from DMA engine tree
to avoid 'make ARCH=arm dtbs_check' regression.
I hope this is OK.)


Please pull!



The following changes since commit 0e698dfa282211e414076f9dc7e83c1c288314fd:

  Linux 5.7-rc4 (2020-05-03 14:56:04 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt64-v5.8

for you to fetch changes up to 7d5620d31ecc8d19f6e4ad73196955ec0bb4a507:

  arm64: dts: uniphier: Add support for Akebi96 (2020-05-04 10:07:35 +0900)

----------------------------------------------------------------
UniPhier ARM64 SoC DT updates for v5.8

- add DMA controller nodes

- add Akebi96 board support

----------------------------------------------------------------
Kunihiko Hayashi (3):
      arm64: dts: uniphier: Add XDMAC node
      arm64: dts: uniphier: Add ethernet aliases
      arm64: dts: uniphier: Stabilize Ethernet RGMII mode of PXs3 ref board

Masahiro Yamada (1):
      arm64: dts: uniphier: add #address-cells and #size-cells to SPI nodes

Masami Hiramatsu (2):
      dt-bindings: arm: Add Akebi96 board support
      arm64: dts: uniphier: Add support for Akebi96

 .../bindings/arm/socionext/uniphier.yaml   |   1 +
 arch/arm64/boot/dts/socionext/Makefile     |   1 +
 .../dts/socionext/uniphier-ld11-global.dts |   1 +
 .../dts/socionext/uniphier-ld11-ref.dts    |   1 +
 .../boot/dts/socionext/uniphier-ld11.dtsi  |  12 +
 .../socionext/uniphier-ld20-akebi96.dts    | 189 ++++++++++++++++
 .../dts/socionext/uniphier-ld20-global.dts |   1 +
 .../dts/socionext/uniphier-ld20-ref.dts    |   1 +
 .../boot/dts/socionext/uniphier-ld20.dtsi  |  16 ++
 .../dts/socionext/uniphier-pxs3-ref.dts    |  18 ++
 .../boot/dts/socionext/uniphier-pxs3.dtsi  |  12 +
 11 files changed, 253 insertions(+)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
