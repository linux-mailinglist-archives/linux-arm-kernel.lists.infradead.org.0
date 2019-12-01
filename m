Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2117010E0A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 06:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=juZ5/aPuZAoODzB6HPcGQdBxASwJ2Vd8v0M9IcK+QI8=; b=oLOHM0miuKzLb9
	uHHpCea8TnowtfmdJNgXgHbUfGhNbPvTdog1/zJku1Ni1EmDRgiePBraYgQLIykfaOIce7WFEdF0o
	oqjhpoj8yW9UalG4VNg77lUj9HS2n251eJZ5f5GvO4iRAXYozr5QCBWpKHYqDrocuVeWfTjKouODB
	emjbRX84xZftls2XUYnRpFIzvl/41YkUz8fr3sG5g+p+jhtO8tmjYA4DR37i/QrbD4IHIWCjx7qjr
	2WioJD6IY+i5CAmxVEm/YpdGwzrpdrn6oh18i+6RWdq9XlKroabhNl2fTPeGqblkGcDAAgkoLpkx5
	7eGenIdN43idPgLDDRqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibHx4-0007sp-GR; Sun, 01 Dec 2019 05:39:22 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibHwv-0007sW-Uz
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 05:39:15 +0000
Received: by mail-il1-x12a.google.com with SMTP id y16so22819736iln.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 21:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=9lRRM9nAxR2+9byCRc11pTa2dZse+bTnvaqd/WNewI8=;
 b=BrYvcqjKbd+CsXqPy6yteeqqoA3/udny2z7bdvUHTjHo3jeuZHIpqeEAxbTjr0Pgsd
 PaV4CTX/yAbiDsZNeVinCH/LUJ3d8326mzdB4XhhBQ+QUCkOI1jD9JXrSZitgs2anfjn
 RasEE7UC4aPNrDqagQ6vpbvvPNbOtoY332hRimYBcQItrf6X0t6bk7BStYIYk7MEXbi/
 4mRmUKMbK2TMyHztTuzEBaSFoq2yvD0AJDR39eJRJcj/OxgZOqRef6uhf3tdoCRTWeo7
 GOQq/H4ngsKoE4fpEXuoZpYv7Yy0SezlGQ0GOuCNKeswKO4yEgMBT7GBIUb1EX02BQkc
 0d+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=9lRRM9nAxR2+9byCRc11pTa2dZse+bTnvaqd/WNewI8=;
 b=Z1D3q2Etw8gWdEGDeUWw2Wzqr2SqPmilB16/2edPr9Qnl1b8hMFjEHuyVQLTAkJVxf
 arbTTOAe2fOnuyWZ88e5GVo/yvEVbR25hjzwgRqSnU0qfcjJoLbM+eOeUIXGbvxxOajo
 603uR7rzqsteKMOI7VCzOSbqND3iX0ZzXRuEllS03ckFOFGMVNNUEvCq1BcQT0zEMeea
 14PGrxcz27o0vs6Vbi+aQeOqmfuh/Vs8br+jkn2gHQscEbq1sjyFxTpvGsvtJI2GgU83
 bsJCrPdVRXzccNHoQF9+NlOCD7qyiM92uTrstBTHfmuXWFhec1Qwk6yTKIuYPGQfR+BX
 CTEQ==
X-Gm-Message-State: APjAAAVOg8r7/AWMMcc3a5oKB2ari9Kq1NJ+8rug9yRHgJjOFoCH0L0z
 as5ZOrC/Hb00X2qBpxPS00iQrhVY0rcVhmhP5ts=
X-Google-Smtp-Source: APXvYqxnrl5/T2N7UjNb9sbOKSpxWp46NRwYJ4HaeQiDtwmWH5XJoGtF4nsaARBxMCxUO4KHPlaTxnJwUI02h36pwL4=
X-Received: by 2002:a92:84d1:: with SMTP id y78mr179801ilk.69.1575178749332;
 Sat, 30 Nov 2019 21:39:09 -0800 (PST)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 30 Nov 2019 23:38:58 -0600
Message-ID: <CABb+yY1dtWjRW4Wi3jX178Zyd+yNW_bGCwVm3DD4mNYz4ozd-A@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.5
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_213913_998279_C4EEA8F9 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,
The following changes since commit af42d3466bdc8f39806b26f593604fdc54140bcb:

  Linux 5.4-rc8 (2019-11-17 14:47:30 -0800)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.5

for you to fetch changes up to c6c6bc6ea9fce31baaca053befc31215cfcb3dd9:

  mailbox: imx: add support for imx v1 mu (2019-11-30 23:09:14 -0600)

----------------------------------------------------------------
mailbox changes for v5.5

- omap : misc - catch error returned from pm_runtime_put_sync
- hisi : misc - drop .owner from platform_driver
- stm : change how wakeup is handled
- imx : fix - bailout on error and nuke correct irq
- imx : add support for imx7ulp platform

----------------------------------------------------------------
Brandon Maier (1):
      mailbox/omap: Handle if CONFIG_PM is disabled

Daniel Baluta (2):
      mailbox: imx: Fix Tx doorbell shutdown path
      mailbox: imx: Clear the right interrupts at shutdown

Fabien Dessenne (1):
      mailbox: stm32-ipcc: Update wakeup management

Richard Zhu (2):
      dt-bindings: mailbox: imx-mu: add imx7ulp MU support
      mailbox: imx: add support for imx v1 mu

Tian Tao (1):
      mailbox: no need to set .owner platform_driver_register

 .../devicetree/bindings/mailbox/fsl,mu.txt         |  2 +
 drivers/mailbox/hi6220-mailbox.c                   |  1 -
 drivers/mailbox/imx-mailbox.c                      | 74 ++++++++++++++++------
 drivers/mailbox/omap-mailbox.c                     |  2 +-
 drivers/mailbox/stm32-ipcc.c                       | 36 ++---------
 5 files changed, 64 insertions(+), 51 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
