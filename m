Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB5355336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yIp9Kx0Lf5UPBVTxT53hi3a2nyfS36VCvf93V4Wmy30=; b=e6dtkNhGP29N6w
	VsB/nebssRoJDt/N0ByNxpQ0Nx7zHO0BYvD9aM/EcwM5JB0sTavypXgFhKjsUQeRd46zMtWILUwos
	diB8sLd0XtibUWTNIU5wXIe5PxqdcJfgCVMY1V2oiPKEm7Qh06J6iU3YeMqi1j/LSDpbqkU5YKFoY
	bbP8w6QLNSNawcD6282dx1n2l9PPRF3ESXJTGPNz9JkhSPJMOnPHf7XfHojqnS1jnyU2nEWPxEYRN
	RUaHhAB+4baWvobdZrT0+vQARqdr1u5HZqeEK2qVybx9zQDlKNln8nSNf2qe+8d6NRcDWqLam17kd
	eKOfwLn3oFb4uFsCkr3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnFV-0003qg-66; Tue, 25 Jun 2019 15:20:45 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnFD-0003ov-TR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:20:29 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x5PFJrc7023627
 for <linux-arm-kernel@lists.infradead.org>; Wed, 26 Jun 2019 00:19:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x5PFJrc7023627
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561475994;
 bh=8eJocD6XzIfzyTq46YseYA8FJwhqn58xe1pkfONZbh0=;
 h=From:Date:Subject:To:Cc:From;
 b=jFen1YNQdtrnVha9uQMqeerfb1VlWi6kN8I7h3dP/Zh2O6eFIpSSKmtm0ZiKME56U
 zscZ9ZVsxkh2PV/rZU+kTzDH9e4O0cU6JGB47PaopHHuEO8mrlOP4HB3qE6sLM8RFI
 n42vlCLlWRGDD0h3/qtzgbEyaPKTttD3eEMHZ4VtMlhpbJbqLpnSvd3iDFDUt3LPnn
 R2LzORLrMKWvOw9A41OBCVEqw6DWS6brmfrpJOqwvflVZvgAMUy+jxB+MIEeCBsWdT
 zFpfXmz4Q+nh+egXyOno9ZNve7mE+rcx3tHZ/5nX+nEkOM5NgtdvAWarHRhkHyf+hO
 bdsZaLAT4/duA==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id 2so11159643vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:19:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWjAQS2QYBTX33B5a13sHYUb6Ly9wITrfxK6WQhTaDnbLJyjfUO
 ob44Hn+M3RN5MiokfUEgQz+O2rUBbME4jI4iB1U=
X-Google-Smtp-Source: APXvYqxcY9vX2I0IiZ3EEMiqqLmbaEM4koPXF5Iv6tPmsp7IokzzjrS8GO7yww+g9mnQya0jZU62nEWCezjcLlFl3NQ=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr17458566vsd.215.1561475993331; 
 Tue, 25 Jun 2019 08:19:53 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 26 Jun 2019 00:19:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNASNhp2o9kboRMJ66UJy5Z+T28K6CHO_=c02MaGoFyy-5Q@mail.gmail.com>
Message-ID: <CAK7LNASNhp2o9kboRMJ66UJy5Z+T28K6CHO_=c02MaGoFyy-5Q@mail.gmail.com>
Subject: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.3
To: arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_082028_155528_63159C1F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: masahiroy@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Please pull UniPhier DT updates (32bit) for the v5.3 MW.

Thanks.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt-v5.3

for you to fetch changes up to bc8841f0c1e6945fd7fde6faad3300d1b08abd86:

  ARM: dts: uniphier: update to new Denali NAND binding (2019-06-26
00:06:50 +0900)

----------------------------------------------------------------
UniPhier ARM SoC DT updates for v5.3

- Migrate to the new binding for the Denali NAND controller

----------------------------------------------------------------
Masahiro Yamada (1):
      ARM: dts: uniphier: update to new Denali NAND binding

 arch/arm/boot/dts/uniphier-ld4-ref.dts  | 4 ++++
 arch/arm/boot/dts/uniphier-ld4.dtsi     | 4 +++-
 arch/arm/boot/dts/uniphier-ld6b-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-pro4-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-pro4.dtsi    | 2 ++
 arch/arm/boot/dts/uniphier-pro5.dtsi    | 4 +++-
 arch/arm/boot/dts/uniphier-pxs2.dtsi    | 4 +++-
 arch/arm/boot/dts/uniphier-sld8-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-sld8.dtsi    | 4 +++-
 9 files changed, 30 insertions(+), 4 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
