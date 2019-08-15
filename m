Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B568F386
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OKNRPTQvRtCKE7R+3jsbqVi+FnlatIfrZPyXcNi/46Y=; b=RYV
	u5Ipk48DIHSLT9bmltze9jqUwAV+FopvR1AGwEL1RCWBOB/n6djRqftNtWI1/c8q+N6ABaHOrsvoI
	DGOnoctU1xcnxG3GvB3qTbIFBYi3x6GdnoJBYy2MCz5sL9+m2Zz+f+h0EAInvBxgNU6geVoFdYpgb
	5d2cPHb2uH4ddKfW3HOggnGHnw6pF0jU/G3SiJQYx5vTbninUPQCGEteE2WMOUiy3ODQjVCSnl4M0
	LjCnu/MC6i/KH/Zmoxz2BKazpoAKIae5BOITY51jKj0e+V6ZibcBiF8uC8UBmVVQzN48OzwRF0Xf/
	IN3cUhqTAJcAsYvJDbk9S07HPVMkRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKaY-0002o8-7t; Thu, 15 Aug 2019 18:35:06 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKa4-0002b2-Of; Thu, 15 Aug 2019 18:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565894066;
 bh=oUegn+OzzqrlGQ58We8pXrOWyGGRz5WOSepueZRR5DE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ZKwCb7GTHVfyn52jUflQssEZbYOYkYMe+r7AyH//cQ0gIivV+8OrsRDQ+SX1fD9EI
 D/UzzkAfF1h1iWJv7fRxLgkEgkm5MljRyooGWt+2sHpc2m6f2QjvX3qgyKacyUtzR6
 4lfbkosYQSi4K/9uNJbJWoE4dcQkKi0wARGv8LKg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MG9g4-1i3okQ0UJg-00GW9g; Thu, 15 Aug 2019 20:34:26 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 1/3] bcm2835-dt-next-2019-08-15
Date: Thu, 15 Aug 2019 20:34:01 +0200
Message-Id: <1565894043-5249-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:RvoNJciCciw+BH2y7lrTfNZLSc2nmRjVwvWGSPVn24kWoufePuA
 Voc3A92Wwatp4m0PEWYnvhRg07YpZT6p9q7ktWEc4dsiIl8Qudifu5zaqJ9WBNHmo88dXWl
 q8ZxGm8ig7B6qRf3Ub32E5we2xEo9Q3HseIirD1AH84BFsPe0wM8lfhsflh69s5QPbaelsy
 E23UsZk0NU5aBPx1WABjw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:X+5paVtZqY0=:xjZa8BcP1d/9n1T8srkcbn
 L4tGraW3wKTTDiyOUq/J60nBusFRHYXqV4jsQgZem9GURAfPukCsBBoQyBMaIhjyPZ4I3oeGj
 Hu71JdRyaxzh8Nz0h9hwdwsWoqHWO+VmzYvMgPimq5Cxgiu06q7K0b8FDzWRR3mOP3E1NNkxu
 p2r5C9VdV2pP9MAQGx+Js9/j97Es4+LuwetLWd0/1+U/TlWfJLdW3Kno4NErIJHD0P2V1eBnF
 RoTSyIhjcLovlcZ6lHS239X4ifSHV0UuxENLuZ664Dbb1ij9DSOnwFWuh44UbmTBFv99wVUJi
 1LvkVOoROSnMLE7MnL74loN7AdVX97ZiD3aoyo+tqF1EWFDtS4RaNR8iN9/y8Uq6dtCi6UTQS
 FmqANq9YkZY68hcaYewAmYsob34tamK3NEjIx9cPLv25Qt0oZNbau+hZ/RwXb/ka7zgZtnslN
 UsQFBzXh6AGExMaPNMaXj0VQnwHsdgLPhSzmN2cCbBEKrSxC2Pc+We0bqM0A8FT4W4OMzXLww
 p+dZKcdi10n898JckcYC3nHVzUqqzP4SYJMw096BMJl6/pWtndKqrHbJ8wxdVU0TksTlzG+6M
 V5ooc1mpi8X2ChdXorNJ/61c0E47i7G6nnHm3rO/3od8AjkQXalqyDO42HK3BKtlCPfbR9BUV
 yS/EZLsovFGteRPEtWR/UeJPVqmP/B4j1d+DhPKkn8pd03Rfwndz3bt1XwEdFJI5aYibNyNpQ
 RX4Ngk1GLq8CFie77SS1rlh3GNLrb166a4dfmf6zHZDeTv7RN5DJtwy3C6CQtQAHhOIT2vJLV
 en7xwk+0JHkbcT8MVYM/qqG3FKu/KGGKqpliIa3aDCmFOt2Es/1TCiFWwu6FRgw46QwGBAzqc
 36oKUkiNbob9tysHrmLtTv+z8UhIL82aO+jn0TyC2HEHMTyTmnEThEgqG8M7Vf8V+6LK0yXIy
 sLZ/cwtqzLTPVPXd9IrI70ZV6v7G1IHLQ8TBkhl1mwJ5h1Qwmtm+VLAOXUpl4UYXanCOcoBh8
 UTKYM9VrulAlpSU3FjrnyxZgWOIh7TyGY18m+jXhysmH6kQCpdu9yFsvwWne2F2wyZQR0O0T1
 8C4iI7i1UTaOBsG44KQXijy2uHMzQzA/XwgbjlJzLNzWgC+VIdGaxAqKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113437_101299_C52A3AF6 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-dt-next-2019-08-15

for you to fetch changes up to 60c833d5664e1b3f71c4471233469790adf505ca:

  ARM: dts: bcm283x: Enable HDMI at board level (2019-08-15 19:35:15 +0200)

----------------------------------------------------------------
This pull request prepares the BCM2835 DTS files for the introduction
of the new SoC BCM2711.

----------------------------------------------------------------
Stefan Wahren (4):
      ARM: bcm283x: Reduce register ranges for UART, SPI and I2C
      ARM: dts: bcm283x: Define MMC interfaces at board level
      ARM: dts: bcm283x: Define memory at board level
      ARM: dts: bcm283x: Enable HDMI at board level

 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts  |  9 +++++++++
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi     |  5 +++++
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi         | 23 -----------------------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      | 10 ++++++++++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts  |  9 +++++++++
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi     |  1 +
 arch/arm/boot/dts/bcm283x.dtsi             |  6 +++---
 17 files changed, 144 insertions(+), 26 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
