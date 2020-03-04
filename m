Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA001792A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gRhXwHtE+MTtvGA6wphctQ3BGn9CrC+ikyc+/0uCMk=; b=uPjGlyO/eSGSPZ
	4uh8aVpWjgOMm+/29EX8W7RVPXlsRec9M/peEhbbWQTv0X85MPPWo6i/7u0aIdjWR1B2zsjhpsbt0
	XdZoY/4cGf8xqUGp2DUGhFexoyCcF9FnsxXUkug4l5LeORMCpmv3OY1j2UTjCEDOMsR0W0cd3xoaw
	9uugn66FU7kqU7PWNi4B46Ke7FXnio2FIm0n2R296udPsR8gafB8538tgq8YKskNlwZrNbsgq+GAn
	cRDszaC9scuRfNkpBGH67NhHmdMjoY6VRKnWw3i/PPl+3UWZSDEic0Tl28Fldldz0PM2Rd0CdEpA9
	mS8djCyASj69Jf7C131Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VGD-0005Ka-Ie; Wed, 04 Mar 2020 14:44:33 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VG7-0005K7-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:44:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id f13so2326708ljp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=tYyOq+hrxAhHQ4C+tN2Qm0SMWYZSTQj65iUaePramxE=;
 b=emqRJLhIkHhwZdiDNOil36OjX5YUxTLlNz9BEZ5lVCcyc+AJHym0upRRkJgOd2v9W9
 6+gfBbEbk7AsDFajiwjU3Te3Bl2Rthg9cee54W/fov/aGE477kY4wPA1Ryu+uQmYzFkn
 06xWXFwzgtK/n6XhTgUU0N+M0wj4lDfwiuq4BsIIQfHBxrtY9YwEQi8z0M70M45tlMlu
 ouk4HNOW2SkXD1/1kkEB10iwamYuFZO9oPerzeJwfp+n4kr9BeeL6kx5eWPzca1uBijT
 0qHSfnSxZHNt4QO7ObXuY9bbIV7xqEz1pWlRm3vccl1E32ciiVM+g8UsTA+UhByUyEDu
 1Alw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=tYyOq+hrxAhHQ4C+tN2Qm0SMWYZSTQj65iUaePramxE=;
 b=FVuSOpjZgS4Wkt9RfQTOgx5RKPh0pxy1+/BpLjWO8wlt8KiEVguWA42Q3CDBEo8lN7
 yrxttBuXspPtdwxNmC8141jjQwh9fgv2uPtebgl3YP0NQKS3IZFL0Yc8i63O2yH0PjFH
 QQcXeoqSb6wpQosu+OwZr3dsbNZJr7g0+XQdvI+9ST1/BZkp/Ta9pNDtUtVerRc3Tj/j
 FlXkLhRK23lgVdz6sP5EU7VAU+KoIS6E3pS+IyCnkpMyAfv1hDxkjUcMdXybI5Km1E77
 FeASwMDlR+Zhc1PSvTd5/663BN4vBzZw3Ya2i6DajgKeLFx0NrASaX78sPBVqL6I5IHI
 TJsA==
X-Gm-Message-State: ANhLgQ2dJOQjf4zmWavgnqMnygHTxp3jRd667JYz90MG+q18atycHWvC
 MdlzsnHntTCpc4oV683uJRKfD/T+nxlFJC9NTaJAiQ==
X-Google-Smtp-Source: ADFU+vuHqs1AkmvRMBpn8wjy2QMfCytP9ZrjAuv7fqFkdxE1x//RCFyJ2giGiyqjd+2LszilninZxJXuYoEpXDI0SBE=
X-Received: by 2002:a05:651c:44b:: with SMTP id
 g11mr2159036ljg.168.1583333064815; 
 Wed, 04 Mar 2020 06:44:24 -0800 (PST)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 4 Mar 2020 15:44:14 +0100
Message-ID: <CACRpkdbbniYVnsE-pAmU2qCerswserNgEFtY48XQ+_K+DUNC9Q@mail.gmail.com>
Subject: [GIT PULL] Versatile family DTS changes for kernel v5.7
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_064427_745438_964B92F7 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM/SoC maintainers,

Here is a set of patches fixing up the top level ARM Reference
design DT bindings and also clean up the files themselves to
conform better.

You will notice that this hits bit arm and arm64 DTS files.
This makes sense in this case, because as you know, the
versatile express is special:
arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
is a symlink to arm/boot/dts/vexpress-v2m-rs1.dtsi
also the binding file for arm Versatile Express and
arm64 Versatile Express/Juno is the same
so because of the cross-dependencies it makes sense to
patch all in one go.

Please pull it in for v5.7!

Yours,
Linus Walleij

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/versatile-dts-v5.7-1

for you to fetch changes up to bee7ff37ecf17317ef9295a6ab6e607db034f8a3:

  ARM/arm64: dts: Rename SMB bus to just bus (2020-03-04 15:31:30 +0100)

----------------------------------------------------------------
Versatile DTS updates for the v5.7 series take one:

- Schema validation for the top level of all ARM reference
  designs: Integrator, Versatile, RealView, Juno.
- Clean up some node names in the trees so they pass
  validation fine.
- Drop the old text bindings.
- A top level DMA ranges patch from Rob.

----------------------------------------------------------------
Linus Walleij (8):
      ARM: dts: Versatile: Use syscon as node name for IB2
      ARM: dts: RealView: Fix the name of the SoC node
      dt-bindings: arm: Add Integrator YAML schema
      dt-bindings: arm: Add Versatile YAML schema
      dt-bindings: arm: Add RealView YAML schema
      dt-bindings: arm: Add Versatile Express and Juno YAML schema
      dt-bindings: arm: Drop the non-YAML bindings
      ARM/arm64: dts: Rename SMB bus to just bus

Rob Herring (1):
      ARM: dts: integratorap: Remove top level dma-ranges

 .../devicetree/bindings/arm/arm,integrator.yaml    |  86 ++++++++
 .../devicetree/bindings/arm/arm,realview.yaml      | 123 +++++++++++
 .../devicetree/bindings/arm/arm,versatile.yaml     |  71 ++++++
 .../devicetree/bindings/arm/arm,vexpress-juno.yaml | 223 +++++++++++++++++++
 Documentation/devicetree/bindings/arm/arm-boards   | 237 ---------------------
 Documentation/devicetree/bindings/arm/vexpress.txt | 229 --------------------
 arch/arm/boot/dts/arm-realview-pbx.dtsi            |   2 +-
 arch/arm/boot/dts/integratorap.dts                 |   1 -
 arch/arm/boot/dts/versatile-ab-ib2.dts             |   2 +-
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi            |   2 +-
 arch/arm/boot/dts/vexpress-v2m.dtsi                |   2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts        |   2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts         |   2 +-
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts            |   2 +-
 arch/arm/boot/dts/vexpress-v2p-ca9.dts             |   2 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi         |   2 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts          |   2 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi             |   2 +-
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi      |   2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts         |   2 +-
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi      |   2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi   |   2 +-
 .../boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts      |   2 +-
 23 files changed, 519 insertions(+), 483 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,integrator.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,realview.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,versatile.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-boards
 delete mode 100644 Documentation/devicetree/bindings/arm/vexpress.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
