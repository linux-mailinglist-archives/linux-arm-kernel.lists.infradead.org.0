Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D80B1D7234
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FRMNiADTl46uGgVRcYwng7IPuyzkzvpEJ+T9TdtfADM=; b=prkCVGtj5NABIs
	Pi3fM/KPjQtRUUs2c4pd7qXMYIw/W3sUEcUJICijqFFH8RwvqojUcJQoaOd4Wk2XX7Zr6gNl2GD3b
	9QDOOprX+YU3IjqSN3jmmSHR6b7S6ZK4ydS9754H6yDMgBblb/mL0XofnOPUJsrM4vIIj91YjxDq3
	p5sQoYHzWePfYPZxPpa9D5NV6m6uvKKIz/rR8n1yTVUmaBS14YV5N38P+cVeYJtt6UyZvQBvQInXd
	3UPNbOHLJSn+hHqvsa5sS1U3cNlGpLr0Apq6/TB2iPww8EO7PTQRqIShX+/ZLLkto9JV5oJbVYyfJ
	KS0iY0YE5/je/OVYn8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaVL-00043n-8b; Mon, 18 May 2020 07:48:07 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaVC-00043C-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:48:00 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 04I7lLvA030514
 for <linux-arm-kernel@lists.infradead.org>; Mon, 18 May 2020 16:47:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 04I7lLvA030514
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1589788042;
 bh=wlkpEnjVQhrTfI3Q/lY2Xz/QnYWGwFaUeURa+uAY6S8=;
 h=From:Date:Subject:To:Cc:From;
 b=vK03JGNW26ZyF7VyTqccspUPZCl+JqHrYb2iiq3KwDXW/bHPgY+yMouTgEgFOTzoj
 6rE6xMWObtEtHizUN8IdUWwOIcl+CQJGSWjlMzOKqQpbIX7MB06EBdSpqgjbb6s/G9
 XidclT+FpRCBEYOIpdYeyHewXwKs8T6N/DkK5nDEUdFvYhgc4PXAUhIK3R2Z5qS3xN
 g00o+1voPDCp2hpDWpgEoUXrchdN1wW6bdB6XX6YdYvUvGSWS9cU0EYgz8lGF+X6qE
 ZQmLHlxwoyBQKRSnPX4GH30uAZC2tEuepIAYfKKYHyVsLSpIl4D64LYD3WemBNl9kL
 WduaZaHjBpa/w==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id z12so1026742uap.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:47:22 -0700 (PDT)
X-Gm-Message-State: AOAM530nwr9AV6SKhKsh8UcWeyvL/A3UYKrNQEjbwknYZJDkY4xHS6T7
 FWcXT3TKdz64XIMR2t/OvvZDOuBEgTZ28dGwPUM=
X-Google-Smtp-Source: ABdhPJx36t2lq6XUgRP8aZsWzniDSVT/3mB//NzrYGT15Oui9iLyTfcNDeSJpxItpJS9c+QQGTVe7lk7FYYZTxe6p7Y=
X-Received: by 2002:a9f:3e0d:: with SMTP id o13mr10445027uai.25.1589788041123; 
 Mon, 18 May 2020 00:47:21 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 18 May 2020 16:46:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQXSpg4s0e0d-tp9j85Sj01t13zAa5+rqsOWu4ZvkpYhg@mail.gmail.com>
Message-ID: <CAK7LNAQXSpg4s0e0d-tp9j85Sj01t13zAa5+rqsOWu4ZvkpYhg@mail.gmail.com>
Subject: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.8
To: soc@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_004759_060389_FC23CD13 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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


Here are UniPhier DT (32bit) updates for the v5.8 merge window.

(I intentionally based this on -rc4
because I needed a dt-binding fix from DMA engine tree
to avoid 'make ARCH=arm dtbs_check' regression.
I hope this is OK.)


Please pull!





The following changes since commit 0e698dfa282211e414076f9dc7e83c1c288314fd:

  Linux 5.7-rc4 (2020-05-03 14:56:04 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt-v5.8

for you to fetch changes up to 137a1cecb89a024f8c92d71e07e73b14fc4d4161:

  ARM: dts: uniphier: add #address-cells and #size-cells to SPI nodes
(2020-05-04 10:07:22 +0900)

----------------------------------------------------------------
UniPhier ARM SoC DT updates for v5.8

- add DMA controller nodes

----------------------------------------------------------------
Kunihiko Hayashi (2):
      ARM: dts: uniphier: Add XDMAC node
      ARM: dts: uniphier: Add ethernet aliases

Masahiro Yamada (1):
      ARM: dts: uniphier: add #address-cells and #size-cells to SPI nodes

 arch/arm/boot/dts/uniphier-ld4.dtsi        |  2 ++
 arch/arm/boot/dts/uniphier-ld6b-ref.dts    |  1 +
 arch/arm/boot/dts/uniphier-pro4-ace.dts    |  1 +
 arch/arm/boot/dts/uniphier-pro4-ref.dts    |  1 +
 arch/arm/boot/dts/uniphier-pro4-sanji.dts  |  1 +
 arch/arm/boot/dts/uniphier-pro4.dtsi       | 10 ++++++++++
 arch/arm/boot/dts/uniphier-pro5.dtsi       | 12 ++++++++++++
 arch/arm/boot/dts/uniphier-pxs2-gentil.dts |  1 +
 arch/arm/boot/dts/uniphier-pxs2-vodka.dts  |  1 +
 arch/arm/boot/dts/uniphier-pxs2.dtsi       | 12 ++++++++++++
 arch/arm/boot/dts/uniphier-sld8.dtsi       |  2 ++
 11 files changed, 44 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
