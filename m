Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD121F60C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 06:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QPN3gDMbG3i5dSSUK+wlUyvPuxRK27Ydgy3Rrm21jKc=; b=D8BBMMpARJl3m5
	70X5+/3yy+106C0ZuMtuFpK1UGS6NooBKgpEK/0kqV/f0eqQiEMyQcmIaK7PLLkye/tXSJ7BQIR/t
	hKsuse+sH3Sa5gZOEa1s2q5Ng8qqtDyVAuwEiPc1xytzHnZJjXmDJ9oYx7zOkRJNf7YhMgzme85z4
	gJbkf+/M8Tbxcg7Y2XTdPSJhWP3QAJKk2/YaC1djsmq24BjlSYhDOCSJxxyg9ptdTcG1PKWNBUaPc
	hJa8PvixVIks7sxaGaJFyJf2dG5Fw5DcdFL/bnnl9NcIDjVrl7lsoPqscq/rNqSSFJJE9Lv1RkMnO
	cSqOXQ4eivahUoFe9BIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjEYd-00065L-PT; Thu, 11 Jun 2020 04:11:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjEYW-00061k-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 04:11:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id i25so4851101iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 21:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=d94BWwXDVPdkXtU6jwE/up8ZwLrJjD6cxsvZtbmlMGA=;
 b=jODk7oB9+jT79zvz+Muy8CLOWUjh/0ShkPTXQ0l8PJuG0J+VHWmWrAXpwSVVp7Ya+S
 suNSTLMTDYXbhGIkz2UxPMr8PQb3ryOT7X/oF1VP0ubb8TRkvgz8CdiyS7J/BSwRT2jx
 ziE5681SqyhplUiYbYVrK9Tg8rOIV0hHMWINVn6wt1jY+um07eJi9e8gyDKaO28r9oT5
 1Guek3IdTW2sGVbQuUckmWFAMFbjzB4XvOY9zXXa9RjZrat386NkUgeJU6qCI2u+C0+z
 9wGisS9V84+dQMAro2bPUoLXVEOXftvOWJyH/eU+htbnHdzYpl3oFB1uq579lO/GBor8
 CxmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=d94BWwXDVPdkXtU6jwE/up8ZwLrJjD6cxsvZtbmlMGA=;
 b=UxdjomPyJaiuuwHk4v6JvNxTOmqoKASN+WqZq07j0BKnr2EKfis6WO7uKE6GlxGfxz
 Y896zYGPWjiGhWa/DL1CDvKBzSzjupecZOD80c2vRMQq6B/MxQbWleiGLqs565QWhPfm
 I7m2Ct3M39gC71yh4HpPn7EwQ3SEjYEb7+DTQWi9vtXCXYxPjSTqakMl98HKLgzcI0ig
 UPaOxBiwPUGqLuqlpXkxjRFYp7oxqL+Ez3BCMUixCxsCkz2Pk4k5qZGgSILXDoawAaFi
 hrJJlattt+IvGNKFp5yDhffUKgSXfm1QZ9gXrcKGN+1mPUFTlESDtL1OzcM7BVWj3ZU3
 sMpQ==
X-Gm-Message-State: AOAM532LRHS0IyuXVDN6fZjjQiiAlDFF6VChyvnPpEetiAs2RwyNNkCV
 EZnSWbqlV/MtV9Brtq8/T/eLLfakl96IVRul0yGcNgib
X-Google-Smtp-Source: ABdhPJxSTl0sf4Ad32FLL6dubPqSVn1efkHEeZGVTRot6sWQ7Tkxma+Vi8eBmWS6YGM3IHnPk7obmnpYQpQo+8o9RQU=
X-Received: by 2002:a05:6602:13c6:: with SMTP id
 o6mr6440972iov.84.1591848666969; 
 Wed, 10 Jun 2020 21:11:06 -0700 (PDT)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 10 Jun 2020 23:10:56 -0500
Message-ID: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.8
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_211108_177361_0F50C2F9 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The following changes since commit ffeb595d84811dde16a28b33d8a7cf26d51d51b3:

  Merge tag 'powerpc-5.7-6' of
git://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux
(2020-05-30 12:28:44 -0700)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.8

for you to fetch changes up to e9f901dc05c09c4f89183cadcb2d93177f3100cb:

  mailbox: qcom: Add ipq6018 apcs compatible (2020-06-10 22:43:57 -0500)

----------------------------------------------------------------
- qcom :
     new controller driver for IPCC
     reorg the of_device data
     add support for ipq6018 platform
- spreadtrum:
     new sprd controller driver
- imx:
     implement suspend/resume PM support
- Misc :
     make pcc driver struct as static
     fix return value in imx_mu_scu
     disable clock before bailout in imx probe
     remove duplicate error mssg in zynqmp probe
     fix header size in imx.scu
     check for null instead of is-err in zynqmp

----------------------------------------------------------------
Anson Huang (3):
      mailbox: imx: Support runtime PM
      mailbox: imx: Add runtime PM callback to handle MU clocks
      mailbox: imx: ONLY IPC MU needs IRQF_NO_SUSPEND flag

Baolin Wang (2):
      dt-bindings: mailbox: Add the Spreadtrum mailbox documentation
      mailbox: sprd: Add Spreadtrum mailbox driver

Dan Carpenter (1):
      mailbox: imx: Fix return in imx_mu_scu_xlate()

Dong Aisheng (1):
      mailbox: imx: Add context save/restore for suspend/resume

Fabio Estevam (1):
      mailbox: imx: Disable the clock on devm_mbox_controller_register() failure

Jason Yan (1):
      mailbox: pcc: make pcc_mbox_driver static

Manivannan Sadhasivam (3):
      dt-bindings: mailbox: Add devicetree binding for Qcom IPCC
      mailbox: Add support for Qualcomm IPCC
      MAINTAINERS: Add entry for Qualcomm IPCC driver

Markus Elfring (1):
      mailbox: ZynqMP IPI: Delete an error message in zynqmp_ipi_probe()

Peng Fan (1):
      mailbox: imx-mailbox: fix scu msg header size check

Sivaprakash Murugesan (3):
      dt-bindings: mailbox: Add YAML schemas for QCOM APCS global block
      mailbox: qcom: Add clock driver name in apcs mailbox driver data
      mailbox: qcom: Add ipq6018 apcs compatible

Wei Yongjun (1):
      mailbox: zynqmp-ipi: Fix NULL vs IS_ERR() check in zynqmp_ipi_mbox_probe()

 .../bindings/mailbox/qcom,apcs-kpss-global.txt     |  88 -----
 .../bindings/mailbox/qcom,apcs-kpss-global.yaml    |  86 +++++
 .../devicetree/bindings/mailbox/qcom-ipcc.yaml     |  80 +++++
 .../devicetree/bindings/mailbox/sprd-mailbox.yaml  |  60 ++++
 MAINTAINERS                                        |   8 +
 drivers/mailbox/Kconfig                            |  18 +
 drivers/mailbox/Makefile                           |   4 +
 drivers/mailbox/imx-mailbox.c                      | 117 ++++++-
 drivers/mailbox/pcc.c                              |   2 +-
 drivers/mailbox/qcom-apcs-ipc-mailbox.c            |  61 +++-
 drivers/mailbox/qcom-ipcc.c                        | 286 ++++++++++++++++
 drivers/mailbox/sprd-mailbox.c                     | 361 +++++++++++++++++++++
 drivers/mailbox/zynqmp-ipi-mailbox.c               |  25 +-
 include/dt-bindings/mailbox/qcom-ipcc.h            |  33 ++
 14 files changed, 1097 insertions(+), 132 deletions(-)
 delete mode 100644
Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
 create mode 100644
Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml
 create mode 100644 drivers/mailbox/qcom-ipcc.c
 create mode 100644 drivers/mailbox/sprd-mailbox.c
 create mode 100644 include/dt-bindings/mailbox/qcom-ipcc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
