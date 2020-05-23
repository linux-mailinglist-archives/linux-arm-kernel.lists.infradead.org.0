Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFE31DF45D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HzUr7Agnk1KMo+vOeb/WOTVZzg3qv3XlomWhPpCzHU4=; b=a36
	mP50JJ+Pdgttmtso6WqeJsWF8cdYK1pNh7JNV84UsFhC31Bf/Vf5G0+f3dp2R79aFwdOubqAyfd0L
	0a2RBNtOYZ/GyxWfi84X2H5DqdZVaRpMI8I6/I9hL/icP8DfjDKlOzEv2Kr5U+1VsMcd3KbZRdbaV
	Mc1IlmAa6MbrEajCcELG+epaHoLqZoCB/YNZmCeL+h6GWjPL9mrY3qi0GdqKm65DqAuhPLVpxVH7b
	Ht24AarntGBG6idJuePB6q0/K2b8aPLff1s6APb5XHl06YWUsSt8LZ/E808nqmNAops94nwPAAIj8
	Uc/OgVEEq0WPAh6uBUtmSMtRpoJrkXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKn2-0000kO-V9; Sat, 23 May 2020 03:25:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKms-0000ij-Gh
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:27 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81AC920735;
 Sat, 23 May 2020 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204324;
 bh=v5W6fZaPfz4a58m6MYwvwTgaXlvz9RDpxHXsCEdZb3Y=;
 h=From:List-Id:To:Cc:Subject:Date:From;
 b=1DUaf517h8RG3h7yoHXCHpJB23dLMCkesPtSsdRJ7HR0XapClakMfMo259SCB/k8u
 t0fXNLpLFq22ODwO3wJ3zP3GAIRBUQlZ4PUjhSIxYVJTe46L0LgJsReaW1CZafBf/u
 izyo9K5OwajrzvDJNod8wMzF4j5RMxzQHz0QMu8M=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/6] i.MX drivers update for 5.8
Date: Sat, 23 May 2020 11:25:11 +0800
Message-Id: <20200523032516.11016-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202526_579981_1C2AE03A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.8

for you to fetch changes up to 89f12d6509bff004852c51cb713a439a86816b24:

  firmware: imx: scu: Fix possible memory leak in imx_scu_probe() (2020-05-20 11:33:08 +0800)

----------------------------------------------------------------
i.MX drivers update for 5.8:

- Optimize imx-scu driver to use one TX and one RX instead of four for
  talking to SCU.
- Fix one possible message header corruption where the response is
  longer than the request.
- Move System Control defines into dt-bindings header, so that DT can
  use them as well.
- A couple of small fixups.

----------------------------------------------------------------
Anson Huang (1):
      soc: imx8m: No need to put node when of_find_compatible_node() failed

Dong Aisheng (2):
      dt-bindings: firmware: imx: Move system control into dt-binding headfile
      dt-bindings: firmware: imx: Add more system controls and PM clock types

Franck LENORMAND (1):
      firmware: imx: scu: Fix corruption of header

Peng Fan (1):
      firmware: imx-scu: Support one TX and one RX

Wei Yongjun (1):
      firmware: imx: scu: Fix possible memory leak in imx_scu_probe()

 drivers/firmware/imx/imx-scu.c          | 64 ++++++++++++++++++-------
 drivers/soc/imx/soc-imx8m.c             |  7 ++-
 drivers/thermal/imx_sc_thermal.c        |  2 +-
 include/dt-bindings/firmware/imx/rsrc.h | 84 +++++++++++++++++++++++++++++++++
 include/linux/firmware/imx/sci.h        |  1 -
 include/linux/firmware/imx/types.h      | 65 -------------------------
 6 files changed, 136 insertions(+), 87 deletions(-)
 delete mode 100644 include/linux/firmware/imx/types.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
