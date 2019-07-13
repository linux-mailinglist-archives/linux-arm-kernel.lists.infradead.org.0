Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726F367C80
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 01:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0yt7356M1B8QpFuFy8H9wtvg4LN7oftkbZgwJf784B8=; b=kMnM9oymt9I1RH
	f7Q1j0dbWJaYBSrj3Vw4ZPXKVnp2CagZFYdSeLDE0Np8W0r3hscktxj1eYtxLyVYNaxrem2jQvzyi
	GzuiqzV4HtWy9XQtjFnvqCaPsJzL183fcQgSALQQZQvCrs6XXBEKS0zJrYaTQmjrZ4khf8GOo3lVV
	F262yauNCZPDrPKkD9wIEjiowaFVTGOiLdapccNlimi5hAL7KdOyJpabqwvNSLhMZDFpv5pDmiPjX
	zXMPFpKHSLddGCLenvUxxuYljaTTWj1YPbQkpa3jcJtERRkclzhv8AE/58ySW4ZS/3wlWma6Z6oLL
	6vSlMKbo1926oehmJOwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmRem-0007yl-5V; Sat, 13 Jul 2019 23:42:20 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmReZ-0007yE-On
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 23:42:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id g20so28082846ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jul 2019 16:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=Xg9+KAq8bABDugNLZEIH/iMJUpgv2wNj/umMCDFN6OA=;
 b=FyWUA0VLW/ZPVB5OGW16go0DFytpmAWRUVyEo52hMemUxyZ0JMHDvFpvtQZ2YBtulm
 3uqJadRC+1pg+8EdrhLWkoI9UGisDeLO7ahShTz+js9M2zUdcbRtIAlPlGE82TBJ0dJw
 PpfkBQW7uWDogAZ8GXmBoi2DVMnjqtTIR9rukdhll5sVKspSGa8VVLnJ4ovppAsP3mid
 IyYNF2dCChie83abDaHLD593n+D+q5nQWPlsc8peUoibDRVETsKWL6EfjVlRdw89p5bm
 RzCX3bCbMcoSk6IipO1H9h+kCEVB4wSVMrhxY3QIwKAMI+JxiMjNYBb0yTYPMaQfcEHk
 d20g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=Xg9+KAq8bABDugNLZEIH/iMJUpgv2wNj/umMCDFN6OA=;
 b=B6TFXDRazVVMgt/oGSpWFLR6UGVwpENJGp5jUKmWq2NgjAIG9vadvyczhxIsU6Gt9K
 Qtqi3MkKmn+EnB4XRe9dIBdzBl9E8fn+HWLMGav6CAzuVLNEq7VfMWXa9mrP6u/7QA59
 G45O8gyGFDMlKODFZRoQBVb7tSmlLaehq2/PibN8oZEbwOphqTawSSj3Ym5OF9Q0/biV
 mxLb4HF+1cwZyMdVWcgLm29t/T2Py41BUE+YW6/AOeImz6agjkeswWeq0tWteg7da31e
 HZE6aLmPS8Q9gohAMF8CIsbWii2I6ChwHLrtvn4nmO1PQZ5iWuo1DXs42apsewoUYer9
 Fo3A==
X-Gm-Message-State: APjAAAU/RrSbM0WYhDzunDnO1o06JkLHRMWs32J7EuzGJM0DRNgtkOcC
 qthSoLghakDju647sH4/gEkpgBYgrWCBhocfyXs=
X-Google-Smtp-Source: APXvYqyqn7N2j2lxBylpO+u1VcxSnVYdyq3ITclCY9g+i2y1cTyPn0jJpCpu66HrOATrpA/2hHcphckza5dR78amC8M=
X-Received: by 2002:a6b:3b89:: with SMTP id i131mr16969776ioa.33.1563061326127; 
 Sat, 13 Jul 2019 16:42:06 -0700 (PDT)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 13 Jul 2019 18:41:55 -0500
Message-ID: <CABb+yY2RWBW0054fPLyNMAFX4BQ2FqV2NeAvHe7aHhAuH46dcA@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.3
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_164207_835906_24B5CDAE 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:

  Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.3

for you to fetch changes up to 25777e5784a7b417967460d4fcf9660d05a0c320:

  mailbox: handle failed named mailbox channel request (2019-07-11
10:19:00 -0500)

----------------------------------------------------------------
- stm32: race fix by adding a spinlock
- mhu: trim included headers
- omap: add support for K3 SoCs
- imx: Irq disable fix
- bcm: tidy up extracting driver data
- tegra: make resume 'noirq'
- api: fix error handling

----------------------------------------------------------------
Arnaud Pouliquen (1):
      mailbox: stm32_ipcc: add spinlock to fix channels concurrent access

Bitan Biswas (2):
      mailbox: tegra: hsp: add noirq resume
      mailbox: tegra: avoid resume NULL mailboxes

Daniel Baluta (1):
      mailbox: imx: Clear GIEn bit at shutdown

Fuqian Huang (1):
      mailbox: bcm-flexrm-mailbox: using dev_get_drvdata directly

Sudeep Holla (1):
      mailbox: arm_mhu: reorder header inclusion and drop unneeded ones

Suman Anna (2):
      dt-bindings: mailbox: omap: Update bindings for TI K3 SoCs
      mailbox: omap: Add support for TI K3 SoCs

morten petersen (1):
      mailbox: handle failed named mailbox channel request

 .../devicetree/bindings/mailbox/omap-mailbox.txt   | 59 ++++++++++++++++++----
 drivers/mailbox/Kconfig                            |  2 +-
 drivers/mailbox/arm_mhu.c                          | 11 ++--
 drivers/mailbox/bcm-flexrm-mailbox.c               |  6 +--
 drivers/mailbox/imx-mailbox.c                      |  4 +-
 drivers/mailbox/mailbox.c                          |  6 ++-
 drivers/mailbox/omap-mailbox.c                     | 43 +++++++++-------
 drivers/mailbox/stm32-ipcc.c                       | 37 ++++++++++----
 drivers/mailbox/tegra-hsp.c                        | 20 ++++++--
 include/linux/omap-mailbox.h                       |  4 +-
 10 files changed, 134 insertions(+), 58 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
