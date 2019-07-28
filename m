Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6473677EDA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 11:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IaYW1MA0Pi06UTRXk4v2hHb3PDPziVK9qiToLuyGC5U=; b=iXKzYAhQuw4W5k
	uVEaRWJYPKtVRCCU2Yf9o41yBoL0zj8z+skVQnmhbXMvJPy8hazf5V/v0lQtd/VLA0QH5NENOwq/f
	QdeQDiqA5dpIQph0LtdP1HOoP8de9J8vYijP22y+VnUD9NmMzJWtuFcELv2qqSTAGmcrKJ+VDXDy2
	k9G0nE5UX3DeGTMZ/IkVN/iKA+OJ1xWcEElCzRXTlsYwrZ2km8wdfIyFsmG+W2sIrzDUr0ccxCRH3
	qOfAksAOSKBK3gmWXQVUbhGUrNrLgo5qeI1jiejMuFbYPhlogB9xlOqIdZ41s2Em1xoVLkUnfngm1
	zvf+NuAAXBYnkJ/zAgHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrfhY-0001mJ-6S; Sun, 28 Jul 2019 09:42:48 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrfhI-0001ls-Uc
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 09:42:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so35678450lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 02:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=gUor4m9kDzYZqfvqMOMq7hzXK28haF/NGYydmrIOWX8=;
 b=DiibDcsuWAkqnNzJqDdmjrgCR8pOXrndo6fcPUb+WC/2cRTCOdXkAyV6ysJs61q7Pk
 IyHIBixTFOxQgpEtabSnGXv+UnmNM9HUyIN1sqrR1Sw2r9RetnaOzMSx/crq4ttupREf
 aeBZnCY8jeS+rw2Y/2YsvEqQZi8rWDnE5SQVF0bdnLZyz58H+4UgYGs1K1pj2SrSehUC
 NSgFdI/pPM/8lYrfy6bweSwjuGgWoXCwlU49R6EX/6SEkHVkQkGK4fG0mtiAhkLeHo4o
 gDmOp4/paI/ACfduYnsmHhsJvevmHL7uDNuEgHdsr9nOrI8hR9WGB5CWJffPTWYuZGwr
 nPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=gUor4m9kDzYZqfvqMOMq7hzXK28haF/NGYydmrIOWX8=;
 b=i/1DKx7oPnwgX8nAeGglE9aLwlKAKminNbF+94DjzX+rgheRWw65vTPp8Kq07y/J3M
 z3a7RzeMdHvqZ6oYBSUvlEmJCsyeQb3BWY26kqK3juDXpJOLq97XiwYHWY0G6Fey0u5V
 84UI9tWxzCiLuaqX5zkWGZEuN1cL0hb1FPU2ec2AYNCmkDJ2Acd9hqzCPJyzuT7Zjuxl
 NVAxj1k40LPxDJB7j2yXcTiIagB/WHAH2iUA53CVv1J4JNnSBi8DlASIhoQAx7K+FOqe
 VGSk+BFO1h1VsxY1kzotiJd7YfL0/TRhpgcAKYAj5pSQ0oC3fOGzHG5CABy1NgFHNB3a
 BI+w==
X-Gm-Message-State: APjAAAWcoIW6m5tl6zNxTwaAUv/ih8+5Ew5a6w+NxZ5PYWefOabK9O3H
 KFhBEdgR5HstCy9V3CUxS5IRXohib0XvkM6u3T6oxQ==
X-Google-Smtp-Source: APXvYqzWJiBc04u821O8lLlHQipQzPGX3VlYjVKpdypbbdiLHA2djeMZmPVioLPTYmY/E9AD3Oy4DgWAKvSXN0tLxio=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr38152445lfp.61.1564306951139; 
 Sun, 28 Jul 2019 02:42:31 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jul 2019 11:42:20 +0200
Message-ID: <CACRpkdbH-h5fRwuidcpeOp8mtRoKUW65SAk8a4A==BCDzn3QMA@mail.gmail.com>
Subject: [GIT PULL] Ux500 updates for v5.4 take one
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_024232_993046_763034D2 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

here are some initial patches for Ux500 targeted for the v5.4 kernel
cycle.

Please pull it in! Details in the signed tag.

Yours,
Linus Walleij

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-v5.4-1

for you to fetch changes up to 163ce24a435061f9ff7e1673fec5be0868bdb7d3:

  MAINTAINERS: add soc/ux500 (2019-07-23 10:44:14 +0200)

----------------------------------------------------------------
This is a slew of Ux500 updates for the v5.4 kernel cycle:

- Stop populating the PRCMU devices from the core CPU
  file, it works just fine at device_initcall() level.

- Add a missing of_node_put() in the core file.

- Simplify the debug UART code.

- Add myself to MAINTAINERS

----------------------------------------------------------------
Linus Walleij (2):
      ARM: ux500: Stop populating the PRCMU devices early
      ARM: ux500: simplify and move debug UART

Nicholas Mc Guire (2):
      ARM: ux500: add missing of_node_put()
      MAINTAINERS: add soc/ux500

 MAINTAINERS                      | 1 +
 arch/arm/include/debug/ux500.S   | 9 ++-------
 arch/arm/mach-ux500/cpu-db8500.c | 1 -
 drivers/soc/ux500/ux500-soc-id.c | 5 ++++-
 4 files changed, 7 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
