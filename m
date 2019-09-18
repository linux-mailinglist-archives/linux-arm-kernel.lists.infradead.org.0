Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D51B679E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+N2bM7lj6AFHbu/LFQ0ISeKStkXZr4IBtn61rjo4+/s=; b=chSDTAZJjMKioP
	kwarSo8ADphy9T5x11P2m4vhfK8NV5X8ZvGt98llRySPBN6Ma5m6AV8H9enPJsswtkLhkkzh0uxC+
	qYd+meth1H9186xwsCHEiYE4k2cWH8MASScaJVp5U1GH01F0bm250nJ2T1g5XnSSlu4JLRdHStMJc
	i7ZM+8Hvh44YhTnPr+g+KrujrdkC4wiJXoRAjFxz/k24ZdGuYK7G7AyPtu5XjFopuw2f5oIzQt7Hf
	gIuLvJZMyD5iaTgnjqIwcFq8/SeAim8GN/w+wffTWtMx0vm032U8rEmzh+rtT2GP8fd1/NBu3JaGN
	XqMTCvvqMCSbNmpoLZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcO0-0006kP-EL; Wed, 18 Sep 2019 16:00:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcNm-0006jD-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:00:43 +0000
Received: by mail-io1-xd41.google.com with SMTP id n197so357519iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 09:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ywo1LWQXhtnnsGBUwqYVAp61PxHZGvXmpc5vAeqGshs=;
 b=fD4dVOhvCor/5Hphh2dpZdcTGN3t4ew61AWnXg30rOVONDgrS2kl17CRRvhTnlMAC2
 Okp97wGoZehoOmQGr3oztl8ywFGX5oQWiE0V3JOE2PIemrCt5tiYhOhVYNhMB7tcRW0y
 Mj7kTRT7/ROIP+mBtRoQAQcICTVTKcAEbBqPhv18ohZGBlIcf+J7uzqlrFmnTnO1tESu
 j0Q8Wu2rTwr2gca/9P1nAsoxSBNt9MzMTsauf/hqmajEq9f27klYeyiN8NUa9cKLe7nn
 Uz2UiQiG+NVcA3EkvKBqcmQ22I9FLgOM03PL2Xmt5W4UfyOWCm7RGpDStVdz4gD/ycNL
 GKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ywo1LWQXhtnnsGBUwqYVAp61PxHZGvXmpc5vAeqGshs=;
 b=RyiY9lz1kcQ2KAxzPmWG0IIWc7jQI8MR2cXYsbnTFQb7DTUo7ZqjvMv1+F+HTTVKw0
 Pf9zRi15p5LJku4d+y6b05xYyN6lOucbRQa8NAMPxWubfHznTa5wUa08gCcCN/SeXfxP
 KSmD5+fZKs8OBdJiKAyQVeP6XEZdvB7CMWLIiET8GozdxryMRgtJLkrxBLLR6J1DUG3/
 uKuewquIieyASLG8RJMxqZvGXma5pC47Ubh3gBy+sw/RlD9MjjmLbZEnaGusIZwx+DJ9
 zINrbLHjOqoHt/rLL2oh1VCPOeMUR62lJlyu1GkqZcCL3rYNggWzhaOopZ3CQ++9ezeV
 6O/g==
X-Gm-Message-State: APjAAAXPscqY4plo+0IolDbOwBFH8Nxjup5DrttL+GT/TzDuSNPPkUv/
 CnPeAHOIwfx/rY6U+5KMfnRg0hV7mu4yZ29Enq/s4/cX
X-Google-Smtp-Source: APXvYqwlDA2TnLSXNW06tUwHy0B3dJRlCrapRf8xAZ/mN9UXvrnbyEmFKppxSgak/3C49MDvyOqdxnVT5skiCpRUZbc=
X-Received: by 2002:a6b:f319:: with SMTP id m25mr5535247ioh.33.1568822438949; 
 Wed, 18 Sep 2019 09:00:38 -0700 (PDT)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 11:00:28 -0500
Message-ID: <CABb+yY2AFK4G8i765--h0D7h1xcsrhSP2fKzWmcza9OcrdT22g@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.4
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_090042_421603_6EBA5A65 
X-CRM114-Status: GOOD (  13.18  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,
The following changes since commit f74c2bb98776e2de508f4d607cd519873065118e:

  Linux 5.3-rc8 (2019-09-08 13:33:15 -0700)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.4

for you to fetch changes up to 556a0964e28c4441dcdd50fb07596fd042246bd5:

  mailbox: qcom-apcs: fix max_register value (2019-09-17 00:54:29 -0500)

----------------------------------------------------------------
- qcom : enable support for ipq8074, sm1850 and sm7180.
         add child device node for qcs404.
         misc fixes.

- mediatek : enable support for mt8183.
          misc rejig of cmdq driver.
          new client-reg dt property.

- armada: use device-managed registration api

----------------------------------------------------------------
Bibby Hsieh (6):
      dt-binding: gce: remove thread-num property
      dt-binding: gce: add gce header file for mt8183
      dt-binding: gce: add binding for gce client reg property
      mailbox: mediatek: cmdq: move the CMDQ_IRQ_MASK into cmdq driver data
      mailbox: mediatek: cmdq: support mt8183 gce function
      mailbox: mediatek: cmdq: clear the event in cmdq initial flow

Chuhong Yuan (1):
      mailbox: armada-37xx-rwtm: Use device-managed registration API

Gokul Sriram Palanisamy (2):
      dt-bindings: mailbox: qom: Add ipq8074 APPS compatible
      mailbox: qcom: Add support for IPQ8074 APCS

Jorge Ramirez-Ortiz (3):
      mbox: qcom: add APCS child device for QCS404
      mbox: qcom: replace integer with valid macro
      mailbox: qcom-apcs: fix max_register value

Sibi Sankar (2):
      dt-bindings: mailbox: Add APSS shared for SM8150 and SC7180 SoCs
      mailbox: qcom: Add support for Qualcomm SM8150 and SC7180 SoCs

 .../devicetree/bindings/mailbox/mtk-gce.txt        |  23 ++-
 .../bindings/mailbox/qcom,apcs-kpss-global.txt     |   3 +
 drivers/mailbox/armada-37xx-rwtm-mailbox.c         |  14 +-
 drivers/mailbox/mtk-cmdq-mailbox.c                 |  18 ++-
 drivers/mailbox/qcom-apcs-ipc-mailbox.c            |  16 +-
 include/dt-bindings/gce/mt8183-gce.h               | 175 +++++++++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h           |   3 +
 include/linux/soc/mediatek/mtk-cmdq.h              |   3 -
 8 files changed, 222 insertions(+), 33 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt8183-gce.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
